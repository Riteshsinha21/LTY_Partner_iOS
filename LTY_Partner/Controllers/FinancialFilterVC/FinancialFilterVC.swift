//
//  FinancialFilterVC.swift
//  LTY_Partner
//
//  Created by Chawtech on 13/12/23.
//

import UIKit

protocol FinFilterProtocol {
    func sendfitlerData(  agentId:String,userId: String,categoryId: String,subCategoryId: String,productId: [String])
}

class FinancialFilterVC: UIViewController, AgentListProtocolDelegate, CustomerListProtocolDelegate, subCategoryListProtocolDelegate, CategoryListProtocolDelegate, AgentProductAmountDelegate {
  
    var finFilterDelegate: FinFilterProtocol?
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblTitleAgent: UILabel!
    @IBOutlet weak var lblTitleCustomer: UILabel!
    @IBOutlet weak var lblTitleCompany: UILabel!
    @IBOutlet weak var lblTitleProduct: UILabel!
    @IBOutlet weak var lblTitleCoverage: UILabel!
    @IBOutlet weak var btnSelectAgent: UIButton!
    
    @IBOutlet weak var textAgentName: UITextField!
    @IBOutlet weak var textCustomerName: UITextField!
    @IBOutlet weak var textCompanyName: UITextField!
    @IBOutlet weak var textProductName: UITextField!
    @IBOutlet weak var textCoverageName: UITextField!
    
    var agentVCViewModel = AgentVCViewModel()
    var agentListData = [AgentsList]()
    
    var customerVM = CustomerViewModel()
    var customerListArr = [UsersList]()
    var pageSize = 50
    
    var categoryViewModel = CategoryViewModel()
    var categoryListData = [MainCategoryList]()
    var categoryListNewData = [MainCategoryNewList]()
    var subCategoryViewModel = SubCatagoryViewModel()
    var subcategoryList = [SubCategoryDataList]()
    
    var catId = ""
    var subcatId = ""
    var agentId = ""
    var customerId = ""
    var productId = [String]()

    
    var selectedProductsArr = NSMutableArray()
    var productsToSendInAPIArr = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        agentVCViewModel.delegate = self
        self.customerVM.delegate = self
        subCategoryViewModel.delegate = self
        categoryViewModel.delegate = self
        
        let usertype = kUserDefaults.value(forKey: AppKeys.userType)
        let agentName = kUserDefaults.value(forKey: AppKeys.agentName)
        let partnerId =  kUserDefaults.string(forKey: "partnerID")
        
        if usertype as! String == "PARTNER"{
            btnSelectAgent.isUserInteractionEnabled = true
            let param:[String:Any] = ["partnerId": partnerId, "searchBy": "" ,"agentId": "", "pageSize": pageSize]
            let url = LTY_BASE_URL.BASE_URL_IDENTITY + LTY_END_POINT_URL.getCustomers
            customerVM.customerListApi(param: param,url: url)
        }else{
            btnSelectAgent.isUserInteractionEnabled = false
            textAgentName.text = agentName as! String
            
            let url = LTY_BASE_URL.BASE_URL_IDENTITY + LTY_END_POINT_URL.getAgentList
            let param:[String:Any] = ["agentId": partnerId, "searchBy": "", "pageSize": pageSize]
            customerVM.customerListApi(param: param,url: url)
        }
       
        //MARK:- select cat and sub cat Api
        
        let userType = kUserDefaults.value(forKey: AppKeys.userType)
        let sourceId = kUserDefaults.value(forKey: AppKeys.sourceId)
        let PartnerId = kUserDefaults.value(forKey: AppKeys.partnerID)
        if userType as! String == "AGENT"{
//
//            self.chooseAgentTxt.text = kUserDefaults.value(forKey: AppKeys.agentName) as? String
//            self.agentId = kUserDefaults.value(forKey: AppKeys.partnerID) as! String
//            addProposalDic.setValue(self.chooseAgentTxt.text, forKey: "agentName")
//
            let param :[String:Any]  = ["agentId":PartnerId]
            categoryViewModel.getCatByAgent(param: param, url: LTY_END_POINT_URL.getCategoryByAgent)


        }else{
            let param :[String:Any]  = ["partnerId":PartnerId]
            categoryViewModel.productCategoryListApi(param: param, url: LTY_END_POINT_URL.getCategoryNew)

        }
        
        setUpLocalization()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.tabBarController?.tabBar.isHidden = true
        checkNetwork()
    }
    //MARK:- setUpLocalization
    
    func setUpLocalization() {
        self.lblTitle.text = "Choose Your Filter" .localized()
        self.lblTitleAgent.text = "Agent" .localized()
        self.lblTitleCustomer.text = "Customer" .localized()
        self.lblTitleCompany.text = "Insurance Company" .localized()
        self.lblTitleProduct.text = "Insurance Product" .localized()
        self.lblTitleCoverage.text = "Insurance Coverage" .localized()

    }
    
    func checkNetwork(){
        let partnerId =  kUserDefaults.string(forKey: "partnerID")

        if internetConnection.isConnectedToNetwork() == true {
            
            let param :[String:Any]  = ["partnerId":partnerId,"searchBy":""]
           // checkNetwork(phoneOtp: "",emailOtp: "", param: param)
            
            agentVCViewModel.agentListApi(param: param)
        }
        else {
            self.ShowAlert(message:LTY_AlterText.internetConnectionAlert)

        }
    }

    func setAgentList(data: AgentVCModel) {
        
        if data.status == "SUCCESS"{
            
            self.agentListData = data.data?.agentsList! ?? []
//            debugPrint(self.agentListData)

        }else{
            DispatchQueue.main.async {
                  if data.error?.errorCode == AppKeys.invalidTokenCode {
                      
                      LTY_AppDelegate.setRootVC()
                  }else {
                       let language =  kUserDefaults.value(forKey: APPLE_LANGUAGE_KEY)
                          let result = language as! NSArray
                          
                          if result[0] as! String == "fr" {
                          self.ShowAlert(message: data.error?.clientErrorMessageInFrench ?? "")

                      }else{
                          self.ShowAlert(message: data.error?.clientErrorMessage ?? "")

                      }
                      
                  }
              }
          }
       
    }
    
    func setBlockUser(data: SuccessModel) {
        debugPrint("setBlockUser")
    }
    
    func setDeleteUserData(data: DeleteModel) {
        debugPrint("setDeleteUserData")
    }
    
    func popupMsg(msg: String) {
        debugPrint("popupMsg")
    }
    
    //MARK:- customer api delegate func
    
    func setCustomerList(data: CustomerModel) {
        
        if data.status == "SUCCESS" {
            self.customerListArr = data.data?.usersList ?? []
            debugPrint(self.customerListArr)

        }
        else{
            DispatchQueue.main.async {
                  if data.error?.errorCode == AppKeys.invalidTokenCode {
                      
                      LTY_AppDelegate.setRootVC()
                  }else {
                      DispatchQueue.main.async {
                          let language =  kUserDefaults.value(forKey: APPLE_LANGUAGE_KEY)
                          let result = language as! NSArray
                          
                          if result[0] as! String == "fr" {
                              self.ShowAlert(message: data.error?.clientErrorMessageInFrench ?? "")

                          }else{
                              self.ShowAlert(message: data.error?.clientErrorMessage ?? "")

                          }
                      }
                      
                  }
              }
          }
      
        
    }

    func setCustomerAgentList(data: CustomerActiveAgentModel) {
        debugPrint("setCustomerAgentList")
    }
    
    // MARK:- Set Category
    
    func setCategoryListByAgent(data: CategoryNewModel) {
        
        if data.status == "SUCCESS" {
            self.categoryListNewData.removeAll()

           // self.categoryListNewData = data.data?.categoryList ?? []
            let language =  kUserDefaults.value(forKey: APPLE_LANGUAGE_KEY)
            let result = language as! NSArray
            
            if result[0] as! String == "fr" {
                self.categoryListNewData = data.data?.categoryList ?? []

            }else{
                self.categoryListNewData = data.data?.categoryList ?? []

            }
            
        }
        else {
            DispatchQueue.main.async {
                if data.error?.errorCode == AppKeys.invalidTokenCode {
                    
                    LTY_AppDelegate.setRootVC()
                }else {
                    DispatchQueue.main.async {
                        let language =  kUserDefaults.value(forKey: APPLE_LANGUAGE_KEY)
                        let result = language as! NSArray
                        
                        if result[0] as! String == "fr" {
                            self.ShowAlert(message: data.error?.clientErrorMessageInFrench ?? "")
                            
                        }else{
                            self.ShowAlert(message: data.error?.clientErrorMessage ?? "")
                            
                        }
                    }
                    
                }
            }
        }
        
      
    }
   
    func setCategoryList(data: CategoryModel) {
        
        if data.status == "SUCCESS" {
            self.categoryListData.removeAll()
            
            let language =  kUserDefaults.value(forKey: APPLE_LANGUAGE_KEY)
            let result = language as! NSArray
            
            if result[0] as! String == "fr" {
                self.categoryListData = data.data?.categoryList ?? []
            }else{
                self.categoryListData = data.data?.categoryList ?? []
            }
        }
        else {
            DispatchQueue.main.async {
                if data.error?.errorCode == AppKeys.invalidTokenCode {
                    
                    LTY_AppDelegate.setRootVC()
                }else {
                    DispatchQueue.main.async {
                        let language =  kUserDefaults.value(forKey: APPLE_LANGUAGE_KEY)
                        let result = language as! NSArray
                        
                        if result[0] as! String == "fr" {
                            self.ShowAlert(message: data.error?.clientErrorMessageInFrench ?? "")
                            
                        }else{
                            self.ShowAlert(message: data.error?.clientErrorMessage ?? "")
                            
                        }
                    }
                    
                }
            }
        }
        
      
    }
    
    
    func setCategoryNewList(data: CategoryNewModel) {
        
        if data.status == "SUCCESS" {
            self.categoryListData.removeAll()
            
            // self.categoryListNewData = data.data?.categoryList ?? []
            let language =  kUserDefaults.value(forKey: APPLE_LANGUAGE_KEY)
            let result = language as! NSArray
            
            if result[0] as! String == "fr" {
                self.categoryListNewData = data.data?.categoryList ?? []
            }else{
                self.categoryListNewData = data.data?.categoryList ?? []
                
            }
            
        }
        else {
            DispatchQueue.main.async {
                if data.error?.errorCode == AppKeys.invalidTokenCode {
                    
                    LTY_AppDelegate.setRootVC()
                }else {
                    DispatchQueue.main.async {
                        let language =  kUserDefaults.value(forKey: APPLE_LANGUAGE_KEY)
                        let result = language as! NSArray
                        
                        if result[0] as! String == "fr" {
                            self.ShowAlert(message: data.error?.clientErrorMessageInFrench ?? "")
                            
                        }else{
                            self.ShowAlert(message: data.error?.clientErrorMessage ?? "")
                            
                        }
                    }
                    
                }
            }
        }
    }
      
    
    
    //MARK:- set Subcategory delegate func
    
    func setSubCategoryListByAgent(data: SubCategoryModel) {
        if data.status == "SUCCESS" {
            
            self.subcategoryList.removeAll()
            
            let language =  kUserDefaults.value(forKey: APPLE_LANGUAGE_KEY)
            let result = language as! NSArray
            
            if result[0] as! String == "fr" {
                self.subcategoryList = data.data?.subCategoryList ?? []

            }else{
                self.subcategoryList = data.data?.subCategoryList ?? []

            }

           // self.subcategoryList = data.data?.subCategoryList ?? []

        }
        else {
            DispatchQueue.main.async {
                if data.error?.errorCode == AppKeys.invalidTokenCode {
                    
                    LTY_AppDelegate.setRootVC()
                }else {
                    DispatchQueue.main.async {
                        let language =  kUserDefaults.value(forKey: APPLE_LANGUAGE_KEY)
                        let result = language as! NSArray
                        
                        if result[0] as! String == "fr" {
                            self.ShowAlert(message: data.error?.clientErrorMessageInFrench ?? "")
                            
                        }else{
                            self.ShowAlert(message: data.error?.clientErrorMessage ?? "")
                            
                        }
                    }
                    
                }
            }
        }
      
    }
    
    func setSubCategoryList(data: SubCategoryModel) {
        if data.status == "SUCCESS" {
            
            self.subcategoryList.removeAll()
            
            let language =  kUserDefaults.value(forKey: APPLE_LANGUAGE_KEY)
            let result = language as! NSArray
            
            if result[0] as! String == "fr" {
                self.subcategoryList = data.data?.subCategoryList ?? []

            }else{
                self.subcategoryList = data.data?.subCategoryList ?? []
                
            }
            
          //  self.subcategoryList = data.data?.subCategoryList ?? []

        }
        else {
            DispatchQueue.main.async {
                if data.error?.errorCode == AppKeys.invalidTokenCode {
                    
                    LTY_AppDelegate.setRootVC()
                }else {
                    DispatchQueue.main.async {
                        let language =  kUserDefaults.value(forKey: APPLE_LANGUAGE_KEY)
                        let result = language as! NSArray
                        
                        if result[0] as! String == "fr" {
                            self.ShowAlert(message: data.error?.clientErrorMessageInFrench ?? "")
                            
                        }else{
                            self.ShowAlert(message: data.error?.clientErrorMessage ?? "")
                            
                        }
                    }
                    
                }
            }
        }
      
    }
    
    //MARK:-  get ProductName
    func setProductAmountData(arr: NSMutableArray, nameArr: NSMutableArray) {
        
//        let dic = NSMutableDictionary()
//        dic.setValue(arr, forKey: "productList")
//        addProposalDic.setValue(dic, forKey: "productDetails")
        self.getSelectedProductNames(arr: arr)
//
//        let total = self.calculateTotalAmount(arr: arr)
//        self.totalAmountTxt.text = "\(total)"
//        self.periodicityTxt.text = ""
//        self.periodictyFactor = 0.0
//        self.PremiumAmountTxt.text = ""
        
    }
    
    func getSelectedProductNames(arr: NSMutableArray) {
        
    print(arr)
        self.selectedProductsArr.removeAllObjects()
//        self.selectedProductsArr = arr
        var productNamesArr = NSMutableArray()
        var productsArr = NSMutableArray()
        productsToSendInAPIArr.removeAllObjects()
        productsArr.removeAllObjects()
        let language =  kUserDefaults.value(forKey: APPLE_LANGUAGE_KEY)
        let result = language as! NSArray
        
        self.productId.removeAll()
        
        for items in arr {
            let item = items as! NSMutableDictionary
            if item["isSelected"] as! String == "yes" {
                self.productId.append(item["productId"] as! String)
                if result[0] as! String == "fr" {
                    productNamesArr.add(item["productNameInFrench"] as! String)
                    
                }else{
                    productNamesArr.add(item["productName"] as! String)
                    
                }
                
                
                // productsToSendInAPIArr.add(item)
                productsArr.add(item)
                self.selectedProductsArr.add(item)
            }
        }
        productsToSendInAPIArr = productsArr
        // create products arr to send in API
        
        
        // Set selected products data in Tf
        let stringRepresentation = productNamesArr.componentsJoined(by: ",")
        self.textCoverageName.text = stringRepresentation
    }
    
    
    //MARK:-  select Agent action
    @IBAction func btnSelectAgentAction(_ sender: UIButton) {
        let actionSheetAlertController: UIAlertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)

                let language =  kUserDefaults.value(forKey: APPLE_LANGUAGE_KEY)
                let result = language as! NSArray
        
        for agent in agentListData{
            
            let action = UIAlertAction(title: "\(agent.firstName ?? "")" + " " + "\(agent.lastName ?? "")", style: .default) { (action) in
                
                self.textAgentName.text = "\(agent.firstName ?? "")" + " " + "\(agent.lastName ?? "")"
                self.agentId = agent.partnerId ?? ""

          }

              action.setValue(CATextLayerAlignmentMode.center, forKey: "titleTextAlignment")

              actionSheetAlertController.addAction(action)
            }
        
        let cancelActionButton = UIAlertAction(title: "Cancel".localized(), style: .cancel, handler: nil)
                    actionSheetAlertController.addAction(cancelActionButton)

                    self.present(actionSheetAlertController, animated: true, completion: nil)
    }
    
    //MARK:-  select Customer action
    @IBAction func btnSelectCustomerAction(_ sender: UIButton) {
        let actionSheetAlertController: UIAlertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)

                let language =  kUserDefaults.value(forKey: APPLE_LANGUAGE_KEY)
                let result = language as! NSArray
        
        for user in customerListArr{
            
            let action = UIAlertAction(title: "\(user.firstName ?? "")" + " " + "\(user.lastName ?? "")", style: .default) { (action) in
                
                self.textCustomerName.text = "\(user.firstName ?? "")" + " " + "\(user.lastName ?? "")"
                self.customerId = user.partnerId ?? ""

          }

              action.setValue(CATextLayerAlignmentMode.center, forKey: "titleTextAlignment")

              actionSheetAlertController.addAction(action)
            }
        
        let cancelActionButton = UIAlertAction(title: "Cancel".localized(), style: .cancel, handler: nil)
                    actionSheetAlertController.addAction(cancelActionButton)

                    self.present(actionSheetAlertController, animated: true, completion: nil)
    }
    
    //MARK:-  select Company action
    @IBAction func btnSelectCompanyAction(_ sender: UIButton) {
        let actionSheetAlertController: UIAlertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)

                let language =  kUserDefaults.value(forKey: APPLE_LANGUAGE_KEY)
                let result = language as! NSArray
        
        for cat in categoryListNewData{
            let title = result[0] as! String == "fr" ? cat.categoryNameInFrench : cat.categoryName
            let action = UIAlertAction(title: title, style: .default) { (action) in
                
                self.textCompanyName.text = title
                self.catId = cat.categoryId ?? ""
                
                self.textProductName.text = ""
                self.textCoverageName.text = ""
                
                if self.catId != ""{
                    let partnerId =  kUserDefaults.string(forKey: "partnerID")
                    let subCatParam :[String:Any]  = ["categoryId":self.catId, "partnerId": partnerId]
                    self.subCategoryViewModel.subCatListApi(param: subCatParam)
                }
                

          }

              action.setValue(CATextLayerAlignmentMode.center, forKey: "titleTextAlignment")

              actionSheetAlertController.addAction(action)
            }
        
        let cancelActionButton = UIAlertAction(title: "Cancel".localized(), style: .cancel, handler: nil)
                    actionSheetAlertController.addAction(cancelActionButton)

                    self.present(actionSheetAlertController, animated: true, completion: nil)
    }
    
    //MARK:-  select Product action
    @IBAction func btnSelectProductAction(_ sender: UIButton) {
        
        let actionSheetAlertController: UIAlertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)

                let language =  kUserDefaults.value(forKey: APPLE_LANGUAGE_KEY)
                let result = language as! NSArray
        
        for subCat in subcategoryList{
            let title = result[0] as! String == "fr" ? subCat.subCategoryNameInFrench : subCat.subCategoryName
            let action = UIAlertAction(title: title, style: .default) { (action) in
                
                self.textProductName.text = title
                self.subcatId = subCat.subCategoryId ?? ""

          }

              action.setValue(CATextLayerAlignmentMode.center, forKey: "titleTextAlignment")

              actionSheetAlertController.addAction(action)
            }
        
        let cancelActionButton = UIAlertAction(title: "Cancel".localized(), style: .cancel, handler: nil)
                    actionSheetAlertController.addAction(cancelActionButton)

                    self.present(actionSheetAlertController, animated: true, completion: nil)
    }
    
    //MARK:-  select Coverage action
    @IBAction func btnSelectCoverageAction(_ sender: UIButton) {
        
        if self.textCompanyName.text!.isEmpty {
            self.ShowAlert(message: "Please select Insurance Company first.".localized())
            return
        } else if self.textProductName.text!.isEmpty {
            self.ShowAlert(message: "Please select Insurance Branch first.".localized())
            return
        }
        
        let vc = AgentSelectVC.instantiate(fromAppStoryboard: .proposalStoryboard)
        vc.subCatId = self.subcatId
        vc.delegate = self
        vc.selectedProductsArr = self.selectedProductsArr
        vc.modalTransitionStyle = .crossDissolve
        vc.modalPresentationStyle = .overFullScreen
 
        self.present(vc, animated: true)
    }
    
    
    
    //MARK:-  back action
    @IBAction func backActionBtn(_ sender: UIButton) {
        self.popVC(animated: true)
    }
    
    //MARK:-  apply action
    @IBAction func btnApplyAction(_ sender: UIButton) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
            self.navigationController?.popViewControllerWithHandler(animated: true, completion: {
                self.finFilterDelegate?.sendfitlerData(agentId: self.agentId, userId: self.customerId, categoryId: self.catId, subCategoryId: self.subcatId, productId: self.productId)
            })
            
        }
        
    }
    
}

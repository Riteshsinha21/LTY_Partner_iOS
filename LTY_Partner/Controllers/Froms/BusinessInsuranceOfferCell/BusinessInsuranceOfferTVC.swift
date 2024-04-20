//
//  BusinessInsuranceOfferTVC.swift
//  LTY_Partner
//
//  Created by Chawtech on 12/12/23.
//

import UIKit

class BusinessInsuranceOfferTVC: UITableViewCell {

    @IBOutlet weak var lblHeadingInsured: UILabel!
    
    @IBOutlet weak var lblInsuredTitleFullName: UILabel!
    @IBOutlet weak var lblInsuredTitleLastName: UILabel!
    @IBOutlet weak var lblInsuredTitleDob: UILabel!
    @IBOutlet weak var lblInsuredTitleGender: UILabel!
    @IBOutlet weak var lblInsuredTitleAnualSalary: UILabel!
    @IBOutlet weak var lblInsuredTitleAccountCalculation: UILabel!
    @IBOutlet weak var lblInsuredTitleTotalAccumulatedAssetDate: UILabel!
    @IBOutlet weak var lblInsuredTitleHaveaccumulatedLPP : UILabel!
    
    @IBOutlet weak var lblInsuredFullName: UILabel!
    @IBOutlet weak var lblInsuredLastName: UILabel!
    @IBOutlet weak var lblInsuredDob: UILabel!
    @IBOutlet weak var lblInsuredGender: UILabel!
    @IBOutlet weak var lblInsuredAnualSalary: UILabel!
    @IBOutlet weak var lblInsuredAccountCalculation: UILabel!
    @IBOutlet weak var lblInsuredTotalAccumulatedAssetDate: UILabel!
    @IBOutlet weak var lblInsuredHaveaccumulatedLPP : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setLocalization()
    }

    func setLocalization(){
        self.lblHeadingInsured.text = "INSURED".localized()

        self.lblInsuredTitleFullName.text = "First Name".localized()
        self.lblInsuredTitleLastName.text = "Last Name".localized()
        self.lblInsuredTitleDob.text = "Date of Birth".localized()
        self.lblInsuredTitleGender.text = "Gender".localized()
        self.lblInsuredTitleAnualSalary.text = "AVS annual salary".localized()
        self.lblInsuredTitleAccountCalculation.text = "Activity rate (if taken into account in the calculation)".localized()
        self.lblInsuredTitleTotalAccumulatedAssetDate.text = "Total Accumulated Asset/Date".localized()
        self.lblInsuredTitleHaveaccumulatedLPP .text = "Have accumulated LPP share".localized()
    }
  
    
}

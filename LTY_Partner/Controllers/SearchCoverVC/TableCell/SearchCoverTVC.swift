//
//  SearchCoverTVC.swift
//  LTY_Partner
//
//  Created by Chawtech on 17/07/23.
//

import UIKit

class SearchCoverTVC: UITableViewCell {
    
    @IBOutlet weak var cellStatusLbl: UILabel!
    @IBOutlet weak var cellNameLbl: UILabel!
    @IBOutlet weak var cellMenuBtn: UIButton!
    @IBOutlet weak var cellMailLbl: UILabel!
    @IBOutlet weak var cellPhoneLbl: UILabel!
    @IBOutlet weak var cellAmountLbl: UILabel!
    @IBOutlet weak var cellCustomer: UILabel!
    
    @IBOutlet weak var lblContractSigned: UILabel!
    @IBOutlet weak var lblAgnetName: UILabel!
    @IBOutlet weak var lblProposalShared: UILabel!
    @IBOutlet weak var cellContractSigned: UILabel!
    @IBOutlet weak var cellProposalShared: UILabel!
    @IBOutlet weak var cellTotalIncome: UILabel!
    
    @IBOutlet weak var lblEmai: UILabel!
    @IBOutlet weak var lblPhone: UILabel!
    @IBOutlet weak var lblAmount: UILabel!
 
    @IBOutlet weak var totalIncomeView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        self.lblEmai.text = "Email".localized()
        self.lblPhone.text = "Phone".localized()
        self.lblAmount.text = "Total Amount".localized()
        self.lblAgnetName.text = "Agent".localized()
        self.lblProposalShared.text = "Proposal Shared".localized()
        self.lblContractSigned.text = "Contract Signed".localized()
    }

}
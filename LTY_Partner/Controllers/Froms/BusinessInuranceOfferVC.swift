//
//  BusinessInuranceOfferVC.swift
//  LTY_Partner
//
//  Created by Chawtech on 12/12/23.
//

import UIKit

class BusinessInuranceOfferVC: UIViewController {
    
    @IBOutlet weak var whichOneView: UIView!
    
    @IBOutlet weak var insuredViewHeightConstant: NSLayoutConstraint!
    @IBOutlet weak var insuredTableHeightConstant: NSLayoutConstraint!
    
    @IBOutlet weak var insuredTableView: UITableView!
    @IBOutlet weak var customNavHeight: NSLayoutConstraint!
    @IBOutlet weak var customNavDrower: CustomNavigationBarForDrawer!
    
    @IBOutlet weak var lblPersnalPostalCode: UILabel!
    @IBOutlet weak var lblTitlePersnalInfo: UILabel!
    @IBOutlet weak var lblTitlePersnalInfoFullName: UILabel!
    @IBOutlet weak var lblTitlePersnalInfoEmail: UILabel!
    @IBOutlet weak var lblTitlePersnalInfoMobile: UILabel!
    @IBOutlet weak var lblTitlePersnalInfoDob: UILabel!
    @IBOutlet weak var lblTitlePersnalInfoNationality: UILabel!
    @IBOutlet weak var lblTitlePersnalInfoCity: UILabel!
    @IBOutlet weak var lblTitlePersnalInfoAddress: UILabel!
    @IBOutlet weak var lblTitlePersnalInfoPartner: UILabel!
    @IBOutlet weak var lblTitlePersnalInfoagent: UILabel!
    @IBOutlet weak var lblTitleMemberInfoFullName: UILabel!
    @IBOutlet weak var lblTitleMemberInfoRelation: UILabel!
    @IBOutlet weak var lblTitleMemberInfoInsuranceType: UILabel!
    @IBOutlet weak var lblTitleMemberInfo: UILabel!
    
    @IBOutlet weak var lblPersnalInfoFullName: UILabel!
    @IBOutlet weak var lblPersnalInfoEmail: UILabel!
    @IBOutlet weak var lblPersnalInfoMobile: UILabel!
    @IBOutlet weak var lblPersnalInfoDob: UILabel!
    @IBOutlet weak var lblPersnalInfoNationality: UILabel!
    @IBOutlet weak var lblPersnalInfoCity: UILabel!
    @IBOutlet weak var lblPersnalInfoAddress: UILabel!
    @IBOutlet weak var lblPersnalInfoPartner: UILabel!
    @IBOutlet weak var lblPersnalInfoagent: UILabel!
    @IBOutlet weak var lblMemberInfoFullName: UILabel!
    @IBOutlet weak var lblMemberInfoRelation: UILabel!
    @IBOutlet weak var lblMemberInfoInsuranceType: UILabel!
    
    
    
    @IBOutlet weak var lblHeadingCompanyInfo: UILabel!
    
    @IBOutlet weak var lblTitleCompanyInfoId: UILabel!
    
    @IBOutlet weak var lblTitleCompanyInfoEmail: UILabel!
    
    @IBOutlet weak var lblTitleCompanyInfoAddress: UILabel!
    @IBOutlet weak var lblTitleCompanyInfoZip: UILabel!
    @IBOutlet weak var lblTitleCompanyInfoTypeOfActivity: UILabel!
    
    @IBOutlet weak var lblTitleCompanyInfoSocialReason: UILabel!
    
    
    
    @IBOutlet weak var lblCompanyInfoId: UILabel!
    
    @IBOutlet weak var lblCompanyInfoEmail: UILabel!
    
    @IBOutlet weak var lblCompanyInfoAddress: UILabel!
    @IBOutlet weak var lblCompanyInfoZip: UILabel!
    @IBOutlet weak var lblCompanyInfoTypeOfActivity: UILabel!
    
    @IBOutlet weak var lblCompanyInfoSocialReason: UILabel!
    
    
    
    
    
    @IBOutlet weak var lbHeadingDailyAllowance: UILabel!
    
    
    @IBOutlet weak var lblTitleDailyAlloancePolicyNo: UILabel!
    
    @IBOutlet weak var lblTitleDailyAlloanceDate: UILabel!
    
    @IBOutlet weak var lblTitleDailyAlloanceNear: UILabel!
    
    
    @IBOutlet weak var lblDailyAlloancePolicyNo: UILabel!
    
    @IBOutlet weak var lblDailyAlloanceDate: UILabel!
    
    @IBOutlet weak var lblDailyAlloanceNear: UILabel!
    
    
    
    @IBOutlet weak var LblHeadingForStaff: UILabel!
    
    @IBOutlet weak var lblTitleForStaffInsuredCircle: UILabel!
    
    @IBOutlet weak var lblTitleForStaffMaxInsuredAnnualSalary: UILabel!
    @IBOutlet weak var lblTitleForStaffSalariesManAvs: UILabel!
    @IBOutlet weak var lblTitleForStaffSalariesWomenAvs: UILabel!
    @IBOutlet weak var lblTitleForStaffSalariesCoverageInPercentage: UILabel!
    @IBOutlet weak var lblTitleForStaffWaitingTimeInDays: UILabel!
    
    
    
    
    @IBOutlet weak var lblForStaffInsuredCircle: UILabel!
    
    @IBOutlet weak var lblForStaffMaxInsuredAnnualSalary: UILabel!
    @IBOutlet weak var lblForStaffSalariesManAvs: UILabel!
    @IBOutlet weak var lblForStaffSalariesWomenAvs: UILabel!
    @IBOutlet weak var lblForStaffSalariesCoverageInPercentage: UILabel!
    @IBOutlet weak var lblForStaffWaitingTimeInDays: UILabel!
    
    
    @IBOutlet weak var lblHeadingMaternitySupplement: UILabel!
    
    
    @IBOutlet weak var lblTitleMaternitySupplementDurationInDays: UILabel!
    
    @IBOutlet weak var lblTitleMaternitySupplementBlanket: UILabel!
    
    @IBOutlet weak var lblMaternitySupplementDurationInDays: UILabel!
    
    @IBOutlet weak var lblMaternitySupplementBlanket: UILabel!
    
    
    
    @IBOutlet weak var lblHeadingForSelfEmployeedWithStaff: UILabel!
    
    
    @IBOutlet weak var lblTitleForSelfEmployedWithStaffFirstName: UILabel!
    
    @IBOutlet weak var lblTitleForSelfEmployedWithStaffLastName: UILabel!
    
    
    @IBOutlet weak var lblTitleForSelfEmployedWithStaffDob: UILabel!
    
    @IBOutlet weak var lblTitleForSelfEmployedWithStaffEmail: UILabel!
    
    @IBOutlet weak var lblTitleForSelfEmployedWithStaffInsuredConventionalSalary: UILabel!
    
    
    @IBOutlet weak var lblTitleForSelfEmployedWithStaffSalarySubjectToAvs: UILabel!
    
    @IBOutlet weak var lblTitleForSelfEmployedWithStaffWaitingTimeInDays: UILabel!
    
    @IBOutlet weak var lblTitleForSelfEmployedWithStaffSalaryCoverage: UILabel!
    
    
    @IBOutlet weak var lblTitleForSelfEmployedWithStaffAccidentCover: UILabel!
    
    @IBOutlet weak var lblTitleForSelfEmployedWithStaffWaitingTime: UILabel!
    
    
    
    @IBOutlet weak var lblTitleForSelfEmployedWithStaffParticipationInSuperClass: UILabel!
    
    @IBOutlet weak var lblTitleForSelfEmployedWithStaffDesiredEntryInfoForce: UILabel!
    
    @IBOutlet weak var lblTitleForSelfEmployedWithStaffContactLength: UILabel!
    
    
    
    
    @IBOutlet weak var lblForSelfEmployedWithStaffFirstName: UILabel!
    
    @IBOutlet weak var lblForSelfEmployedWithStaffLastName: UILabel!
    
    
    @IBOutlet weak var lblForSelfEmployedWithStaffDob: UILabel!
    
    @IBOutlet weak var lblForSelfEmployedWithStaffEmail: UILabel!
    
    @IBOutlet weak var lblForSelfEmployedWithStaffInsuredConventionalSalary: UILabel!
    
    
    @IBOutlet weak var lblForSelfEmployedWithStaffSalarySubjectToAvs: UILabel!
    
    @IBOutlet weak var lblForSelfEmployedWithStaffWaitingTimeInDays: UILabel!
    
    @IBOutlet weak var lblForSelfEmployedWithStaffSalaryCoverage: UILabel!
    
    
    @IBOutlet weak var lblForSelfEmployedWithStaffAccidentCover: UILabel!
    
    
    @IBOutlet weak var lblForSelfEmployedWithStaffWaitingTime: UILabel!
    
    @IBOutlet weak var lblForSelfEmployedWithStaffParticipationInSuperClass: UILabel!
    
    @IBOutlet weak var lblForSelfEmployedWithStaffDesiredEntryInfoForce: UILabel!
    
    @IBOutlet weak var lblForSelfEmployedWithStaffContactLength: UILabel!
    
    
    
    
    
    @IBOutlet weak var lblHeadingAccidentInsuranceAccordingToUVg: UILabel!
    
    
    @IBOutlet weak var lblTitleAccidentInsuranceAccordingToUvgPolicyNo: UILabel!
    
    @IBOutlet weak var lblTitleAccidentInsuranceAccordingToUvgDate: UILabel!
    
    
    @IBOutlet weak var lblTitleAccidentInsuranceAccordingToUvgNear: UILabel!
    
    @IBOutlet weak var lblAccidentInsuranceAccordingToUvgPolicyNo: UILabel!
    
    @IBOutlet weak var lblAccidentInsuranceAccordingToUvgDate: UILabel!
    
    
    @IBOutlet weak var lblAccidentInsuranceAccordingToUvgNear: UILabel!
    
    
    
    
    
    @IBOutlet weak var setlblHeadingForStaff: UILabel!
    
    @IBOutlet weak var lblTitleForStaffDesiredEntryIntoForce: UILabel!
    
    @IBOutlet weak var lblTitleForStaffMaxInsuredAnnualSlry: UILabel!
    
    @IBOutlet weak var lblTitleForStaffApMaleSalaries: UILabel!
    
    @IBOutlet weak var lblTitleForStaffApFemaleSalary: UILabel!
    
    @IBOutlet weak var lblTitleForStaffContractLength: UILabel!
    
    
    
    @IBOutlet weak var lblTitleForStaffSalaryCoverage: UILabel!
    
    
    @IBOutlet weak var lblTitleForStaffWaitingTime: UILabel!
    
    
    @IBOutlet weak var lblForStaffDesiredEntryIntoForce: UILabel!
    
    @IBOutlet weak var lblForStaffMaxInsuredAnnualSlry: UILabel!
    
    @IBOutlet weak var lblForStaffApMaleSalaries: UILabel!
    
    @IBOutlet weak var lblForStaffApFemaleSalary: UILabel!
    
    @IBOutlet weak var lblForStaffContractLength: UILabel!
    
    @IBOutlet weak var lblForStaffSalaryCoverage: UILabel!
    
    @IBOutlet weak var lblForStaffWaitingTime: UILabel!
    
    
    
    
    
    
    @IBOutlet weak var lblHeadingComplementryInsuredToLaa: UILabel!
    
    
    @IBOutlet weak var lblTitleComlpentryInsurenceToLLaPolicyNumber: UILabel!
    
    @IBOutlet weak var lblTitleComlpentryInsurenceToLaaDate: UILabel!
    
    
    @IBOutlet weak var lblTitleComlpentryInsurenceToLaaNear: UILabel!
    
    
    @IBOutlet weak var lblTitleComlpentryInsurenceToLaaInsuredCircle: UILabel!
    
    
    
    @IBOutlet weak var lblTitleComlpentryInsurenceToLaaMaxInsuredAnnualSaalry: UILabel!
    
    
    
    @IBOutlet weak var lblTitleComlpentryInsurenceToLaaSalaryMen: UILabel!
    
    @IBOutlet weak var lblTitleComlpentryInsurenceToLaaSalaryWomen: UILabel!
    
    
    
    @IBOutlet weak var lblTitleComlpentryInsurenceToLaaPolicyType: UILabel!
    
    @IBOutlet weak var lblTitleComlpentryInsurenceToLaaDailyAllowForFirst2DaysInPerc: UILabel!
    
    @IBOutlet weak var lblTitleComlpentryInsurenceToLaaDailyAllowanceFrom3thDaysInPerc: UILabel!
    
    @IBOutlet weak var lblTitleComlpentryInsurenceToLaaWitingTimeInDays: UILabel!
    @IBOutlet weak var lblTitleComlpentryInsurenceToLaaDeathBenifits: UILabel!
    
    @IBOutlet weak var lblTitleComlpentryInsurenceToLaaDisabilityLumpSum: UILabel!
    @IBOutlet weak var lblTitleComlpentryInsurenceToLaaPRogress: UILabel!
    
    
    
    
    
    @IBOutlet weak var lblComlpentryInsurenceToLLaPolicyNumber: UILabel!
    
    @IBOutlet weak var lblComlpentryInsurenceToLaaDate: UILabel!
    
    
    @IBOutlet weak var lblComlpentryInsurenceToLaaNear: UILabel!
    
    
    @IBOutlet weak var lblComlpentryInsurenceToLaaInsuredCircle: UILabel!
    
    
    
    @IBOutlet weak var lblComlpentryInsurenceToLaaMaxInsuredAnnualSaalry: UILabel!
    
    
    
    @IBOutlet weak var lblComlpentryInsurenceToLaaSalaryMen: UILabel!
    
    
    
    
    @IBOutlet weak var lblComlpentryInsurenceToLaaSalaryWomen: UILabel!
    
    
    
    @IBOutlet weak var lblComlpentryInsurenceToLaaPolicyType: UILabel!
    
    @IBOutlet weak var lblComlpentryInsurenceToLaaDailyAllowForFirst2DaysInPerc: UILabel!
    
    @IBOutlet weak var lblComlpentryInsurenceToLaaDailyAllowanceFrom3thDaysInPerc: UILabel!
    
    @IBOutlet weak var lblComlpentryInsurenceToLaaWitingTimeInDays: UILabel!
    @IBOutlet weak var lblComlpentryInsurenceToLaaDeathBenifits: UILabel!
    
    @IBOutlet weak var lblComlpentryInsurenceToLaaDisabilityLumpSum: UILabel!
    @IBOutlet weak var lblComlpentryInsurenceToLaaPRogress: UILabel!
    
    
    
    
    
    
    @IBOutlet weak var lblHeadingExcessSuplemenntalInsuranceCoverage: UILabel!
    
    
    @IBOutlet weak var lblTitleExcessSuppleIsuranceCoverageInsuredCircle: UILabel!
    
    @IBOutlet weak var lblTitleExcessSuppleIsuranceCoverageInsuredAnnualSalary: UILabel!
    
    @IBOutlet weak var lblTitleExcessSuppleIsuranceCoverageExcessWages: UILabel!
    
    @IBOutlet weak var lblTitleExcessSuppleIsuranceCoverageMen: UILabel!
    
    @IBOutlet weak var lblTitleExcessSuppleIsuranceCoverageWomen: UILabel!
    
    @IBOutlet weak var lblTitleExcessSuppleIsuranceCoveragePerDieminPerc: UILabel!
    
    @IBOutlet weak var lblTitleExcessSuppleIsuranceCoverageWaitingTimeInDays: UILabel!
    
    @IBOutlet weak var lblTitleExcessSuppleIsuranceCoverageDeathBenifits: UILabel!
    
    
    @IBOutlet weak var lblTitleExcessSuppleIsuranceCoverageDisabilityLumpSum: UILabel!
    
    
    @IBOutlet weak var lblTitleExcessSuppleIsuranceCoverageDisabilityPension: UILabel!
    
    
    @IBOutlet weak var lblTitleExcessSuppleIsuranceCoverageSurvivorsPension: UILabel!
    
    
    @IBOutlet weak var lblTitleExcessSuppleIsuranceCoverageDesiredEntryIntoForce: UILabel!
    
    
    
    @IBOutlet weak var lblTitleExcessSuppleIsuranceCoverageParticipationInSurpluses: UILabel!
    
    
    @IBOutlet weak var lblTitleExcessSuppleIsuranceCoverageContactDuration: UILabel!
    
    
    @IBOutlet weak var lblExcessSuppleIsuranceCoverageInsuredCircle: UILabel!
    
    @IBOutlet weak var lblExcessSuppleIsuranceCoverageInsuredAnnualSalary: UILabel!
    
    @IBOutlet weak var lblExcessSuppleIsuranceCoverageExcessWages: UILabel!
    
    @IBOutlet weak var lblExcessSuppleIsuranceCoverageMen: UILabel!
    
    @IBOutlet weak var lblExcessSuppleIsuranceCoverageWomen: UILabel!
    
    @IBOutlet weak var lblExcessSuppleIsuranceCoveragePerDieminPerc: UILabel!
    
    @IBOutlet weak var lblExcessSuppleIsuranceCoverageWaitingTimeInDays: UILabel!
    
    @IBOutlet weak var lblExcessSuppleIsuranceCoverageDeathBenifits: UILabel!
    
    
    @IBOutlet weak var lblExcessSuppleIsuranceCoverageDisabilityLumpSum: UILabel!
    
    
    @IBOutlet weak var lblExcessSuppleIsuranceCoverageDisabilityPension: UILabel!
    
    
    @IBOutlet weak var lblExcessSuppleIsuranceCoverageSurvivorsPension: UILabel!
    
    
    @IBOutlet weak var lblExcessSuppleIsuranceCoverageDesiredEntryIntoForce: UILabel!
    
    
    
    @IBOutlet weak var lblExcessSuppleIsuranceCoverageParticipationInSurpluses: UILabel!
    
    
    @IBOutlet weak var lblExcessSuppleIsuranceCoverageContactDuration: UILabel!
    
    
    
    
    
    
    @IBOutlet weak var lblHeadingOccupationalPensionPlan: UILabel!
    
    
    @IBOutlet weak var lblTitleOccupationalPensionPlanPolicyNo: UILabel!
    
    @IBOutlet weak var lblTitleOccupationalPensionPlanDate: UILabel!
    
    @IBOutlet weak var lblTitleOccupationalPensionPlanNear: UILabel!
    
    @IBOutlet weak var lblTitleOccupationalPensionPlanComapnyNeverAffilitedToTheLppDesiredEntryIntoForce: UILabel!
    
    
    @IBOutlet weak var lblTitleOccupationalPensionPlanSinceWhenHasComnyEmpStaffSubLlp: UILabel!
    @IBOutlet weak var lblTitleOccupationalPensionPlanForOtherCompDesiredEntryIntoForce: UILabel!
    
    
    @IBOutlet weak var lblTitleOccupationalPensionPlanNmaeOfTheCurrentPensionInsti: UILabel!
    
    @IBOutlet weak var lblTitleOccupationalPensionPlanContractExpiry: UILabel!
    
    @IBOutlet weak var lblTitleOccupationalPensionPlanAsaMembers: UILabel!
    
    
    @IBOutlet weak var lblOccupationalPensionPlanPolicyNo: UILabel!
    
    @IBOutlet weak var lblOccupationalPensionPlanDate: UILabel!
    
    @IBOutlet weak var lblOccupationalPensionPlanNear: UILabel!
    
    @IBOutlet weak var lblOccupationalPensionPlanComapnyNeverAffilitedToTheLppDesiredEntryIntoForce: UILabel!
    
    
    @IBOutlet weak var lblOccupationalPensionPlanSinceWhenHasComnyEmpStaffSubLlp: UILabel!
    @IBOutlet weak var lblOccupationalPensionPlanForOtherCompDesiredEntryIntoForce: UILabel!
    
    
    @IBOutlet weak var lblOccupationalPensionPlanNmaeOfTheCurrentPensionInsti: UILabel!
    
    @IBOutlet weak var lblOccupationalPensionPlanContractExpiry: UILabel!
    
    @IBOutlet weak var lblOccupationalPensionPlanAsaMembers: UILabel!
    
    
    
    
    
    
    @IBOutlet weak var lblHeadingClaim: UILabel!
    
    
    @IBOutlet weak var lblTitleClaimClaimAttachment: UILabel!
    
    @IBOutlet weak var lblTitleClaimClaimCaseToResume: UILabel!
    
    @IBOutlet weak var lblTitleClaimClaimWhichOnes: UILabel!
    
    @IBOutlet weak var lblClaimClaimAttachment: UILabel!
    
    
    @IBOutlet weak var lblClaimClaimCaseToResume: UILabel!
    
    @IBOutlet weak var lblClaimClaimWhichOnes: UILabel!
    
    
    @IBOutlet weak var lblHeadingDesiredInsuranceCoverage: UILabel!
    @IBOutlet weak var lblTitleLossEarningHealthInsuCover80PerFor720Days: UILabel!
    @IBOutlet weak var lblTitleLossEarningHealthInsuCoverRemarks: UILabel!
    
    @IBOutlet weak var lblDesiredIsuranceCoverage: UILabel!
    @IBOutlet weak var lblLossEarningHealthInsuCover80PerFor720Days: UILabel!
    @IBOutlet weak var lblLossEarningHealthInsuCoverRemarks: UILabel!
    
    
    var agrementDocUrl = ""
    var claimDocUrl = ""
    var quatationDocUrl = ""
    var reportDocUrl = ""
    
    var leadId = ""
    var leadInsuranceViewModel = LeadInsuranceViewModel()
    
    
    var categoryViewModel = CategoryViewModel()
    var categoryListData = [MainCategoryList]()
    var categoryListNewData = [MainCategoryNewList]()
    var isCategoryAdded = false
    var insurnceType = ""
    var agentName = ""
    var agentId = ""
    var status = ""
    var proposalIdArr = [String]()
    var insuredListArr = [InsuredList]()
    
    let dispatchGroup = DispatchGroup()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
        setDrowerHeight()
        
        
        if self.status == "CLOSED" || self.status == "ACCEPTED"{
            
        }else{
            floatingButton()
        }
        setLocalization()
        
        customNavDrower.titleLabel.text = "Basic Insurance information".localized()
        customNavDrower.titleLabel.textAlignment = .center
        customNavDrower.leftSideMenuButtonItem.setImage(Asset.Assets.backArrow.image, for: .normal)
        customNavDrower.leftSideMenuButtonItem.addTarget(self, action: #selector(backActionBtn(_:)), for: .touchUpInside)
        
        leadInsuranceViewModel.businessOfferDelegate = self
    }
    
    //MARK:- SetUp TabelView
    
    func setUpTableView() {
        insuredTableView.delegate = self
        insuredTableView.dataSource = self
        insuredTableView.separatorStyle = .none
        //  insuredTableView.backgroundColor = Asset.Colors.mediumWhite.color
        insuredTableView.register(UINib(nibName: "BusinessInsuranceOfferTVC", bundle: Bundle.main), forCellReuseIdentifier: "BusinessInsuranceOfferTVC")
    }
    
    
    func setLocalization() {
        
        self.lblTitlePersnalInfoFullName.text = "Full Name".localized()
        self.lblTitlePersnalInfoEmail.text = "Email".localized()
        self.lblTitlePersnalInfoMobile.text = "Phone Number".localized()
        self.lblTitlePersnalInfoDob.text = "Date of Birth".localized()
        self.lblTitlePersnalInfoNationality.text = "Nationality".localized()
        self.lblTitlePersnalInfoCity.text = "City".localized()
        self.lblTitlePersnalInfoAddress.text = "Street Address".localized()
        self.lblTitlePersnalInfoPartner.text = "Partner".localized()
        self.lblTitlePersnalInfoagent.text = "Agent".localized()
        self.lblTitleMemberInfoFullName.text = "Member name".localized()
        self.lblTitleMemberInfoRelation.text = "Relation".localized()
        self.lblTitleMemberInfoInsuranceType.text = "insurance Type".localized()
        self.lblTitleMemberInfo.text = "Member Information".localized()
        
        //MARK:- heading localization
        self.lblHeadingCompanyInfo.text = "Company Information".localized()
        self.lblHeadingDesiredInsuranceCoverage.text = "Daily Allowance".localized()
        self.lblHeadingMaternitySupplement.text = "MATERNITY SUPPLEMENT (ACL)".localized()
        self.lblHeadingForSelfEmployeedWithStaff.text = "FOR SELF-EMPLOYED WITH STAFF (the self-employed without employees cannot take out group insurance coverage. our individual products meet their needs)".localized()
        self.lblHeadingAccidentInsuranceAccordingToUVg.text = "Accident insurance according to UVG".localized()
        self.setlblHeadingForStaff.text = "FOR STAFF".localized()
        self.lblHeadingComplementryInsuredToLaa.text = "Complementary insurance to LAA (LAAC) If the company is subject to SUVA - Final SUVA AP rate in percent:".localized()
        self.lblHeadingExcessSuplemenntalInsuranceCoverage.text = "EXCESS SUPPLEMENTAL INSURANCE COVERAG".localized()
        self.lblHeadingOccupationalPensionPlan.text = "Occupational pension plan (LPP) If the company is subject to SUVA - Final SUVA AP rate in percent:".localized()
        self.lblHeadingClaim.text = "CLAIM".localized()
        self.lblHeadingDesiredInsuranceCoverage.text = "DESIRED INSURANCE COVERAGE".localized()
            
            
            //MARK:- title localization
            
            self.lblTitleCompanyInfoId.text = "#ID".localized()
            self.lblTitleCompanyInfoEmail.text = "E-mail".localized()
            self.lblTitleCompanyInfoAddress.text = "Address".localized()
            self.lblTitleCompanyInfoZip.text = "Zip / Location".localized()
            self.lblTitleCompanyInfoTypeOfActivity.text = "Type of Activity".localized()
            self.lblTitleCompanyInfoSocialReason.text = "Social reason".localized()
            self.lblTitleDailyAlloancePolicyNo.text = "Policy Number".localized()
            self.lblTitleDailyAlloanceDate.text = "Date".localized()
            self.lblTitleDailyAlloanceNear.text = "Near".localized()
            self.lblTitleForStaffInsuredCircle.text = "Insured circle".localized()
            // self.lblTitleForStaffMaxInsuredAnnualSalary.text = "Maximum insured annual salary".localized()
            self.lblTitleForStaffSalariesManAvs.text = "Salaries".localized()
            self.lblTitleForStaffSalariesWomenAvs.text = "Salaries women AVS".localized()
            self.lblTitleForStaffSalariesCoverageInPercentage.text = "Salary coverage in %".localized()
            self.lblTitleForStaffWaitingTimeInDays.text = "Waiting time in days".localized()
            self.lblTitleMaternitySupplementDurationInDays.text = "Duration in Days".localized()
            self.lblTitleMaternitySupplementBlanket.text = "Blanket".localized()
            self.lblTitleForSelfEmployedWithStaffFirstName.text = "First Name".localized()
            self.lblTitleForSelfEmployedWithStaffLastName.text = "Last Name".localized()
            self.lblTitleForSelfEmployedWithStaffDob.text = " Date of Birth ".localized()
            self.lblTitleForSelfEmployedWithStaffEmail.text = "Email".localized()
            self.lblTitleForSelfEmployedWithStaffInsuredConventionalSalary.text = "Insured conventional salary*".localized()
            self.lblTitleForSelfEmployedWithStaffSalarySubjectToAvs.text = "Salary subject to AVS".localized()
            self.lblTitleForSelfEmployedWithStaffWaitingTimeInDays.text = "Waiting time in days".localized()
            self.lblTitleForSelfEmployedWithStaffSalaryCoverage.text = "Salary Coverage".localized()
            self.lblTitleForSelfEmployedWithStaffAccidentCover.text = "Accident Cover".localized()
            self.lblTitleForSelfEmployedWithStaffWaitingTime.text = "Waiting Time".localized()
            self.lblTitleForSelfEmployedWithStaffParticipationInSuperClass.text = "* thisParticipation in surpluses".localized()
            self.lblTitleForSelfEmployedWithStaffDesiredEntryInfoForce.text = "Desired entry into force (on 1erday of a month)".localized()
            self.lblTitleForSelfEmployedWithStaffContactLength.text = "Contract Length".localized()
            self.lblTitleAccidentInsuranceAccordingToUvgPolicyNo.text = "Policy Number".localized()
            self.lblTitleAccidentInsuranceAccordingToUvgDate.text = "Date".localized()
            self.lblTitleAccidentInsuranceAccordingToUvgNear.text = "Near".localized()
            self.lblTitleForStaffDesiredEntryIntoForce.text = "Desired entry into force (on 1erday of a month)".localized()
            self.lblTitleForStaffMaxInsuredAnnualSlry.text = "Maximum insured annual salary".localized()
            self.lblTitleForStaffApMaleSalaries.text = "AP Male salaries".localized()
            self.lblTitleForStaffApFemaleSalary.text = "AP female salaries".localized()
            self.lblTitleForStaffContractLength.text = "Contract Length".localized()
            self.lblTitleForStaffSalaryCoverage.text = "Salary coverage".localized()
            self.lblTitleForStaffWaitingTime.text = "Waiting Time".localized()
            
            
            self.lblTitleComlpentryInsurenceToLLaPolicyNumber.text = "Policy Number".localized()
            self.lblTitleComlpentryInsurenceToLaaDate.text = "Date".localized()
            self.lblTitleComlpentryInsurenceToLaaNear.text = "Near".localized()
            self.lblTitleComlpentryInsurenceToLaaInsuredCircle.text = "Insured circle".localized()
            self.lblTitleComlpentryInsurenceToLaaMaxInsuredAnnualSaalry.text = "Maximum insured annual salary".localized()
            self.lblTitleComlpentryInsurenceToLaaSalaryMen.text = "LAA salary Men".localized()
            self.lblTitleComlpentryInsurenceToLaaSalaryWomen.text = "LAA salary Women".localized()
            self.lblTitleComlpentryInsurenceToLaaPolicyType.text = "Policy Type".localized()
            self.lblTitleComlpentryInsurenceToLaaDailyAllowForFirst2DaysInPerc.text = "Daily allowance for the first 2 days in %:".localized()
            self.lblTitleComlpentryInsurenceToLaaDailyAllowanceFrom3thDaysInPerc.text = "Daily allowance from 3 th days in %".localized()
            
            self.lblTitleComlpentryInsurenceToLaaWitingTimeInDays.text = "Waiting time in days".localized()
            self.lblTitleComlpentryInsurenceToLaaDeathBenifits.text = "Death Benefits".localized()
            self.lblTitleComlpentryInsurenceToLaaDisabilityLumpSum.text = "Disability lump sum".localized()
            self.lblTitleComlpentryInsurenceToLaaPRogress.text = "Progress".localized()
            self.lblTitleExcessSuppleIsuranceCoverageInsuredCircle.text = "Insured Circle".localized()
            self.lblTitleExcessSuppleIsuranceCoverageInsuredAnnualSalary.text = "Insured Annual Salary".localized()
            self.lblTitleExcessSuppleIsuranceCoverageExcessWages.text = "Excess Wages".localized()
            self.lblTitleExcessSuppleIsuranceCoverageMen.text = "Men".localized()
            self.lblTitleExcessSuppleIsuranceCoverageWomen.text = "Women".localized()
            self.lblTitleExcessSuppleIsuranceCoveragePerDieminPerc.text = "Per diem in %".localized()
            self.lblTitleExcessSuppleIsuranceCoverageWaitingTimeInDays.text = "Waiting time in days".localized()
            self.lblTitleExcessSuppleIsuranceCoverageDeathBenifits.text = "Death Benefits".localized()
            self.lblTitleExcessSuppleIsuranceCoverageDisabilityLumpSum.text = "Disability lump sum".localized()
            self.lblTitleExcessSuppleIsuranceCoverageDisabilityPension.text = "Disability pension*".localized()
            self.lblTitleExcessSuppleIsuranceCoverageSurvivorsPension.text = "Survivor's pension*".localized()
            self.lblTitleExcessSuppleIsuranceCoverageDesiredEntryIntoForce.text = "Desired entry into force (on 1 day of a month)".localized()
            self.lblTitleExcessSuppleIsuranceCoverageParticipationInSurpluses.text = "Participation in surpluses".localized()
            self.lblTitleExcessSuppleIsuranceCoverageContactDuration.text = "Contact Duration".localized()
            self.lblTitleOccupationalPensionPlanPolicyNo.text = "Policy Number".localized()
            self.lblTitleOccupationalPensionPlanDate.text = "Date".localized()
            self.lblTitleOccupationalPensionPlanNear.text = "Near".localized()
            self.lblTitleOccupationalPensionPlanComapnyNeverAffilitedToTheLppDesiredEntryIntoForce.text = "Company never affiliated to the LPP, desired entry into force".localized()
            self.lblTitleOccupationalPensionPlanSinceWhenHasComnyEmpStaffSubLlp.text = "Since when has the company employed staff subject to the LPP(date from which employees reach the minimum wage)?".localized()
            
            self.lblTitleOccupationalPensionPlanForOtherCompDesiredEntryIntoForce.text = "For other companies, desired entry into force".localized()
            self.lblTitleOccupationalPensionPlanNmaeOfTheCurrentPensionInsti.text = "Name of the current pension institution".localized()
            self.lblTitleOccupationalPensionPlanContractExpiry.text = "Contract expiry:".localized()
            self.lblTitleOccupationalPensionPlanAsaMembers.text = "ASA Members".localized()
            
            self.lblTitleClaimClaimAttachment.text = "Claim Attachment".localized()
            
            self.lblTitleClaimClaimCaseToResume.text = "Case to resume".localized()
            
            self.lblTitleClaimClaimWhichOnes.text = "Which Ones".localized()
            
            
            self.lblTitleLossEarningHealthInsuCover80PerFor720Days.text = "Is there a loss of earnings health insurance covering at least 80% for 720 days?".localized()
            self.lblTitleLossEarningHealthInsuCoverRemarks.text = "Remarks".localized()
            self.lblHeadingDesiredInsuranceCoverage.text = "Desired Insurance".localized()
            /*
             self.lblTitleInsCompLessThan7PplOrNoListAvlblFirstName.text = "First Name Information".localized()
             
             
             self.lblTitleInsCompLessThan7PplOrNoListAvlblLastName.text = "Last Name".localized()
             
             self.lblTitleInsCompLessThan7PplOrNoListAvlblDob.text = "Date of Birth".localized()
             
             
             
             self.lblTitleInsCompLessThan7PplOrNoListAvlblgender.text = "Gender".localized()
             
             
             self.lblTitleInsCompLessThan7PplOrNoListAvlblAvsAnnualSalary.text = "AVS annual salary".localized()
             
             self.lblTitleInsCompLessThan7PplOrNoListAvlblActivityRate.text = "Activity rate (if taken into account in the calculation)".localized()
             
             self.lblTitleInsCompLessThan7PplOrNoListAvlblTotalAccumulatedAsset.text = "Total Accumulated Asset/Date".localized()
             
             self.lblTitleInsCompLessThan7PplOrNoListAvlblAsaMembers.text = "ASA Members".localized()
             */
            
            }
            
            
            func floatingButton(){
                let btn = UIButton(type: .custom)
                let width = UIScreen.main.bounds.width - 20
                let height = UIScreen.main.bounds.height - 80
                btn.frame = CGRect(x: 10, y: height, width: width, height: 50)
                btn.setTitle("Add Proposal".localized(), for: .normal)
                btn.backgroundColor = #colorLiteral(red: 0.2343253941, green: 0.4656714117, blue: 0.891181947, alpha: 1)
                btn.clipsToBounds = true
                btn.layer.cornerRadius = 8
                btn.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                btn.layer.borderWidth = 3.0
                btn.addTarget(self,action: #selector(addProposalBtn(_:)), for:.touchUpInside)
                view.addSubview(btn)
            }
            
            @objc func addProposalBtn(_ sender: UIButton){
                print("Add Proposal in forms")
                // categoryViewModel.delegate = self
                //  categoryViewModel.categoryListByAgentDelegate = self
                dispatchGroup.enter()
                if self.agentId == "" {
                    let PartnerId = kUserDefaults.value(forKey: AppKeys.partnerID)
                    let param :[String:Any]  = ["partnerId":PartnerId]
                    categoryViewModel.productCategoryListApi(param: param, url: LTY_END_POINT_URL.getCategoryNew)
                } else {
                    let param :[String:Any]  = ["agentId":self.agentId]
                    categoryViewModel.getCatByAgent(param: param, url: LTY_END_POINT_URL.getCategoryByAgent)
                }
                
                
                dispatchGroup.notify(queue: .main) {
                    let userType = kUserDefaults.value(forKey: AppKeys.userType) as! String
                    if !self.isCategoryAdded {
                        if userType == "PARTNER"{
                            self.showAlertWithActions(msg: "Please add category commission of the agent.".localized(), titles: ["Yes".localized(), "Not Now".localized()]) { (value) in
                                if value == 1{
                                    let vc = AgentVC.instantiate(fromAppStoryboard: .sideMenuStoryboard)
                                    self.pushToVC(vc, animated: true)
                                }
                            }
                        }else{
                            self.showOkAlertWithHandler("Please contact your partner".localized()) {
                                self.popVC(animated: true)
                            }
                        }
                        
                        
                        return
                    }
                    
                    guard  let UserData = UserDefaults.standard.value(forKey: AppKeys.roleList) as? Data  else {
                        let vc = SecondViewController.instantiate(fromAppStoryboard: .proposalStoryboard)
                        // vc.isComingFrom = "LeadProposalVC"
                        vc.shouldAddLead = true
                        vc.leadId = self.leadId
                        vc.insurnceType = self.insurnceType
                        vc.agentId = self.agentId
                        vc.agentName = self.agentName
                        shouldEditMembers = false
                        UserDefaults.standard.set("yes", forKey: "fromLead")
                        self.pushToVC(vc, animated: true)
                        return
                    }
                    
                    let userRole = try? PropertyListDecoder().decode(RoleDetailData.self, from: UserData)
                    
                    let checkAccess = self.checkAccess(id: 9, useCaseArr: userRole?.useCasesList)
                    //   let userType = kUserDefaults.value(forKey: AppKeys.userType) as! String
                    
                    if (checkAccess.1 && userType == "AGENT") || userType == "PARTNER" {
                        
                        
                        let vc = SecondViewController.instantiate(fromAppStoryboard: .proposalStoryboard)
                        // vc.isComingFrom = "LeadProposalVC"
                        vc.shouldAddLead = true
                        vc.leadId = self.leadId
                        vc.insurnceType = self.insurnceType
                        vc.agentId = self.agentId
                        vc.agentName = self.agentName
                        shouldEditMembers = false
                        UserDefaults.standard.set("yes", forKey: "fromLead")
                        self.pushToVC(vc, animated: true)
                    }
                    else{
                        self.ShowAlert(message: LTY_AlterText.messageNoWriteAccess.localized())
                        
                    }
                    
                    
                }
                
                
            }
            
            override func viewDidLayoutSubviews() {
                super.viewDidLayoutSubviews()
                let tableHeightConstant = insuredListArr.count
                insuredTableHeightConstant.constant = CGFloat(insuredListArr.count * 950)
                insuredViewHeightConstant.constant = CGFloat(insuredListArr.count * 950)
                
                //insuredTableView.contentSize.height * CGFloat(tableHeightConstant) //tableHeightConstant
                
                
            }
            
            override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
                
                if(keyPath == "contentSize"){
                    if let newvalue = change?[.newKey]
                    {
                        let newsize = newvalue as! CGSize
                        insuredTableHeightConstant.constant = newsize.height
                        insuredViewHeightConstant.constant = newsize.height
                        //docViewHeight.constant = 125 + newsize.height
                    }
                }
                
            }
            
            override func viewWillAppear(_ animated: Bool) {
                let param:[String:Any] = ["leadId":leadId]
                leadInsuranceViewModel.businessOfferApiCall(param: param)
                self.tabBarController?.tabBar.isHidden = true
            }
            
            override func viewWillDisappear(_ animated: Bool) {
                self.tabBarController?.tabBar.isHidden = false
            }
            
            //MARK:- backAction Btn
            
            @objc func backActionBtn(_ sender: UIButton) {
                self.popVC(animated: true)
                
            }
            
            //MARK:- set navigationDrower Height
            
            func setDrowerHeight() {
                if UIDevice.current.hasNotch {
                    customNavHeight.constant = DroverHeight.haveNotch
                } else {
                    customNavHeight.constant = DroverHeight.dontHaveNotch
                    
                }
            }
            @IBAction func viewAgreementActionBtn(_ sender: UIButton) {
                
                //        let vc = ViewImageVC.instantiate(fromAppStoryboard: .proposalStoryboard)
                //        vc.image = agrementDocUrl
                //        vc.modalTransitionStyle = .crossDissolve
                //        vc.modalPresentationStyle = .overFullScreen
                //        self.present(vc, animated: true)
                let vc = ViewAttachmentsVC.instantiate(fromAppStoryboard: .home)
                vc.attachmentStr = agrementDocUrl
                self.presentVC(vc, animated: true, presentationStyle: .pageSheet)
            }
            
            @IBAction func viewClaimDocActionBtn(_ sender: UIButton) {
                
                let vc = ViewAttachmentsVC.instantiate(fromAppStoryboard: .home)
                vc.attachmentStr = claimDocUrl
                self.presentVC(vc, animated: true, presentationStyle: .pageSheet)
            }
            
            @IBAction func viewQuatationDocActionBtn(_ sender: UIButton) {
                //        let vc = ViewImageVC.instantiate(fromAppStoryboard: .proposalStoryboard)
                //        vc.image = quatationDocUrl
                //        vc.modalTransitionStyle = .crossDissolve
                //        vc.modalPresentationStyle = .overFullScreen
                //        self.present(vc, animated: true)
                let vc = ViewAttachmentsVC.instantiate(fromAppStoryboard: .home)
                vc.attachmentStr = quatationDocUrl
                self.presentVC(vc, animated: true, presentationStyle: .pageSheet)
            }
            
            @IBAction func viewMapReportActionBtn(_ sender: UIButton) {
                //        let vc = ViewImageVC.instantiate(fromAppStoryboard: .proposalStoryboard)
                //        vc.image = reportDocUrl
                //        vc.modalTransitionStyle = .crossDissolve
                //        vc.modalPresentationStyle = .overFullScreen
                //        self.present(vc, animated: true)
                
                let vc = ViewAttachmentsVC.instantiate(fromAppStoryboard: .home)
                vc.attachmentStr = reportDocUrl
                self.presentVC(vc, animated: true, presentationStyle: .pageSheet)
                
            }
            
            }
            
            extension BusinessInuranceOfferVC :UITableViewDelegate,UITableViewDataSource{
                func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                    return insuredListArr.count
                }
                
                func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                    let cell = insuredTableView.dequeueReusableCell(withIdentifier: "BusinessInsuranceOfferTVC") as! BusinessInsuranceOfferTVC
                    let insuredListData = insuredListArr[indexPath.row]
                    // cell.lblHeadingInsured.text = insuredListData
                    cell.lblInsuredFullName.text = insuredListData.firstName
                    cell.lblInsuredLastName.text = insuredListData.lastName
                    cell.lblInsuredDob.text = returnDOB(date:insuredListData.dob)
                    cell.lblInsuredGender.text = insuredListData.gender
                    cell.lblInsuredAnualSalary.text = insuredListData.annualSalary
                    cell.lblInsuredAccountCalculation.text = insuredListData.activityRate
                    cell.lblInsuredTotalAccumulatedAssetDate.text = insuredListData.totalAccumulatedAsset
                    cell.lblInsuredHaveaccumulatedLPP.text = insuredListData.haveAccumulatedLppShare
                    return cell
                }
                
                func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
                    return CGFloat(insuredListArr.count * 950) //UITableView.automaticDimension //950
                    
                }
                
            }
            
            extension BusinessInuranceOfferVC : BusinessOfferProtocolData {
                
                
                func setData(data: BusinessOfferModel) {
                    if data.status == "SUCCESS"{
                        DispatchQueue.main.async {
                            
                            let persnalInfo = data.data?.memberDetails
                            // let pTitle =  persnalInfo?.title?.capitalized   ?? ""
                            let fName =  persnalInfo?.firstName?.capitalized   ?? ""
                            let lName =  persnalInfo?.lastName?.capitalized    ?? ""
                            
                            self.lblPersnalInfoFullName.text = fName + " " + lName
                            self.lblPersnalPostalCode.text = persnalInfo?.postCode
                            self.lblPersnalInfoEmail.text = persnalInfo?.email  ?? ""
                            let countryCode = persnalInfo?.countryCode ?? ""
                            self.lblPersnalInfoMobile.text = "\(countryCode) \(persnalInfo?.mobile ?? "")"
                            // self.lblPersnalInfoMobile.text = persnalInfo?.mobile  ?? ""
                            self.lblPersnalInfoDob.text = returnDOB(date: persnalInfo?.dob  ?? "")//persnalInfo?.dob  ?? ""
                            self.lblPersnalInfoNationality.text = persnalInfo?.country  ?? ""
                            self.lblPersnalInfoCity.text = persnalInfo?.city  ?? ""
                            self.lblPersnalInfoAddress.text = persnalInfo?.address  ?? ""
                            self.lblPersnalInfoPartner.text = data.data?.partnerName
                            self.lblPersnalInfoagent.text = persnalInfo?.agentName   ?? ""
                            self.lblMemberInfoFullName.text = data.data?.memberName
                            self.lblMemberInfoRelation.text = data.data?.relation  ?? ""
                            self.lblMemberInfoInsuranceType.text = data.data?.insuranceType?.localized() ?? ""
                            
                            //MARK:- Company Info
                            
                            let companyInfo = data.data?.metadata?.companyDetails
                            self.lblCompanyInfoId.text = companyInfo?.id ?? ""
                            self.lblCompanyInfoEmail.text = companyInfo?.email ?? ""
                            self.lblCompanyInfoAddress.text = companyInfo?.address ?? ""
                            self.lblCompanyInfoZip.text = companyInfo?.zipLocation ?? ""
                            self.lblCompanyInfoTypeOfActivity.text = companyInfo?.typeOfActivity ?? ""
                            self.lblCompanyInfoSocialReason.text = companyInfo?.socialReason ?? ""
                            
                            //MARK:- Daily Allowance Info
                            
                            let dailyAllowInfo = data.data?.metadata?.dailyAllowanceDetails?.policyDetails
                            self.lblDailyAlloancePolicyNo.text = dailyAllowInfo?.policyNo ?? ""
                            self.lblDailyAlloanceDate.text = returnDOB(date:dailyAllowInfo?.date ?? "")
                            self.lblDailyAlloanceNear.text = dailyAllowInfo?.near ?? ""
                            
                            //MARK:- For Staff Info
                            
                            let staffInfo = data.data?.metadata?.dailyAllowanceDetails?.staffDetails
                            self.lblForStaffInsuredCircle.text = staffInfo?.insuredCircle ?? ""
                            self.lblForStaffMaxInsuredAnnualSalary.text = staffInfo?.maxInsuredSalary ?? ""
                            self.lblForStaffSalariesManAvs.text = staffInfo?.salariesManAvs ?? ""
                            self.lblForStaffSalariesWomenAvs.text = staffInfo?.salariesWomenAvs ?? ""
                            self.lblForStaffSalariesCoverageInPercentage.text = staffInfo?.salaryCoverage ?? ""
                            self.lblForStaffWaitingTimeInDays.text = staffInfo?.waitingTime ?? ""
                            
                            //MARK:- For Maternity Supliment
                            
                            let maternitySupplementInfo = data.data?.metadata?.dailyAllowanceDetails?.maternitySupplement
                            self.lblMaternitySupplementDurationInDays.text = maternitySupplementInfo?.duration ?? ""
                            self.lblMaternitySupplementBlanket.text = maternitySupplementInfo?.blanket ?? ""
                            
                            //MARK:- For Self Employed Info
                            
                            let selfEmployedInfo = data.data?.metadata?.dailyAllowanceDetails?.selfEmployedDetails
                            self.lblForSelfEmployedWithStaffFirstName.text = selfEmployedInfo?.firstName ?? ""
                            self.lblForSelfEmployedWithStaffLastName.text = selfEmployedInfo?.lastName ?? ""
                            self.lblForSelfEmployedWithStaffDob.text = returnDOB(date:selfEmployedInfo?.dob ?? "")
                            self.lblForSelfEmployedWithStaffEmail.text = selfEmployedInfo?.email ?? ""
                            self.lblForSelfEmployedWithStaffInsuredConventionalSalary.text = selfEmployedInfo?.conventionalSalary ?? ""
                            self.lblForSelfEmployedWithStaffSalarySubjectToAvs.text = selfEmployedInfo?.salarySubjectToAvs ?? ""
                            self.lblForSelfEmployedWithStaffWaitingTimeInDays.text = selfEmployedInfo?.waitingTime ?? ""
                            self.lblForSelfEmployedWithStaffSalaryCoverage.text = selfEmployedInfo?.salaryCoverage ?? ""
                            self.lblForSelfEmployedWithStaffAccidentCover.text = selfEmployedInfo?.accidentCover ?? ""
                            self.lblForSelfEmployedWithStaffWaitingTime.text = selfEmployedInfo?.waitingTime ?? ""
                            self.lblForSelfEmployedWithStaffParticipationInSuperClass.text = selfEmployedInfo?.participationInSurpluses ?? ""
                            self.lblForSelfEmployedWithStaffDesiredEntryInfoForce.text = selfEmployedInfo?.desiredEntry ?? ""
                            self.lblForSelfEmployedWithStaffContactLength.text = selfEmployedInfo?.contractLength ?? ""
                            
                            //MARK:- For Accident insurance Info
                            
                            let accidentInsuranceInfo = data.data?.metadata?.accidentInsuranceDetails?.policyDetails
                            self.lblAccidentInsuranceAccordingToUvgPolicyNo.text = accidentInsuranceInfo?.policyNo ?? ""
                            self.lblAccidentInsuranceAccordingToUvgDate.text = returnDOB(date:accidentInsuranceInfo?.date ?? "")
                            self.lblAccidentInsuranceAccordingToUvgNear.text = accidentInsuranceInfo?.near ?? ""
                            
                            //MARK:- For Accident insurance Staff (Desired enttry)
                            
                            let accidentStaffInfo = data.data?.metadata?.accidentInsuranceDetails?.staffDetails
                            self.lblForStaffDesiredEntryIntoForce.text = accidentStaffInfo?.desiredEntry ?? ""
                            self.lblForStaffMaxInsuredAnnualSlry.text = accidentStaffInfo?.maxInsuredSalary ?? ""
                            self.lblForStaffApMaleSalaries.text = accidentStaffInfo?.apMaleSalary ?? ""
                            self.lblForStaffApFemaleSalary.text = accidentStaffInfo?.apFemaleSalary ?? ""
                            self.lblForStaffContractLength.text = accidentStaffInfo?.contractLength ?? ""
                            self.lblForStaffSalaryCoverage.text = accidentStaffInfo?.salaryCoverage ?? ""
                            self.lblForStaffWaitingTime.text = accidentStaffInfo?.waitingTime ?? ""
                            
                            //MARK:- For Complimentary insurance Staff (LLA)
                            
                            let ComplimentaryInfo = data.data?.metadata?.complementaryInsuranceDetails
                            
                            self.lblComlpentryInsurenceToLLaPolicyNumber.text = ComplimentaryInfo?.policyNo ?? ""
                            self.lblComlpentryInsurenceToLaaDate.text = returnDOB(date:ComplimentaryInfo?.date ?? "")
                            self.lblComlpentryInsurenceToLaaNear.text = ComplimentaryInfo?.near ?? ""
                            self.lblComlpentryInsurenceToLaaInsuredCircle.text = ComplimentaryInfo?.insuredCircle ?? ""
                            self.lblComlpentryInsurenceToLaaMaxInsuredAnnualSaalry.text = ComplimentaryInfo?.maxInsuredSalary ?? ""
                            self.lblComlpentryInsurenceToLaaSalaryMen.text = ComplimentaryInfo?.laaSalaryMen ?? ""
                            self.lblComlpentryInsurenceToLaaSalaryWomen.text = ComplimentaryInfo?.laaSalaryWomen ?? ""
                            self.lblComlpentryInsurenceToLaaPolicyType.text = ComplimentaryInfo?.policyNo ?? ""
                            self.lblComlpentryInsurenceToLaaDailyAllowForFirst2DaysInPerc.text = ComplimentaryInfo?.dailyAllowanceFirstTwoDays ?? ""
                            self.lblComlpentryInsurenceToLaaDailyAllowanceFrom3thDaysInPerc.text = ComplimentaryInfo?.dailyAllowanceFromThirdDay ?? ""
                            self.lblComlpentryInsurenceToLaaWitingTimeInDays.text = ComplimentaryInfo?.waitingTime ?? ""
                            self.lblComlpentryInsurenceToLaaDeathBenifits.text = ComplimentaryInfo?.deathCoverage ?? ""
                            self.lblComlpentryInsurenceToLaaDisabilityLumpSum.text = ComplimentaryInfo?.disabilityLumpSum ?? ""
                            self.lblComlpentryInsurenceToLaaPRogress.text = ComplimentaryInfo?.progress ?? ""
                            
                            //MARK:- For Excess supplimental insurance coverage
                            
                            let excessSupplimentalInfo = data.data?.metadata?.complementaryInsuranceDetails?.excessSupplementalInsuranceCoverage
                            
                            self.lblExcessSuppleIsuranceCoverageInsuredCircle.text = excessSupplimentalInfo?.insuredCircle ?? ""
                            self.lblExcessSuppleIsuranceCoverageInsuredAnnualSalary.text = excessSupplimentalInfo?.insuredAnnualSalary ?? ""
                            //  self.lblExcessSuppleIsuranceCoverageExcessWages.text = excessSupplimentalInfo?.co ?? ""
                            self.lblExcessSuppleIsuranceCoverageMen.text = excessSupplimentalInfo?.excessWagesMen ?? ""
                            self.lblExcessSuppleIsuranceCoverageWomen.text = excessSupplimentalInfo?.excessWagesWomen ?? ""
                            self.lblExcessSuppleIsuranceCoveragePerDieminPerc.text = excessSupplimentalInfo?.perDiemIn ?? ""
                            self.lblExcessSuppleIsuranceCoverageWaitingTimeInDays.text = excessSupplimentalInfo?.waitingTime ?? ""
                            self.lblExcessSuppleIsuranceCoverageDeathBenifits.text = excessSupplimentalInfo?.deathBenefits ?? ""
                            self.lblExcessSuppleIsuranceCoverageDisabilityLumpSum.text = excessSupplimentalInfo?.disabilityLumpSum ?? ""
                            self.lblExcessSuppleIsuranceCoverageDisabilityPension.text = excessSupplimentalInfo?.disabilityPension ?? ""
                            self.lblExcessSuppleIsuranceCoverageSurvivorsPension.text = excessSupplimentalInfo?.survivorPension ?? ""
                            self.lblExcessSuppleIsuranceCoverageDesiredEntryIntoForce.text = excessSupplimentalInfo?.desiredEntry ?? ""
                            self.lblExcessSuppleIsuranceCoverageParticipationInSurpluses.text = excessSupplimentalInfo?.participationInSurpluses ?? ""
                            self.lblExcessSuppleIsuranceCoverageContactDuration.text = excessSupplimentalInfo?.contactDuration ?? ""
                            
                            //MARK:- For Occupational pension plan
                            
                            let occupationalInfo = data.data?.metadata?.occupationalPensionPlanDetails
                            
                            self.lblOccupationalPensionPlanPolicyNo.text = occupationalInfo?.policyNo ?? ""
                            self.lblOccupationalPensionPlanDate.text = returnDOB(date:occupationalInfo?.date ?? "")
                            self.lblOccupationalPensionPlanNear.text = occupationalInfo?.near ?? ""
                            self.lblOccupationalPensionPlanComapnyNeverAffilitedToTheLppDesiredEntryIntoForce.text = occupationalInfo?.companyNeverAffiliatedToLpp ?? ""
                            self.lblOccupationalPensionPlanSinceWhenHasComnyEmpStaffSubLlp.text = occupationalInfo?.staffSubjectToLppDate ?? ""
                            self.lblOccupationalPensionPlanForOtherCompDesiredEntryIntoForce.text = occupationalInfo?.forOtherCompanies ?? ""
                            self.lblOccupationalPensionPlanNmaeOfTheCurrentPensionInsti.text = occupationalInfo?.currentPensionInstitute ?? ""
                            self.lblOccupationalPensionPlanContractExpiry.text = occupationalInfo?.contractExpiry ?? ""
                            self.lblOccupationalPensionPlanAsaMembers.text = occupationalInfo?.asaMember ?? ""
                            
                            //MARK:- For Claim
                            
                            let claimInfo = data.data?.metadata?.claim
                            self.lblClaimClaimAttachment.text = claimInfo?.originalFileName
                            self.claimDocUrl = claimInfo?.key ?? ""
                            self.lblClaimClaimCaseToResume.text = data.data?.metadata?.caseToResume ?? ""
                            
                            if (self.lblClaimClaimCaseToResume.text!.caseInsensitiveCompare("Yes".localized()) == .orderedSame) {
                                self.whichOneView.isHidden = false
                                self.lblClaimClaimWhichOnes.text = data.data?.metadata?.whichOnes ?? ""
                            } else {
                                self.whichOneView.isHidden = true
                            }
                            
                            
                            
                            //MARK:- For Desired Insurance Coverage
                            
                            let desiredInsuranceInfo = data.data?.metadata
                            
                            var arr = NSMutableArray()
                            for item in data.data?.metadata?.desiredInsuranceCoverage ?? [] {
                                arr.add(item)
                            }
                            self.lblDesiredIsuranceCoverage.text = arr.componentsJoined(by: ", ")
                            
                            self.lblLossEarningHealthInsuCover80PerFor720Days.text = desiredInsuranceInfo?.lossOfEarning ?? ""
                            self.lblLossEarningHealthInsuCoverRemarks.text = desiredInsuranceInfo?.remarks ?? ""
                            
                            self.insuredListArr = data.data?.metadata?.occupationalPensionPlanDetails?.insuredList ?? []
                            self.insuredTableView.reloadData()
                            
                            
                        }
                    }else{
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
                
                func showMessage(msg: String) {
                    DispatchQueue.main.async {
                        self.ShowAlert(message: msg)
                    }
                }
                
            }
            
            
            extension BusinessInuranceOfferVC : CategoryListProtocolDelegate, CategoryListByAgentProtocolDelegate {
                
                func setCategoryListByAgent(data: CategoryNewModel) {
                    
                    if data.status == "SUCCESS" {
                        self.categoryListNewData.removeAll()
                        
                        self.categoryListNewData = data.data?.categoryList ?? []
                        self.isCategoryAdded = self.categoryListNewData.count > 0 ? true : false
                        
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
                    
                    dispatchGroup.leave()
                    
                }
                
                func setCategoryList(data: CategoryModel) {
                    
                    if data.status == "SUCCESS" {
                        self.categoryListData.removeAll()
                        
                        self.categoryListData = data.data?.categoryList ?? []
                        self.isCategoryAdded = self.categoryListData.count > 0 ? true : false
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
                    dispatchGroup.leave()
                    
                }
                
                
                func setCategoryNewList(data: CategoryNewModel) {
                    
                    if data.status == "SUCCESS" {
                        self.categoryListData.removeAll()
                        
                        self.categoryListNewData = data.data?.categoryList ?? []
                        self.isCategoryAdded = self.categoryListNewData.count > 0 ? true : false
                        
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
                    dispatchGroup.leave()
                    
                }
                
                func popupMsg(msg: String) {
                    DispatchQueue.main.async {
                        self.ShowAlert(message: msg)
                    }
                    
                }
                
                //    func setActiveUsersList(data: AddProposalMembersModel) {
                //
                //        if data.status == "SUCCESS" {
                //
                //
                //            var memberList = data.data?.usersList ?? []
                //            if memberList.count == 0 {
                //                self.showOkAlert("This Agent does not have members associated. You can't proceed with proposal creation. Please select any other Agent.".localized())
                //            }
                //
                //        } else {
                //            DispatchQueue.main.async {
                //                  if data.error?.errorCode == AppKeys.invalidTokenCode {
                //
                //                      LTY_AppDelegate.setRootVC()
                //                  }else {
                //                      self.ShowAlert(message: data.error?.serverErrorMessage ?? "")
                //                  }
                //              }
                //          }
                //    }
                
                
            }
            

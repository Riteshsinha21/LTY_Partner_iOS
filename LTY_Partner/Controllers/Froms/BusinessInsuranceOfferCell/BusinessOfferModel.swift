//
//  BusinessOfferModel.swift
//  LTY_Partner
//
//  Created by Chawtech on 19/12/23.
//

import Foundation


struct BusinessOfferModel :Codable {
    let status: String?
    let data: BusinessOfferData?
    let error: CatError?
}

// MARK: - DataClass
struct BusinessOfferData :Codable {
    let leadId, partnerId, partnerName, agentId: String?
    let agentName: String?
    let memberDetails: BusinessOfferDataMemberDetails?
    let memberId, memberName, relation, insuranceType: String?
    let metadata: BusinessOfferDataMetadata?
    let status: String?
    let proposalCount: Int?
    let isDeleted: Bool?
    let createdBy: String?
    let updatedBy: String?
    let createdOn, lastUpdatedOn: String?
}


struct BusinessOfferDataMemberDetails :Codable {
    let memberId, familyMemberId, firstName, lastName: String?
    let email, countryCode, mobile, dob: String?
    let address, country, state, city: String?
    let postCode: String?
    let agentId, agentName, profilePic: String?
}

// MARK: - Metadata
struct BusinessOfferDataMetadata :Codable {
    let type: String?
    let companyDetails: BusinessOfferDataCompanyDetails?
    let dailyAllowanceDetails: DailyAllowanceDetails?
    let accidentInsuranceDetails: AccidentInsuranceDetails?
    let voluntaryAccidentInsuranceDetails: VoluntaryAccidentInsuranceDetails?
    let complementaryInsuranceDetails: ComplementaryInsuranceDetails?
    let occupationalPensionPlanDetails: OccupationalPensionPlanDetails?
    let claim: Claim
    let caseToResume, whichOnes: String?
    let desiredInsuranceCoverage: [String?]
    let lossOfEarning, remarks: String?
}

// MARK: - AccidentInsuranceDetails
struct AccidentInsuranceDetails :Codable {
    let policyDetails: PolicyDetails?
    let staffDetails: AccidentInsuranceDetailsStaffDetails?
}

// MARK: - PolicyDetails
struct PolicyDetails :Codable {
    let policyNo, date, near: String?
}

// MARK: - AccidentInsuranceDetailsStaffDetails
struct AccidentInsuranceDetailsStaffDetails :Codable {
    let desiredEntry, maxInsuredSalary, apMaleSalary, apFemaleSalary: String?
    let contractLength, salaryCoverage, waitingTime: String?
}


// MARK: - Claim
struct Claim :Codable{
    let key, originalFileName: String?
}

// MARK: - CompanyDetails
struct BusinessOfferDataCompanyDetails :Codable {
    let id, business, phone, email: String?
    let streetNo, address, zipLocation, responsible: String?
    let startOfContract, typeOfActivity, socialReason, effectiveDate: String?
}

// MARK: - ComplementaryInsuranceDetails
struct ComplementaryInsuranceDetails :Codable {
    let policyNo, date, near, insuredCircle: String?
    let maxInsuredSalary, laaSalaryMen, laaSalaryWomen, processingFee: String?
    let roomType, dailyAllowanceFirstTwoDays, dailyAllowanceFromThirdDay, waitingTime: String?
    let additionalGuarantee, coverageOfReduction, deathCoverage, disabilityLumpSum: String?
    let progress: String?
    let excessSupplementalInsuranceCoverage: ExcessSupplementalInsuranceCoverage?
}

// MARK: - ExcessSupplementalInsuranceCoverage
struct ExcessSupplementalInsuranceCoverage :Codable {
    let insuredCircle, insuredAnnualSalary, excessWagesMen, excessWagesWomen: String?
    let perDiemIn, waitingTime, deathBenefits, disabilityLumpSum: String?
    let disabilityPension, survivorPension, desiredEntry, participationInSurpluses: String?
    let contactDuration: String?
}

// MARK: - DailyAllowanceDetails
struct DailyAllowanceDetails :Codable {
    let policyDetails: PolicyDetails?
    let staffDetails: DailyAllowanceDetailsStaffDetails?
    let maternitySupplement: MaternitySupplement?
    let selfEmployedDetails: SelfEmployedDetails?
}

// MARK: - MaternitySupplement
struct MaternitySupplement :Codable {
    let duration, blanket: String?
}

// MARK: - SelfEmployedDetails
struct SelfEmployedDetails :Codable {
    let firstName, lastName, dob, email: String?
    let conventionalSalary, salarySubjectToAvs, salaryCoverage, accidentCover: String?
    let waitingTime, participationInSurpluses, desiredEntry, contractLength: String?
}

// MARK: - DailyAllowanceDetailsStaffDetails
struct DailyAllowanceDetailsStaffDetails :Codable {
    let insuredCircle, maxInsuredSalary, salariesManAvs, salariesWomenAvs: String?
    let salaryCoverage, waitingTime: String?
}

// MARK: - OccupationalPensionPlanDetails
struct OccupationalPensionPlanDetails: Codable {
    let policyNo, date, near, companyNeverAffiliatedToLpp: String?
    let staffSubjectToLppDate, forOtherCompanies, currentPensionInstitute, contractExpiry: String?
    let asaMember: String?
    let insuredList: [InsuredList]?
}
// MARK: - InsuredList
struct InsuredList:Codable {
    let lastName, firstName, dob, gender: String
    let annualSalary, activityRate, totalAccumulatedAsset, haveAccumulatedLppShare: String
}

// MARK: - VoluntaryAccidentInsuranceDetails
struct VoluntaryAccidentInsuranceDetails :Codable  {
    let firstName, lastName, dob, desiredEntry: String?
    let salaryCoverage, waitingTime, contractLength, insuredSalary: String?
}

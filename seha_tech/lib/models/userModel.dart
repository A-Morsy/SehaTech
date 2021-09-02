import 'package:scoped_model/scoped_model.dart';

class UserModel extends Model {
  Map userMap = new Map();
  int id = 0, patientId = 0;
  String email = '',
      consentForResearch = '',
      dateOfDataPrivacyAcceptance = ' ',
      firstName = '',
      middleName = '',
      lastName = '',
      dateOfBirth = '',
      gender = "",
      insuranceCardId = '',
      phoneNumber = "",
      passwordResetCode = '',
      passwordResetCodeExpiryDate = '',
      approvalOtp = '',
      approvalOtpExpiryDate = '',
      createdAt = '',
      updatedAt = '',
      token = '';

  get getUserMap => this.userMap;

  set setUserMap(userMap) => this.userMap = userMap;

  get getId => this.id;

  set setId(id) => this.id = id;
  get getPatientId => this.patientId;

  set setPatientId(patientId) => this.patientId = patientId;

  get getEmail => this.email;

  set setEmail(email) => this.email = email;

  get getConsentForResearch => this.consentForResearch;

  set setConsentForResearch(consentForResearch) =>
      this.consentForResearch = consentForResearch;

  get getDateOfDataPrivacyAcceptance => this.dateOfDataPrivacyAcceptance;

  set setDateOfDataPrivacyAcceptance(dateOfDataPrivacyAcceptance) =>
      this.dateOfDataPrivacyAcceptance = dateOfDataPrivacyAcceptance;

  get getFirstName => this.firstName;

  set setFirstName(firstName) => this.firstName = firstName;

  get getMiddleName => this.middleName;

  set setMiddleName(middleName) => this.middleName = middleName;

  get getLastName => this.lastName;

  set setLastName(lastName) => this.lastName = lastName;

  get getDateOfBirth => this.dateOfBirth;

  set setDateOfBirth(dateOfBirth) => this.dateOfBirth = dateOfBirth;

  get getGender => this.gender;

  set setGender(gender) => this.gender = gender;

  get getInsuranceCardId => this.insuranceCardId;

  set setInsuranceCardId(insuranceCardId) =>
      this.insuranceCardId = insuranceCardId;

  get getPhoneNumber => this.phoneNumber;

  set setPhoneNumber(phoneNumber) => this.phoneNumber = phoneNumber;

  get getPasswordResetCode => this.passwordResetCode;

  set setPasswordResetCode(passwordResetCode) =>
      this.passwordResetCode = passwordResetCode;

  get getPasswordResetCodeExpiryDate => this.passwordResetCodeExpiryDate;

  set setPasswordResetCodeExpiryDate(passwordResetCodeExpiryDate) =>
      this.passwordResetCodeExpiryDate = passwordResetCodeExpiryDate;

  get getApprovalOtp => this.approvalOtp;

  set setApprovalOtp(approvalOtp) => this.approvalOtp = approvalOtp;

  get getApprovalOtpExpiryDate => this.approvalOtpExpiryDate;

  set setApprovalOtpExpiryDate(approvalOtpExpiryDate) =>
      this.approvalOtpExpiryDate = approvalOtpExpiryDate;

  get getCreatedAt => this.createdAt;

  set setCreatedAt(createdAt) => this.createdAt = createdAt;

  get getUpdatedAt => this.updatedAt;

  set setUpdatedAt(updatedAt) => this.updatedAt = updatedAt;

  get getToken => this.token;

  set setToken(token) => this.token = token;
}

// ignore: import_of_legacy_library_into_null_safe
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
      token = '';

  get getUserMap => this.userMap;

  set setUserMap(userMap) => {this.userMap = userMap, notifyListeners()};

  get getId => this.id;

  set setId(id) => {this.id = id, notifyListeners()};
  get getPatientId => this.patientId;

  set setPatientId(patientId) =>
      {this.patientId = patientId, notifyListeners()};

  get getEmail => this.email;

  set setEmail(email) => {this.email = email, notifyListeners()};

  get getConsentForResearch => this.consentForResearch;

  set setConsentForResearch(consentForResearch) =>
      {this.consentForResearch = consentForResearch, notifyListeners()};

  get getDateOfDataPrivacyAcceptance => this.dateOfDataPrivacyAcceptance;

  set setDateOfDataPrivacyAcceptance(dateOfDataPrivacyAcceptance) => {
        this.dateOfDataPrivacyAcceptance = dateOfDataPrivacyAcceptance,
        notifyListeners()
      };

  get getFirstName => this.firstName;

  set setFirstName(firstName) =>
      {this.firstName = firstName, notifyListeners()};

  get getMiddleName => this.middleName;

  set setMiddleName(middleName) =>
      {this.middleName = middleName, notifyListeners()};

  get getLastName => this.lastName;

  set setLastName(lastName) => {this.lastName = lastName, notifyListeners()};

  get getDateOfBirth => this.dateOfBirth;

  set setDateOfBirth(dateOfBirth) =>
      {this.dateOfBirth = dateOfBirth, notifyListeners()};

  get getGender => this.gender;

  set setGender(gender) => {this.gender = gender, notifyListeners()};

  get getInsuranceCardId => this.insuranceCardId;

  set setInsuranceCardId(insuranceCardId) =>
      {this.insuranceCardId = insuranceCardId, notifyListeners()};

  get getPhoneNumber => this.phoneNumber;

  set setPhoneNumber(phoneNumber) =>
      {this.phoneNumber = phoneNumber, notifyListeners()};

  get getToken => this.token;

  set setToken(token) => {this.token = token, notifyListeners()};
}

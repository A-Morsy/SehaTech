// ignore: import_of_legacy_library_into_null_safe
import 'package:scoped_model/scoped_model.dart';

class SignUpModel extends Model {
  String firstName = '',
      middleName = '',
      lastName = '',
      photoUrl = 'ExPhotoURL',
      email = '',
      password = '',
      confirmPassword = '',
      dateOfBirth = '',
      gender = '',
      maritalStatus = 'Single',
      idType = 'National ID',
      idNumber = '',
      nationality = '',
      attachement = 'ExIdCopyUrl',
      phoneNumber = '',
      streetName = '',
      city = '',
      province = '',
      country = '',
      stringValue = '',
      insuranceCardId = '';

  String dateOfDataPrivacyAcceptance = ' ';
  String get getDateOfDataPrivacyAcceptance => this.dateOfDataPrivacyAcceptance;

  set setDateOfDataPrivacyAcceptance(String dateOfDataPrivacyAcceptance) => {
        this.dateOfDataPrivacyAcceptance = dateOfDataPrivacyAcceptance,
        notifyListeners()
      };

  bool consentForResearch = false;
  bool get getConsentForResearch => this.consentForResearch;

  set setConsentForResearch(bool consentForResearch) =>
      {this.consentForResearch = consentForResearch, notifyListeners()};

  get getInsuranceCardId => this.insuranceCardId;

  set setInsuranceCardId(insuranceCardId) =>
      {this.insuranceCardId = insuranceCardId, notifyListeners()};

  var payers = [];
  get getPayers => this.payers;

  set setPayers(List<dynamic> payers) =>
      {this.payers = payers, notifyListeners()};

  String choosenPayer = "";
  get getChoosenPayer => this.choosenPayer;

  set setChoosenPayer(var choosenPayer) => this.choosenPayer = choosenPayer;

  get getMiddleName => this.middleName;

  set setMiddleName(middleName) =>
      {this.middleName = middleName, notifyListeners()};

  get getLastName => this.lastName;

  set setLastName(lastName) => {this.lastName = lastName, notifyListeners()};

  get getPhoneNumber => this.phoneNumber;

  set setPhoneNumber(phoneNumber) =>
      {this.phoneNumber = phoneNumber, notifyListeners()};

  get getStreetName => this.streetName;

  set setStreetName(streetName) =>
      {this.streetName = streetName, notifyListeners()};

  get getCity => this.city;

  set setCity(city) => {this.city = city, notifyListeners()};

  get getProvince => this.province;

  set setProvince(province) => {this.province = province, notifyListeners()};

  get getCountry => this.country;

  set setCountry(country) => {this.country = country, notifyListeners()};

  get getFirstName => this.firstName;

  set setFirstName(firstName) =>
      {this.firstName = firstName, notifyListeners()};

  get getPhotoUrl => this.photoUrl;

  set setPhotoUrl(photoUrl) => {this.photoUrl = photoUrl, notifyListeners()};

  get getEmail => this.email;

  set setEmail(email) => {this.email = email, notifyListeners()};

  get getPassword => this.password;

  set setPassword(password) => {this.password = password, notifyListeners()};

  get getConfirmPassword => this.confirmPassword;

  set setConfirmPassword(confirmPassword) =>
      {this.confirmPassword = confirmPassword, notifyListeners()};

  get getDateOfBirth => this.dateOfBirth;

  set setDateOfBirth(dateOfBirth) =>
      {this.dateOfBirth = dateOfBirth, notifyListeners()};

  get getGender => this.gender;

  set setGender(gender) => {this.gender = gender, notifyListeners()};

  get getMaritalStatus => this.maritalStatus;

  set setMaritalStatus(maritalStatus) =>
      {this.maritalStatus = maritalStatus, notifyListeners()};

  get getIdType => this.idType;

  set setIdType(idType) => {this.idType = idType, notifyListeners()};

  get getIdNumber => this.idNumber;

  set setIdNumber(idNumber) => {this.idNumber = idNumber, notifyListeners()};

  get getNationality => this.nationality;

  set setNationality(nationality) =>
      {this.nationality = nationality, notifyListeners()};

  get getAttachement => this.attachement;

  set setAttachement(attachement) =>
      {this.attachement = attachement, notifyListeners()};

  get getStringValue => this.stringValue;

  set setStringValue(stringValue) =>
      {this.stringValue = stringValue, notifyListeners()};
}

import 'package:scoped_model/scoped_model.dart';

class SignUpModel extends Model {
  String firstName = '',
      middleName = '',
      lastName = '',
      photoUrl = '',
      email = '',
      password = '',
      confirmPassword = '',
      dateOfBirth = '',
      gender = '',
      maritalStatus = 'Single',
      idType = 'National ID',
      idNumber = '',
      nationality = '',
      attachement = '',
      phoneNumber = '',
      streetName = '',
      city = '',
      province = '',
      country = '',
      stringValue = '';



  get getMiddleName => this.middleName;

  set setMiddleName(middleName) => this.middleName = middleName;

  get getLastName => this.lastName;

  set setLastName(lastName) => this.lastName = lastName;

  get getPhoneNumber => this.phoneNumber;

  set setPhoneNumber(phoneNumber) => this.phoneNumber = phoneNumber;

  get getStreetName => this.streetName;

  set setStreetName(streetName) => this.streetName = streetName;

  get getCity => this.city;

  set setCity(city) => this.city = city;

  get getProvince => this.province;

  set setProvince(province) => this.province = province;

  get getCountry => this.country;

  set setCountry(country) => this.country = country;

  get getFirstName => this.firstName;

  set setFirstName(firstName) => this.firstName = firstName;

  get getPhotoUrl => this.photoUrl;

  set setPhotoUrl(photoUrl) => this.photoUrl = photoUrl;

  get getEmail => this.email;

  set setEmail(email) => this.email = email;

  get getPassword => this.password;

  set setPassword(password) => this.password = password;

  get getConfirmPassword => this.confirmPassword;

  set setConfirmPassword(confirmPassword) =>
      this.confirmPassword = confirmPassword;

  get getDateOfBirth => this.dateOfBirth;

  set setDateOfBirth(dateOfBirth) => this.dateOfBirth = dateOfBirth;

  get getGender => this.gender;

  set setGender(gender) => this.gender = gender;

  get getMaritalStatus => this.maritalStatus;

  set setMaritalStatus(maritalStatus) => this.maritalStatus = maritalStatus;

  get getIdType => this.idType;

  set setIdType(idType) => this.idType = idType;

  get getIdNumber => this.idNumber;

  set setIdNumber(idNumber) => this.idNumber = idNumber;

  get getNationality => this.nationality;

  set setNationality(nationality) => this.nationality = nationality;

  get getAttachement => this.attachement;

  set setAttachement(attachement) => this.attachement = attachement;

  get getStringValue => this.stringValue;

  set setStringValue(stringValue) => this.stringValue = stringValue;
}

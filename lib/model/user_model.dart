class UserModel {
  String? tIN;
  String? email;
  String? bvn;
  String? firstname;
  String? lastname;
  String? status;
  String? dob;
  String? taxOffice;
  Null? mYear;
  Null? mDay;
  Null? mMonth;

  UserModel(
      {this.tIN,
        this.email,
        this.bvn,
        this.firstname,
        this.lastname,
        this.status,
        this.dob,
        this.taxOffice,
        this.mYear,
        this.mDay,
        this.mMonth});

  UserModel.fromJson(Map<String, dynamic> json) {
    tIN = json['TIN'];
    email = json['email'];
    bvn = json['bvn'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    status = json['status'];
    dob = json['dob'];
    taxOffice = json['TaxOffice'];
    mYear = json['mYear'];
    mDay = json['mDay'];
    mMonth = json['mMonth'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['TIN'] = this.tIN;
    data['email'] = this.email;
    data['bvn'] = this.bvn;
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    data['status'] = this.status;
    data['dob'] = this.dob;
    data['TaxOffice'] = this.taxOffice;
    data['mYear'] = this.mYear;
    data['mDay'] = this.mDay;
    data['mMonth'] = this.mMonth;
    return data;
  }
}
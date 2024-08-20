import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  final int? userId;
  final String? name;
  final String? student_number;
  final String? college;
  final String? course;
  final String? department;
  final String? semester;
  final String? learning_modality;
  final String? birthday;
  final String? contact_number;
  final String? father_name;
  final String? father_contact_number;
  final String? mother_name;
  final String? mother_contact_number;
  final String? current_address;
  final String? current_province;
  final String? current_country;
  final String? current_city;
  final String? permanent_address;
  final String? permanent_province;
  final String? permanent_country;
  final String? permanent_city;
  final String? emergency_person_name;
  final String? emergency_address;
  final String? relation;
  final String? emergency_contact_number;
  final String? profile_img;
  User({
    this.userId,
    this.name,
    this.student_number,
    this.college,
    this.course,
    this.department,
    this.semester,
    this.learning_modality,
    this.birthday,
    this.contact_number,
    this.father_name,
    this.father_contact_number,
    this.mother_name,
    this.mother_contact_number,
    this.current_address,
    this.current_province,
    this.current_country,
    this.current_city,
    this.permanent_address,
    this.permanent_province,
    this.permanent_country,
    this.permanent_city,
    this.emergency_person_name,
    this.emergency_address,
    this.relation,
    this.emergency_contact_number,
    this.profile_img,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      userId: map['userId'] as int,
      name: map['profile']['name'] as String,
      student_number: map['profile']['student_number'] as String,
      college: map['profile']['college'] as String,
      course: map['profile']['course'] as String,
      department: map['profile']['department'] as String,
      semester: map['profile']['semester'] as String,
      learning_modality: map['profile']['learning_modality'] as String,
      birthday: map['profile']['birthday'] as String,
      contact_number: map['profile']['contact_number'] as String,
      father_name: map['profile']['father_name'] as String,
      father_contact_number: map['profile']['father_contact_number'] as String,
      mother_name: map['profile']['mother_name'] as String,
      mother_contact_number: map['profile']['mother_contact_number'] as String,
      current_address: map['profile']['current_address'] as String,
      current_province: map['profile']['current_province'] as String,
      current_country: map['profile']['current_country'] as String,
      current_city: map['profile']['current_city'] as String,
      permanent_address: map['profile']['permanent_address'] as String,
      permanent_province: map['profile']['permanent_province'] as String,
      permanent_country: map['profile']['permanent_country'] as String,
      permanent_city: map['profile']['permanent_city'] as String,
      emergency_person_name: map['profile']['emergency_person_name'] as String,
      emergency_address: map['profile']['emergency_address'] as String,
      relation: map['profile']['relation'] as String,
      emergency_contact_number:
          map['profile']['emergency_contact_number'] as String,
      profile_img: map['profile']['profile_img'] as String,
    );
  }
}

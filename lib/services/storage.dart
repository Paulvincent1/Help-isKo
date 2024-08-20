import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Storage {
  static const _storage = FlutterSecureStorage();

  static Future<void> saveField(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  static Future<String?> getField(String key) async {
    return await _storage.read(key: key);
  }

  static Future<void> deleteField(String key) async {
    await _storage.delete(key: key);
  }

  static Future<void> saveUserToken({required String token}) async {
    await _storage.write(key: 'token', value: token);
  }

  static Future<void> saveUserData({
    String? token,
    int? userId,
    String? name,
    String? student_number,
    String? college,
    String? course,
    String? department,
    String? semester,
    String? learning_modality,
    String? birthday,
    String? contact_number,
    String? father_name,
    String? father_contact_number,
    String? mother_name,
    String? mother_contact_number,
    String? current_address,
    String? current_province,
    String? current_country,
    String? current_city,
    String? permanent_address,
    String? permanent_province,
    String? permanent_country,
    String? permanent_city,
    String? emergency_person_name,
    String? emergency_address,
    String? relation,
    String? emergency_contact_number,
    String? profile_img,
  }) async {
    await Future.wait([
      saveField('token', token!),
      saveField('userId', userId.toString()),
      saveField('name', name!),
      saveField('student_number', student_number ?? ''),
      saveField('college', college ?? ''),
      saveField('course', course ?? ''),
      saveField('department', department ?? ''),
      saveField('semester', semester ?? ''),
      saveField('learning_modality', learning_modality ?? ''),
      saveField('birthday', birthday ?? ''),
      saveField('contact_number', contact_number ?? ''),
      saveField('father_name', father_name ?? ''),
      saveField('father_contact_number', father_contact_number ?? ''),
      saveField('mother_name', mother_name ?? ''),
      saveField('mother_contact_number', mother_contact_number ?? ''),
      saveField('current_address', current_address ?? ''),
      saveField('current_province', current_province ?? ''),
      saveField('current_country', current_country ?? ''),
      saveField('current_city', current_city ?? ''),
      saveField('permanent_address', permanent_address ?? ''),
      saveField('permanent_province', permanent_province ?? ''),
      saveField('permanent_country', permanent_country ?? ''),
      saveField('permanent_city', permanent_city ?? ''),
      saveField('emergency_person_name', emergency_person_name ?? ''),
      saveField('emergency_address', emergency_address ?? ''),
      saveField('relation', relation ?? ''),
      saveField('emergency_contact_number', emergency_contact_number ?? ''),
      saveField('profile_img', profile_img ?? ''),
    ]);
  }

  static Future<Map<String, dynamic>> getUserData() async {
    final userData = await Future.wait([
      getField('token'),
      getField('userId'),
      getField('name'),
      getField('student_number'),
      getField('college'),
      getField('course'),
      getField('department'),
      getField('semester'),
      getField('learning_modality'),
      getField('birthday'),
      getField('contact_number'),
      getField('father_name'),
      getField('father_contact_number'),
      getField('mother_name'),
      getField('mother_contact_number'),
      getField('current_address'),
      getField('current_province'),
      getField('current_country'),
      getField('current_city'),
      getField('permanent_address'),
      getField('permanent_province'),
      getField('permanent_country'),
      getField('permanent_city'),
      getField('emergency_person_name'),
      getField('emergency_address'),
      getField('relation'),
      getField('emergency_contact_number'),
      getField('profile_img'),
    ]);

    return {
      'token': userData[0],
      'userId': userData[1],
      'name': userData[2],
      'student_number': userData[3],
      'college': userData[4],
      'course': userData[5],
      'department': userData[6],
      'semester': userData[7],
      'learning_modality': userData[8],
      'birthday': userData[9],
      'contact_number': userData[10],
      'father_name': userData[11],
      'father_contact_number': userData[12],
      'mother_name': userData[13],
      'mother_contact_number': userData[14],
      'current_address': userData[15],
      'current_province': userData[16],
      'current_country': userData[17],
      'current_city': userData[18],
      'permanent_address': userData[19],
      'permanent_province': userData[20],
      'permanent_country': userData[21],
      'permanent_city': userData[22],
      'emergency_person_name': userData[23],
      'emergency_address': userData[24],
      'relation': userData[25],
      'emergency_contact_number': userData[26],
      'profile_img': userData[27],
    };
  }

  static Future<void> deleteUserData() async {
    await Future.wait([
      deleteField('userToken'),
      deleteField('userId'),
      deleteField('userName'),
      deleteField('userEmail'),
      deleteField('userProfilePicture'),
      deleteField('userPhoneNumber'),
      deleteField('userAddress'),
    ]);
  }
}

import 'person_data/basic_info.dart';
import 'person_data/employment_info.dart';
import 'person_data/personal_info.dart';

class PersonData {
  PersonData({
    required this.basicInfo,
    required this.employmentInfo,
    required this.personalInfo,
  });
  final BasicInfo basicInfo;
  final EmploymentInfo employmentInfo;
  final PersonalInfo personalInfo;
}

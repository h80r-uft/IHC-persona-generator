import 'basic_info.dart';
import 'employment_info.dart';
import 'personal_info.dart';

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

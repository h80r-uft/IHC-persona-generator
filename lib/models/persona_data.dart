class PersonaData {
  PersonaData({
    required this.civilStatus,
    required this.educationalBackground,
    required this.name,
    required this.age,
    required this.employmentStatus,
    required this.jobTitle,
    required this.industry,
    required this.familyMembers,
    required this.signature,
    required this.biography,
    required this.interest,
  });

  // Basic Info
  final String civilStatus;
  final String educationalBackground;
  final String name;
  final int age;

  // Employment Info
  final String employmentStatus;
  final String jobTitle;
  final String industry;

  // Personal Info
  final int familyMembers;
  final String signature;
  final String biography;
  final String interest;
}

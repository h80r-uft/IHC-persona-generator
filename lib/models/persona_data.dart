/// Information about a Persona
///
/// This class models the information a persona have.
class PersonaData {
  PersonaData({
    required this.educationalBackground,
    required this.name,
    required this.age,
    required this.employmentStatus,
    required this.jobTitle,
    required this.industry,
    required this.familyMembers,
    required this.biography,
    required this.interest,
    required this.color,
  });

  // Basic Info
  final String educationalBackground;
  final String name;
  final int age;

  // Employment Info
  final String employmentStatus;
  final String jobTitle;
  final String industry;

  // Personal Info
  final int familyMembers;
  final String biography;
  final String interest;
  final String color;
}

// Packages
import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:dio/dio.dart';

// Models
import 'package:persona_generator/models/persona_data.dart';

/// Persona Data Generation Service.
///
/// This service is responsible for generating persona data with realistic
/// information provided by `www.fakepersongenerator.com`.
class DataService {
  final _dio = Dio();

  /// Converts the birthday string generated to a valid age.
  int _birthdayToAge(String birthday) {
    return int.parse(
      birthday.substring(birthday.indexOf('(') + 1).split(' ').first,
    );
  }

  /// Get valid information from editable fields.
  ///
  /// Search the desired [field] and return its corresponding value.
  String _findEditable(
    Bs4Element dataFrame, {
    required String field,
  }) {
    return dataFrame
        .find('span', string: field)!
        .nextElement!
        .children
        .first
        .attributes['value']!;
  }

  /// Get valid information from static fields.
  ///
  /// Search the desired [field] and return its corresponding value.
  String _findStatic(
    Bs4Element dataFrame, {
    required String field,
  }) {
    return dataFrame
        .find('span', string: field)!
        .nextElement!
        .children
        .first
        .string;
  }

  /// Generate [PersonaData]
  ///
  /// Request data from `https://www.fakepersongenerator.com/` and format into a
  /// [PersonaData] instance using support functions.
  Future<PersonaData> getPersonaData() async {
    final request = await _dio.get<String>(
      'https://www.fakepersongenerator.com/Index/generate',
    );

    if (request.data == null) throw Exception("Can't load person data.");

    final pageHTML = BeautifulSoup(request.data!);
    final dataFrame = pageHTML.find('div', class_: 'frame-1')!;

    final education = _findEditable(dataFrame, field: 'Educational Background');
    final birth = dataFrame.find('p', selector: '.col-md-8 > p:nth-child(2)');

    final familySize = int.parse(
        _findEditable(dataFrame, field: 'Family Members').split(' ').first);

    return PersonaData(
      educationalBackground: education,
      name: dataFrame.find('p', class_: 'text-center name')!.string,
      age: _birthdayToAge(birth!.string),
      employmentStatus: _findEditable(dataFrame, field: 'Employment Status'),
      jobTitle: _findEditable(dataFrame, field: 'Occupation'),
      industry: _findEditable(dataFrame, field: 'Industry'),
      familyMembers: familySize,
      biography: _findStatic(dataFrame, field: 'Online Biography'),
      interest: _findStatic(dataFrame, field: 'Interest'),
      color: _findEditable(dataFrame, field: 'Favorite Color'),
    );
  }
}

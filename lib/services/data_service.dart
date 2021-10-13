// Packages
import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:dio/dio.dart';

// Models
import 'package:persona_generator/models/persona_data.dart';

class DataService {
  final _dio = Dio();

  int _birthdayToAge(String birthday) {
    return int.parse(
      birthday.substring(birthday.indexOf('(') + 1).split(' ').first,
    );
  }

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

  Future<PersonaData> getPersonData() async {
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
      civilStatus: _findEditable(dataFrame, field: 'Civil Status'),
      educationalBackground: education,
      name: dataFrame.find('p', class_: 'text-center name')!.string,
      age: _birthdayToAge(birth!.string),
      employmentStatus: _findEditable(dataFrame, field: 'Employment Status'),
      jobTitle: _findEditable(dataFrame, field: 'Occupation'),
      industry: _findEditable(dataFrame, field: 'Industry'),
      familyMembers: familySize,
      signature: _findStatic(dataFrame, field: 'Online Signature'),
      biography: _findStatic(dataFrame, field: 'Online Biography'),
      interest: _findStatic(dataFrame, field: 'Interest'),
    );
  }
}

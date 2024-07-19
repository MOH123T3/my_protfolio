import 'package:demo/config/constants.dart';

class Project {
  final String? name;
  final String? description;
  final String? image;
  final String? url;
  final List<String>? skills;

  Project({this.name, this.description, this.image, this.url, this.skills});
}

// ignore: non_constant_identifier_names
List<Project> PROJECTS = [
  Project(
    name: 'Tender Detail',
    description:
        'TenderDetail App provides you Indian & Global Tenders Information. You can get latest update on Government Tenders, Procurement News, Projects Information and Contract Award detail from India & world wide. You will get detail information of Tender Notice like Tendering Authority Name, Name of work, EMD, Estimated Tender Value, BOQ Detail along with Tender Documents or Scan Image of Tender Notice. We also provides Tender Results.',
    image: AppConstants.tenderDetail,
    url:
        'https://play.google.com/store/apps/details?id=com.cnettechnologies.tenderdetail&hl=en_IN&pli=1',
    skills: [
      'Dart',
      'Flutter',
      'Firebase',
    ],
  ),
  Project(
    name: 'સેવા ભારતી',
    description:
        'All pravasi karyakarta can update the stock of arogya-peti distributed in their region as ... ',
    image: AppConstants.sewabharti,
    url:
        'https://play.google.com/store/apps/details?id=org.sevabhartigujarat.arogyamitra&hl=en',
    skills: ['Dart', 'Flutter', 'Firebase', 'Github', 'Sql'],
  ),
  Project(
    name: 'Workout',
    description:
        'Workout is a comprehensive workout application designed to help users achieve their fitness goals through personalized workout plans, exercise tutorials, progress tracking, and community features. The app caters to a wide range of users, from beginners to advanced athletes, offering features that support various workout routines and fitness levels.',
    image: AppConstants.workout,
    url: 'https://github.com/MOH123T3/workout_application',
    skills: [
      'Dart',
      'Sql',
      'Flutter',
      'Git',
    ],
  ),
  Project(
    name: 'Weather Info',
    description:
        'Weather information app designed to provide accurate, real-time weather updates, Humidity, Wind Speed, and severe weather alerts. The app offers users detailed weather information, including current conditions, hourly and daily forecasts, and notifications for severe weather events.',
    image: AppConstants.weatherInfo,
    url: 'https://github.com/MOH123T3/weatherInfo',
    skills: ['Dart', 'Flutter', 'Github'],
  ),
  Project(
    name: 'WeldingWorks',
    description:
        'WeldingWorks is a website designed for a welding service company that provides a wide range of welding solutions including residential, commercial, and industrial welding projects. The site offers information about services, showcases past projects, and allows customers to request quotes and schedule appointments.',
    image: AppConstants.weldingWorksA,
    url: 'https://github.com/MOH123T3/webdemo',
    skills: ['Dart', 'Flutter', 'Firebase', 'Github', 'Sql'],
  ),
];

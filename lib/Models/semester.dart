import 'course.dart';

class Semester {
  String title, branch;
  int id;
  List<Course> courses;

  Semester(this.title, this.branch, this.id, this.courses);
}

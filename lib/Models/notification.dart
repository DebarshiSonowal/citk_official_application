import 'package:faker/faker.dart';
import 'package:intl/intl.dart';

class NotificationCustom{
  String? name,description,image,type,time;
  int? id;
  NotificationCustom(){
    name = Faker().person.name();
    time = DateFormat("dd MMM,yyyy").format(Faker().date.dateTime());
    description = Faker().lorem.sentence();
    image = Faker().image.image();
    type = Faker().job.title();
    id = int.parse(Faker().vehicle.year());
  }
}
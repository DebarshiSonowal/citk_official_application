import 'package:citk_official_application/Models/achievement_post.dart';
import 'package:citk_official_application/Models/course.dart';
import 'package:citk_official_application/Models/department.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../Helper/Repository.dart';
import '../Models/advertisement.dart';
import '../Models/dashboard_item.dart';
import '../Models/drawer_item.dart';
import '../Models/history.dart';
import '../Models/semester.dart';
import '../Navigation/Navigate.dart';

class Constance {
  static const primaryColor = Color(0xff275939);
  static const secondaryColor = Color(0xffF2CC0C);
  static const thirdColor = Color(0xff3DD954);
  static const forthColor = Color(0xff2450A6);
  static const fifthColor = Color(0xffF2F2F2);

  static const logoIcon = 'assets/images/logo.png';
  static const logo1Icon = 'assets/images/logo1.png';
  static const logo2Icon = 'assets/images/large_logo.png';
  static const logoVector = 'assets/images/logo_vector.svg';

  static const aboutString =
      "Central Institute of Technology (CIT), Kokrajhar is situated in Kokrajhar District of Bodoland Territorial"
      " Council (BTC) in Assam. CIT has been established for the basic objective of fulfilling the aspirations of the Bodo People relating"
      " to their cultural identity, language, education and overall economic development of the region and to impart Bodo youths with requisite"
      " technological and vocational training to produce the required manpower to give the impetus to economic growth of this area and to integrate"
      " the Bodo People into the mainstream of Technical and Vocational Education. It is a Centrally Funded Institute under the Ministry of Human "
      "Resource Development, Government of India.";

  static final dashboardItems = [
    DashboardItem(
      "B.Tech",
      "Current Programme",
      Icons.school,
    ),
    DashboardItem(
      "Computer Science",
      "Current Branch",
      Icons.school,
    ),
    DashboardItem(
      "8",
      "Current Semester",
      Icons.school,
    ),
    DashboardItem(
      "Regular/Approved",
      "Admission Status",
      Icons.school,
    ),
  ];

  static final drawerBoardItems = [
    DrawerItem(
      "Dashboard",
      Icons.dashboard,
      () {
        Provider.of<Repository>(
                Navigation.instance.navigatorKey.currentContext!,
                listen: false)
            .setCurrentPage(0);
      },
    ),
    DrawerItem(
      "History",
      Icons.history,
      () {
        Provider.of<Repository>(
                Navigation.instance.navigatorKey.currentContext!,
                listen: false)
            .setCurrentPage(1);
      },
    ),
    DrawerItem(
      "Courses",
      Icons.book,
      () {
        // Provider.of<Repository>(
        //         Navigation.instance.navigatorKey.currentContext!,
        //         listen: false)
        //     .setCurrentPage(0);
      },
    ),
    DrawerItem(
      "Departments",
      Icons.house,
      () {
        Provider.of<Repository>(
                Navigation.instance.navigatorKey.currentContext!,
                listen: false)
            .setCurrentPage(0);
      },
    ),
    DrawerItem(
      "About",
      Icons.info,
      () {
        // Provider.of<Repository>(Navigation.instance.navigatorKey.currentContext!,listen: false).setCurrentPage(0);
      },
    ),
  ];

  static final formData = [];

  static final advertisements = [
    Advertisement(
        "https://www.cit.ac.in/images/misc/cit_foundation_day.jpeg",
        "https://www.cit.ac.in/",
        "CIT Foundation Day"),
    Advertisement(
        "https://www.cit.ac.in/images/bss/bodo_thunlai_san_director_flag_hoisting.jpg",
        "https://www.cit.ac.in/",
        "Bodo Thunlai San Director Flag Hoisting"),
    Advertisement(
        "https://www.cit.ac.in/images/misc/mou-mobius-citk.jpeg",
        "https://www.cit.ac.in/",
        "MOU between Mobius and CITK"),
  ];
  static final achievementsAlumni = [
    AchievementPost(
        "DEAN External Affairs",
        "Youngest PHD scholar in IIT,Delhi",
        "We are greatful for the",
        "https://images.unsplash.com/photo-1521587760476-6c12a4b040da?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YWNhZGVtaWN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
        "22-01-2023"),
    AchievementPost(
        "DEAN External Affairs",
        "Youngest PHD scholar in IIT,Delhi",
        "We are greatful for the",
        "https://images.unsplash.com/photo-1501290836517-b22a21c522a4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YWNhZGVtaWN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
        "22-01-2023"),
  ];

  static final departments = [
    Department(
        0,
        "Computer Science & Engineering",
        "The Department of Computer Science and Engineering of Central Institute of Technology, Kokrajhar"
            "is ready to prepare well qualified, motivated, application oriented young and dynamic Computer Science graduates."
            "Over the last three years department of Computer Science & Engineering is also generating a good number of diploma students"
            "in Computer Science & Engineering branch."
            "The department is looking forward to get the national as well as international recognition. We will diversify our knowledge in interdisciplinary"
            "courses and collaboration with other institutes (like NITs and IITs) and R&D Labs of some well known Software Industries. We are preparing ourselves"
            "for organizing and attending different workshops and seminars. With the help of vocational training we will definitely serve the purpose of the society."
            "We are determined to achieve these goals only by the help of committed and long-term effort by our faculty and students."),
    Department(
        1,
        "Civil Engineering",
        "Construction Technology is a professional engineering discipline that deals with the design,"
            "construction and maintenance of the physical and naturally built environment,"
            "including works such as bridges, roads, canals, dams and buildings. Construction Technology is the oldest engineering discipline after military engineering."
            "It is traditionally broken into several sub-disciplines including environmental engineering, geotechnical engineering, structural engineering, transportation engineering,"
            "water resources engineering, materials engineering, coastal engineering, surveying, and construction engineering. Construction Technology takes place on all levels:"
            "in the public sector from municipal through to federal levels, and in the private sector from individual homeowners through to international companies."
            "Necessity has demanded for Construction Engineers and hence the department of construction Technology was started in this institute from the academic year 2009-2010. "
            "The department is at present conducting one diploma course."
            ""),
    Department(
        2,
        "Food Engineering",
        "Agricultural production in India has made rapid strides in the past three decades and enabled us to achieve self sufficiency in food grains."
            "Significant increase has also been achieved in the production of fruits, vegetables, milk, egg, meat and other food products. However,"
            "less than 1.7% of our total horticultural produce is processed as compared to more than 60% in developed countries. It is estimated that the post"
            "harvest losses in durable commodities are around 10% and in perishables about 40%, resulting in a value loss of the order of Rs.50,000 crores a year,"
            "because of the inadequate processing technologies, infrastructure facilities and qualified technical personnel. In the present scenario of economic "
            "liberalization and changing food consumption habits, the Indian Food Industry will shift to foods that demand more appropriate handling, processing,"
            "preservation, storage and marketing resulting in greater protein intake besides making the Indian Food Products internationally competitive."
            "To meet out the challenges in the food processing industry, adequate number of qualified technical personnel in food process engineering is the need of the hour."
            "Anticipating the high demand of technical personnel in the field of Food Process Technology, BTC- BODOLAND has started the B.Tech. Course in FPT from the academic year of 2009"
            "with an annual intake of 32 students."
            "The syllabus is framed with balance of theory, practical and project laboratories at the institutional level. As a part of the programme, students visit food processing and food plant manufacturing"
            "industries to get an overview. Besides, students undergo one semester in-plant project training in an industry related to food to get insight of the industry. This makes the student confident to take"
            "any responsibility in the area of food processing."
            "The objective of this programme is to train the best talents of the nation in order to provide a support base for the country’s food security. The programme is designed to expose the students to the "
            "state-of-art laboratory facilities created with assistance from Ministry Human Resources Department, Govt. of India and BTC. Hands-on training in commercial food processing industries, students’ project work,"
            "exposure to national and international seminars and multi-disciplinary approaches is the highlights of this course."),
    Department(3, "Civil Engineering",
        """Construction Technology is a professional engineering discipline that deals with the design,
         construction and maintenance of the physical and naturally built environment,
          including works such as bridges, roads, canals, dams and buildings. Construction Technology is the oldest engineering discipline after military engineering.
           It is traditionally broken into several sub-disciplines including environmental engineering, geotechnical engineering, structural engineering, transportation engineering,
            water resources engineering, materials engineering, coastal engineering, surveying, and construction engineering. Construction Technology takes place on all levels:
             in the public sector from municipal through to federal levels, and in the private sector from individual homeowners through to international companies.
Necessity has demanded for Construction Engineers and hence the department of construction Technology was started in this institute from the academic year 2009-2010. 
The department is at present conducting one diploma course."""),
    Department(4, "Electronics & Communication Engineering",
        """Welcome to the Department of Electronics & Communication Engineering (ECE) at CIT Kokrajhar.
         The branch of ECE has never become unpopular since the advent of the 3rd industrial revolution in the early 1950s
          where solid state devices based electronic systems began to influence every sphere of human life.
           Computing and communication technology has matured so much in the last seventy years that we are now witnessing the rise of the 4th
            industrial revolution namely, the information revolution. Information from every walk of our lives now needs to be acquired, stored,
             processed, communicated, and presented in very large volumes. In each step of the way, electronics and communication engineers lead the way.
The branch of ECE focuses on the study of three core subareas such as VLSI, signal processing, and communication systems. The subject of VLSI
 deals with the design and manufacturing of miniaturized electronic chips with circuits that contain upto 10 billion (1010) transistors. Chips are designed
  such that information can be manipulated in either analog or digital format. As a higher level of control is becoming technologically feasible at the microscopic levels,
   novel devices are beginning to replace conventional transistors. The area of signal processing in ECE deals with the algorithms and techniques for analysis and synthesis
    of signals such as text, voice, image, video, sensor data ...etc that encodes information related to various applications. With the deployment of high-performance computing systems,
     novel machine learning methods such a deep learning has become very practical these days. The mobile communication is currently in a transition from 4G to 5G in order to accommodate
      the need for higher bandwidth for every one of us. Rapid improvements are also happening in area of communication systems based on satellites, optical fibres, aviation and surveillance.
The department of ECE at the moment has strength of ten faculties who are specialized in various fields such as nanoelectronics, digital system design, analog and RF circuits, microwave photonics,
 micro-strip antennas, medical image processing, machine learning, 5G communication systems, …etc. Our laboratories are equipped with all necessary hardware and software facilities to conduct regular
  academic activities of all departmental programs. We are also enriched with high end setups such as high performance computing system, anechoic chamber and GHz-network analyzer for advanced research works.
   The Diploma and Degree programs are designed to disseminate rich knowledge in all the core subjects along with elective courses which aim to introduce the students to more advanced topics of current research.
    The curriculum and syllabus are at par with that of the premier institutes of the country following the guidelines of AICTE. The students are given oppertunity for taking up industrial training and are encouraged
     to carry out research or development project works as a part of their curriculum. The department also invites motivated postgraduates in ECE to join its PhD program by undertaking theoretical and/or practical studies related to the field."""),
  ];

  static final courses_8th_sem = [
    Course("Cyber laws and Ethics", 3, 0, 0, false),
    Course("Indian Economic Policies", 3, 0, 0, false),
    Course("Blockchain Technology", 5, 0, 0, false),
    Course("Major Project II", 5, 0, 0, false),
  ];
  static final courses_7th_sem = [
    Course("Cryptography and Network Security", 5, 0, 86, true),
    Course("The History of Science & Technology", 3, 0, 70, true),
    Course("Adhoc Network", 3, 0, 70, true),
    Course("Major Project I", 5, 0, 80, true),
  ];
  static final courses_6th_sem = [
    Course("Software Engineering", 5, 0, 86, true),
    Course("Internet of Things", 3, 0, 70, true),
    Course("Natural Language Processing", 3, 0, 70, true),
    Course("Mini Project", 5, 0, 80, true),
  ];
  static final semesters = [
    Semester("8th Semester", "CSE", 8, courses_8th_sem),
    Semester("7th Semester", "CSE", 7, courses_7th_sem),
    Semester("6th Semester", "CSE", 7, courses_6th_sem),
    Semester("5th Semester", "CSE", 7, courses_7th_sem),
  ];

  static final history = [
    History("8th Semester", "Download",
        DateFormat("dd MMM,yyyy").format(DateTime.now())),
    History("7th Semester", "Download",
        DateFormat("dd MMM,yyyy").format(DateTime.now())),
    History("6th Semester", "Download",
        DateFormat("dd MMM,yyyy").format(DateTime.now())),
  ];
}

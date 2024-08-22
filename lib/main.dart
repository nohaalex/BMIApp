import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:learn1/DataTableEx.dart';
// import 'package:learn1/FileAdd.dart';
import 'package:learn1/ListBuilding.dart';

import 'BMICalculator.dart';
import 'BottomNavBars.dart';
import 'BuildCont.dart';
import 'ButtonsTypes.dart';
import 'Cards.dart';
import 'DateFormatEx.dart';
import 'ExpandedWidgetExample.dart';
import 'FinalSlivers.dart';
import 'GestureEx.dart';
import 'ImagePicker.dart';
import 'LayoutBuilder.dart';
import 'ListTile.dart';
import 'MQ1.dart';
import 'MQApp.dart';
import 'MyApp.dart';
import 'Orient.dart';
import 'PageViewApp.dart';
import 'QuizApp.dart';
import 'SliverAppBarEx.dart';
import 'SliverGridCount.dart';
import 'SliverGridEx.dart';
import 'SliverGridExtentEx.dart';
import 'SliverToBoxAdapter.dart';
import 'TabBarStudy.dart';
import 'package:firebase_core/firebase_core.dart';


void main() {
  // runApp(const MyApp());
  // runApp(HelloWorld());
 //  runApp(Trythis());
 //  runApp(ListBuilding());
 //  runApp(ScrollViewProject());
 //  runApp(BuildCont());
 //  runApp(ExpandedWidgetExample());
 //  runApp(Cards());
 //  runApp(ListTileApp());
 //  runApp(TabBarStudy());

  // runApp(BottomNavBars());
  // runApp(QuizApp());
  runApp(BMI());
 //  runApp(PageViewApp());
 //  runApp(MyAppp());
 //  runApp(ButtonTypes());
 //  runApp(SliverExample());
 //  runApp(SliverAppBarEx());
 //  runApp(SliverToBoxAdapterEx());
 //  runApp(SliverGridEx());
 //  runApp(SliverGridExtentEx());
 //  runApp(SliverGridCountEx());
 //  runApp(FinalSlivers());
 //  runApp(GridViewApp());
 //  runApp(MQApp());
 //  runApp(MQ1());
 //  runApp(Orient());
 //  runApp(Layout_builder());
 //  runApp(Dateformatex());
 //  runApp(Snackbarex());
 //  runApp(const DatatableEx());
 //  runApp(Imagepicker());
 //  runApp(MyApp());
 //  runApp(Gestureex());




  var now = DateTime.now();
  var todaysDate = DateFormat("dd-MM-yyyy").format(now);
  print(todaysDate);

  var todayDate = DateFormat("yyyy-MM-dd hh:mm:ss").format(now);
  print(todayDate);


  var timeNow = DateFormat("H:m:s").format(now);
  print(timeNow);

  var pastDate = DateTime.parse("2000-05-10 22:19:23");
  var futureDate = DateTime.parse("2025-05-10 22:19:23");
  print(pastDate.isBefore(futureDate));
  print(pastDate.isAfter(futureDate));

  var date1 = DateTime.parse("2000-05-10 22:19:23");
  var date2 = DateTime.parse("2001-05-10 22:19:23");
  var dayDifference = date2.difference(date1);
  print("Difference in days: ${dayDifference.inDays}");



  var dateOne = DateTime.parse("2024-06-30 20:18:04");
  var newDate = dateOne.add(const Duration(days: 2));

  print(newDate);


  DateTime date = DateTime.now();
  final DateFormat dateFormatter = DateFormat('MMM dd, yyyy');
  var formattedDate = dateFormatter.format(date);
  print(formattedDate);

}


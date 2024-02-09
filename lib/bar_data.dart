import 'package:dashboard/individual_bar.dart';

class BarData {
  final double januarySteps;
  final double februarySteps;
  final double marchSteps;
  final double aprilSteps;
  final double maySteps;
  final double juneSteps;
  final double julySteps;
  final double augustSteps;
  final double septemberSteps;
  final double octoberSteps;
  final double novemberSteps;
  final double decemberSteps;

  BarData({
    required this.januarySteps, required this.februarySteps, required this.marchSteps,
    required this.aprilSteps, required this.maySteps, required this.juneSteps,
    required this.julySteps, required this.augustSteps, required this.septemberSteps,
    required this.octoberSteps, required this.novemberSteps, required this.decemberSteps});

  List<IndividualBar> barData = [];

  void initializeBarData() {
    barData = [
      IndividualBar(x: 0, y: januarySteps),
      IndividualBar(x: 0, y: februarySteps),
      IndividualBar(x: 0, y: marchSteps),
      IndividualBar(x: 0, y: aprilSteps),
      IndividualBar(x: 0, y: maySteps),
      IndividualBar(x: 0, y: juneSteps),
      IndividualBar(x: 0, y: julySteps),
      IndividualBar(x: 0, y: augustSteps),
      IndividualBar(x: 0, y: septemberSteps),
      IndividualBar(x: 0, y: octoberSteps),
      IndividualBar(x: 0, y: novemberSteps),
      IndividualBar(x: 0, y: decemberSteps),
    ];
  }
}
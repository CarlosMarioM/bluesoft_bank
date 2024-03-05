import 'package:bluesoft_bank/utils/extension/widget/widget_extension.dart';
import 'package:flutter/material.dart';

class Navigation {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      default:
        return const Scaffold(
          body: Center(
            child: SizedBox(
              child: Text("Wrong route"),
            ),
          ),
        ).buildPageRoute();
      // case splashRoute:
      //   return const SplashScreen().buildPageRoute();

      // case wrapperRoute:
      //   return Wrapper().buildPageRoute();

      // case loginRoute:
      //   return LoginScreen().buildPageRoute();
      // case homeRoute:
      //   return const HomeScreen().buildPageRoute();

      // case infusionCheckRoute:
      //   final map = arguments as Map;
      //   Encounters encounter = map['encounter'];
      //   int? index = map['index'];
      //   GlobalKey? key = map['key'];
      //   return InfusionCheckScreen(
      //     encounter: encounter,
      //     index: index,
      //     key: key,
      //   ).buildPageRoute();

      // case infoStepRoute:
      //   return InfoStep().buildPageRoute();

      // case weightStepRoute:
      //   return WeightStep().buildPageRoute();

      // case insuranceStepRoute:
      //   return InsuranceStep().buildPageRoute();

      // case patientNotesStepRoute:
      //   return PatientsNotes(
      //     isCheck: true,
      //   ).buildPageRoute();

      // case reviewStepRoute:
      //   final map = arguments as Map;
      //   return ReviewNotes(
      //     values: map["values"],
      //     key: reviewKey,
      //   ).buildPageRoute();

      // case calculateDosageRoute:
      //   final map = arguments as Map;
      //   Encounters encounter = map['encounter'];
      //   return MaterialPageRoute(
      //     builder: (context) => PreInfusionProcessScreen(
      //       encounter: encounter,
      //       retake: false,
      //     ),
      //   );

      // case retakeInfusionRoute:
      //   final map = arguments as Map;
      //   Encounters encounter = map['encounter'];
      //   return MaterialPageRoute(
      //     builder: (context) => PreInfusionProcessScreen(
      //       encounter: encounter,
      //       retake: true,
      //     ),
      //   );

      // case infusionProcessRoute:
      //   final map = arguments as Map;
      //   Encounters encounter = map['encounter'];
      //   Results result = map['result'];
      //   Infusion infusion = map['infusion'];

      //   int? index = map['index'];
      //   return InfusionProcess(
      //     encounter: encounter,
      //     cloudResults: result,
      //     infusion: infusion,
      //     index: index,
      //   ).buildPageRoute();

      // case preloadInfusionSummaryRoute:
      //   final map = arguments as Map;
      //   Encounters encounter = map['encounter'];
      //   return PreloadInfusionSummary(
      //     encounter: encounter,
      //   ).buildPageRoute();

      // default:
      //   return Scaffold(
      //     body: Center(
      //       child: Container(
      //         child: Text("Wrong route"),
      //       ),
      //     ),
      //   ).buildPageRoute();
    }
  }
}

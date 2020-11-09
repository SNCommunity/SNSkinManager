import 'package:flutter/material.dart';
import 'package:sn_skin_manager/routes/scrn_home.dart';
import 'package:sn_skin_manager/routes/scrn_compile.dart';
import 'package:sn_skin_manager/routes/scrn_credits.dart';
import 'package:sn_skin_manager/routes/scrn_decompile.dart';
import 'package:sn_skin_manager/routes/scrn_list.dart';
import 'package:sn_skin_manager/routes/scrn_package.dart';
import 'package:sn_skin_manager/routes/scrn_preview.dart';
import 'package:sn_skin_manager/routes/scrn_repackage.dart';
import 'package:sn_skin_manager/routes/scrn_update.dart';
import 'package:sn_skin_manager/routes/scrn_extractor.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case'/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/list':
        // if (args is String) {return blah}
        // return _errorRoute();
        return MaterialPageRoute(builder: (_) => ListPage());
      case '/preview':
        return MaterialPageRoute(builder: (_) => PreviewPage());
      case '/decompile':
        return MaterialPageRoute(builder: (_) => DecompilePage());
      case '/compile':
        return MaterialPageRoute(builder: (_) => CompilePage());
      case '/package':
        return MaterialPageRoute(builder: (_) => PackagePage());
      case '/repackage':
        return MaterialPageRoute(builder: (_) => RepackagePage());
      case '/update':
        return MaterialPageRoute(builder: (_) => UpdatePage());
      case '/extract':
        return MaterialPageRoute(builder: (_) => ExtractorPage());
      case '/credits':
        return MaterialPageRoute(builder: (_) => CreditsPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('This is an invalid page yo. Let Vince the Animator#2359 know about this plz. Be sure to mention which page you were navigating from and which page you were trying to navigate to.'),
          )
        ),
      );
    });
  }
}
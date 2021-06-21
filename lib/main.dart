import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:psychodynamics/app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await DataDi().init();
  await DomainDi().init();

  runApp(App());
}

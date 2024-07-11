import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tezda_app/app/app.dart';
import 'package:tezda_app/common/di/di.dart';
import 'package:tezda_app/common/storage/local_storage.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await LocalStorageService.init();

  await setUpLocator();

  runApp(const ProviderScope(child: App()));
}
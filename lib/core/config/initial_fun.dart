import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/services.dart' show SystemChrome, DeviceOrientation;
import 'package:fruits_hub/core/injection/injection.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart'
    show HydratedBloc, HydratedStorage, HydratedStorageDirectory;
import 'package:path_provider/path_provider.dart' show getTemporaryDirectory;

Future<void> initial() async {
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  configureDependencies();
}

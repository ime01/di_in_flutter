
import 'package:di_in_flutter/models/location_model.dart';
import 'package:get_it/get_it.dart';

import 'location_service.dart';

GetIt getIt = GetIt.instance;

void locator(){

  // getIt.registerLazySingleton(() => LocationModel );
  
  getIt.registerFactory(() => LocationService());

}

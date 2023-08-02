

import 'package:farm_mobile/data/di/module/local_module.dart';
import 'package:farm_mobile/data/di/module/network_module.dart';
import 'package:farm_mobile/data/di/module/repository_module.dart';

mixin DataLayerInjection {
  static Future<void> configureDataLayerInjection() async {
    await LocalModule.configureLocalModuleInjection();
    await NetworkModule.configureNetworkModuleInjection();
    await RepositoryModule.configureRepositoryModuleInjection();
  }
}


import 'package:farm_mobile/data/di/data_layer_injection.dart';
import 'package:farm_mobile/domain/di/domain_layer_injection.dart';
import 'package:farm_mobile/presentation/di/presentation_layer_injection.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

mixin ServiceLocator {
  static Future<void> configureDependencies() async {
    await DataLayerInjection.configureDataLayerInjection();
    await DomainLayerInjection.configureDomainLayerInjection();
    await PresentationLayerInjection.configurePresentationLayerInjection();
  }
}

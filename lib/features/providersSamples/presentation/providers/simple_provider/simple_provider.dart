import 'package:flutter_riverpod/flutter_riverpod.dart';

// el provider mas simple sin modificadores, sirve un valor, no actualiza la UI y tampoco otros providers
final simpleProvider = Provider<String>((ref) {
  return 'Hello there';
});

///Este modificador hace que se haga dispose del provider cuando se pierden todas las instancias donde se utiliza el provider en cuestion
final simpleProviderWithDispose =
    Provider.autoDispose<String>((ref) => 'Hello there');

///podemos pasarle valores al provider usando el modificador de family
final simpleProviderWithFamily =
    Provider.family<String, String>((ref, name) => "Hello $name");

final simpleProviderWithFamilyDispose =
    Provider.autoDispose.family<String, String>((ref, name) {
  ref.onDispose(() {
    print('[simpleProviderWithFamilyDispose($name) disposed]');
  });
  return "Hello $name";
});

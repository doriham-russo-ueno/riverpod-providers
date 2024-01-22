import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'simple_provider_anotate.g.dart';

///provider simple, solo retorna el mismo valor siempre
@Riverpod(keepAlive: true)
String hello(HelloRef ref) {
  return 'hello there!';
}

///usando el modificador de family
@Riverpod(keepAlive: true)
String greetings(GreetingsRef ref, {required String username}) {
  return 'hello there family $username';
}

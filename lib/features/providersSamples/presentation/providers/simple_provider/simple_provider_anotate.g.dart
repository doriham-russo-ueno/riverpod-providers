// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_provider_anotate.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$helloHash() => r'6636dbd5880c8dc1ae0866f676a48e05ce4895cd';

///provider simple, solo retorna el mismo valor siempre
///
/// Copied from [hello].
@ProviderFor(hello)
final helloProvider = Provider<String>.internal(
  hello,
  name: r'helloProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$helloHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HelloRef = ProviderRef<String>;
String _$greetingsHash() => r'a6c8947a804f8b548c1ef83cdcd4aab6bf575d1b';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

///usando el modificador de family
///
/// Copied from [greetings].
@ProviderFor(greetings)
const greetingsProvider = GreetingsFamily();

///usando el modificador de family
///
/// Copied from [greetings].
class GreetingsFamily extends Family<String> {
  ///usando el modificador de family
  ///
  /// Copied from [greetings].
  const GreetingsFamily();

  ///usando el modificador de family
  ///
  /// Copied from [greetings].
  GreetingsProvider call({
    required String username,
  }) {
    return GreetingsProvider(
      username: username,
    );
  }

  @override
  GreetingsProvider getProviderOverride(
    covariant GreetingsProvider provider,
  ) {
    return call(
      username: provider.username,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'greetingsProvider';
}

///usando el modificador de family
///
/// Copied from [greetings].
class GreetingsProvider extends Provider<String> {
  ///usando el modificador de family
  ///
  /// Copied from [greetings].
  GreetingsProvider({
    required String username,
  }) : this._internal(
          (ref) => greetings(
            ref as GreetingsRef,
            username: username,
          ),
          from: greetingsProvider,
          name: r'greetingsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$greetingsHash,
          dependencies: GreetingsFamily._dependencies,
          allTransitiveDependencies: GreetingsFamily._allTransitiveDependencies,
          username: username,
        );

  GreetingsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.username,
  }) : super.internal();

  final String username;

  @override
  Override overrideWith(
    String Function(GreetingsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GreetingsProvider._internal(
        (ref) => create(ref as GreetingsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        username: username,
      ),
    );
  }

  @override
  ProviderElement<String> createElement() {
    return _GreetingsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GreetingsProvider && other.username == username;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, username.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GreetingsRef on ProviderRef<String> {
  /// The parameter `username` of this provider.
  String get username;
}

class _GreetingsProviderElement extends ProviderElement<String>
    with GreetingsRef {
  _GreetingsProviderElement(super.provider);

  @override
  String get username => (origin as GreetingsProvider).username;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

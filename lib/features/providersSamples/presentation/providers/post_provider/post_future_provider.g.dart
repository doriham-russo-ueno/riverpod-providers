// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_future_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getPostDetailsHash() => r'0598a253e34465fb494a23522f47cf622beca4e9';

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

/// See also [getPostDetails].
@ProviderFor(getPostDetails)
const getPostDetailsProvider = GetPostDetailsFamily();

/// See also [getPostDetails].
class GetPostDetailsFamily extends Family<AsyncValue<PostModel>> {
  /// See also [getPostDetails].
  const GetPostDetailsFamily();

  /// See also [getPostDetails].
  GetPostDetailsProvider call({
    required String postId,
  }) {
    return GetPostDetailsProvider(
      postId: postId,
    );
  }

  @override
  GetPostDetailsProvider getProviderOverride(
    covariant GetPostDetailsProvider provider,
  ) {
    return call(
      postId: provider.postId,
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
  String? get name => r'getPostDetailsProvider';
}

/// See also [getPostDetails].
class GetPostDetailsProvider extends AutoDisposeFutureProvider<PostModel> {
  /// See also [getPostDetails].
  GetPostDetailsProvider({
    required String postId,
  }) : this._internal(
          (ref) => getPostDetails(
            ref as GetPostDetailsRef,
            postId: postId,
          ),
          from: getPostDetailsProvider,
          name: r'getPostDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getPostDetailsHash,
          dependencies: GetPostDetailsFamily._dependencies,
          allTransitiveDependencies:
              GetPostDetailsFamily._allTransitiveDependencies,
          postId: postId,
        );

  GetPostDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.postId,
  }) : super.internal();

  final String postId;

  @override
  Override overrideWith(
    FutureOr<PostModel> Function(GetPostDetailsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetPostDetailsProvider._internal(
        (ref) => create(ref as GetPostDetailsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        postId: postId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PostModel> createElement() {
    return _GetPostDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetPostDetailsProvider && other.postId == postId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, postId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetPostDetailsRef on AutoDisposeFutureProviderRef<PostModel> {
  /// The parameter `postId` of this provider.
  String get postId;
}

class _GetPostDetailsProviderElement
    extends AutoDisposeFutureProviderElement<PostModel> with GetPostDetailsRef {
  _GetPostDetailsProviderElement(super.provider);

  @override
  String get postId => (origin as GetPostDetailsProvider).postId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

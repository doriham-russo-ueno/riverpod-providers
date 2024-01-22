// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostResponseModel _$PostResponseModelFromJson(Map<String, dynamic> json) {
  return _PostResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PostResponseModel {
  List<PostModel> get postList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostResponseModelCopyWith<PostResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostResponseModelCopyWith<$Res> {
  factory $PostResponseModelCopyWith(
          PostResponseModel value, $Res Function(PostResponseModel) then) =
      _$PostResponseModelCopyWithImpl<$Res, PostResponseModel>;
  @useResult
  $Res call({List<PostModel> postList});
}

/// @nodoc
class _$PostResponseModelCopyWithImpl<$Res, $Val extends PostResponseModel>
    implements $PostResponseModelCopyWith<$Res> {
  _$PostResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postList = null,
  }) {
    return _then(_value.copyWith(
      postList: null == postList
          ? _value.postList
          : postList // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostResponseModelImplCopyWith<$Res>
    implements $PostResponseModelCopyWith<$Res> {
  factory _$$PostResponseModelImplCopyWith(_$PostResponseModelImpl value,
          $Res Function(_$PostResponseModelImpl) then) =
      __$$PostResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PostModel> postList});
}

/// @nodoc
class __$$PostResponseModelImplCopyWithImpl<$Res>
    extends _$PostResponseModelCopyWithImpl<$Res, _$PostResponseModelImpl>
    implements _$$PostResponseModelImplCopyWith<$Res> {
  __$$PostResponseModelImplCopyWithImpl(_$PostResponseModelImpl _value,
      $Res Function(_$PostResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postList = null,
  }) {
    return _then(_$PostResponseModelImpl(
      postList: null == postList
          ? _value._postList
          : postList // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostResponseModelImpl
    with DiagnosticableTreeMixin
    implements _PostResponseModel {
  const _$PostResponseModelImpl({required final List<PostModel> postList})
      : _postList = postList;

  factory _$PostResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostResponseModelImplFromJson(json);

  final List<PostModel> _postList;
  @override
  List<PostModel> get postList {
    if (_postList is EqualUnmodifiableListView) return _postList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostResponseModel(postList: $postList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostResponseModel'))
      ..add(DiagnosticsProperty('postList', postList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostResponseModelImpl &&
            const DeepCollectionEquality().equals(other._postList, _postList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_postList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostResponseModelImplCopyWith<_$PostResponseModelImpl> get copyWith =>
      __$$PostResponseModelImplCopyWithImpl<_$PostResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PostResponseModel implements PostResponseModel {
  const factory _PostResponseModel({required final List<PostModel> postList}) =
      _$PostResponseModelImpl;

  factory _PostResponseModel.fromJson(Map<String, dynamic> json) =
      _$PostResponseModelImpl.fromJson;

  @override
  List<PostModel> get postList;
  @override
  @JsonKey(ignore: true)
  _$$PostResponseModelImplCopyWith<_$PostResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'matches_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MatchesModel _$MatchesModelFromJson(Map<String, dynamic> json) {
  return _MatchesModel.fromJson(json);
}

/// @nodoc
class _$MatchesModelTearOff {
  const _$MatchesModelTearOff();

  _MatchesModel call(
      {@JsonKey(name: 'UserId1') int? userId1,
      @JsonKey(name: 'User1') User1? user1,
      @JsonKey(name: 'UserId2') int? userId2,
      @JsonKey(name: 'User2') User1? user2,
      @JsonKey(name: 'MatchedOnDate') DateTime? matchedOnDate,
      @JsonKey(name: 'User1AcceptedDate') dynamic user1AcceptedDate,
      @JsonKey(name: 'User2AcceptedDate') dynamic user2AcceptedDate,
      @JsonKey(name: 'MatchedLatitude') double? matchedLatitude,
      @JsonKey(name: 'MatchedLongitude') double? matchedLongitude,
      @JsonKey(name: 'RawMatchPercentage') double? rawMatchPercentage,
      @JsonKey(name: 'WeightedMatchPercentage') double? weightedMatchPercentage,
      @JsonKey(name: 'MatchedLocationName') dynamic matchedLocationName,
      @JsonKey(name: 'Id') int? id}) {
    return _MatchesModel(
      userId1: userId1,
      user1: user1,
      userId2: userId2,
      user2: user2,
      matchedOnDate: matchedOnDate,
      user1AcceptedDate: user1AcceptedDate,
      user2AcceptedDate: user2AcceptedDate,
      matchedLatitude: matchedLatitude,
      matchedLongitude: matchedLongitude,
      rawMatchPercentage: rawMatchPercentage,
      weightedMatchPercentage: weightedMatchPercentage,
      matchedLocationName: matchedLocationName,
      id: id,
    );
  }

  MatchesModel fromJson(Map<String, Object?> json) {
    return MatchesModel.fromJson(json);
  }
}

/// @nodoc
const $MatchesModel = _$MatchesModelTearOff();

/// @nodoc
mixin _$MatchesModel {
  @JsonKey(name: 'UserId1')
  int? get userId1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'User1')
  User1? get user1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserId2')
  int? get userId2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'User2')
  User1? get user2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'MatchedOnDate')
  DateTime? get matchedOnDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'User1AcceptedDate')
  dynamic get user1AcceptedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'User2AcceptedDate')
  dynamic get user2AcceptedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'MatchedLatitude')
  double? get matchedLatitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'MatchedLongitude')
  double? get matchedLongitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'RawMatchPercentage')
  double? get rawMatchPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'WeightedMatchPercentage')
  double? get weightedMatchPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'MatchedLocationName')
  dynamic get matchedLocationName => throw _privateConstructorUsedError;
  @JsonKey(name: 'Id')
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchesModelCopyWith<MatchesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchesModelCopyWith<$Res> {
  factory $MatchesModelCopyWith(
          MatchesModel value, $Res Function(MatchesModel) then) =
      _$MatchesModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'UserId1') int? userId1,
      @JsonKey(name: 'User1') User1? user1,
      @JsonKey(name: 'UserId2') int? userId2,
      @JsonKey(name: 'User2') User1? user2,
      @JsonKey(name: 'MatchedOnDate') DateTime? matchedOnDate,
      @JsonKey(name: 'User1AcceptedDate') dynamic user1AcceptedDate,
      @JsonKey(name: 'User2AcceptedDate') dynamic user2AcceptedDate,
      @JsonKey(name: 'MatchedLatitude') double? matchedLatitude,
      @JsonKey(name: 'MatchedLongitude') double? matchedLongitude,
      @JsonKey(name: 'RawMatchPercentage') double? rawMatchPercentage,
      @JsonKey(name: 'WeightedMatchPercentage') double? weightedMatchPercentage,
      @JsonKey(name: 'MatchedLocationName') dynamic matchedLocationName,
      @JsonKey(name: 'Id') int? id});

  $User1CopyWith<$Res>? get user1;
  $User1CopyWith<$Res>? get user2;
}

/// @nodoc
class _$MatchesModelCopyWithImpl<$Res> implements $MatchesModelCopyWith<$Res> {
  _$MatchesModelCopyWithImpl(this._value, this._then);

  final MatchesModel _value;
  // ignore: unused_field
  final $Res Function(MatchesModel) _then;

  @override
  $Res call({
    Object? userId1 = freezed,
    Object? user1 = freezed,
    Object? userId2 = freezed,
    Object? user2 = freezed,
    Object? matchedOnDate = freezed,
    Object? user1AcceptedDate = freezed,
    Object? user2AcceptedDate = freezed,
    Object? matchedLatitude = freezed,
    Object? matchedLongitude = freezed,
    Object? rawMatchPercentage = freezed,
    Object? weightedMatchPercentage = freezed,
    Object? matchedLocationName = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      userId1: userId1 == freezed
          ? _value.userId1
          : userId1 // ignore: cast_nullable_to_non_nullable
              as int?,
      user1: user1 == freezed
          ? _value.user1
          : user1 // ignore: cast_nullable_to_non_nullable
              as User1?,
      userId2: userId2 == freezed
          ? _value.userId2
          : userId2 // ignore: cast_nullable_to_non_nullable
              as int?,
      user2: user2 == freezed
          ? _value.user2
          : user2 // ignore: cast_nullable_to_non_nullable
              as User1?,
      matchedOnDate: matchedOnDate == freezed
          ? _value.matchedOnDate
          : matchedOnDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user1AcceptedDate: user1AcceptedDate == freezed
          ? _value.user1AcceptedDate
          : user1AcceptedDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      user2AcceptedDate: user2AcceptedDate == freezed
          ? _value.user2AcceptedDate
          : user2AcceptedDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      matchedLatitude: matchedLatitude == freezed
          ? _value.matchedLatitude
          : matchedLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      matchedLongitude: matchedLongitude == freezed
          ? _value.matchedLongitude
          : matchedLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      rawMatchPercentage: rawMatchPercentage == freezed
          ? _value.rawMatchPercentage
          : rawMatchPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      weightedMatchPercentage: weightedMatchPercentage == freezed
          ? _value.weightedMatchPercentage
          : weightedMatchPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      matchedLocationName: matchedLocationName == freezed
          ? _value.matchedLocationName
          : matchedLocationName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $User1CopyWith<$Res>? get user1 {
    if (_value.user1 == null) {
      return null;
    }

    return $User1CopyWith<$Res>(_value.user1!, (value) {
      return _then(_value.copyWith(user1: value));
    });
  }

  @override
  $User1CopyWith<$Res>? get user2 {
    if (_value.user2 == null) {
      return null;
    }

    return $User1CopyWith<$Res>(_value.user2!, (value) {
      return _then(_value.copyWith(user2: value));
    });
  }
}

/// @nodoc
abstract class _$MatchesModelCopyWith<$Res>
    implements $MatchesModelCopyWith<$Res> {
  factory _$MatchesModelCopyWith(
          _MatchesModel value, $Res Function(_MatchesModel) then) =
      __$MatchesModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'UserId1') int? userId1,
      @JsonKey(name: 'User1') User1? user1,
      @JsonKey(name: 'UserId2') int? userId2,
      @JsonKey(name: 'User2') User1? user2,
      @JsonKey(name: 'MatchedOnDate') DateTime? matchedOnDate,
      @JsonKey(name: 'User1AcceptedDate') dynamic user1AcceptedDate,
      @JsonKey(name: 'User2AcceptedDate') dynamic user2AcceptedDate,
      @JsonKey(name: 'MatchedLatitude') double? matchedLatitude,
      @JsonKey(name: 'MatchedLongitude') double? matchedLongitude,
      @JsonKey(name: 'RawMatchPercentage') double? rawMatchPercentage,
      @JsonKey(name: 'WeightedMatchPercentage') double? weightedMatchPercentage,
      @JsonKey(name: 'MatchedLocationName') dynamic matchedLocationName,
      @JsonKey(name: 'Id') int? id});

  @override
  $User1CopyWith<$Res>? get user1;
  @override
  $User1CopyWith<$Res>? get user2;
}

/// @nodoc
class __$MatchesModelCopyWithImpl<$Res> extends _$MatchesModelCopyWithImpl<$Res>
    implements _$MatchesModelCopyWith<$Res> {
  __$MatchesModelCopyWithImpl(
      _MatchesModel _value, $Res Function(_MatchesModel) _then)
      : super(_value, (v) => _then(v as _MatchesModel));

  @override
  _MatchesModel get _value => super._value as _MatchesModel;

  @override
  $Res call({
    Object? userId1 = freezed,
    Object? user1 = freezed,
    Object? userId2 = freezed,
    Object? user2 = freezed,
    Object? matchedOnDate = freezed,
    Object? user1AcceptedDate = freezed,
    Object? user2AcceptedDate = freezed,
    Object? matchedLatitude = freezed,
    Object? matchedLongitude = freezed,
    Object? rawMatchPercentage = freezed,
    Object? weightedMatchPercentage = freezed,
    Object? matchedLocationName = freezed,
    Object? id = freezed,
  }) {
    return _then(_MatchesModel(
      userId1: userId1 == freezed
          ? _value.userId1
          : userId1 // ignore: cast_nullable_to_non_nullable
              as int?,
      user1: user1 == freezed
          ? _value.user1
          : user1 // ignore: cast_nullable_to_non_nullable
              as User1?,
      userId2: userId2 == freezed
          ? _value.userId2
          : userId2 // ignore: cast_nullable_to_non_nullable
              as int?,
      user2: user2 == freezed
          ? _value.user2
          : user2 // ignore: cast_nullable_to_non_nullable
              as User1?,
      matchedOnDate: matchedOnDate == freezed
          ? _value.matchedOnDate
          : matchedOnDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user1AcceptedDate: user1AcceptedDate == freezed
          ? _value.user1AcceptedDate
          : user1AcceptedDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      user2AcceptedDate: user2AcceptedDate == freezed
          ? _value.user2AcceptedDate
          : user2AcceptedDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      matchedLatitude: matchedLatitude == freezed
          ? _value.matchedLatitude
          : matchedLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      matchedLongitude: matchedLongitude == freezed
          ? _value.matchedLongitude
          : matchedLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      rawMatchPercentage: rawMatchPercentage == freezed
          ? _value.rawMatchPercentage
          : rawMatchPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      weightedMatchPercentage: weightedMatchPercentage == freezed
          ? _value.weightedMatchPercentage
          : weightedMatchPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      matchedLocationName: matchedLocationName == freezed
          ? _value.matchedLocationName
          : matchedLocationName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatchesModel implements _MatchesModel {
  _$_MatchesModel(
      {@JsonKey(name: 'UserId1') this.userId1,
      @JsonKey(name: 'User1') this.user1,
      @JsonKey(name: 'UserId2') this.userId2,
      @JsonKey(name: 'User2') this.user2,
      @JsonKey(name: 'MatchedOnDate') this.matchedOnDate,
      @JsonKey(name: 'User1AcceptedDate') this.user1AcceptedDate,
      @JsonKey(name: 'User2AcceptedDate') this.user2AcceptedDate,
      @JsonKey(name: 'MatchedLatitude') this.matchedLatitude,
      @JsonKey(name: 'MatchedLongitude') this.matchedLongitude,
      @JsonKey(name: 'RawMatchPercentage') this.rawMatchPercentage,
      @JsonKey(name: 'WeightedMatchPercentage') this.weightedMatchPercentage,
      @JsonKey(name: 'MatchedLocationName') this.matchedLocationName,
      @JsonKey(name: 'Id') this.id});

  factory _$_MatchesModel.fromJson(Map<String, dynamic> json) =>
      _$$_MatchesModelFromJson(json);

  @override
  @JsonKey(name: 'UserId1')
  final int? userId1;
  @override
  @JsonKey(name: 'User1')
  final User1? user1;
  @override
  @JsonKey(name: 'UserId2')
  final int? userId2;
  @override
  @JsonKey(name: 'User2')
  final User1? user2;
  @override
  @JsonKey(name: 'MatchedOnDate')
  final DateTime? matchedOnDate;
  @override
  @JsonKey(name: 'User1AcceptedDate')
  final dynamic user1AcceptedDate;
  @override
  @JsonKey(name: 'User2AcceptedDate')
  final dynamic user2AcceptedDate;
  @override
  @JsonKey(name: 'MatchedLatitude')
  final double? matchedLatitude;
  @override
  @JsonKey(name: 'MatchedLongitude')
  final double? matchedLongitude;
  @override
  @JsonKey(name: 'RawMatchPercentage')
  final double? rawMatchPercentage;
  @override
  @JsonKey(name: 'WeightedMatchPercentage')
  final double? weightedMatchPercentage;
  @override
  @JsonKey(name: 'MatchedLocationName')
  final dynamic matchedLocationName;
  @override
  @JsonKey(name: 'Id')
  final int? id;

  @override
  String toString() {
    return 'MatchesModel(userId1: $userId1, user1: $user1, userId2: $userId2, user2: $user2, matchedOnDate: $matchedOnDate, user1AcceptedDate: $user1AcceptedDate, user2AcceptedDate: $user2AcceptedDate, matchedLatitude: $matchedLatitude, matchedLongitude: $matchedLongitude, rawMatchPercentage: $rawMatchPercentage, weightedMatchPercentage: $weightedMatchPercentage, matchedLocationName: $matchedLocationName, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MatchesModel &&
            const DeepCollectionEquality().equals(other.userId1, userId1) &&
            const DeepCollectionEquality().equals(other.user1, user1) &&
            const DeepCollectionEquality().equals(other.userId2, userId2) &&
            const DeepCollectionEquality().equals(other.user2, user2) &&
            const DeepCollectionEquality()
                .equals(other.matchedOnDate, matchedOnDate) &&
            const DeepCollectionEquality()
                .equals(other.user1AcceptedDate, user1AcceptedDate) &&
            const DeepCollectionEquality()
                .equals(other.user2AcceptedDate, user2AcceptedDate) &&
            const DeepCollectionEquality()
                .equals(other.matchedLatitude, matchedLatitude) &&
            const DeepCollectionEquality()
                .equals(other.matchedLongitude, matchedLongitude) &&
            const DeepCollectionEquality()
                .equals(other.rawMatchPercentage, rawMatchPercentage) &&
            const DeepCollectionEquality().equals(
                other.weightedMatchPercentage, weightedMatchPercentage) &&
            const DeepCollectionEquality()
                .equals(other.matchedLocationName, matchedLocationName) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId1),
      const DeepCollectionEquality().hash(user1),
      const DeepCollectionEquality().hash(userId2),
      const DeepCollectionEquality().hash(user2),
      const DeepCollectionEquality().hash(matchedOnDate),
      const DeepCollectionEquality().hash(user1AcceptedDate),
      const DeepCollectionEquality().hash(user2AcceptedDate),
      const DeepCollectionEquality().hash(matchedLatitude),
      const DeepCollectionEquality().hash(matchedLongitude),
      const DeepCollectionEquality().hash(rawMatchPercentage),
      const DeepCollectionEquality().hash(weightedMatchPercentage),
      const DeepCollectionEquality().hash(matchedLocationName),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$MatchesModelCopyWith<_MatchesModel> get copyWith =>
      __$MatchesModelCopyWithImpl<_MatchesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchesModelToJson(this);
  }
}

abstract class _MatchesModel implements MatchesModel {
  factory _MatchesModel(
      {@JsonKey(name: 'UserId1') int? userId1,
      @JsonKey(name: 'User1') User1? user1,
      @JsonKey(name: 'UserId2') int? userId2,
      @JsonKey(name: 'User2') User1? user2,
      @JsonKey(name: 'MatchedOnDate') DateTime? matchedOnDate,
      @JsonKey(name: 'User1AcceptedDate') dynamic user1AcceptedDate,
      @JsonKey(name: 'User2AcceptedDate') dynamic user2AcceptedDate,
      @JsonKey(name: 'MatchedLatitude') double? matchedLatitude,
      @JsonKey(name: 'MatchedLongitude') double? matchedLongitude,
      @JsonKey(name: 'RawMatchPercentage') double? rawMatchPercentage,
      @JsonKey(name: 'WeightedMatchPercentage') double? weightedMatchPercentage,
      @JsonKey(name: 'MatchedLocationName') dynamic matchedLocationName,
      @JsonKey(name: 'Id') int? id}) = _$_MatchesModel;

  factory _MatchesModel.fromJson(Map<String, dynamic> json) =
      _$_MatchesModel.fromJson;

  @override
  @JsonKey(name: 'UserId1')
  int? get userId1;
  @override
  @JsonKey(name: 'User1')
  User1? get user1;
  @override
  @JsonKey(name: 'UserId2')
  int? get userId2;
  @override
  @JsonKey(name: 'User2')
  User1? get user2;
  @override
  @JsonKey(name: 'MatchedOnDate')
  DateTime? get matchedOnDate;
  @override
  @JsonKey(name: 'User1AcceptedDate')
  dynamic get user1AcceptedDate;
  @override
  @JsonKey(name: 'User2AcceptedDate')
  dynamic get user2AcceptedDate;
  @override
  @JsonKey(name: 'MatchedLatitude')
  double? get matchedLatitude;
  @override
  @JsonKey(name: 'MatchedLongitude')
  double? get matchedLongitude;
  @override
  @JsonKey(name: 'RawMatchPercentage')
  double? get rawMatchPercentage;
  @override
  @JsonKey(name: 'WeightedMatchPercentage')
  double? get weightedMatchPercentage;
  @override
  @JsonKey(name: 'MatchedLocationName')
  dynamic get matchedLocationName;
  @override
  @JsonKey(name: 'Id')
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$MatchesModelCopyWith<_MatchesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

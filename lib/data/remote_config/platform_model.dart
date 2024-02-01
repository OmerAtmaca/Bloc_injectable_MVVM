import 'package:freezed_annotation/freezed_annotation.dart';

part 'platform_model.freezed.dart';
part 'platform_model.g.dart';

@freezed
class PlatformModel with _$PlatformModel {
  const factory PlatformModel({
    String? number,
  }) = _PlatformModel;

  factory PlatformModel.fromJson(Map<String, dynamic> json) =>
      _$PlatformModelFromJson(json);
}

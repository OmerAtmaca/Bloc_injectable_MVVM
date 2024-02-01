import 'package:freezed_annotation/freezed_annotation.dart';

part 'point_location_model.freezed.dart';
part 'point_location_model.g.dart';

@freezed
class PointLocationModel with _$PointLocationModel {
  const factory PointLocationModel({
    required double lat,
    required double lng,
  }) = _PointLocationModel;

  factory PointLocationModel.fromJson(Map<String, dynamic> json) => _$PointLocationModelFromJson(json);
}

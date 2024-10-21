//import 'package:freezed_annotation/freezed_annotation.dart';
part of 'downloads_bloc.dart';

@freezed
class DownloadsEvent with _$DownloadsEvent{
  const factory DownloadsEvent.getDownloadsImages() = _GetDownloadsImages;
}

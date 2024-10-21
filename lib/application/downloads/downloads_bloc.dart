import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix1/domain/core/failures/main_failures.dart';
import 'package:netflix1/domain/downloads/models/downloads.dart';
import 'package:netflix1/domain/downloads/models/i_downloads_repo.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo _downloadsRepo;
  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.initial()) {
    on<_GetDownloadsImages>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, downloadsfailureorsuccessoption: none()));
      final Either<MainFailures, List<Downloads>> downloadsOption =
          await _downloadsRepo.getDownloadsImages();
      emit(downloadsOption.fold(
          (f) => state.copyWith(
              isLoading: false,
              downloadsfailureorsuccessoption: Some(
                Left(f),
              )),
          (s) => state.copyWith(
              isLoading: false,
              downloads: s,
              downloadsfailureorsuccessoption: Some(Right(s)))));
    });
  }
}

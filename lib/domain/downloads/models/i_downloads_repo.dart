import 'package:dartz/dartz.dart';
import 'package:netflix1/domain/core/failures/main_failures.dart';
import 'package:netflix1/domain/downloads/models/downloads.dart';

abstract class IDownloadsRepo {
  Future<Either<MainFailures,List<Downloads>>> getDownloadsImages();
}
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix1/domain/core/api_end_points.dart';
import 'package:netflix1/domain/core/failures/main_failures.dart';
import 'package:netflix1/domain/downloads/models/downloads.dart';
import 'package:netflix1/domain/downloads/models/i_downloads_repo.dart';

@LazySingleton(as: IDownloadsRepo)
class DownloadsRepo implements IDownloadsRepo{
  @override
  Future<Either<MainFailures, List<Downloads>>> getDownloadsImages() async {
    try {
      final Response response = await Dio(BaseOptions()).get(ApiEndPoints.downloads);
      if(response.statusCode == 200 || response.statusCode == 201 ){
        final List<Downloads> downloadsList =[];
        for(final raw in response.data){
          downloadsList.add(Downloads.fromJson(raw as Map<String,dynamic>));
        }
        print(downloadsList);
        return Right(downloadsList);
      }else{
        return const Left(MainFailures.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailures.clientFailure()) ;
    }
  }

}
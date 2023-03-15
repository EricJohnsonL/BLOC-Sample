import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:movies/data/movie/model/now_playing_response.dart';

part 'movie_api_client.g.dart';

@RestApi()
abstract class MovieApiClient {
  factory MovieApiClient(Dio dio, {String baseUrl}) = _MovieApiClient;

  @GET('movie/now_playing')
  Future<NowPlayingResponse> getNowPlayingMovies(@Query('page') int page);
}

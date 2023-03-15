import 'model/now_playing_response.dart';

abstract class MovieRepository{

  Future<NowPlayingResponse> getNowPlayingMovies(int page);
}
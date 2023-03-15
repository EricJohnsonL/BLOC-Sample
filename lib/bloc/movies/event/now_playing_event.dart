import 'package:movies/bloc/movies/movie_event.dart';

class FetchNowPlayingEvent extends MovieEvent {
  final int page;

  const FetchNowPlayingEvent({required this.page}) : super();
}

part of '../movie_state.dart';

class MovieInitialState extends MovieState {
  const MovieInitialState() : super();
}

class NowPlayingMoviesLoadingState extends MovieState {
  const NowPlayingMoviesLoadingState() : super();
}

class NowPlayingMoviesEmptyState extends MovieState {
  const NowPlayingMoviesEmptyState() : super();
}

class NowPlayingMoviesErrorState extends MovieState {
  final String message;

  const NowPlayingMoviesErrorState(this.message);
}

class NowPlayingMoviesSuccessState extends MovieState {
  const NowPlayingMoviesSuccessState(this.movies) : super();

  final List<Movie> movies;
}

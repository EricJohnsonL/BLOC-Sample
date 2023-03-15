import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/bloc/movies/movie_event.dart';
import 'package:movies/bloc/movies/movie_state.dart';
import 'package:movies/domain/movie/movie_use_case.dart';

import '../../base/error_handler.dart';
import '../../domain/movie/model/movie.dart';
import 'event/now_playing_event.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final MovieUseCase _movieUseCase;

  MovieBloc(this._movieUseCase) : super(const MovieInitialState()) {
    on<FetchNowPlayingEvent>((_onFetchedNowPlayingMovies));
  }

  Future<void> _onFetchedNowPlayingMovies(
      FetchNowPlayingEvent event, Emitter<MovieState> emit) async {
    emit(const NowPlayingMoviesLoadingState());
    try {
      List<Movie> movies = await _movieUseCase.getNowPlayingMovies(event.page);
      if (movies.isEmpty) {
        emit(const NowPlayingMoviesEmptyState());
      } else {
        emit(NowPlayingMoviesSuccessState(movies));
      }
    } on ApiException catch (error) {
      emit(NowPlayingMoviesErrorState(error.message));
    } catch (error) {
      emit(NowPlayingMoviesErrorState(error.toString()));
    }
  }
}

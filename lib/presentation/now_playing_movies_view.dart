import 'package:flutter/material.dart';
import 'package:movies/bloc/movies/event/now_playing_event.dart';
import 'package:movies/bloc/movies/movie_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/bloc/movies/movie_state.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../di/injector.dart';

class NowPlayingMoviesView extends StatefulWidget {
  const NowPlayingMoviesView({Key? key}) : super(key: key);

  @override
  State<NowPlayingMoviesView> createState() => _NowPlayingMoviesViewState();
}

class _NowPlayingMoviesViewState extends State<NowPlayingMoviesView> {
  final MovieBloc _movieBloc = locator.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Now Playing Movies"),
      ),
      body: BlocProvider<MovieBloc>(
        create: (context) => _movieBloc..add(const FetchNowPlayingEvent(page: 1)),
        child: BlocBuilder<MovieBloc, MovieState>(
          buildWhen: (_, next) =>
              next is NowPlayingMoviesLoadingState ||
              next is NowPlayingMoviesEmptyState ||
              next is NowPlayingMoviesErrorState ||
              next is NowPlayingMoviesSuccessState,
          builder: (context, state) {
            switch (state.runtimeType) {
              case NowPlayingMoviesEmptyState:
                return const Center(
                  child: Text('no movies available'),
                );
              case NowPlayingMoviesErrorState:
                var errorState = state as NowPlayingMoviesErrorState;
                return Center(
                  child: Text(errorState.message),
                );
              case NowPlayingMoviesSuccessState:
                var successState = state as NowPlayingMoviesSuccessState;
                var movies = successState.movies;
                return ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int position) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8)),
                              child: CachedNetworkImage(
                                fit: BoxFit.contain,
                                imageUrl: movies[position].backdropPath,
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            Text(movies[position].title),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int position) {
                      return const SizedBox(height: 8.0);
                    },
                    itemCount: successState.movies.length);
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}

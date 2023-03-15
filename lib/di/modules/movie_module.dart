import '../../bloc/movies/movie_bloc.dart';
import '../../data/movie/movie_data_store.dart';
import '../../data/movie/movie_repository.dart';
import '../../data/movie/remote/movie_api.dart';
import '../../data/movie/remote/movie_api_client.dart';
import '../../domain/movie/movie_interactor.dart';
import '../../domain/movie/movie_use_case.dart';
import '../injector.dart';

void injectMovieModule() {
  locator.registerSingleton(MovieApiClient(locator.get()));
  locator.registerSingleton(MovieApi(locator.get()));
  locator.registerSingleton<MovieRepository>(MovieDataStore(locator.get()));
  locator.registerSingleton<MovieUseCase>(MovieInteractor(locator.get()));
  locator.registerSingleton(MovieBloc(locator.get()));
}

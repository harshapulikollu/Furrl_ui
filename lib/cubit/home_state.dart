part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeInitial extends HomeState {
  @override
  List<Object> get props => [];
}

class HomeFetching extends HomeState {
  @override
  List<Object> get props => [];
}

class HomeFetchingSuccessful extends HomeState {
  final HomeFeed response;
  const HomeFetchingSuccessful({required this.response});
  @override
  List<Object> get props => [response];
}

class HomeFetchingFailed extends HomeState {
  final String message;
  const HomeFetchingFailed({required this.message});
  @override
  List<Object> get props => [message];
}
part of 'homebloc_bloc.dart';

@immutable
sealed class HomeblocState {}

final class HomeblocInitial extends HomeblocState {}

abstract class HomeActionState {}

class HomeNaviagtedtoWishlistActionState extends HomeActionState {}

class HomeNavigatedtoCartActionState extends HomeActionState {}

class HomeLoading extends HomeblocState {}

class HomeSucces extends HomeblocState {}

class HomeError extends HomeblocState {}

class HomeInitial extends HomeblocState{}

class HomeNavigatetoDrawerState extends HomeActionState{}
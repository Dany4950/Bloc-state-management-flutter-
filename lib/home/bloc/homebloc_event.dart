part of 'homebloc_bloc.dart';

@immutable
sealed class HomeblocEvent {}

class HomeCartButtonClicked extends HomeblocEvent{}
class HomeWishlistButtonClicked extends HomeblocEvent{}
class HomeWishlistNavigate extends HomeblocEvent{}
class HomeCartNavigate extends HomeblocEvent{}
class HomeNavigateDrawerClick extends HomeActionState{}
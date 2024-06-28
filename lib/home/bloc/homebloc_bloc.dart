import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'homebloc_event.dart';
part 'homebloc_state.dart';

class HomeblocBloc extends Bloc<HomeblocEvent, HomeblocState> {
  HomeblocBloc() : super(HomeblocInitial()) {
    on<HomeCartButtonClicked>(homeCartButtonClicked);
    on<HomeCartNavigate>(HomeCartNavigate_);
    on<HomeWishlistNavigate>(HomeWishlistNavigate_);
  }

  FutureOr<void> homeCartButtonClicked(
      HomeCartButtonClicked event, Emitter<HomeblocState> emit) {
    print('You clicked on cart button ');
  }

  FutureOr<void> HomeCartNavigate_(
      HomeCartNavigate event, Emitter<HomeblocState> emit) {
    print("cart button clicked to navigate ");
    emit(HomeCartNavigate() as HomeblocState);
  }

  FutureOr<void> HomeWishlistNavigate_(
      HomeWishlistNavigate event, Emitter<HomeblocState> emit) {
    print("Wishlist clicked on app bar ");
    emit(HomeNaviagtedtoWishlistActionState() as HomeblocState);
  }
}

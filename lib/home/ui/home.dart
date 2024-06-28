import 'package:flutter/material.dart';
import 'package:flutter_application_2/home/bloc/homebloc_bloc.dart';
import 'package:flutter_application_2/home/ui/cart.dart';
import 'package:flutter_application_2/home/ui/wishlist.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  final HomeblocBloc homebloc = HomeblocBloc();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeblocBloc, HomeblocState>(
      bloc: homebloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is! HomeActionState,
      listener: (context, state) {
        if (state is HomeCartNavigate) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Cart()));
        } else if (state is HomeNaviagtedtoWishlistActionState) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Wishlist()));
        }
        ;
      },
      builder: (context, state) {
        return Scaffold(
          drawer: Drawer(),
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            
            centerTitle: true,
            elevation: 20,
            shadowColor: Colors.black87,
            backgroundColor: Colors.grey[200],
            title: Text('DanyKicks'),
            actions: [
              IconButton(
                  onPressed: () {
                    homebloc.add(HomeWishlistNavigate());
                  },
                  icon: Icon(Icons.heart_broken)),
              IconButton(
                  onPressed: () {
                    homebloc.add(HomeCartNavigate());
                  },
                  icon: Icon(Icons.shopping_cart)),
            ],
          ),
        );
      },
    );
  }
}

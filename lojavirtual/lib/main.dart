import 'package:flutter/material.dart';
import 'package:lojavirtual/models/user_model.dart';
import 'package:lojavirtual/screens/home_screen.dart';
import 'package:lojavirtual/tabs/home_tab.dart';
import 'package:lojavirtual/tabs/news_tab.dart';
import 'package:lojavirtual/tiles/news_tile.dart';
import 'package:scoped_model/scoped_model.dart';

import 'models/cart_model.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<UserModel>(
      model: UserModel(),
      child: ScopedModelDescendant<UserModel>(
        builder: (context, child, model){
          return ScopedModel<CartModel>(
        model: CartModel(model),
        child: MaterialApp(
          title: "LojaVirtual",
          theme: new ThemeData(
              primarySwatch: Colors.blue,
              primaryColor: Colors.black,/*Color.fromARGB(255, 4, 125, 141)*/
              ),
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        ),
      );
        }
        ),  
    );
  }
}

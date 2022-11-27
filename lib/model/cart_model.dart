import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{

  // List
  final _shopItem = [
    ['Avocado','4.00','lib/images/avocado.png',Colors.green],
    ['Banana','4.00','lib/images/banana.png',Colors.yellow],
    ['Chicken','4.00','lib/images/chicken.png',Colors.brown],
    ['Water','4.00','lib/images/water.png',Colors.blue],
  ];

  // List

  List _cartItems = [];

  get shopItems =>  _shopItem;

  get cartItems=> _cartItems;

  //add items to cart
  void addItemToCart(int index){
    _cartItems.add(_shopItem[index]);
    notifyListeners();
  }
  //remove items From cart
 void removeItemFromCart(int index){
    _cartItems.removeAt(index);
    notifyListeners();
 }
 // calculate Tatal price
String calculateTotal(){
    double totalPrice = 0;
    for(int i=0 ; i<_cartItems.length;i++){
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
}

}
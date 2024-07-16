import 'package:flutter/material.dart';
import 'cofee.dart';

class CoffeeShop extends ChangeNotifier{
//coffe for sale list

final List<Coffee> _shop = [
  //black coffee
  Coffee(
  name: 'Long black', 
  price: '4.10', 
  imgePth: 'images/coffee-cup (1).png'
  ),

   // Late
  Coffee(
  name: 'Late', 
  price: '4.20', 
  imgePth: 'images/latte.png'
  ),
 

   // expresso
    Coffee(
  name: 'Expresso', 
  price: '3.50', 
  imgePth: 'images/expresso.png'
  ),

    // iced coffee
    Coffee(
  name: 'Iced coffee', 
  price: '4.40', 
  imgePth: 'images/coffee-cup (2).png'
  ),
];

//user cart
List<Coffee> _userCart = [];

//get coffee list
List<Coffee> get coffeShop => _shop;

//get user cadt
List<Coffee> get userCart => _userCart;

//add item to cart
void addItemToCart(Coffee coffee) {
  _userCart.add(coffee);
  notifyListeners();
}

//remove item from cart
void removeItemCart(Coffee coffee) {
  _userCart.remove(coffee);
  notifyListeners();
}

  void removeItemFromCart(Coffee coffee) {}


}
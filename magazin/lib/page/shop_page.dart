import 'package:flutter/material.dart';
import 'package:magazin/components/coffee_tile.dart';
import 'package:magazin/modeis/cofee.dart';
import 'package:magazin/modeis/coffee_shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add coffee to cart
  void addToCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);
    //let user know it add been sucessfully added
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: Text("Successfully added to cart"),
      ),
      );
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
      child:  Padding(
      padding: EdgeInsets.all(25.0),
      child: Column(
         children: [
      Text(
        'How would you like your coffe',
        style: TextStyle(fontSize: 20),
        ),
          SizedBox(height: 25,),

          //list of coffe to boy
          Expanded(
            child: ListView.builder(
              itemCount: value.coffeShop.length,
              itemBuilder: (context, index) {
              // get individual coffee
              Coffee eachCoffee = value.coffeShop[index];


              //return the tile for this coffee
              return CoffeeTile(
                coffee: eachCoffee, 
                icon: Icon(Icons.add),
              onPressed: () => addToCart(eachCoffee),
              );
            },
            ),
            ),
         ],
      ),
    ),
    ),
    );
  }
}
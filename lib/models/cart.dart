import 'package:flutter/widgets.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{

  //List of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Max 270',
      price: '250',
      imagePath: 'lib/images/AirMax270.png',
      description: 'A very futuristic and well designed running shoe',
    ),
    Shoe(
      name: 'Air Max Plus',
      price: '350',
      imagePath: 'lib/images/AirMaxPlus.png',
      description: 'A very futuristic and well designed running shoe',
    ),
    Shoe(
      name: 'Dynamo Go',
      price: '200',
      imagePath: 'lib/images/DynamoGo.png',
      description: 'A very futuristic and well designed running shoe',
    ),
    Shoe(
      name: 'Impact 4',
      price: '290',
      imagePath: 'lib/images/Impact4.png',
      description: 'A very futuristic and well designed running shoe',
    ),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart(){
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items from cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}
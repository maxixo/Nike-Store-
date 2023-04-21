import 'package:flutter/widgets.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
   //list of shoe for sale 

   List<Shoe> shoeShop = [
    Shoe(
       name: 'Zoom Freak',
       price: '250', 
       imagePath: 'lib/images/6pic.jpeg',
       description: 'A turnt up shoe designed to lift you up your heels',
       ),
    Shoe(
      name: 'KD Treys',
      price: '250', 
      imagePath: 'lib/images/thirdpic.jpeg',
      description: 'The latest in the collection from basketball start Kevin Durant',
      ),
     Shoe(
      name: 'Jordan 23',
      price: '120', 
      imagePath: 'lib/images/8pic.jpeg',
      description: 'A nativve from the whole collection of Air Jordans ',
      ),
     Shoe(
      name: 'Kyrie Dunks',
      price: '300', 
      imagePath: 'lib/images/7pic.jpeg',
      description: 'Latest from basketball star Kyrie Irvin',
      ),    

   ];   

   //list of items in usercart 
   List<Shoe> userCart = [];

   //get lists of shoe for sale
   List<Shoe> getShoeList() {
    return shoeShop;

   }


   //get cart 
   List<Shoe> getUserCart() {
     return userCart;

   }

   //add items to cart 
   void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();

   }

   //remove items from cart 
   void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
     notifyListeners();
   }





}
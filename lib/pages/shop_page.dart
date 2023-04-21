import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/shoe_tile.dart';
import '../models/cart.dart';
import '../models/shoe.dart';


class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add shoe to cart method 
  void addShoeToCart (Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    //alert user the shoe has been added 

    showDialog(
       context: context,
       builder: (context) => AlertDialog(
        title: Text('Successfully added to Cart'),
        content: Text('Check your cart'),

       ),
    
    );

  
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
           builder :(context, value, child) =>  Column(
               children: [
              //Search bar
               Container(
                padding:const EdgeInsets.all(12),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Search'
                  , style: TextStyle(color:Colors.grey),
                  ),
                    Icon(
                      Icons.search,
                      color : Colors.grey,
                      ),
                  ],
                ),
              ),


              //Message 

              Padding(
                padding: const EdgeInsets.symmetric(vertical:25.0),
                child: Text(
                  'Everyone flies...some fly longer than others',
                  style: TextStyle(color: Colors.grey[600]),
                  ),
              ),



              //HotPicks
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:25 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Hot Picks 🔥',
                      style: TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize: 24,
                        ),
                      ),
                    Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                      
                      ),
              
              
                  ],
              
              
                ),     
              ),
              const SizedBox(height: 10),

              //List of Shoes for Sale 

              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context , index) {
                    // get a shoe from shop list
                    Shoe shoe = value.getShoeList()[index];    
                                                                                                                                                                            
                     //return the shoe   
                    return ShoeTile(
                      shoe: shoe,
                      onTap: () => addShoeToCart(shoe),
                    );


                  },
                 ),
               ),
              Padding(
                padding: const EdgeInsets.only(top:80 , left: 25 , right: 25),
                child: Divider(
                  color: Colors.white,
                ),
              ),

            ],
        ),
      );
  
    
  }
}






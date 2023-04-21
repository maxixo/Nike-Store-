import 'package:flutter/material.dart';
import 'package:nikeshop2/models/shoe.dart';



class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, 
  required this.shoe, 
  required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:25.0),
      width:280,
   
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(12)
      ),
      child: 
      Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children : [

           //Shoe pic
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(shoe.imagePath),
          ),
          //Description
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:25.0),
          child: Text(
            shoe.description,
            style: TextStyle(color : Colors.grey[600]),
            ),
        ),  

           //Price + details 
         Padding(
           padding: const EdgeInsets.only(left:25.0),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
            Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Shoe name 
                Text(
                  shoe.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  
                  ),
         
                const SizedBox(height:5),
                //Shoe Price 
                Text(
                  '\$'+shoe.price,
                 style: TextStyle(color: Colors.grey,
                 ),
                )
            ],
            ),
         
            //Plus button
              GestureDetector(
                onTap: onTap,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    )
                    ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    )
                    ),
              ),
         
           ],
           ),
         ),  

     

        ],





      )



    );
  }
}
import 'package:flutter/material.dart';

class GroceryItemList extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;
  const GroceryItemList({
    super.key,
    required this.itemName,
    required this.imagePath,
    required this.itemPrice,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // image
            Image.asset(imagePath,
            height: 64,
            ),
    
            // item name
            Text(itemName),
    
            // price + button
            MaterialButton(onPressed: (){},
            color: color[800],
            child: Text(
              '\$' + itemPrice,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            )
    
            
          ],
        ),
      ),
    );
  }
}
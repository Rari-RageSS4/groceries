import 'package:flutter/material.dart';
import 'package:groceries/components/grocery_item_list.dart';
import 'package:groceries/model/cart_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        child: const Icon(Icons.shopping_bag, color: Color.fromARGB(255, 252, 239, 239),),
        ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 48,),
            // good morning
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text("Good morning"),
            ),

            const SizedBox(height: 4),
            // Lets order fresh item for you
            const Padding(
              padding:EdgeInsets.symmetric(horizontal: 24),
              child: Text("Let's order fresh items for you",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 24,),


            // divider

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Divider(),
            ),

            const SizedBox(height: 24,),

      
            //fresh items + grid
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text("Fresh Items",
              style: TextStyle(fontSize: 16),
              ),
            ),

            Expanded(
              child: Consumer<CartModel>(
                builder: (context, value, child){
                  return GridView.builder(
                  itemCount: value.shopItems.length,
                  padding: const EdgeInsets.all(12),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.3,
                    ),
                  itemBuilder: (context, index){
                      return GroceryItemList(
                        itemName: value.shopItems[index][0], 
                        imagePath: value.shopItems[index][2], 
                        itemPrice: value.shopItems[index][1], 
                        color: value.shopItems[index][3]
                      );
                    }
                  );
                }
              )
            ),
          ],
        ),
      ),
    );
  }
}
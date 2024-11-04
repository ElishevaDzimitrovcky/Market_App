import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../components/grocery_item_tile.dart';
import '../model/cart_model.dart';
import 'cart_page.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.location_on, color: Colors.grey[700]),
        title: Text("Jerusalem, Israel",
            style: TextStyle(fontSize: 16, color: Colors.grey[700])),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 24.0),
            child: Icon(Icons.person, color: Colors.grey),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => CartPage())),
            child: const Icon(Icons.shopping_bag),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 48),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text("Good morning"),
          ),
          SizedBox(height: 4),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text("Let's order fresh items for you",
              style: GoogleFonts.notoSerif(fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 24),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Divider(),
            ),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Fresh Items",
                style: GoogleFonts.notoSerif(fontSize: 18),
              ), 
            ),
            Expanded(
              child: Consumer<CartModel>(
                builder: (context, value, child){
                  return GridView.builder(
                    padding: EdgeInsets.all(12),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: value.shopItems.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.2
                    ),
                    itemBuilder: (context, index){
                      return GroceryItemTile(
                        itemName: value.shopItems[index][0],
                        itemPrice: value.shopItems[index][1],
                        imagePath: value.shopItems[index][2],
                        color: value.shopItems[index][3],
                        onPressed: () => Provider.of<CartModel>(context, listen: false).addItemToCart(index),
                      );
                    },
                  );
                }
              )
            ),
        ],
      ),
    );
  }
}

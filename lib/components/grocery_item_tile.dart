import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget{
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final Color color;
  final void Function()? onPressed;

  const GroceryItemTile({
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.color,
    required this.onPressed,
  });

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color.withOpacity(0.1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Image.asset(imagePath, height: 64),
            ),
            Text(itemName, style: TextStyle(fontSize: 16),),
            MaterialButton(
              onPressed: onPressed,
              color: color,
              child: Text('\$' + itemPrice,
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
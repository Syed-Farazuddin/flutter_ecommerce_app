import 'package:ecommerce/models/shoes.dart';
import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  Shoe shoe;
  ListCard({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      margin: const EdgeInsets.only(left: 20, right: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.indigo[100],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            shoe.name,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.indigo[800],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            shoe.imgPath,
            height: 200,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            shoe.description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.indigo[900],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                shoe.price,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.indigo[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.shopping_cart,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

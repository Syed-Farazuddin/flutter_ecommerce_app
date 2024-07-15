import 'package:ecommerce/providers/state_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Stateprovider>(
      builder: (context, value, child) => SafeArea(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Text(
                  "Your Cart",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: value.cart.length,
                    itemBuilder: (context, index) => Container(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                value.cart[index].imgPath.toString(),
                                height: 60,
                                width: 80,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(value.cart[index].name),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      value.cart[index].price,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  value.deleteFromCart(value.cart[index]);
                                },
                                icon: const Icon(Icons.delete,
                                    color: Colors.red, size: 32),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

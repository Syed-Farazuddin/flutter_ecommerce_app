import 'package:flutter/material.dart';
import 'package:ecommerce/components/list_card.dart';
import 'package:ecommerce/data/data.dart';

class Shoppage extends StatefulWidget {
  const Shoppage({super.key});

  @override
  State<Shoppage> createState() => _ShoppageState();
}

class _ShoppageState extends State<Shoppage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding:
              const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(20)),
          margin: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.grey[500],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "As a night comes it goes away ",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Hot picks 🔥",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "See All",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return ListCard(
                  shoe: data[index],
                );
              }),
        )
      ],
    );
  }
}

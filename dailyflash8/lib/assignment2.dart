import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State createState() => _Assignment2State();
}

class _Assignment2State extends State {
  final List<Map<String, String>> foodItems = [
    {
      "name": "Pizza ",
      "imageUrl":
          "https://www.indianhealthyrecipes.com/wp-content/uploads/2015/10/pizza-recipe-1.jpg",
    },
    {
      "name": "Burger ",
      "imageUrl":
          "https://www.indianhealthyrecipes.com/wp-content/uploads/2015/10/pizza-recipe-1.jpg",
    },
    {
      "name": "Rice ",
      "imageUrl":
          "https://www.indianhealthyrecipes.com/wp-content/uploads/2015/10/pizza-recipe-1.jpg",
    },
    {
      "name": "Milk ",
      "imageUrl":
          "https://www.indianhealthyrecipes.com/wp-content/uploads/2015/10/pizza-recipe-1.jpg",
    },
    {
      "name": "Chicken ",
      "imageUrl":
          "https://www.indianhealthyrecipes.com/wp-content/uploads/2015/10/pizza-recipe-1.jpg",
    },
    {
      "name": "Mushrooms ",
      "imageUrl":
          "https://www.indianhealthyrecipes.com/wp-content/uploads/2015/10/pizza-recipe-1.jpg",
    },
    {
      "name": "Oranges ",
      "imageUrl":
          "https://www.indianhealthyrecipes.com/wp-content/uploads/2015/10/pizza-recipe-1.jpg",
    },
    {
      "name": "Pasta ",
      "imageUrl":
          "https://www.indianhealthyrecipes.com/wp-content/uploads/2015/10/pizza-recipe-1.jpg",
    },
    {
      "name": "Paneer ",
      "imageUrl":
          "https://www.indianhealthyrecipes.com/wp-content/uploads/2015/10/pizza-recipe-1.jpg",
    },
    {
      "name": "Donut ",
      "imageUrl":
          "https://www.indianhealthyrecipes.com/wp-content/uploads/2015/10/pizza-recipe-1.jpg",
    },
    {
      "name": "Cheesecakes ",
      "imageUrl":
          "https://www.indianhealthyrecipes.com/wp-content/uploads/2015/10/pizza-recipe-1.jpg",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 15, 198, 211),
        title: const Text(
          "Assignment 2",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 4, 76, 136),
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
      ),
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context)
            .copyWith(physics: const NeverScrollableScrollPhysics()),
        child: ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: foodItems.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      border: Border.all(
                        width: 2,
                        color: Colors.black,
                      ),
                      image: DecorationImage(
                        image: NetworkImage(foodItems[index]["imageUrl"]!),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  Container(
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      border: Border.all(
                        width: 1.5,
                        color: Colors.black,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        foodItems[index]["name"]!,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

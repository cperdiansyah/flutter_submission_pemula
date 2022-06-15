import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:submission_flutter_pemula/detail_screen.dart';

import 'package:submission_flutter_pemula/model/category_data.dart';
import 'package:submission_flutter_pemula/model/food_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  //Logo
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'images/logo.png',
                          width: 70,
                          height: 70,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text(
                            'Indonesian food',
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Delicious food form local cuisine',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Popular Dish',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 110,
                        child: PopularFoodList(),
                      )
                      //List of food
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Categories',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                        child: ListCategory(),
                      )
                      //List of food
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.6,
                        child: FoodDataListView(),
                      )
                      //List of food
                    ],
                  ),
                  SizedBox(height: 10),

                  // Expanded(child: FoodDataListView())
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ListCategory extends StatelessWidget {
  ListCategory({Key? key}) : super(key: key);

  final distinctCategory = foodDataList.map((e) => e.category).toSet().toList();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          // final CategoryData category = categoryList[index];

          return Container(
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black38, // red as border color
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      distinctCategory[index],
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: distinctCategory.length,
      ),
    );
  }
}

class PopularFoodList extends StatelessWidget {
  const PopularFoodList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final FoodData foodData = popularFoodList[index];
          return Card(
            clipBehavior: Clip.antiAlias,
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return DetailScreen(
                      foodData: foodData,
                    );
                  }),
                );
              },
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Image.asset(
                      foodData.imagePoster,
                      width: 150,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    width: 150,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Colors.black.withAlpha(0),
                          Colors.black12,
                          Colors.black45
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          foodData.name,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          foodData.category,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: popularFoodList.length);
  }
}

class FoodDataListView extends StatelessWidget {
  const FoodDataListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final FoodData foodData = foodDataList[index];
        var formatter = NumberFormat('#,##,000');
        return Card(
          clipBehavior: Clip.antiAlias,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: InkWell(
            onTap: () {
              // print(foodData.name);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailScreen(
                      foodData: foodData,
                    );
                  },
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                ClipRRect(
                  child: Image.asset(
                    foodData.imagePoster,
                    width: 150,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    bottom: 10.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        foodData.name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        foodData.category,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Rp. ${formatter.format(foodData.price)}',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: foodDataList.length,
    );
  }
}

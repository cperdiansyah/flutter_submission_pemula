import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:submission_flutter_pemula/model/food_data.dart';

class DetailScreen extends StatelessWidget {
  final FoodData foodData;
  const DetailScreen({
    required this.foodData,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return DetailMobilePage(foodData: foodData);
    });
  }
}

class DetailMobilePage extends StatelessWidget {
  final FoodData foodData;

  DetailMobilePage({
    required this.foodData,
  });

  var formatter = NumberFormat('#,##,000');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Hero(
                    tag: foodData.name,
                    child: Image.asset(foodData.imagePoster,
                        width: MediaQuery.of(context).size.width,
                        height: 250,
                        fit: BoxFit.cover),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    width: MediaQuery.of(context).size.width,
                    height: 250,
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
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Row(
                            children: [
                              Container(
                                child: CircleAvatar(
                                  backgroundColor: Colors.black38,
                                  radius: 20,
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'Rp. ${formatter.format(foodData.price)}',
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              FavoriteButton()
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: foodData.imageUrls.map(
                    (url) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5.0,
                                offset: Offset(3, 4),
                                spreadRadius: 0.5,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(url,
                                height: 150, fit: BoxFit.cover),
                          ),
                        ),
                      );
                    },
                  ).toList(),
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              foodData.name,
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            Text(
                              foodData.category,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          ],
                        ),
                        Row(children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 30,
                          ),
                          SizedBox(width: 8),
                          Text(
                            foodData.ratings.toString(),
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 16),
                    Text(
                      foodData.description,
                      style: Theme.of(context).textTheme.bodyText2,
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 8),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(height: 8),
                    Text(
                      'Related Dish',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class relatedCategory extends StatelessWidget {
  final FoodData foodData;

  const relatedCategory({required category, required this.foodData});

  // foodData.removeWhere((foodData) => foodData.removeWhere.category != category);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: foodData.imageUrls.map((url) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(url),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.white,
        size: 30,
      ),
      onPressed: () {
        setState(
          () {
            isFavorite = !isFavorite;
          },
        );
      },
    );
  }
}

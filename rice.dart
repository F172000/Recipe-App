import 'package:flutter/material.dart';
import 'constants.dart';
import 'details.dart';
class RicePage extends StatelessWidget {
  RicePage({Key? key}) : super(key: key);
  List list = [
    {"image": 'assets/images/food.png', "name": "Chicken Biryani","calory":"120 Calories","time":"2 hours","serving":"2 servrs"},
    {"image": 'assets/images/food1.png', "name": "Mutton Pulao","calory":"220 Calories","time":"2 hours","serving":"2 servrs"},
    {"image": 'assets/images/food2.png', "name": "Chicken Tanduri","calory":"150 Calories","time":"2 hours","serving":"2 servrs"},
    {"image": 'assets/images/food3.png', "name": "Hot Chili Pakoras","calory":"160 Calories","time":"2 hours","serving":"2 servrs"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
       mainAxisAlignment: MainAxisAlignment.start,
    children: [
    const SizedBox(
    height: 15,
    ),
         Center(
           child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              return  GestureDetector(
                onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailScreen( list[index]["name"],
                    list[index]["image"],
                    list[index]["calory"],
                    list[index]["time"],
                    list[index]["serving"]
                ))),
                child: Container(
                  height: 350,
                  width: 250,
                  margin: EdgeInsets.only(right: 32),
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(children: [
                    Positioned(
                        top: 16,
                        left: 16,
                        child: Icon(
                          Icons.favorite_border,
                          color: kOrangeColor,
                        )),
                    Positioned(
                        top: -20,
                        right: -7,
                        child: Image.asset(
                          list[index]["image"],
                          height: 170,
                          width: 170,
                        )),
                    Positioned(
                      top: 100.0,
                      child: Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 12.0,vertical: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              list[index]["name"],
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              children: List.generate(
                                  5,
                                      (index) => Icon(
                                    Icons.star,
                                    color: kOrangeColor,
                                    size: 16,
                                  )),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              '120 Calories',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: kOrangeColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.access_time,
                                  color: kOrangeColor,
                                  size: 14,
                                ),
                                const Text(
                                  " 2 hours",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ]),
                ),
              );
            },
        ),
         ),
    ],
    ),
    );
    }
    }


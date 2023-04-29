import 'package:flutter/material.dart';
import 'bottom.dart';
import 'constants.dart';
import 'details.dart';
import 'fooditem.dart';
import 'constants.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  List list = [
    {"image": 'assets/images/food.png', "name": "Chicken Biryani","calory":"120 Calories","time":"2 hours","serving":"2 servrs"},
    {"image": 'assets/images/food1.png', "name": "Mutton Pulao","calory":"220 Calories","time":"2 hours","serving":"2 servrs"},
    {"image": 'assets/images/food2.png', "name": "Chicken Tanduri","calory":"150 Calories","time":"2 hours","serving":"2 servrs"},
    {"image": 'assets/images/food3.png', "name": "Hot Chili Pakoras","calory":"160 Calories","time":"2 hours","serving":"2 servrs"},
     ];
  List reclist=[
    {"image": 'assets/images/food.png', "name": "Chicken Biryani","calory":"120 Calories","time":"2 hours","serving":"2 servrs"},
    {"image": 'assets/images/food1.png', "name": "Mutton Pulao","calory":"220 Calories","time":"2 hours","serving":"2 servrs"},
    {"image": 'assets/images/food2.png', "name": "Chicken Tanduri","calory":"150 Calories","time":"2 hours","serving":"2 servrs"},
    {"image": 'assets/images/food3.png', "name": "Hot Chili Pakoras","calory":"160 Calories","time":"2 hours","serving":"2 servrs"},

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HOME'),
          backgroundColor: kOrangeColor,
        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: kOrangeColor,
                  //gradient: LinearGradient(
                  //colors: [
                  //Color(0xff213A50),
                  //])
                ),
                accountName: Text("Syeda Kainat"),
                accountEmail: Text("skainat876@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color(0xff213A50),
                  child: Text(
                    "K",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home, color: kOrangeColor,), title: Text("Home"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.menu, color: kOrangeColor,),
                title: Text("List of Cuisines"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.fastfood_sharp ,color: kOrangeColor), title: Text("Food Items"),
                onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FoodItem()));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.description_outlined,
                  color: kOrangeColor,
                ), title: Text("Blogs"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings,color:kOrangeColor), title: Text("Settings"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.contacts,color: kOrangeColor), title: Text("Contact Us"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    "What you would like to cook today?",
                    style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 30,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: kPrimaryColor,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 30,
                        ),
                        hintText: "Search for Recipes",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  const Text(
                    "Today's Fresh Recipes",
                    style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () => print('See all recipes'),
                    child: const Text(
                      "See All",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: kOrangeColor),
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 16.0,
                ),
                Container(
                  height: 240,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailScreen( list[index]["name"],
                            list[index]["image"],
                              list[index]["calory"],
                              list[index]["time"],
                            list[index]["serving"]
                          ))),
                          child: Container(
                            height: 240,
                            width: 200,
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
                                        'Dinner',
                                        style: TextStyle(
                                            color: kOrangeColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 8.0,
                                      ),
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
                      }),
                ),
                SizedBox(height: 16,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Text(
                    "Recommended",
                    style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () => print('See all Recommendations'),
                    child: Text(
                      "See All",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: kOrangeColor),
                    ),
                  ),
                ]),
                SizedBox(height: 16,),
                ListView.builder(
                     scrollDirection: Axis.vertical,
                     shrinkWrap: true,
                     itemCount: list.length,
                     itemBuilder: (context, index) {return
                    GestureDetector(
                      onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailScreen( reclist[index]["name"],
                        reclist[index]["image"],
                        reclist[index]["calory"],
                        reclist[index]["time"], reclist[index]["serving"]
                      ))),
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                       height: 150,
                       width: MediaQuery.of(context).size.width,
                       decoration: BoxDecoration(
                       color: kPrimaryColor,
                       borderRadius: BorderRadius.circular(20.0),
                  ),
                        child: Row(
                            children:[
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: 28,
                                    width: 28,
                                    child:
                                    IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: kOrangeColor,
                                 )  ,)
                                ),
                              ),
                            Image.asset(reclist[index]["image"],height: 150,width: 120,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Breakfast',
                                    style: TextStyle(
                                        color: kOrangeColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    reclist[index]["name"],
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
                                        5, (index) => Icon(
                                          Icons.star,
                                          color: kOrangeColor,
                                          size: 16,
                                    ),),
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
                                    height: 8,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        color: kOrangeColor,
                                        size: 14,
                                      ),
                                      Text(
                                        " 2 hours",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      ),

                                      ],
                                  ),

                                ],

                              ),
                            ),

                        ]),

                        ),
                    );}
               ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
        onPressed: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FoodItem()));},
        backgroundColor: Color(0xf7fc6602),
         child: Icon(Icons.fastfood),
          ),
             floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: BottonBar(),

    );
  }
}

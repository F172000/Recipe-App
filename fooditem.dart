import 'package:flutter/material.dart';
import 'bottom.dart';
import 'catagories.dart';
import 'constants.dart';
import 'rice.dart';
class FoodItem extends StatefulWidget {
  const FoodItem({Key? key}) : super(key: key);
  @override
  State<FoodItem> createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 5);
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food Catagories",style: TextStyle(color:kLightColor),),
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
                Navigator.pop(context);  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
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
      backgroundColor: kPrimaryColor,
      body: ListView(
        children:[ Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15.0,
            ),
            Text('Catagories',style: TextStyle( fontFamily: 'Varela',fontSize: 40.0,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TabBar(
                    controller: _tabController,
                    isScrollable: true,
                    indicatorColor: Colors.transparent,
                    labelColor:Color(0xf7fc6602),
                    labelPadding: EdgeInsets.only(right: 45.0),
                    unselectedLabelColor: Colors.black,
                    tabs:[
                      Tab(child: Text('Rice',style: TextStyle(fontSize: 18.0)),),
                      Tab(child: Text('Vegetables',style: TextStyle(fontSize: 18.0)),),
                      Tab(child: Text('Fruits',style: TextStyle(fontSize: 18.0)),),
                      Tab(child: Text('Juice',style: TextStyle(fontSize: 18.0)),),
                      Tab(child: Text('Sweets',style: TextStyle(fontSize: 18.0)),),
                    ],)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 600,
               width: MediaQuery.of(context).size.width,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    RicePage(),
                    RicePage(),
                    RicePage(),
                    RicePage(),
                    RicePage(),
                  ],
                ),
              ),
            )
          ],
        ),
      ]),
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

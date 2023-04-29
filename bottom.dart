import 'package:flutter/material.dart';
import 'catagories.dart';
import 'constants.dart';
class BottonBar extends StatelessWidget {
  const BottonBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 6.0,
      color: Colors.transparent,
      elevation: 9.0,
      clipBehavior: Clip.antiAlias,

      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0)
            ),
            color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                height: 50.0,
                width: MediaQuery.of(context).size.width/2-40.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    GestureDetector(
                        onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));},
                        child: Icon(Icons.home, color:  kOrangeColor)),
                        GestureDetector(
                            onTap: (){},
                            child: Icon(Icons.menu, color:  kOrangeColor))
                  ],
                )
            ),
            Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width/2-40.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                    onTap: (){},
                        child: Icon(Icons.search, color:  kOrangeColor)),
                    GestureDetector(
                        onTap: (){},
                        child: Icon(Icons.description_outlined, color: kOrangeColor))
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'catagories.dart';
import 'constants.dart';
import 'bottom.dart';
class DetailScreen extends StatelessWidget {
  final String name, image,calory,time,serving;
  DetailScreen(
      this.name, this.image,this.calory,this.time,this.serving,  ) ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(name,style: TextStyle(color: kLightColor),),
          backgroundColor: kOrangeColor,
          actions: [
         IconButton(
          icon: Icon(Icons.favorite_border,color: kLightColor),
           onPressed: () {},
         ),]),
      backgroundColor: kLightColor,
      body:ListView(

       children:[ Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/1.5,
                  child: Text(
                   name,style: TextStyle(fontSize: 36.0,),),
                ),
                SizedBox(height: 15,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        Container(
                          width:MediaQuery.of(context).size.width/3.6,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Calories",style:TextStyle(color: Colors.grey, fontSize: 15,fontWeight: FontWeight.bold),),
                              SizedBox(height: 15,),
                              Text(calory,style: TextStyle(fontWeight: FontWeight.bold),),
                              SizedBox(height: 15,),
                              Text("Time",style: TextStyle(fontSize: 15,color: Colors.grey),),
                              SizedBox(height: 15,),
                              Text(time,style: TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(height: 15,),
                              Text("Total Serving",style: TextStyle(fontSize: 15,color: Colors.grey),),
                              SizedBox(height: 15,),
                              Text(time,style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),),
                        Image.asset(image,height: 200,fit: BoxFit.contain,),
                      ]),
                ),
                Text("Ingradients",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              flex:2,
                              child: Text('Chicken')),
                          Expanded(
                              flex:2,
                              child:  Text('1 kg')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex:2,
                              child:  Text('Ginger/Garlic')),
                          Expanded(
                              flex:2,
                              child:  Text('1 tbsp')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex:2,
                              child:  Text('Tamato')),
                          Expanded(
                              flex:2,
                              child: Text('3 large')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex:2,
                              child: Text('Green Chili')),
                          Expanded(
                              flex:2,
                              child: Text('7-8')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex:2,
                              child: Text('Onion')),
                          Expanded(
                              flex:2,
                              child: Text('4 medium')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex:2,
                              child: Text('Salt')),
                          Expanded(
                              flex:2,
                              child: Text('1 tbsp')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex:2,
                              child:  Text('Red Chili')),
                          Expanded(
                              flex:2,
                              child: Text('1 tbsp')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex:2,
                              child: Text('Cumin Powder')),
                          Expanded(
                              flex:2,
                              child: Text('2 tbsp')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex:2,
                              child: Text('Coriander Powder')),
                          Expanded(
                              flex:2,
                              child: Text('1+1/2 tbsp')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex:2,
                              child: Text('turmeric powder')),
                          Expanded(
                              flex:2,
                              child:Text('1/2 tbsp')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex:2,
                              child: Text('garam masala')),
                          Expanded(
                              flex:2,
                              child:  Text('1/2 tbsp')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex:2,
                              child: Text('kewra water')),
                          Expanded(
                              flex:2,
                              child: Text('2 tbsp')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex:2,
                              child:  Text('yogurt')),
                          Expanded(
                              flex:2,
                              child: Text('1 cup')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex:2,
                              child: Text('oil')),
                          Expanded(
                              flex:2,
                              child:  Text('3/4 cup')),
                        ],
                      ), Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex:2,
                              child: Text('Water')),
                          Expanded(
                              flex:2,
                              child:Text('1 cup')),]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex:2,
                              child: Text('Rice')),
                          Expanded(
                              flex:2,
                              child:Text('3/4 kg')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex:2,
                              child: Text('bay leaves')),
                          Expanded(
                              flex:2,
                              child:Text('3-4')),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex:2,
                              child: Text('Viniger')),
                          Expanded(
                              flex:2,
                              child:Text('1 tbsp')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex:2,
                              child: Text('Salt')),
                          Expanded(
                              flex:2,
                              child:Text('2 tbsp')),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Setps to Cook',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text('Step 01',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text('To marinate the chicken for the biryani, combine the vegetable oil, garlic, ginger, chili peppers, mint, cilantro, garam masala, cinnamon and salt in a large bowl and stir together. Add the chicken pieces and toss together making sure the chicken is thoroughly coated in the marinade. Allow the chicken to marinate for at least 1 hour or up to overnight.'),
                      Text('Step 02',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text('n a pot wide enough to hold the chicken in a single layer, add the ghee and onions and saute the onions until they are well caramelized (15-20 minutes). Transfer the caramelized onions to a bowl and set aside.'),
                      Text('Step 03',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text('While the onions caramelize, prepare the rice by washing in a strainer under cold running water until the water runs clear.'),
                      Text('Step 04',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text('To par-boil the rice, add the water, salt, cardamom, cumin and bay leaf to a pot and bring to a boil. Add the rice and boil for 7 minutes. Drain the rice, reserving 1 cup of the liquid.'),
                      Text('Step 05',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text('In the pot you caramelized the onions in, add the chicken in a single layer, skin-side down. Fry until golden brown on one side (about 5 minutes). Flip the chicken over and fry the other side until golden brown. Transfer the chicken back to the bowl you marinated it in.'),
                      Text('Step 06',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text('To assemble the biryani, add the saffron to the rice and toss to distribute evenly. Add half the rice mixture to the bottom of the pot you browned the chicken in.'),
                      Text('Step 07',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text('Top the rice with the chicken in a single layer.'),
                      Text('Step 08',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text('op the chicken with an even layer of caramelized onions.'),
                      Text('Step 09',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text('Finish putting together the Biryani by adding the rest of the rice in an even layer. Add 1 cup of reserved liquid from boiling the rice. Cover the pot with a lid and put the pot on the stove over medium heat and set the timer for 20 minutes. When you can see steam escaping from under the lid, turn down the heat to low and continue cooking until the timer goes off and then turn off the heat.'),
                      Text('Step 10',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text('Without opening the lid, set the timer for another 10 minutes to steam the biryani.'),
                      Text('Step 11',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text('Mix the Chicken Biryani together and then transfer to a serving platter. Garnish with fresh cilantro and serve.'),

                    ],
                  ),
                )

              ],),
        ),
     ] ),
       floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
        },
        backgroundColor: kOrangeColor,
        child: const Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottonBar(),
    );
  }
}

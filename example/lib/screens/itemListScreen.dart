import 'package:arcore_flutter_plugin_example/models/ItemModel.dart';
import 'package:arcore_flutter_plugin_example/screens/arViewScreen.dart';
import 'package:flutter/material.dart';
class itemListScreen extends StatelessWidget {

  List<ItemModel> items= [
    ItemModel(
      'Double Bed',
      'Double Bed with 2 Lamps',
      'items/bed.png',
      12,
    ),
    ItemModel(
      'Single Sofa T55',
      'White Sofa For Your Home',
      'items/sofa_white.png',
      16,
    ),
    ItemModel(
      'Double Sofa ',
      'Three Seater Branded Sofa',
      'items/sofa_yellow.png',
      10,
    ),
    ItemModel(
      'Chair Brown ',
      'A Small Chair For Your Backyard ',
      'items/pc_table.png',
      6,
    ),
    ItemModel(
      'G78 Single Sofa',
      'Branded Single Yellow Sofa',
      'items/single_sofa.png',
      10,
    ),
    ItemModel(
      'Dinner Table',
      'Beautiful Dinner Table For Family',
      'items/dinner_table.png',
      11,
    ),
    ItemModel(
      'Branded Pc Table',
      'Wooden Branded UK Table',
      'items/pc_table2.png',
      10,
    ),
    ItemModel(
      'Chair Short',
      'A Small Cheap Chair',
      'items/chair2.png',
      11,
    ),
    ItemModel(
      'Wooden Table',
      'Wooden Branded UK Table',
      'items/table.png',
      16,
    ),
    ItemModel(
      'Thai Double Bed',
      'Branded Double Bed With Locker ',
      'items/bed_double.png',
      10,
    ),

    ItemModel(
      'Rotatable Chair',
      'A Brand New Rotatable Chair',
      'items/rot_chair.png',
      10,
    ),
    ItemModel(
      'UK5 Sofa',
      'Brand New Single Sofa',
      'items/sofa_uk.png',
      10,
    ),
    ItemModel(
      'T80 Dinner Table',
      'Beautiful table for Dinner',
      'items/dinner_table2.png',
      10,
    ),
    ItemModel(
      '2 Seat Sofa',
      'This is branded new Double sofa',
      'items/sofa_yellow.png',
      10,
    ),
    ItemModel(
      'Grey Sofa',
      'This is a 2 seater and Brand new double sofa',
      'items/sofa_grey.png',
      10,
    ),
    ItemModel(
      'Brown Chair Y9',
      'A Beautiful chair for sitting',
      'items/chair1.png',
      10,
    ),
    ItemModel(
      'HU9 Dinner Table',
      'Beautiful Table For Dinner',
      'items/dinner_table3.png',
      10,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body:SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10,),
            Padding(
                padding: EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start ,
                children: <Widget>[
                  Text('AR ', style: TextStyle(fontSize: 48, color: Colors.white),),
                  Text('FITTINGS', style: TextStyle(fontSize: 48, color: Colors.white ),),


                ],
              ),
            ),
            Expanded(
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Container(
                    padding: EdgeInsets.only(left:20,right:20,top:6),
                    decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30)
                    ),
                    ),
                    child: ListView.separated(
                        itemBuilder: (BuildContext, int index){
                          return GestureDetector(
                            onTap: (){
                              Navigator.push(
                                  context, MaterialPageRoute(
                                  builder: (context) => ARViewScreen(
                                    itemImg: items[index].pic,
                                  ),
                              ),
                              );
                            },
                            child: Row(
                              children: <Widget> [
                                SizedBox(
                                  width: 80,
                                  height: 80,
                                  child: Image.asset("${items[index].pic}", width: 60,),
                                ),
                                Expanded(
                                    child: Column(
                                      children: <Widget>[
                                        Text(items[index].name, style: TextStyle(fontSize: 16, color: Colors.black),),
                                        Text(items[index].detail, style: TextStyle(fontSize: 10, color: Colors.black87),),
                                      ],
                                    ),
                                ),
                                Container(
                                  width: 60,
                                  child: Text(items[index].price.toString(), style: TextStyle(fontSize: 14, color: Colors.red),),
                                )
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) => Divider(),
                        itemCount: items.length,
                    ),
                  ),
                ),
            )
          ],
        ),
      )
    );
  }
}

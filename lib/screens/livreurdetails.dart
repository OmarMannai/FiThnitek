import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import 'messenger.dart';

class LivreurDetails extends StatelessWidget {
  final String fullName;
  final String route;
  final double maxWeight;
  final int vehicule;
  final String time;
  final String date;
  final String imageUrl;

  const LivreurDetails({super.key, required this.fullName, required this.route, required this.maxWeight, required this.vehicule, required this.time, required this.date, required this.imageUrl});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(padding: EdgeInsets.zero, children: [
            Stack(
              children :[
              Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: 
                  Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
              ),
              Positioned(
              left: 0,
              top: 40,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(CupertinoIcons.back),
                iconSize: 40,
              )),
              ]
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    date,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff565656)),
                  ),
                  
                      Text(
                        time + 'PM',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Color(0xff565656)),
                      ),
                  
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xfff4f4f4)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Route : ',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Color(0xff565656)),
                    ),
                    Text(
                      route + '                    8 Km',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff565656)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Description : ',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Color(0xff565656)),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet consecte. Donec id scelerisque mauris vulputate Lorem ipsum dolor sit  consectetur. Donec id scelerisque mauris ac vulputate malesuada tristique sed. Diam tristique ',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff565656)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Max weight : ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Color(0xff565656)),
                        ),
                        Text(
                          maxWeight.toStringAsFixed(0) + ' Kg',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff565656)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'type : ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Color(0xff565656),
                          ),
                        ),
                        SizedBox(width: 5),
                        VehicleIcon(vehicule: vehicule),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30,0,30,100),
              child: GestureDetector(
                onTap: () => Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (_) {
                                  return Messenger();
                                })),
                child: Container(
                          //padding: EdgeInsets.all(15),
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xff038C7F),
                          ),
                          child: Center(
                            child: Text(
                                          'Contact Omar',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                          ),
                ),
              ),
            ),
          ]),
          
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: BottomNavBar()),
            ),
          ),
        ],
      ),
    );
  }
}

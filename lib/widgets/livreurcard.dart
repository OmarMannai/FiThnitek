import 'package:fithnitek/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LivreurCard extends StatelessWidget {
  final int index;
  final String fullName;
  final String route;
  final double maxWeight;
  final int vehicule;
  final String time;
  final String date;
  final String imageUrl;
  const LivreurCard(
      {super.key,
      required this.fullName,
      required this.route,
      required this.maxWeight,
      required this.vehicule,
      required this.time,
      required this.date,
      required this.imageUrl, 
      required this.index});

  @override
  Widget build(BuildContext context) {
    if(index==0)
    {
    return Container(
      padding: EdgeInsets.all(10),
      //height: 163,
      width: 240,
      decoration: BoxDecoration(
        color: Color(0xfff4f4f4),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 15,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 80,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      fullName,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff565656)),
                    ),
                    SizedBox(height: 4,),
                    Text(
                      route,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff565656)),
                    ),
                    SizedBox(height: 4,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Max weight : ',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                              color: Color(0xff565656)),
                              
                        ),
                        
                          Text(
                            maxWeight.toString() + ' Kg',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff565656)),
                                overflow: TextOverflow.ellipsis,
                          ),
                        
                      ],
                    ),
                    SizedBox(height: 4,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        VehicleIcon(vehicule: vehicule),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '30 min',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff565656)),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                date,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff565656)),
              ),
              SizedBox(width: 60),
              Text(
                time+' PM',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff565656)),
              ),
            ],
          )
        ],
      ),
    );
  }
    else{
      return Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Color(0xfff4f4f4),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 15,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 120,
                  width: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      fullName,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff565656)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      route,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff565656)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          'Max weight : ',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                              color: Color(0xff565656)),
                        ),
                        Text(
                          maxWeight.toStringAsFixed(0) + 'Kg',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff565656)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        VehicleIcon(vehicule: vehicule),
                        SizedBox(width: 15),
                        Text(
                          '30min',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff565656)),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              
              children: [
                Text(
                    date,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff565656)),
                  ),
                SizedBox(width: 50,),
                Text(
                  time+' PM',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff565656)),
                ),
              ],
            ),
          ],
        ),
      );
    }

  }
}

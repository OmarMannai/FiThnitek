import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColisCard extends StatelessWidget {
  final int index;
  final String fullName;
  final String route;
  final double aproxWeight;
  final List<String> type;
  final double price;
  final String date;
  final List<String> imageUrl;

  const ColisCard(
      {super.key,
      required this.fullName,
      required this.route,
      required this.aproxWeight,
      required this.type,
      required this.price,
      required this.date,
      required this.imageUrl,
      required this.index});

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return Container(
        padding: EdgeInsets.all(10),
        //height: 163,
        width: 170,
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 100,
            width: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                imageUrl[0],
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            fullName,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff565656)),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            route,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff565656)),
          ),
          SizedBox(
            height: 2,
          ),
          Row(
            children: [
              Text(
                'Aprox weight : ',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff565656)),
              ),
              Expanded(
                child: Text(
                  aproxWeight.toStringAsFixed(0) + 'Kg',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff565656)),
                      overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2,
          ),
          Row(
            children: [
              Text(
                'type : ',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff565656),
                ),
              ),
              SizedBox(width: 5),
              ...type
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff038C7F),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 1),
                          child: Center(
                            child: Text(
                              e,
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ],
          ),
          SizedBox(
            height: 2,
          ),
          Row(
            children: [
              Text(
                'price : ',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff565656)),
              ),
              Text(
                price.toString() + ' DT',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff565656)),
              ),
            ],
          ),
        ]),
      );
    } else
      return Container(
        padding: EdgeInsets.all(10),
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
                      imageUrl[0],
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
                          'Aprox weight : ',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                              color: Color(0xff565656)),
                        ),
                        Text(
                          aproxWeight.toStringAsFixed(0) + 'Kg',
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
                        Text(
                          'type : ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: Color(0xff565656),
                          ),
                        ),
                        SizedBox(width: 5),
                        ...type
                            .map(
                              (e) => Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xff038C7F),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 1),
                                    child: Center(
                                      child: Text(
                                        e,
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    date,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff565656)),
                  ),

                Row(
                children: [
                  Text(
                    'price: ',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff565656)),
                  ),
                  Text(
                    price.toString() + ' DT',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff565656)),
                  ),
                ],
          ),
              ],
            ),
          ],
        ),
      );
  }
}

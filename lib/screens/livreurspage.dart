import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data.dart';
import '../widgets/widgets.dart';
import 'livreurdetails.dart';

class LivreursPage extends StatelessWidget {
  const LivreursPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //minimum: EdgeInsets.symmetric(horizontal: 20),
        child: Stack(children: [
          ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(CupertinoIcons.back, size: 40),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(33, 35, 33, 85),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      height: 60,
                      width: MediaQuery.of(context).size.width - 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff038C7F),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Add your own offer',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                          Icon(
                            CupertinoIcons.add_circled_solid,
                            size: 35,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'find the offer that',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black),
                            ),
                            Text(
                              'suits your needs',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: Icon(
                              Icons.tune,
                              size: 45,
                              color: Color(0xff038C7F),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: allLivreur
                          .map((e) => Padding(
                              padding: const EdgeInsets.only(top: 17.0),
                              child: GestureDetector(
                                onTap: () => Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (_) {
                                  return LivreurDetails(
                                    fullName: e.fullName,
                                    route: e.route,
                                    maxWeight: e.maxWeight,
                                    vehicule: e.vehicule,
                                    time: e.time,
                                    date: e.date,
                                    imageUrl: e.imageUrl
                                  );
                                })),
                                child: LivreurCard(
                                    index: 1,
                                    fullName: e.fullName,
                                    route: e.route,
                                    maxWeight: e.maxWeight,
                                    vehicule: e.vehicule,
                                    time: e.time,
                                    date: e.date,
                                    imageUrl: e.imageUrl),
                              )))
                          .toList(),
                    )
                  ],
                ),
              )
            ],
          ),
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
        ]),
      ),
    );
  }
}

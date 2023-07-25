import 'package:fithnitek/data.dart';
import 'package:fithnitek/screens/colispage.dart';
import 'package:fithnitek/screens/livreurspage.dart';
import 'package:fithnitek/widgets/livreurcard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fithnitek/widgets/widgets.dart';

import 'colisdetails.dart';
import 'livreurdetails.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          ListView(
            children: [
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lorem ipsum dolor, sit',
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          'amet consectetur.',
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w900),
                        ),
                      ],
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
                padding: const EdgeInsets.only(bottom: 65),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 33, vertical: 34),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        height: 130,
                        width: MediaQuery.of(context).size.width - 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff038C7F),
                        ),
                        child: Stack(
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Add an announcement : ',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'your offer or the offer',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.white
                                                  .withOpacity(0.7)),
                                        ),
                                        Text(
                                          'you’re looking for.',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.white
                                                  .withOpacity(0.7)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: Icon(
                                CupertinoIcons.add_circled_solid,
                                size: 45,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 33.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Close delivery persons',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: Colors.black),
                          ),
                          GestureDetector(
                            onTap: () => Navigator.of(context)
                                .push(MaterialPageRoute(builder: (_) {
                              return LivreursPage();
                            })),
                            child: Container(
                              child: Text(
                                'See all',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xff038C7F)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 23.0, top: 7),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 34),
                          child: Row(
                            children: allLivreur
                                .map((e) => Padding(
                                    padding: const EdgeInsets.only(right: 20.0),
                                    child: GestureDetector(
                                      onTap: () => Navigator.of(context)
                                          .push(MaterialPageRoute(builder: (_) {
                                        return LivreurDetails();
                                      })),
                                      child: LivreurCard(
                                          index: 0,
                                          fullName: e.fullName,
                                          route: e.route,
                                          maxWeight: e.maxWeight,
                                          vehicule: e.vehicule,
                                          time: e.time,
                                          date: e.date,
                                          imageUrl: e.imageUrl),
                                    )))
                                .toList(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 33.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Close delivery persons',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: Colors.black),
                          ),
                          GestureDetector(
                            onTap: () => Navigator.of(context)
                                .push(MaterialPageRoute(builder: (_) {
                              return ColisPage();
                            })),
                            child: Container(
                              child: Text(
                                'See all',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xff038C7F)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 23.0, top: 7),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 34),
                          child: Row(
                            children: allColis
                                .map((e) => Padding(
                                    padding: const EdgeInsets.only(right: 20.0),
                                    child: GestureDetector(
                                      onTap: () => Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (_) {
                                      return ColisDetails(
                                        fullName: e.fullName,
                                        route: e.route,
                                        aproxWeight: e.aproxWeight,
                                        type: e.type,
                                        price: e.price,
                                        date: e.date,
                                        imageUrl: e.imageUrl
                                      );
                                    })),
                                      child: ColisCard(
                                        index: 0,
                                          fullName: e.fullName,
                                          route: e.route,
                                          aproxWeight: e.aproxWeight,
                                          type: e.type,
                                          price: e.price,
                                          date: e.date,
                                          imageUrl: e.imageUrl),
                                    )))
                                .toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/TravelSpots.dart';
import '../providers/topics.dart';
import '../screens/detail_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    Key key,
  }) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final travelSpotData = Provider.of<TravelSpots>(context).travelspots;
    final topicData = Provider.of<Topics>(context).topics;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.dehaze), onPressed: () {}),
        centerTitle: true,
        title: Text(
          'BLOG',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SingleChildScrollView(
          clipBehavior: Clip.none,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Discover',
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 38,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      travelSpotData.length,
                      (i) => GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                              DetailScreen.route_name,
                              arguments: travelSpotData[i].judul);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                child: Hero(
                                  tag: travelSpotData[i].gambar[0].image,
                                  child: Image.asset(
                                    travelSpotData[i].gambar[0].image,
                                    height: deviceSize.height / 6,
                                    width: deviceSize.width / 1.5,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              Container(
                                width: deviceSize.width / 1.5,
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.only(
                                    left: 15, top: 20, right: 15, bottom: 5),
                                child: Text(
                                  travelSpotData[i].judul,
                                  style: TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Container(
                                width: deviceSize.width / 1.5,
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Text(
                                  travelSpotData[i].lokasi,
                                  style: TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        'Topics',
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 38,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SingleChildScrollView(
                      clipBehavior: Clip.none,
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...List.generate(
                            topicData.length,
                            (i) => GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 7, vertical: 10),
                                child: Stack(
                                  children: [
                                    Container(
                                      width: deviceSize.width / 2.5,
                                      height: deviceSize.height / 6,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF053330),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    Positioned(
                                      left: 15,
                                      top: 15,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: Colors.white,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Image.asset(
                                                topicData[i].gambar,
                                                height: 70,
                                                width: 70,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            width: deviceSize.width / 3,
                                            child: Text(
                                              topicData[i].judul,
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      bottom: -5,
                                      right: -5,
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.grey,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Related',
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 38,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      travelSpotData.length,
                      (i) => GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                child: Image.asset(
                                  travelSpotData[i].gambar[0].image,
                                  height: deviceSize.height / 6,
                                  width: deviceSize.width / 1.5,
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              Container(
                                width: deviceSize.width / 1.5,
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.only(
                                    left: 15, top: 20, right: 15, bottom: 5),
                                child: Text(
                                  travelSpotData[i].judul,
                                  style: TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Container(
                                width: deviceSize.width / 1.5,
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Text(
                                  travelSpotData[i].lokasi,
                                  style: TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: deviceSize.height / 13,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              title: Text('Bookmarked'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          unselectedItemColor: Theme.of(context).accentColor,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

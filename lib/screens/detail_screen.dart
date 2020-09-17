import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:carousel_slider/carousel_options.dart';
import 'package:provider/provider.dart';
import 'package:carousel_pro/carousel_pro.dart';

import '../providers/TravelSpots.dart';

class DetailScreen extends StatelessWidget {
  static const route_name = '/detail';

  @override
  Widget build(BuildContext context) {
    final travelSpotJudul = ModalRoute.of(context).settings.arguments as String;
    final travelSpotData = Provider.of<TravelSpots>(context)
        .travelspots
        .firstWhere((spot) => spot.judul == travelSpotJudul);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width / 0.9,
              width: MediaQuery.of(context).size.width,
              child: Hero(
                tag: travelSpotData.gambar[0].image,
                child: Carousel(
                    radius: Radius.circular(15),
                    borderRadius: true,
                    boxFit: BoxFit.cover,
                    autoplay: false,
                    animationCurve: Curves.fastOutSlowIn,
                    animationDuration: Duration(milliseconds: 1000),
                    dotSize: 6.0,
                    dotIncreasedColor: Colors.white,
                    dotBgColor: Colors.transparent,
                    dotPosition: DotPosition.bottomCenter,
                    dotVerticalPadding: 10.0,
                    showIndicator: true,
                    indicatorBgPadding: 10.0,
                    images: travelSpotData.gambar.map((gambar) {
                      return AssetImage(gambar.image);
                    }).toList()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 25, bottom: 5),
                    child: Text(
                      travelSpotData.judul,
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontSize: 32,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      travelSpotData.lokasi,
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Text(
                      travelSpotData.deskripsi,
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // Container(
      //   width: MediaQuery.of(context).size.width,
      //   // height: 1000,
      //   child: CarouselSlider.builder(
      //     itemCount: travelSpotData.gambar.length,
      //     itemBuilder: (ctx, i) => Container(
      //       child: ClipRRect(
      //         borderRadius: BorderRadius.all(Radius.circular(5.0)),
      //         child: Stack(
      //           children: [
      //             InkResponse(
      //               child: Image.asset(
      //                 travelSpotData.gambar[i].image,
      //                 fit: BoxFit.cover,
      //                 width: 1000.0,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //     options: CarouselOptions(
      //       viewportFraction: 1,
      //       autoPlay: true,
      //       aspectRatio: 1,
      //       enlargeStrategy: CenterPageEnlargeStrategy.scale,
      //     ),
      //   ),
      // ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_flutter_look_id/data/movie/now_palying.dart';
import 'package:tugas_flutter_look_id/data/movie/upcoming_movie.dart';
import 'package:tugas_flutter_look_id/misc/constans.dart';

import '../../misc/methods.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  List<NowPlaying> listNowPalying = NowPlaying.listNowPlaying;
  List<UpComming> listUpComming = UpComming.listUpComming;
  final List<String> promotionImageFileNames = const [
    'popcorn.jpg',
    'buy1get1.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          userInfo(),
          verticalSpace(40),
          searchBar(context),
          verticalSpace(24),
          headerTitle('Now Playing'),
          nowPlaying(),
          verticalSpace(30),
          headerTitle('Promotions'),
          SizedBox(
            width: 240,
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: promotionImageFileNames.length,
              itemBuilder: (context, index) => Container(
                width: 240,
                height: 160,
                margin: EdgeInsets.only(
                  left: index == 0 ? 24 : 10,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage('assets/${promotionImageFileNames[index]}'),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          verticalSpace(30),
          headerTitle('Up Comming'),
          upComming(),
          verticalSpace(100),
        ],
      ),
    );
  }

  SizedBox upComming() {
    return SizedBox(
      height: 228,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listUpComming.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 24 : 10,
              right: listUpComming.length - 1 == index ? 24 : 0,
            ),
            child: Container(
              width: 150,
              height: 228,
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image:
                        AssetImage('assets/${listUpComming[index].photoPath}'),
                    fit: BoxFit.cover),
              ),
            ),
          );
        },
      ),
    );
  }

  SizedBox nowPlaying() {
    return SizedBox(
      height: 228,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listNowPalying.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 24 : 10,
              right: listNowPalying.length - 1 == index ? 24 : 0,
            ),
            child: Container(
              width: 150,
              height: 228,
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image:
                        AssetImage('assets/${listNowPalying[index].photoPath}'),
                    fit: BoxFit.cover),
              ),
            ),
          );
        },
      ),
    );
  }

  Padding headerTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, bottom: 15),
      child: Text(
        title,
        style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }

  Row searchBar(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width - 24 - 24 - 90,
          height: 50,
          margin: const EdgeInsets.only(left: 24, right: 10),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: const Color(0xFF252836),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            style: TextStyle(color: Colors.grey.shade400),
            decoration: const InputDecoration(
              hintText: 'Search movie here',
              border: InputBorder.none,
              // icon: Icon(Icons.search),
            ),
          ),
        ),
        SizedBox(
          width: 80,
          height: 50,
          child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                side: MaterialStateProperty.all<BorderSide>(
                  const BorderSide(
                    width: 0.2,
                    color: saffron,
                  ),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              child: const Center(
                child: Icon(
                  Icons.search,
                ),
              )),
        )
      ],
    );
  }

  Padding userInfo() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      child: Row(
        children: [
          Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.grey,
              ),
              shape: BoxShape.circle,
              image: const DecorationImage(
                image: AssetImage('assets/avatar.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          horizontalSpace(16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome, Novri!',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Let's book your favorite movie!",
                style: TextStyle(fontSize: 12),
              ),
              verticalSpace(5),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    SizedBox(
                      width: 18,
                      height: 18,
                      child: Image.asset('assets/wallet.png'),
                    ),
                    horizontalSpace(10),
                    const Text('IDR 100.000')
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

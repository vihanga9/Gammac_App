import 'package:flutter/material.dart';
import 'package:gammac_app/Screens/Physics.dart';
import 'package:gammac_app/Screens/Subjects.dart';
import 'package:gammac_app/Services/admob.dart';
import 'package:gammac_app/Services/colors.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';

class Electronics extends StatefulWidget {
  const Electronics({super.key});
  @override
  State<StatefulWidget> createState() => _Electronics();
}

class _Electronics extends State<Electronics> {
  late BannerAd _bottomBannerAd;

  bool _isBottomBAnnerAdloaded = false;

  void createBottomBannerAd() {
    _bottomBannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: AdDisplay.bannerAdUnit_10,
        listener: BannerAdListener(
          onAdLoaded: (_) {
            setState(() {
              _isBottomBAnnerAdloaded = true;
            });
          },
          onAdFailedToLoad: (ad, error) {
            ad.dispose();
          },
        ),
        request: const AdRequest());
    _bottomBannerAd.load();
  }

  @override
  void initState() {
    super.initState();
    createBottomBannerAd();
  }

  @override
  void dispose() {
    super.dispose();
    _bottomBannerAd.dispose();
  }

  Future<void> _launchURL(String url) async {
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget btn(String url1, String year1, String url2, String year2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            _launchURL(url1);
          },
          child: Container(
            height: 60,
            width: 190,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 5),
                  blurRadius: 4,
                  color: Colors.black.withOpacity(0.3),
                )
              ],
              borderRadius: BorderRadius.circular(23),
              gradient: LinearGradient(
                colors: [fc, sc],
              ),
            ),
            child: Center(
                child: Text(
              year1,
              style: const TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
          ),
        ),
        GestureDetector(
          onTap: () {
            _launchURL(url2);
          },
          child: Container(
            height: 60,
            width: 190,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 5),
                  blurRadius: 4,
                  color: Colors.black.withOpacity(0.3),
                )
              ],
              borderRadius: BorderRadius.circular(23),
              gradient: LinearGradient(
                colors: [fc, sc],
              ),
            ),
            child: Center(
                child: Text(
              year2,
              style: const TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
          ),
        ),
      ],
    );
  }

  Widget btn1(String url1, String year1) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            _launchURL(url1);
          },
          child: Container(
            height: 60,
            width: 190,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 5),
                  blurRadius: 4,
                  color: Colors.black.withOpacity(0.3),
                )
              ],
              borderRadius: BorderRadius.circular(23),
              gradient: LinearGradient(
                colors: [fc, sc],
              ),
            ),
            child: Center(
                child: Text(
              year1,
              style: const TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: _isBottomBAnnerAdloaded
            ? SizedBox(
                height: _bottomBannerAd.size.height.toDouble(),
                width: _bottomBannerAd.size.width.toDouble(),
                child: AdWidget(ad: _bottomBannerAd),
              )
            : null,
        appBar: AppBar(
          toolbarHeight: 75,
          shadowColor: const Color.fromARGB(255, 4, 2, 65),
          title: const Text(
            "Electronics",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.75,
            ),
          ),
          actions: <Widget>[
            IconButton(
              iconSize: 35,
              icon: const Icon(Icons.home),
              tooltip: 'Home',
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => const Subjects()));
              },
            ), //IconButton
          ], //<Widget>[]
          backgroundColor: appc,
          elevation: 10.0,
          leading: IconButton(
            iconSize: 35,
            icon: const Icon(Icons.arrow_back),
            tooltip: 'Back',
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => const Physics()));
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 55,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "Diodes",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            btn("https://youtu.be/B22Wdx1PfH4?feature=shared", "2000-18",
                "https://youtu.be/83Bpii_gVAg?feature=shared", "2001-50"),
            const SizedBox(height: 10),
            btn("https://youtu.be/4xg4Sp2nbJw?feature=shared", "2003-57",
                "https://youtu.be/Cdp4VV6BnO4?t=3m11s", "2004-51"),
            const SizedBox(height: 10),
            btn("https://youtu.be/APpnTY2q5CM?feature=shared", "2005-36",
                "https://youtu.be/-RaLZJMdipo?feature=shared", "2005-43"),
            const SizedBox(height: 10),
            btn("https://youtu.be/wPtoiksKEUc?feature=shared", "2006-43",
                "https://youtu.be/gh6m23L_cog?t=15m12s", "2006-58"),
            const SizedBox(height: 10),
            btn("https://youtu.be/4kQ9GbF-IG0?feature=shared", "2008-42",
                "https://youtu.be/yDIts2DvTkA?feature=shared", "2009-34"),
            const SizedBox(height: 10),
            btn("https://youtu.be/5PP-LM2Hudk?feature=shared", "2010-44",
                "https://youtu.be/snXFFaPQJp0?feature=shared", "2011-33"),
            const SizedBox(height: 10),
            btn("https://youtu.be/ET9YheQwfw0?feature=shared", "2013-40",
                "https://youtu.be/5orsIft9m_k?feature=shared", "2014-32"),
            const SizedBox(height: 10),
            btn("https://youtu.be/snXFFaPQJp0?feature=shared", "2015-15",
                "https://youtu.be/Fta5UBeCSKw?feature=shared", "2016-28"),
            const SizedBox(height: 10),
            btn("https://youtu.be/3IwdV5DB8hA?feature=shared", "2017-19",
                "https://youtu.be/xSK5Go45ioU?feature=shared", "2018-09"),
            const SizedBox(height: 10),
            btn("https://youtu.be/ypoo4azPN3E?feature=shared", "2018-43",
                "https://youtu.be/7xO73Kz4aL8?feature=shared", "2019-24"),
            const SizedBox(height: 10),
            btn1("https://youtu.be/nY0n7xpN32A?feature=shared", "2023-31"),
            const SizedBox(height: 10),
            SizedBox(
              height: 55,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "Transistors",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            btn("https://youtu.be/_xzt5mxRsoQ?feature=shared", "2002-54",
                "https://youtu.be/UCfuWZ_eJTE?t=8m55s", "2003-03"),
            const SizedBox(height: 10),
            btn("https://youtu.be/UCfuWZ_eJTE?t=9m10s", "2003-08",
                "https://youtu.be/nlWXnqRgqY8?feature=shared", "2006-56"),
            const SizedBox(height: 10),
            btn("https://youtu.be/J50-OGYCdBA?feature=shared", "2007-42",
                "https://youtu.be/E7rZy_e6L-0?feature=shared", "2008-41"),
            const SizedBox(height: 10),
            btn("https://youtu.be/9TeCboAJ94I?feature=shared", "2010-28",
                "https://youtu.be/gsauKVRDNOI?feature=shared", "2011-34"),
            const SizedBox(height: 10),
            btn("https://youtu.be/QcVM7aoWOqM?feature=shared", "2012-38",
                "https://youtu.be/qDBnlowZ6Us?feature=shared", "2013-39"),
            const SizedBox(height: 10),
            btn("https://youtu.be/8AwDZm3vUBQ?feature=shared", "2014-34",
                "https://youtu.be/uM2v0gVXAZk?feature=shared", "2015-36"),
            const SizedBox(height: 10),
            btn("https://youtu.be/VJSkQJtKxrM?feature=shared", "2016-11",
                "https://youtu.be/CQUIrdrhtGM?feature=shared", "2017-18"),
            const SizedBox(height: 10),
            btn("https://youtu.be/sz-0TXgv3x0?feature=shared", "2019-03",
                "https://youtu.be/PA5dhRL42pk?feature=shared", "2019-37"),
            const SizedBox(height: 10),
            btn("https://youtu.be/HLkLvk2-qS4?feature=shared", "2022-44",
                "https://youtu.be/SNpnEtjRv5g?feature=shared", "2023-07"),
            const SizedBox(height: 10),
            SizedBox(
              height: 55,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "Integrated Circuits",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            btn("https://youtu.be/VG5NArxIPfM?feature=shared", "2001-49",
                "https://youtu.be/JrDd9ZgUztw?feature=shared", "2004-50"),
            const SizedBox(height: 10),
            btn("https://youtu.be/B8MFniFmjwk?feature=shared", "2005-09",
                "https://youtu.be/XltZoeqqBpA?feature=shared", "2007-41"),
            const SizedBox(height: 10),
            btn("https://youtu.be/lRePvZOWmqY?feature=shared", "2009-35",
                "https://youtu.be/RDRHeKTN9Ls?feature=shared", "2012-39"),
            const SizedBox(height: 10),
            btn("https://youtu.be/ixHy3xq3G0M?feature=shared", "2018-27",
                "https://youtu.be/CZfilHQKT9M?feature=shared", "2020-15"),
            const SizedBox(height: 10),
            btn1("https://youtu.be/3a3eH63s1kI?feature=shared", "2022-46"),
            const SizedBox(height: 10),
            SizedBox(
              height: 55,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "Logic Gates",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            btn("https://youtu.be/i9JiOYlu4I8?feature=shared", "2000-08",
                "https://youtu.be/DMCQjIyxkcQ?feature=shared", "2001-10"),
            const SizedBox(height: 10),
            btn("https://youtu.be/myQ1xeaj3bY?feature=shared", "2002-31",
                "https://youtu.be/J2EUqnSjimc?feature=shared", "2003-21"),
            const SizedBox(height: 10),
            btn("https://youtu.be/kUX3wQbcgtQ?feature=shared", "2004-49",
                "https://youtu.be/NqmcyT69juA?feature=shared", "2005-31"),
            const SizedBox(height: 10),
            btn("https://youtu.be/75XduQ1G1hI?feature=shared", "2006-20",
                "https://youtu.be/NnjEc4-tB5w?feature=shared", "2007-21"),
            const SizedBox(height: 10),
            btn("https://youtu.be/wV9hBhagwqc?feature=shared", "2008-40",
                "https://youtu.be/-weUqlkeZy8?feature=shared", "2009-36"),
            const SizedBox(height: 10),
            btn("https://youtu.be/980VMDPBzKM?feature=shared", "2010-27",
                "https://youtu.be/mSdQb4qlqas?feature=shared", "2011-07"),
            const SizedBox(height: 10),
            btn("https://youtu.be/a7PJEQ3qACc?feature=shared", "2012-40",
                "https://youtu.be/zu6PrbKv6kg?feature=shared", "2013-41"),
            const SizedBox(height: 10),
            btn("https://youtu.be/OfPfxG9vzTY?feature=shared", "2014-33",
                "https://youtu.be/nXBHrJcwyfk?feature=shared", "2015-37"),
            const SizedBox(height: 10),
            btn("https://youtu.be/s8GnxMjoVIk?feature=shared", "2016-10",
                "https://youtu.be/KbWK2uugoPc?feature=shared", "2017-20"),
            const SizedBox(height: 10),
            btn("https://youtu.be/YYUdO4Ab-Ps?feature=shared", "2018-10",
                "https://youtu.be/jj5Qresn2fM?feature=shared", "2020-18"),
            const SizedBox(height: 10),
            btn("https://youtu.be/k9BDa9xq66M?feature=shared", "2021-10",
                "https://youtu.be/EbAtcaCuFak?feature=shared", "2021-22"),
            const SizedBox(height: 10),
            btn("https://youtu.be/fsZFGwxOLZ0?feature=shared", "2022-16",
                "https://youtu.be/YJPIWW819fs?feature=shared", "2023-46"),
            const SizedBox(height: 20),
          ]),
        ),
      ),
    );
  }
}

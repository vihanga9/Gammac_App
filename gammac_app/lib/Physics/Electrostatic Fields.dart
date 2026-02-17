import 'package:flutter/material.dart';
import 'package:gammac_app/Screens/Physics.dart';
import 'package:gammac_app/Screens/Subjects.dart';
import 'package:gammac_app/Services/admob.dart';
import 'package:gammac_app/Services/colors.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';

class Electrostatic extends StatefulWidget {
  const Electrostatic({super.key});
  @override
  State<StatefulWidget> createState() => _Electrostatic();
}

class _Electrostatic extends State<Electrostatic> {
  late BannerAd _bottomBannerAd;

  bool _isBottomBAnnerAdloaded = false;

  void createBottomBannerAd() {
    _bottomBannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: AdDisplay.bannerAdUnit_7,
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
              "Electrostatic Fields",
              style: TextStyle(
                fontSize: 27,
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
                height: 90,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Electric Field Intensity and Coulomb's Law",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/LJU3WnvG95Y?feature=shared", "2002-25",
                  "https://youtu.be/6bAJ9zuLMe4?feature=shared", "2006-37"),
              const SizedBox(height: 10),
              btn("https://youtu.be/J9SoijUKDHo?feature=shared", "2007-16",
                  "https://youtu.be/uZBZP1_GKrY?feature=shared", "2007-46"),
              const SizedBox(height: 10),
              btn("https://youtu.be/mHSh37JFZB0?feature=shared", "2009-46",
                  "https://youtu.be/W-7ZJJBoozk?feature=shared", "2009-47"),
              const SizedBox(height: 10),
              btn("https://youtu.be/ASE6nXZkgls?feature=shared", "2010-16",
                  "https://youtu.be/9dWqYtkTTNo?feature=shared", "2011-48"),
              const SizedBox(height: 10),
              btn("https://youtu.be/V03qIKhDh3A?feature=shared", "2012-10",
                  "https://youtu.be/0Slh4HuNQgU?feature=shared", "2014-08"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Aln5rj1LhtI?feature=shared", "2016-39",
                  "https://youtu.be/jZPvaWQkX4M?feature=shared", "2017-29"),
              const SizedBox(height: 10),
              btn("https://youtu.be/dk-EgzpjDbc?feature=shared", "2019-17",
                  "https://youtu.be/pwEA_6-zGOw?feature=shared", "2020-28"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Qbv5Qr7A4rU?feature=shared", "2021-17",
                  "https://youtu.be/_I6Nli5KZWg?feature=shared", "2022-11"),
              const SizedBox(height: 10),
              btn("https://youtu.be/eZAN8Nx2lxw?feature=shared", "2022-29",
                  "https://youtu.be/5Q1X5xtJltI?feature=shared", "2022-50"),
              const SizedBox(height: 10),
              btn("https://youtu.be/aV8G5nz9ats?feature=shared", "2023-11",
                  "https://youtu.be/a3YspNVlUwQ?feature=shared", "2023-12"),
              const SizedBox(height: 10),
              btn1("https://youtu.be/qUgx6QptcgY?feature=shared", "2023-33"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Gauss Theorem",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/-AxulSGb8tQ?feature=shared", "2000-11",
                  "https://youtu.be/IeU3-_iO5V8?t=5m28s", "2000-57"),
              const SizedBox(height: 10),
              btn("https://youtu.be/ypaZJvwXvS4?feature=shared", "2001-52",
                  "https://youtu.be/Y2oLPX5B7YE?feature=shared", "2002-08"),
              const SizedBox(height: 10),
              btn("https://youtu.be/IeU3-_iO5V8?t=10m00s", "2003-23",
                  "https://youtu.be/UlA48bIJktM?feature=shared", "2003-36"),
              const SizedBox(height: 10),
              btn("https://youtu.be/ammT-UDfnLI?feature=shared", "2004-45",
                  "https://youtu.be/qY9pXnCMfkY?feature=shared", "2006-18"),
              const SizedBox(height: 10),
              btn("https://youtu.be/QezwYZXc6Kw?feature=shared", "2008-48",
                  "https://youtu.be/pp2omBwj8jY?feature=shared", "2009-48"),
              const SizedBox(height: 10),
              btn("https://youtu.be/IqkF5pxve94?feature=shared", "2010-26",
                  "https://youtu.be/ddZA0G2kK94?feature=shared", "2012-11"),
              const SizedBox(height: 10),
              btn("https://youtu.be/IDa-YDDIbbs?feature=shared", "2013-28",
                  "https://youtu.be/O1tGIfcyVpQ?feature=shared", "2014-12"),
              const SizedBox(height: 10),
              btn("https://youtu.be/nB6M84sK6OU?feature=shared", "2015-24",
                  "https://youtu.be/2wQL1fJM3Ps?feature=shared", "2017-15"),
              const SizedBox(height: 10),
              btn("https://youtu.be/yQKJ1v3Ua98?feature=shared", "2018-23",
                  "https://youtu.be/Gi9ZxFlMUdQ?feature=shared", "2019-29"),
              const SizedBox(height: 10),
              btn("https://youtu.be/IgEuKGXlKuc?feature=shared", "2020-40",
                  "https://youtu.be/JCze1VgYOPo?feature=shared", "2021-45"),
              const SizedBox(height: 10),
              btn1("https://youtu.be/ST9s20ZcwOA?feature=shared", "2022-38"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Static Electric Potential",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/4VGKfAS1en8?feature=shared", "2000-24",
                  "https://youtu.be/xEigmKikXJ4?t=5m08s", "2000-55"),
              const SizedBox(height: 10),
              btn("https://youtu.be/xEigmKikXJ4?t=7m25s", "2001-01",
                  "https://youtu.be/j7qVx_KgdMM?feature=shared", "2002-26"),
              const SizedBox(height: 10),
              btn("https://youtu.be/mi0PnBVLefM?feature=shared", "2003-41",
                  "https://youtu.be/YKoZQaapT2I?feature=shared", "2005-20"),
              const SizedBox(height: 10),
              btn("https://youtu.be/xEigmKikXJ4?t=10m08s", "2005-55",
                  "https://youtu.be/-j5_IV-Jq5w?feature=shared", "2005-50"),
              const SizedBox(height: 10),
              btn("https://youtu.be/egOGVtZynuM?feature=shared", "2006-26",
                  "https://youtu.be/jSudVV3-aDo?feature=shared", "2007-52"),
              const SizedBox(height: 10),
              btn("https://youtu.be/TR9NKwMwzrE?feature=shared", "2008-26",
                  "https://youtu.be/eExS2HTHd8k?feature=shared", "2008-57"),
              const SizedBox(height: 10),
              btn("https://youtu.be/I9anZq2Occc?feature=shared", "2010-46",
                  "https://youtu.be/HpHI3lh1_No?feature=shared", "2011-46"),
              const SizedBox(height: 10),
              btn("https://youtu.be/6tvcS1Pjc6A?feature=shared", "2013-29",
                  "https://youtu.be/Gek0l_cLhq0?feature=shared", "2014-07"),
              const SizedBox(height: 10),
              btn("https://youtu.be/vOXfAdPjvbI?feature=shared", "2015-11",
                  "https://youtu.be/MEaX2CR6YcY?feature=shared", "2017-45"),
              const SizedBox(height: 10),
              btn("https://youtu.be/c4qFkJVcMAI?feature=shared", "2018-45",
                  "https://youtu.be/4EDeiQP0d6k?feature=shared", "2018-50"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Q_C77gxEzcQ?feature=shared", "2019-21",
                  "https://youtu.be/9RaOT30qKp8?feature=shared", "2019-27"),
              const SizedBox(height: 10),
              btn("https://youtu.be/wro4UpKR6hY?feature=shared", "2020-25",
                  "https://youtu.be/wAkmaE4P7CI?feature=shared", "2020-31"),
              const SizedBox(height: 10),
              btn1("https://youtu.be/7Ho3MaG6B7U?feature=shared", "2021-47"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Capacitors",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/C-m2JyEcyVA?t=9m20s", "2000-25",
                  "https://youtu.be/C-m2JyEcyVA?t=10m57s", "2000-58"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Mj6jN1xr_Fs?feature=shared", "2001-51",
                  "https://youtu.be/EpecBpCEXkk?feature=shared", "2002-48"),
              const SizedBox(height: 10),
              btn("https://youtu.be/WeRXmTGJF3s?t=0m41s", "2003-22",
                  "https://youtu.be/bG6V5pmuhsg?feature=shared", "2004-23"),
              const SizedBox(height: 10),
              btn("https://youtu.be/MHkJQgO10lc?feature=shared", "2004-39",
                  "https://youtu.be/uTsEaLQQizA?feature=shared", "2004-52"),
              const SizedBox(height: 10),
              btn("https://youtu.be/KQE1mLDxH3A?feature=shared", "2005-08",
                  "https://youtu.be/WeRXmTGJF3s?t=8m32s", "2005-13"),
              const SizedBox(height: 10),
              btn("https://youtu.be/WeRXmTGJF3s?t=9m50s", "2006-21",
                  "https://youtu.be/WeRXmTGJF3s?t=11m42s", "2006-60"),
              const SizedBox(height: 10),
              btn("https://youtu.be/qziWjlCgdXM?feature=shared", "2007-15",
                  "https://youtu.be/vpwCmNB6tLI?feature=shared", "2008-29"),
              const SizedBox(height: 10),
              btn("https://youtu.be/W59rfuAHRlY?feature=shared", "2009-06",
                  "https://youtu.be/9P3PSkeNs8E?feature=shared", "2010-48"),
              const SizedBox(height: 10),
              btn("https://youtu.be/eV5aisoZ3nM?feature=shared", "2011-27",
                  "https://youtu.be/Oyy9u7yAE2M?feature=shared", "2012-48"),
              const SizedBox(height: 10),
              btn("https://youtu.be/IWF_hEjwGwQ?feature=shared", "2013-42",
                  "https://youtu.be/A_9bD-U1R-0?feature=shared", "2013-49"),
              const SizedBox(height: 10),
              btn("https://youtu.be/UJutfBDKCEg?feature=shared", "2015-09",
                  "https://youtu.be/EJksQFLFBf8?feature=shared", "2015-25"),
              const SizedBox(height: 10),
              btn("https://youtu.be/KYu2Zbwsj1o?feature=shared", "2016-24",
                  "https://youtu.be/GyHmylNrVRc?feature=shared", "2016-45"),
              const SizedBox(height: 10),
              btn("https://youtu.be/u2oXrFFG2gY?feature=shared", "2017-47",
                  "https://youtu.be/XCC8dUJ9DUs?feature=shared", "2019-18"),
              const SizedBox(height: 10),
              btn("https://youtu.be/X_TIjICaQw8?feature=shared", "2020-50",
                  "https://youtu.be/e5nIs8rkIyY?feature=shared", "2021-32"),
              const SizedBox(height: 10),
              btn("https://youtu.be/WnAjxwN-WKk?feature=shared", "2022-30",
                  "https://youtu.be/R0S1F8ZI_MU?feature=shared", "2022-32"),
              const SizedBox(height: 10),
              btn1("https://youtu.be/WPlT-sttoI8?feature=shared", "2023-39"),
              const SizedBox(height: 20),
            ]),
          )),
    );
  }
}

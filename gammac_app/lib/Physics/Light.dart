import 'package:flutter/material.dart';
import 'package:gammac_app/Screens/Physics.dart';
import 'package:gammac_app/Screens/Subjects.dart';
import 'package:gammac_app/Services/admob.dart';
import 'package:gammac_app/Services/colors.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';

class Light extends StatefulWidget {
  const Light({super.key});
  @override
  State<StatefulWidget> createState() => _Light();
}

class _Light extends State<Light> {
  late BannerAd _bottomBannerAd;
  InterstitialAd? interstitialAd;

  bool _isBottomBAnnerAdloaded = false;

  void createBottomBannerAd() {
    _bottomBannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: AdDisplay.bannerAdUnit_4,
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

  interstitialAdq21() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q21,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(onAdLoaded: (ad) {
          interstitialAd = ad;
          interstitialAd!.show();
          interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
            onAdFailedToShowFullScreenContent: ((ad, error) {
              ad.dispose();
              interstitialAd!.dispose();
              debugPrint(error.message);
            }),
            onAdDismissedFullScreenContent: (ad) {
              ad.dispose();
              interstitialAd!.dispose();
              _launchURL("https://youtu.be/syT7QEgg48M?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq22() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q22,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(onAdLoaded: (ad) {
          interstitialAd = ad;
          interstitialAd!.show();
          interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
            onAdFailedToShowFullScreenContent: ((ad, error) {
              ad.dispose();
              interstitialAd!.dispose();
              debugPrint(error.message);
            }),
            onAdDismissedFullScreenContent: (ad) {
              ad.dispose();
              interstitialAd!.dispose();
              _launchURL("https://youtu.be/P3VgDKaRo6c?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq23() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q23,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(onAdLoaded: (ad) {
          interstitialAd = ad;
          interstitialAd!.show();
          interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
            onAdFailedToShowFullScreenContent: ((ad, error) {
              ad.dispose();
              interstitialAd!.dispose();
              debugPrint(error.message);
            }),
            onAdDismissedFullScreenContent: (ad) {
              ad.dispose();
              interstitialAd!.dispose();
              _launchURL("https://youtu.be/aPSDwAqdXGg?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq24() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q24,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(onAdLoaded: (ad) {
          interstitialAd = ad;
          interstitialAd!.show();
          interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
            onAdFailedToShowFullScreenContent: ((ad, error) {
              ad.dispose();
              interstitialAd!.dispose();
              debugPrint(error.message);
            }),
            onAdDismissedFullScreenContent: (ad) {
              ad.dispose();
              interstitialAd!.dispose();
              _launchURL("https://youtu.be/yUHjgiGN9mo?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
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
              "Light",
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
                    "Refraction",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/w_Sy315hzZ4?t=21m14s", "2000-53",
                  "https://youtu.be/h1_T1rFUsS4?t=11m59s", "2001-38"),
              const SizedBox(height: 10),
              btn("https://youtu.be/m1HZLAG4Jsw?feature=shared", "2002-44",
                  "https://youtu.be/YdXNxTocmOc?feature=shared", "2002-45"),
              const SizedBox(height: 10),
              btn("https://youtu.be/w_Sy315hzZ4?t=1m18s", "2004-44",
                  "https://youtu.be/DSFsdWKlM8w?feature=shared", "2005-10"),
              const SizedBox(height: 10),
              btn("https://youtu.be/9JTOc8Cm7hQ?feature=shared", "2005-39",
                  "https://youtu.be/Q3jhmlwmPgM?feature=shared", "2006-03"),
              const SizedBox(height: 10),
              btn("https://youtu.be/aVUxDhowPfs?feature=shared", "2006-13",
                  "https://youtu.be/4dpowMbNf1g?t=09m03s", "2007-07"),
              const SizedBox(height: 10),
              btn("https://youtu.be/6gIphGP56NE?feature=shared", "2009-19",
                  "https://youtu.be/KEhVWsnv5HM?feature=shared", "2010-57"),
              const SizedBox(height: 10),
              btn("https://youtu.be/GNZvwgx3YZ8?feature=shared", "2011-21",
                  "https://youtu.be/jsbAXt-OQXQ?feature=shared", "2011-44"),
              const SizedBox(height: 10),
              btn("https://youtu.be/jiUrX7jYo8A?feature=shared", "2012-27",
                  "https://youtu.be/CHm_dqERkJQ?feature=shared", "2013-35"),
              const SizedBox(height: 10),
              btn("https://youtu.be/e60zJt25Umw?feature=shared", "2014-46",
                  "https://youtu.be/ScM-rMhRXvo?feature=shared", "2015-06"),
              const SizedBox(height: 10),
              btn("https://youtu.be/YqkFT43_F-U?feature=shared", "2021-03",
                  "https://youtu.be/UE-dk1PT-T8?feature=shared", "2021-35"),
              const SizedBox(height: 10),
              btn("https://youtu.be/leHiyDYRaBE?feature=shared", "2023-38",
                  "https://youtu.be/Jk5Ujl4jkjM?feature=shared", "2023-42"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Refraction through Prisms",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/hPSBKmxmMbQ?feature=shared", "2000-56",
                  "https://youtu.be/3FD57eLSjzo?feature=shared", "2001-17"),
              const SizedBox(height: 10),
              btn("https://youtu.be/IlHO_0rBmDk?t=1m28s", "2003-15",
                  "https://youtu.be/l-byASRoxV4?feature=shared", "2003-32"),
              const SizedBox(height: 10),
              btn("https://youtu.be/qn8lg-xStyo?feature=shared", "2004-06",
                  "https://youtu.be/c7HsSFp6znc?feature=shared", "2005-34"),
              const SizedBox(height: 10),
              btn("https://youtu.be/tduSzo7cNPc?feature=shared", "2006-11",
                  "https://youtu.be/qVvSgljsHHo?feature=shared", "2008-03"),
              const SizedBox(height: 10),
              btn("https://youtu.be/1cNbU-PDsMY?feature=shared", "2009-18",
                  "https://youtu.be/5wKLuZeHSFs?feature=shared", "2010-03"),
              const SizedBox(height: 10),
              btn("https://youtu.be/-KOSD_zajis?feature=shared", "2011-18",
                  "https://youtu.be/BKRnv_N45jc?feature=shared", "2012-09"),
              const SizedBox(height: 10),
              btn("https://youtu.be/KtBLoY5NmPo?feature=shared", "2013-24",
                  "https://youtu.be/6QLn3AfWdLo?feature=shared", "2014-20"),
              const SizedBox(height: 10),
              btn("https://youtu.be/cxNIjFdRLP4?feature=shared", "2015-29",
                  "https://youtu.be/P39wvAYKcHk?feature=shared", "2016-37"),
              const SizedBox(height: 10),
              btn("https://youtu.be/T6SK3FlCwDg?feature=shared", "2017-14",
                  "https://youtu.be/hikdz_xbx6U?feature=shared", "2018-38"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/po8dnzAU_J0?feature=shared");
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
                      child: const Center(
                          child: Text(
                        "2019-43",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      interstitialAdq21();
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
                      child: const Center(
                          child: Text(
                        "2020-32",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              btn("https://youtu.be/ZZb-BWzs4iQ?feature=shared", "2021-41",
                  "https://youtu.be/TI6s2lMjLjs?feature=shared", "2022-33"),
              const SizedBox(height: 10),
              btn1("https://youtu.be/WxVOiIlBnUE?feature=shared", "2023-30"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Refraction through Lenses",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/NGBHvguZ0b8?feature=shared", "2000-14",
                  "https://youtu.be/drh22j09FCs?feature=shared", "2000-19"),
              const SizedBox(height: 10),
              btn("https://youtu.be/98ZxZOXWcjs?feature=shared", "2001-15",
                  "https://youtu.be/PBZU7KQ05P4?feature=shared", "2002-14"),
              const SizedBox(height: 10),
              btn("https://youtu.be/KEz2mWUi4zM?feature=shared", "2002-41",
                  "https://youtu.be/iNn9fFEVpAA?feature=shared", "2003-13"),
              const SizedBox(height: 10),
              btn("https://youtu.be/eRu40Tz6yVo?feature=shared", "2003-51",
                  "https://youtu.be/zCLM0Nv52Y4?feature=shared", "2004-11"),
              const SizedBox(height: 10),
              btn("https://youtu.be/1xnjDtacjAQ?feature=shared", "2004-32",
                  "https://youtu.be/HHsg7tp07M4?feature=shared", "2005-33"),
              const SizedBox(height: 10),
              btn("https://youtu.be/tILmW3MO9SE?feature=shared", "2006-29",
                  "https://youtu.be/axWl3vIg4w0?feature=shared", "2007-12"),
              const SizedBox(height: 10),
              btn("https://youtu.be/XfqRtM4jW-0?t=10m38s", "2007-30",
                  "https://youtu.be/CP8W6FyKZpw?feature=shared", "2008-55"),
              const SizedBox(height: 10),
              btn("https://youtu.be/WwWas5LJUb0?feature=shared", "2010-11",
                  "https://youtu.be/-TQOTSf2u9E?feature=shared", "2010-54"),
              const SizedBox(height: 10),
              btn("https://youtu.be/-SLaeYJwNSk?feature=shared", "2011-20",
                  "https://youtu.be/P1dBxDeMGac?feature=shared", "2012-26"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Cl-sytfkmKg?feature=shared", "2013-25",
                  "https://youtu.be/Fi5xAttfYIU?feature=shared", "2014-19"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Au-z7KycQCQ?feature=shared", "2015-18",
                  "https://youtu.be/RJlGmeX79P4?feature=shared", "2016-38"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      interstitialAdq22();
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
                      child: const Center(
                          child: Text(
                        "2017-07",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/mATbDwjgBHE?feature=shared");
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
                      child: const Center(
                          child: Text(
                        "2018-37",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              btn("https://youtu.be/k1ooebFHh2U?feature=shared", "2019-33",
                  "https://youtu.be/DkM_j_JSgUw?feature=shared", "2020-08"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Ca45jONGk08?feature=shared", "2021-11",
                  "https://youtu.be/R12A_pXLC1o?feature=shared", "2022-06"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Z6tnX5fdJOo?feature=shared", "2022-28",
                  "https://youtu.be/vMKoTsr7O3k?feature=shared", "2023-15"),
              const SizedBox(height: 10),
              btn1("https://youtu.be/bUqmlL69F3A?feature=shared", "2022-20"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Human Eye",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/MrKvgjG6FTI?feature=shared", "2000-46",
                  "https://youtu.be/s5d7aEJvatw?feature=shared", "2001-18"),
              const SizedBox(height: 10),
              btn("https://youtu.be/J1iuEVi0Qgo?feature=shared", "2002-42",
                  "https://youtu.be/fYq2yjXVTz0?feature=shared", "2003-25"),
              const SizedBox(height: 10),
              btn("https://youtu.be/ZNRytqIOwek?feature=shared", "2004-12",
                  "https://youtu.be/U4vZMyUj-mQ?feature=shared", "2005-58"),
              const SizedBox(height: 10),
              btn("https://youtu.be/pm1mc2ClLE8?feature=shared", "2006-30",
                  "https://youtu.be/89n6yT-j6Wo?feature=shared", "2007-11"),
              const SizedBox(height: 10),
              btn("https://youtu.be/1aD6NtLxbIs?feature=shared", "2008-21",
                  "https://youtu.be/e2Sjvh7goC4?feature=shared", "2009-08"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      interstitialAdq23();
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
                      child: const Center(
                          child: Text(
                        "2010-04",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/0LVDXo9PXuM?feature=shared");
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
                      child: const Center(
                          child: Text(
                        "2011-16",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              btn1("https://youtu.be/uQtCFGhRbcw?feature=shared", "2013-23"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Optical Devices",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/Dn8XP3NS9t0?t=5m40s", "2000-35",
                  "https://youtu.be/Axymjv4IG0s?feature=shared", "2001-29"),
              const SizedBox(height: 10),
              btn("https://youtu.be/lU7hxfjjfuw?feature=shared", "2002-15",
                  "https://youtu.be/Dn8XP3NS9t0?t=8m50s", "2003-33"),
              const SizedBox(height: 10),
              btn("https://youtu.be/sWM_oYybT1c?feature=shared", "2006-10",
                  "https://youtu.be/jwN1VWuAnxc?feature=shared", "2007-13"),
              const SizedBox(height: 10),
              btn("https://youtu.be/0t1So8iHlxs?feature=shared", "2008-23",
                  "https://youtu.be/HVaBuCq10Ds?feature=shared", "2009-03"),
              const SizedBox(height: 10),
              btn("https://youtu.be/10Uum9AtPzA?feature=shared", "2010-23",
                  "https://youtu.be/qSmRp4gDcyE?feature=shared", "2011-04"),
              const SizedBox(height: 10),
              btn("https://youtu.be/1IZ2NWE_djI?feature=shared", "2012-31",
                  "https://youtu.be/XHe0CBOnxmA?feature=shared", "2013-16"),
              const SizedBox(height: 10),
              btn("https://youtu.be/qm8ZHw5_Nt4?feature=shared", "2014-05",
                  "https://youtu.be/av0U2Dbno7k?feature=shared", "2015-05"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/nL8Ad-Zc5Cc?feature=shared");
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
                      child: const Center(
                          child: Text(
                        "2017-09",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      interstitialAdq24();
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
                      child: const Center(
                          child: Text(
                        "2018-05",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              btn("https://youtu.be/GUG5FNmEhmk?feature=shared", "2020-36",
                  "https://youtu.be/JgJeE81oQR4?feature=shared", "2021-37"),
              const SizedBox(height: 20),
            ]),
          )),
    );
  }
}

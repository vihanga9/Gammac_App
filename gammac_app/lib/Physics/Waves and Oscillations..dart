import 'package:flutter/material.dart';
import 'package:gammac_app/Screens/Physics.dart';
import 'package:gammac_app/Screens/Subjects.dart';
import 'package:gammac_app/Services/admob.dart';
import 'package:gammac_app/Services/colors.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';

class Waves extends StatefulWidget {
  const Waves({super.key});
  @override
  State<StatefulWidget> createState() => _Waves();
}

class _Waves extends State<Waves> {
  late BannerAd _bottomBannerAd;
  InterstitialAd? interstitialAd;

  bool _isBottomBAnnerAdloaded = false;

  void createBottomBannerAd() {
    _bottomBannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: AdDisplay.bannerAdUnit_3,
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

  interstitialAdq13() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q13,
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
              _launchURL("https://youtu.be/BiyZ2Gaf6Lw?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq14() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q14,
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
              _launchURL("https://youtu.be/jNIwT-vY_yQ?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq15() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q15,
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
              _launchURL("https://youtu.be/WbH0dDIbtek?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq16() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q16,
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
              _launchURL("https://youtu.be/ZxzOSEFUbPk?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq17() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q17,
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
              _launchURL("https://youtu.be/EygdrSj48iI?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq18() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q18,
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
              _launchURL("https://youtu.be/mIB-MpwL3AQ?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq19() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q19,
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
              _launchURL("https://youtu.be/DWrePZqIeD4?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq20() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q20,
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
              _launchURL("https://youtu.be/vvbRa5XS-44?feature=shared");
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
              "Waves and Oscillations",
              style: TextStyle(
                fontSize: 23,
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
                    "Simple Harmonic Motion",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/Rq1uMml3lHQ?feature=shared", "2000-22",
                  "https://youtu.be/UI3Cxr-RUFo?t=12m55s", "2001-56"),
              const SizedBox(height: 10),
              btn("https://youtu.be/LxZA19qjqwM?feature=shared", "2002-37",
                  "https://youtu.be/UMLaECSrp8s?feature=shared", "2005-11"),
              const SizedBox(height: 10),
              btn("https://youtu.be/BWAq2e9FdvM?t=3m46s", "2006-04",
                  "https://youtu.be/BWAq2e9FdvM?t=4m46s", "2007-10"),
              const SizedBox(height: 10),
              btn("https://youtu.be/QI-gXC82teU?feature=shared", "2008-05",
                  "https://youtu.be/Z8soGhHJ9v4?feature=shared", "2009-38"),
              const SizedBox(height: 10),
              btn("https://youtu.be/FuxQoqP26Bo?feature=shared", "2011-03",
                  "https://youtu.be/oXmFoHzq_oE?feature=shared", "2015-12"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      interstitialAdq13();
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
                        "2016-35",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/DprmwTH0nnQ?feature=shared");
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
                        "2017-10",
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
              btn("https://youtu.be/d9wA9mF07oo?feature=shared", "2018-17",
                  "https://youtu.be/G5Xv1-UCsoA?feature=shared", "2019-34"),
              const SizedBox(height: 10),
              btn("https://youtu.be/xuEj3QfVcdA?feature=shared", "2020-16",
                  "https://youtu.be/cdtA5XNQWHQ?feature=shared", "2021-13"),
              const SizedBox(height: 10),
              btn("https://youtu.be/4cnTn6DTFkQ?feature=shared", "2022-17",
                  "https://youtu.be/vi-sPrfcA68?feature=shared", "2023-41"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Properties of Waves",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/gxdyEmUS5oE?t=3m07s", "2000-32",
                  "https://youtu.be/csqYIlbZRuM?feature=shared", "2002-43"),
              const SizedBox(height: 10),
              btn("https://youtu.be/XOB6lXOwwlA?feature=shared", "2003-12",
                  "https://youtu.be/gxdyEmUS5oE?t=7m12s", "2004-34"),
              const SizedBox(height: 10),
              btn("https://youtu.be/gxdyEmUS5oE?t=11m30s", "2005-14",
                  "https://youtu.be/WOGneifKYQM?feature=shared", "2006-17"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/gxdyEmUS5oE?t=13m30s");
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
                        "2006-31",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      interstitialAdq14();
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
                        "2006-54",
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
              btn("https://youtu.be/gxdyEmUS5oE?t=17m40s", "2007-32",
                  "https://youtu.be/ErYyNpaO3sQ?feature=shared", "2008-19"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Lynx017Ix-U?feature=shared", "2009-21",
                  "https://youtu.be/sywiNlP1P4E?feature=shared", "2010-10"),
              const SizedBox(height: 10),
              btn("https://youtu.be/SE6Jdb5x43U?feature=shared", "2011-17",
                  "https://youtu.be/CvxgTSDMq-I?feature=shared", "2012-30"),
              const SizedBox(height: 10),
              btn("https://youtu.be/iz0QcXfJJWI?feature=shared", "2013-02",
                  "https://youtu.be/TQYHhknwdFM?feature=shared", "2014-03"),
              const SizedBox(height: 10),
              btn("https://youtu.be/YgcOII9FaFk?feature=shared", "2020-07",
                  "https://youtu.be/AJb4D3HA3A0?feature=shared", "2020-09"),
              const SizedBox(height: 10),
              btn("https://youtu.be/rOeMZCPoOXA?feature=shared", "2021-03",
                  "https://youtu.be/dxwGM4M3E-Y?feature=shared", "2022-03"),
              const SizedBox(height: 10),
              btn1("https://youtu.be/fRmCGOmrNwI?feature=shared", "2023-05"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Transverse Waves",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/k7UAhKuMbCE?feature=shared", "2000-13",
                  "https://youtu.be/ir0GTqlT40M?t=3m15s", "2001-41"),
              const SizedBox(height: 10),
              btn("https://youtu.be/ir0GTqlT40M?t=4m58s", "2002-18",
                  "https://youtu.be/pJ7trTlU7q0?feature=shared", "2003-31"),
              const SizedBox(height: 10),
              btn("https://youtu.be/ir0GTqlT40M?t=7m55s", "2003-34",
                  "https://youtu.be/bR8L80I560A?feature=shared", "2004-33"),
              const SizedBox(height: 10),
              btn("https://youtu.be/ir0GTqlT40M?t=13m10s", "2005-05",
                  "https://youtu.be/7WB3qFRLdA8?feature=shared", "2008-04"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Ctth9pLy_20?feature=shared", "2008-18",
                  "https://youtu.be/9rbd2S8rdu4?feature=shared", "2009-42"),
              const SizedBox(height: 10),
              btn("https://youtu.be/NouCHA1bluM?feature=shared", "2009-56",
                  "https://youtu.be/MHfKGTQaZ5o?feature=shared", "2010-06"),
              const SizedBox(height: 10),
              btn("https://youtu.be/q8Uk_APxAKw?feature=shared", "2010-21",
                  "https://youtu.be/Ujhun8vGlkA?feature=shared", "2011-05"),
              const SizedBox(height: 10),
              btn("https://youtu.be/de4SfZRWEfg?feature=shared", "2013-15",
                  "https://youtu.be/XMT3zrj5JT8?feature=shared", "2014-04"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/jkpfZYtk_8A?feature=shared");
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
                        "2014-28",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      interstitialAdq15();
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
                        "2015-42",
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
              btn("https://youtu.be/lFK5uiCT0cs?feature=shared", "2016-09",
                  "https://youtu.be/N5FofJDAUdo?feature=shared", "2017-11"),
              const SizedBox(height: 10),
              btn("https://youtu.be/DT77nvBctQY?feature=shared", "2020-11",
                  "https://youtu.be/stmhlMR44Tc?feature=shared", "2021-09"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    " Speed of Sound",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/_lVFbf5kXzA?feature=shared", "2001-14",
                  "https://youtu.be/eqYl7Vr63Gk?feature=shared", "2002-03"),
              const SizedBox(height: 10),
              btn("https://youtu.be/NcI0uL6inUI?feature=shared", "2003-11",
                  "https://youtu.be/B23u0L7yKpg?feature=shared", "2004-35"),
              const SizedBox(height: 10),
              btn("https://youtu.be/n7hSJ8vbVVU?feature=shared", "2010-58",
                  "https://youtu.be/WD3uniSExXI?feature=shared", "2013-04"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      interstitialAdq16();
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
                        "2015-41",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/rRwcoJv_EXw?feature=shared");
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
                        "2017-06",
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
              btn("https://youtu.be/H1-zZv3dssk?feature=shared", "2018-04",
                  "https://youtu.be/hPF2POsjO7Y?feature=shared", "2019-11"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Longitudinal Waves",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/wS_YnHHlrc8?feature=shared", "2000-07",
                  "https://youtu.be/w9zFbv6PcDY?feature=shared", "2001-13"),
              const SizedBox(height: 10),
              btn("https://youtu.be/-GTdN0PlWm0?feature=shared", "2007-29",
                  "https://youtu.be/TSamOQJIqOY?feature=shared", "2011-22"),
              const SizedBox(height: 10),
              btn("https://youtu.be/trVzte1-pMg?feature=shared", "2011-23",
                  "https://youtu.be/Z-ZzWFFcVWo?feature=shared", "2012-28"),
              const SizedBox(height: 10),
              btn("https://youtu.be/crB8UflbHQ0?feature=shared", "2015-30",
                  "https://youtu.be/nEtheBjF1TQ?feature=shared", "2017-04"),
              const SizedBox(height: 10),
              btn("https://youtu.be/PdnwOQH2zFk?feature=shared", "2017-33",
                  "https://youtu.be/3hN-b5H2BLc?feature=shared", "2019-16"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      interstitialAdq17();
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
                        "2020-21",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/7yvq5yEy7Uk?feature=shared");
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
                        "2022-48",
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
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Doppler Effect",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/gfSqlrhwDKE?feature=shared", "2000-59",
                  "https://youtu.be/tYPts7tnRFo?t=10m18s", "2001-12"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Mjbg0skQrMI?feature=shared", "2002-19",
                  "https://youtu.be/jAULf4M4ULw?feature=shared", "2003-35"),
              const SizedBox(height: 10),
              btn("https://youtu.be/UdkkAtV5h4o?feature=shared", "2004-36",
                  "https://youtu.be/no0_YoZoY7Q?feature=shared", "2005-56"),
              const SizedBox(height: 10),
              btn("https://youtu.be/tYPts7tnRFo?t=18m52s", "2007-31",
                  "https://youtu.be/BfG-c1nZr1c?feature=shared", "2008-54"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Y-A9DOBT01o?feature=shared", "2009-54",
                  "https://youtu.be/KJ6hKy0gCbY?feature=shared", "2010-59"),
              const SizedBox(height: 10),
              btn("https://youtu.be/36ScDXoSF3E?feature=shared", "2011-06",
                  "https://youtu.be/Syeik604dZ4?feature=shared", "2012-29"),
              const SizedBox(height: 10),
              btn("https://youtu.be/gkWq6O6IRa0?feature=shared", "2013-22",
                  "https://youtu.be/gkWq6O6IRa0?feature=shared", "2014-47"),
              const SizedBox(height: 10),
              btn("https://youtu.be/ZHLOMD7brs0?feature=shared", "2015-47",
                  "https://youtu.be/zzUDNNagQQs?feature=shared", "2016-36"),
              const SizedBox(height: 10),
              btn("https://youtu.be/JFAJs_AcUpA?feature=shared", "2017-39",
                  "https://youtu.be/NwEvrDmM7YI?feature=shared", "2018-36"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      interstitialAdq18();
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
                        "2019-41",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/LWGoVOy9uGU?feature=shared");
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
                        "2021-39",
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
              btn1("https://youtu.be/EBRGuBKdE9A?feature=shared", "2022-12"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Sound Intensity",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/66PXp7Mv5qc?feature=shared", "2000-45",
                  "https://youtu.be/CuhPfhmAa-M?feature=shared", "2001-02"),
              const SizedBox(height: 10),
              btn("https://youtu.be/cqnp2RCglOQ?feature=shared", "2002-16",
                  "https://youtu.be/6YDO5PR09A4?feature=shared", "2002-17"),
              const SizedBox(height: 10),
              btn("https://youtu.be/w0i0gCFpLtU?t=7m55s", "2003-01",
                  "https://youtu.be/w0i0gCFpLtU?t=8m17s", "2005-22"),
              const SizedBox(height: 10),
              btn("https://youtu.be/2zkSw9WSVZw?feature=shared", "2006-41",
                  "https://youtu.be/Ae3RMrHBTGo?feature=shared", "2007-06"),
              const SizedBox(height: 10),
              btn("https://youtu.be/BegV55ZpGt0?feature=shared", "2008-30",
                  "https://youtu.be/OlPfaXo4ykM?feature=shared", "2009-44"),
              const SizedBox(height: 10),
              btn("https://youtu.be/uDYVvlzJdpA?feature=shared", "2010-22",
                  "https://youtu.be/X9qOO8sPlv4?feature=shared", "2012-08"),
              const SizedBox(height: 10),
              btn("https://youtu.be/aWmMZ7mdKEE?feature=shared", "2013-20",
                  "https://youtu.be/5exlkDpVyWE?feature=shared", "2014-18"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      interstitialAdq19();
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
                        "2015-04",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/IqAs3GtFs1s?feature=shared");
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
                        "2016-13",
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
              btn("https://youtu.be/BSE_1iaaiG0?feature=shared", "2018-18",
                  "https://youtu.be/g9KywX_IySw?feature=shared", "2020-03"),
              const SizedBox(height: 10),
              btn("https://youtu.be/dxwGM4M3E-Y?feature=shared", "2022-03",
                  "https://youtu.be/Gl8S1dOiWKg?feature=shared", "2022-26"),
              const SizedBox(height: 10),
              btn("https://youtu.be/0d9E7gmRZYg?feature=shared", "2023-13",
                  "https://youtu.be/imy1fKWQsho?feature=shared", "2023-24"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Electro Magnetic Waves",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/-VbuAthQ9Zk?t=8m33s", "2001-05",
                  "https://youtu.be/-VbuAthQ9Zk?t=10m02s", "2012-07"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/Wxcshwk7j8I?feature=shared");
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
                        "2016-04",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      interstitialAdq20();
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
                        "2016-18",
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
              btn("https://youtu.be/jTJwCb_c0FQ?feature=shared", "2018-03",
                  "https://youtu.be/xjGT0YNBq7c?feature=shared", "2019-07"),
              const SizedBox(height: 10),
              btn("https://youtu.be/aR2kFjcR_3I?feature=shared", "2019-10",
                  "https://youtu.be/AJb4D3HA3A0?feature=shared", "2020-01"),
              const SizedBox(height: 20),
            ]),
          )),
    );
  }
}

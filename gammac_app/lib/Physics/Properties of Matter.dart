import 'package:flutter/material.dart';
import 'package:gammac_app/Screens/Physics.dart';
import 'package:gammac_app/Screens/Subjects.dart';
import 'package:gammac_app/Services/admob.dart';
import 'package:gammac_app/Services/colors.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';

class Matter extends StatefulWidget {
  const Matter({super.key});
  @override
  State<StatefulWidget> createState() => _Matter();
}

class _Matter extends State<Matter> {
  late BannerAd _bottomBannerAd;
  InterstitialAd? interstitialAd;

  bool _isBottomBAnnerAdloaded = false;

  void createBottomBannerAd() {
    _bottomBannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: AdDisplay.bannerAdUnit_11,
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

  interstitialAdq46() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q46,
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
              _launchURL("https://youtu.be/pj6RFTnp8tY?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq47() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q47,
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
              _launchURL("https://youtu.be/iFw4G3HoiRM?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq48() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q48,
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
              _launchURL("https://youtu.be/qdIK9coD9s4?feature=shared");
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
            "Properties of Matter",
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
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Elasticity",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/KuDrG5T2e5s?feature=shared", "2000-16",
                  "https://youtu.be/78dae1Gl6GM?feature=shared", "2000-20"),
              const SizedBox(height: 10),
              btn("https://youtu.be/qVU2JGSGXTw?feature=shared", "2001-30",
                  "https://youtu.be/r0Pripz49IA?t=0m50s", "2001-55"),
              const SizedBox(height: 10),
              btn("https://youtu.be/9tzc85AH6e8?feature=shared", "2002-35",
                  "https://youtu.be/tbgHtBYbUBw?feature=shared", "2003-45"),
              const SizedBox(height: 10),
              btn("https://youtu.be/sTVQ0DWMrDg?feature=shared", "2004-29",
                  "https://youtu.be/VTTXfWegZzk?feature=shared", "2005-45"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Ilc4WXetLGI?feature=shared", "2006-48",
                  "https://youtu.be/uOh1K2fKHQ4?feature=shared", "2007-43"),
              const SizedBox(height: 10),
              btn("https://youtu.be/r0Pripz49IA?t=11m02s", "2007-48",
                  "https://youtu.be/ngQ67-K_a5Q?feature=shared", "2008-08"),
              const SizedBox(height: 10),
              btn("https://youtu.be/J08Wfe3Bdyo?feature=shared", "2008-14",
                  "https://youtu.be/rZiZyZRwYjs?feature=shared", "2009-59"),
              const SizedBox(height: 10),
              btn("https://youtu.be/loniBdiU_q8?feature=shared", "2010-30",
                  "https://youtu.be/BAH58AKkB1Y?feature=shared", "2011-26"),
              const SizedBox(height: 10),
              btn("https://youtu.be/8qDzCwNPRM4?feature=shared", "2012-04",
                  "https://youtu.be/t9y4bslH_6Y?feature=shared", "2013-33"),
              const SizedBox(height: 10),
              btn("https://youtu.be/C64B0F_aHsQ?feature=shared", "2014-42",
                  "https://youtu.be/Yk7CkAYTfp8?feature=shared", "2015-21"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/Gz18yWU3Gxk?feature=shared");
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
                        "2016-46",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      interstitialAdq46();
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
                        "2016-50",
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
              btn("https://youtu.be/cdyMkEbFHvQ?feature=shared", "2017-38",
                  "https://youtu.be/SpRaF9POZJM?feature=shared", "2018-30"),
              const SizedBox(height: 10),
              btn("https://youtu.be/ZvEzg9x2Mtw?feature=shared", "2019-14",
                  "https://youtu.be/ZOBFT9X8Mbo?feature=shared", "2020-39"),
              const SizedBox(height: 10),
              btn("https://youtu.be/1n1Gz3uu2GE?feature=shared", "2021-07",
                  "https://youtu.be/sJEKuF_NbpE?feature=shared", "2022-10"),
              const SizedBox(height: 10),
              btn1("https://youtu.be/i6rdxXM8bRs?feature=shared", "2023-37"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Surface Tension",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/4Tt9nqWBhOs?t=0m54s", "2000-23",
                  "https://youtu.be/4Tt9nqWBhOs?t=1m58s", "2001-31"),
              const SizedBox(height: 10),
              btn("https://youtu.be/4Tt9nqWBhOs?t=3m21s", "2002-34",
                  "https://youtu.be/4Tt9nqWBhOs?t=5m35s", "2003-43"),
              const SizedBox(height: 10),
              btn("https://youtu.be/byjBVVHfbfg?feature=shared", "2004-30",
                  "https://youtu.be/z-Mpaque87M?feature=shared", "2005-03"),
              const SizedBox(height: 10),
              btn("https://youtu.be/jjgumpOXXmc?feature=shared", "2006-47",
                  "https://youtu.be/4Tt9nqWBhOs?t=10m58s", "2007-01"),
              const SizedBox(height: 10),
              btn("https://youtu.be/E1dwnARLd-s?feature=shared", "2008-58",
                  "https://youtu.be/UTF5-1R6Zxk?feature=shared", "2009-31"),
              const SizedBox(height: 10),
              btn("https://youtu.be/jVYyJ0IlUDQ?feature=shared", "2010-29",
                  "https://youtu.be/7z-Yud9lXBI?feature=shared", "2011-40"),
              const SizedBox(height: 10),
              btn("https://youtu.be/ZIG_3cY3Ecs?feature=shared", "2012-14",
                  "https://youtu.be/fDGwCyZKCHU?feature=shared", "2013-31"),
              const SizedBox(height: 10),
              btn("https://youtu.be/cQeMH9hfrfQ?feature=shared", "2014-36",
                  "https://youtu.be/aXXpe2QPDMk?feature=shared", "2015-22"),
              const SizedBox(height: 10),
              btn("https://youtu.be/IBFVdC0Bnnw?feature=shared", "2016-08",
                  "https://youtu.be/Sbon-1xBlfc?feature=shared", "2018-22"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      interstitialAdq47();
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
                        "2018-44",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/_CTso7jIVAc?feature=shared");
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
                        "2020-45",
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
              btn("https://youtu.be/ESWYvlJnJQ4?feature=shared", "2022-43",
                  "https://youtu.be/lbJ8ZUnWCGU?feature=shared", "2023-34"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Viscosity",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/FWS0q3ptPY0?feature=shared", "2000-21",
                  "https://youtu.be/CunS0fH_vBQ?feature=shared", "2001-16"),
              const SizedBox(height: 10),
              btn("https://youtu.be/wMs0kVXVMOk?feature=shared", "2002-57",
                  "https://youtu.be/Mo2hJt2_e6g?feature=shared", "2003-44"),
              const SizedBox(height: 10),
              btn("https://youtu.be/fTxQKyzMvxY?feature=shared", "2004-54",
                  "https://youtu.be/UjGwfOqddqY?feature=shared", "2005-21"),
              const SizedBox(height: 10),
              btn("https://youtu.be/y-2HJm9lSKY?feature=shared", "2006-33",
                  "https://youtu.be/3mZ4CUcrCJA?t=6m50s", "2007-60"),
              const SizedBox(height: 10),
              btn("https://youtu.be/QFjq2yUCg6Y?feature=shared", "2008-15",
                  "https://youtu.be/svAWwGxRmIM?feature=shared", "2009-32"),
              const SizedBox(height: 10),
              btn("https://youtu.be/f1g-7tWysGg?feature=shared", "2010-45",
                  "https://youtu.be/qHoQ6BL7-l0?feature=shared", "2011-19"),
              const SizedBox(height: 10),
              btn("https://youtu.be/_MgwfTvPYKs?feature=shared", "2012-44",
                  "https://youtu.be/lBIEb8xoQFY?feature=shared", "2013-05"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/saCFRHMAlzA?feature=shared");
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
                        "2014-35",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      interstitialAdq48();
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
                        "2015-32",
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
              btn("https://youtu.be/xTqqBtOjz_Q?feature=shared", "2016-14",
                  "https://youtu.be/J2NKp5AvReY?feature=shared", "2016-41"),
              const SizedBox(height: 10),
              btn("https://youtu.be/p5mpHB0NgdE?feature=shared", "2017-28",
                  "https://youtu.be/XO7Q-k3JObE?feature=shared", "2017-43"),
              const SizedBox(height: 10),
              btn("https://youtu.be/NrsQsSQgEtA?feature=shared", "2018-31",
                  "https://youtu.be/WpMW2PHRvN0?feature=shared", "2019-23"),
              const SizedBox(height: 10),
              btn("https://youtu.be/xhqDrxm89Ng?feature=shared", "2020-42",
                  "https://youtu.be/omyfwl0kj7c?feature=shared", "2021-26"),
              const SizedBox(height: 10),
              btn("https://youtu.be/locHKS6xcWM?feature=shared", "2022-14",
                  "https://youtu.be/guhZ14nWvdo?feature=shared", "2023-26"),
              const SizedBox(height: 10),
              btn1("https://youtu.be/ANOc5snVDVU?feature=shared", "2023-49"),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

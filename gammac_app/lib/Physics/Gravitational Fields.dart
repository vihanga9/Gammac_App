import 'package:flutter/material.dart';
import 'package:gammac_app/Screens/Physics.dart';
import 'package:gammac_app/Screens/Subjects.dart';
import 'package:gammac_app/Services/admob.dart';
import 'package:gammac_app/Services/colors.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';

class Gravity extends StatefulWidget {
  const Gravity({super.key});
  @override
  State<StatefulWidget> createState() => _Gravity();
}

class _Gravity extends State<Gravity> {
  late BannerAd _bottomBannerAd;
  InterstitialAd? interstitialAd;

  bool _isBottomBAnnerAdloaded = false;

  void createBottomBannerAd() {
    _bottomBannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: AdDisplay.bannerAdUnit_6,
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

  interstitialAdq25() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q25,
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
              _launchURL("https://youtu.be/na3oiWI25Y0?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq26() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q26,
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
              _launchURL("https://youtu.be/5AVJuz14CX8?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq27() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q27,
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
              _launchURL("https://youtu.be/CDdbyxLOB_k?feature=shared");
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
            "Gravitational Fields",
            style: TextStyle(
              fontSize: 28,
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
                    "Gravitational Fields",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/VU_hgRgm1nQ?t=11m40s", "2000-32",
                  "https://youtu.be/NYd-CAjZZww?feature=shared", "2001-08"),
              const SizedBox(height: 10),
              btn("https://youtu.be/m4-y_XA88uU?feature=shared", "2003-42",
                  "https://youtu.be/TCbZii3RhOc?feature=shared", "2004-38"),
              const SizedBox(height: 10),
              btn("https://youtu.be/QBzlotCWwBc?feature=shared", "2006-23",
                  "https://youtu.be/4ZDMVIzNQN4?feature=shared", "2006-53"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/vZ_Fd3L_7VE?feature=shared");
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
                        "2007-14",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      interstitialAdq25();
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
                        "2008-60",
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
              btn("https://youtu.be/TCr3eGq6Ccg?feature=shared", "2009-25",
                  "https://youtu.be/jGbmKKHgtVk?feature=shared", "2010-25"),
              const SizedBox(height: 10),
              btn("https://youtu.be/5anFLmp5vpE?feature=shared", "2011-09",
                  "https://youtu.be/j61NHWS6OlE?feature=shared", "2012-02"),
              const SizedBox(height: 10),
              btn("https://youtu.be/aChzQ2UA7BQ?feature=shared", "2013-21",
                  "https://youtu.be/CnbyICabNuY?feature=shared", "2014-45"),
              const SizedBox(height: 10),
              btn("https://youtu.be/IoaOnIMzHAU?feature=shared", "2015-38",
                  "https://youtu.be/4bSqA6fVFfM?feature=shared", "2016-23"),
              const SizedBox(height: 10),
              btn("https://youtu.be/jPclTLYVzrQ?feature=shared", "2018-11",
                  "https://youtu.be/xqDBDShlB34?feature=shared", "2019-05"),
              const SizedBox(height: 10),
              btn("https://youtu.be/CuvWRTrnYRA?feature=shared", "2019-22",
                  "https://youtu.be/8aGGYiE1q4M?feature=shared", "2020-10"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      interstitialAdq26();
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
                        "2020-48",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      interstitialAdq27();
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
                        "2021-20",
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
              btn("https://youtu.be/FZ43pji3NLs?feature=shared", "2022-49",
                  "https://youtu.be/eum_SFFsE7E?feature=shared", "2023-02"),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

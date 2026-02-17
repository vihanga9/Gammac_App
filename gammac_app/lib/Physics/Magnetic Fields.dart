import 'package:flutter/material.dart';
import 'package:gammac_app/Screens/Physics.dart';
import 'package:gammac_app/Screens/Subjects.dart';
import 'package:gammac_app/Services/admob.dart';
import 'package:gammac_app/Services/colors.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';

class Magnetic extends StatefulWidget {
  const Magnetic({super.key});
  @override
  State<StatefulWidget> createState() => _Magnetic();
}

class _Magnetic extends State<Magnetic> {
  late BannerAd _bottomBannerAd;
  InterstitialAd? interstitialAd;

  bool _isBottomBAnnerAdloaded = false;

  void createBottomBannerAd() {
    _bottomBannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: AdDisplay.bannerAdUnit_8,
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

  interstitialAdq36() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q36,
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
              _launchURL("https://youtu.be/SwtAZcBwR1s?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq37() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q37,
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
              _launchURL("https://youtu.be/_QGSOntY0gM?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq38() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q38,
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
              _launchURL("https://youtu.be/-8jmtoLBX-M?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq39() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q39,
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
              _launchURL("https://youtu.be/UBBIT0-wtSc?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq40() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q40,
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
              _launchURL("https://youtu.be/TmQJRbLaru8?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq41() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q41,
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
              _launchURL("https://youtu.be/XKsKlPFWP50?feature=shared");
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
              "Magnetic Fields",
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
                height: 125,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Forces on Current Conductors in Bar Magnets and Fields",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/uHxyAUW2VPM?feature=shared", "2002-27",
                  "https://youtu.be/85tAzormJrs?feature=shared", "2004-15"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      interstitialAdq36();
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
                        "2006-19",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      interstitialAdq37();
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
                        "2008-36",
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
              btn("https://youtu.be/fDGwCyZKCHU?feature=shared", "2013-31",
                  "https://youtu.be/XsAt4UEVWdg?feature=shared", "2016-27"),
              const SizedBox(height: 10),
              btn("https://youtu.be/1hJ8NNEq9Cw?feature=shared", "2019-44",
                  "https://youtu.be/aiEEdcsxmpI?feature=shared", "2021-33"),
              const SizedBox(height: 10),
              btn("https://youtu.be/-ZMMb5aZfuE?feature=shared", "2022-04",
                  "https://youtu.be/bat8HoZ_uLo?feature=shared", "2023-25"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Magnetic Effect of Current",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/XFeorl-AZgc?feature=shared", "2000-12",
                  "https://youtu.be/vEtHj6q_Pi4?t=10m12s", "2000-34"),
              const SizedBox(height: 10),
              btn("https://youtu.be/49HOin_LLLU?t=0m37s", "2001-25",
                  "https://youtu.be/JkOfOl7Ot3I?feature=shared", "2001-26"),
              const SizedBox(height: 10),
              btn("https://youtu.be/oiMrYUnfb4s?feature=shared", "2001-58",
                  "https://youtu.be/49HOin_LLLU?t=4m15s", "2003-52"),
              const SizedBox(height: 10),
              btn("https://youtu.be/49HOin_LLLU?t=6m01s", "2003-53",
                  "https://youtu.be/49HOin_LLLU?t=8m16s", "2004-53"),
              const SizedBox(height: 10),
              btn("https://youtu.be/49HOin_LLLU?t=8m57s", "2004-58",
                  "https://youtu.be/mDZInJ72Y_k?feature=shared", "2005-47"),
              const SizedBox(height: 10),
              btn("https://youtu.be/49HOin_LLLU?t=12m11s", "2006-16",
                  "https://youtu.be/OP4dcbnM3ig?feature=shared", "2009-24"),
              const SizedBox(height: 10),
              btn("https://youtu.be/HxZKf_mJJqE?feature=shared", "2009-58",
                  "https://youtu.be/mmb_0QnPwGA?feature=shared", "2010-24"),
              const SizedBox(height: 10),
              btn("https://youtu.be/-OF_ZHY3Zjs?feature=shared", "2010-34",
                  "https://youtu.be/U_ECZhmZLMk?feature=shared", "2011-28"),
              const SizedBox(height: 10),
              btn("https://youtu.be/eiEx2PLXUGc?feature=shared", "2012-49",
                  "https://youtu.be/eiEx2PLXUGc?feature=shared", "2013-38"),
              const SizedBox(height: 10),
              btn("https://youtu.be/rIThrlbVtQU?feature=shared", "2014-27",
                  "https://youtu.be/IGONLD4t5Sk?feature=shared", "2014-29"),
              const SizedBox(height: 10),
              btn("https://youtu.be/eKkqYi8b8Rw?feature=shared", "2015-49",
                  "https://youtu.be/fZBu_SvbBPQ?feature=shared", "2016-49"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      interstitialAdq38();
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
                        "2018-48",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      interstitialAdq39();
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
                        "2019-20",
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
              btn("https://youtu.be/Ybyjz2dRk1E?feature=shared", "2019-48",
                  "https://youtu.be/tf6DAHzXAXI?feature=shared", "2020-12"),
              const SizedBox(height: 10),
              btn("https://youtu.be/nXSU-lYtcDQ?feature=shared", "2021-34",
                  "https://youtu.be/LYzjmQ3rU9g?feature=shared", "2021-44"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Charged Particles in Force Fields",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/cCC3hj_x674?t=6m25s", "2000-15",
                  "https://youtu.be/cCC3hj_x674?t=8m14s", "2000-40"),
              const SizedBox(height: 10),
              btn("https://youtu.be/cCC3hj_x674?t=9m18s", "2005-30",
                  "https://youtu.be/cCC3hj_x674?t=11m55s", "2007-37"),
              const SizedBox(height: 10),
              btn("https://youtu.be/NP_UWQyG7nc?feature=shared", "2008-28",
                  "https://youtu.be/MiV9qsSSI-8?feature=shared", "2009-10"),
              const SizedBox(height: 10),
              btn("https://youtu.be/S8igQpHo4Gw?feature=shared", "2010-47",
                  "https://youtu.be/Bzr1i8wMge0?feature=shared", "2011-35"),
              const SizedBox(height: 10),
              btn("https://youtu.be/IGONLD4t5Sk?feature=shared", "2014-29",
                  "https://youtu.be/UtjhMaQ6OrY?feature=shared", "2015-23"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      interstitialAdq40();
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
                        "2020-37",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      interstitialAdq41();
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
                        "2020-44",
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
              btn("https://youtu.be/SlOoSgtIers?feature=shared", "2022-45",
                  "https://youtu.be/iDvGLTlnrXk?feature=shared", "2023-21"),
              const SizedBox(height: 20),
            ]),
          )),
    );
  }
}

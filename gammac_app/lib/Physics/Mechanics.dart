import 'package:flutter/material.dart';
import 'package:gammac_app/Screens/Physics.dart';
import 'package:gammac_app/Screens/Subjects.dart';
import 'package:gammac_app/Services/admob.dart';
import 'package:gammac_app/Services/colors.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';

class Mechanics extends StatefulWidget {
  const Mechanics({super.key});
  @override
  State<StatefulWidget> createState() => _Mechanics();
}

class _Mechanics extends State<Mechanics> {
  late BannerAd _bottomBannerAd;
  InterstitialAd? interstitialAd;

  bool _isBottomBAnnerAdloaded = false;

  void createBottomBannerAd() {
    _bottomBannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: AdDisplay.bannerAdUnit_2,
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

  interstitialAdq3() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q3,
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
              _launchURL("https://youtu.be/ZJBQ-WTGJeE?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq4() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q4,
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
              _launchURL("https://youtu.be/TSRksy-gQ80?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq5() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q5,
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
              _launchURL("https://youtu.be/QpL_bE_22Yo?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq6() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q6,
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
              _launchURL("https://youtu.be/IebsEAGy-Rw?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq7() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q7,
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
              _launchURL("https://youtu.be/ZlwzSaGtGbc?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq8() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q8,
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
              _launchURL("https://youtu.be/tRGPtaXLiqg?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq9() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q9,
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
              _launchURL("https://youtu.be/ZrZOEXnGOJA?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq10() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q10,
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
              _launchURL("https://youtu.be/1qfDQHnXRVA?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq11() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q11,
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
              _launchURL("https://youtu.be/PpSb6N6mSzg?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq12() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q12,
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
              _launchURL("https://youtu.be/HiYLF1tK-LU?feature=shared");
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
            "Mechanics",
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
                    "Motion Graphs",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/ch_j-uLVy28?feature=shared", "2000-28",
                  "https://youtu.be/CgvPkbPDCvs?feature=shared", "2001-57"),
              const SizedBox(height: 10),
              btn("https://youtu.be/J79bArVRDzU?feature=shared", "2002-38",
                  "https://youtu.be/PicoYHGClWQ?feature=shared", "2003-06"),
              const SizedBox(height: 10),
              btn("https://youtu.be/tjGVGKWqpAY?feature=shared", "2003-49",
                  "https://youtu.be/WXwBtHqQt9w?feature=shared", "2004-47"),
              const SizedBox(height: 10),
              btn("https://youtu.be/7DUiAzI8Lyw?t=10m54s", "2006-12",
                  "https://youtu.be/11g4LqHtp7k?t=37m40s", "2006-14"),
              const SizedBox(height: 10),
              btn("https://youtu.be/7DUiAzI8Lyw?t=14m00s", "2007-22",
                  "https://youtu.be/X5TXSIPvKPY?feature=shared", "2008-16"),
              const SizedBox(height: 10),
              btn("https://youtu.be/k_ZRFYnVF8g?feature=shared", "2009-07",
                  "https://youtu.be/XYC0OegIcYs?feature=shared", "2011-15"),
              const SizedBox(height: 10),
              btn("https://youtu.be/H-IS1L0DTbM?feature=shared", "2012-23",
                  "https://youtu.be/c-eX81zYE3w?feature=shared", "2012-42"),
              const SizedBox(height: 10),
              btn("https://youtu.be/FC2EnmqHXiQ?feature=shared", "2013-08",
                  "https://youtu.be/fuKEexqfWaY?feature=shared", "2015-13"),
              const SizedBox(height: 10),
              btn("https://youtu.be/g5RYs6HcFLM?feature=shared", "2015-17",
                  "https://youtu.be/13NbmmajLIU?feature=shared", "2016-16"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      interstitialAdq3();
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
                        "2017-22",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/thcuRSaruY0?feature=shared");
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
                        "2019-31",
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
              btn("https://youtu.be/0KEO0i3Bt5U?feature=shared", "2019-40",
                  "https://youtu.be/wRWL0blzLYk?feature=shared", "2020-19"),
              const SizedBox(height: 10),
              btn("https://youtu.be/gSePMMWstUk?feature=shared", "2021-12",
                  "https://youtu.be/ircSuRW03-4?feature=shared", "2021-48"),
              const SizedBox(height: 10),
              btn("https://youtu.be/2ReaCQYxyNc?feature=shared", "2022-09",
                  "https://youtu.be/LLOPVy8Fp0Y?feature=shared", "2022-19"),
              const SizedBox(height: 10),
              btn1("https://youtu.be/OnPWA4rfOEg?feature=shared", "2022-24"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Equilibrium of Forces",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/KAgWmzQL8cU?feature=shared", "2001-22",
                  "https://youtu.be/bpxa8Uox6os?t=1m20s", "2001-23"),
              const SizedBox(height: 10),
              btn("https://youtu.be/T1ljOj91Pc4?feature=shared", "2001-34",
                  "https://youtu.be/JZE1f31XUXE?feature=shared", "2001-40"),
              const SizedBox(height: 10),
              btn("https://youtu.be/T4wc_Nx2eCQ?feature=shared", "2002-39",
                  "https://youtu.be/qROYVjFW3Ng?feature=shared", "2003-48"),
              const SizedBox(height: 10),
              btn("https://youtu.be/s8c_iUJc_tU?t=10m04s", "2004-31",
                  "https://youtu.be/YETTAUibjr4?feature=shared", "2005-29"),
              const SizedBox(height: 10),
              btn("https://youtu.be/yAKZLG4ua-g?feature=shared", "2006-08",
                  "https://youtu.be/s8c_iUJc_tU?t=14m08s", "2006-35"),
              const SizedBox(height: 10),
              btn("https://youtu.be/r_b_0WCKaqY?feature=shared", "2007-08",
                  "https://youtu.be/EvigmJA_c-w?feature=shared", "2007-25"),
              const SizedBox(height: 10),
              btn("https://youtu.be/St65ke1v9S8?t=5m55s", "2007-50",
                  "https://youtu.be/pedV7hC5h4w?feature=shared", "2011-36"),
              const SizedBox(height: 10),
              btn("https://youtu.be/laTMTKT6bb0?feature=shared", "2013-26",
                  "https://youtu.be/bJJQdus_Lyg?feature=shared", "2014-14"),
              const SizedBox(height: 10),
              btn("https://youtu.be/OwyjL5zMmTY?feature=shared", "2015-07",
                  "https://youtu.be/iFh4O6QRLzw?feature=shared", "2015-08"),
              const SizedBox(height: 10),
              btn("https://youtu.be/urxn07hkqS0?feature=shared", "2017-24",
                  "https://youtu.be/wRVCBEgZlJY?feature=shared", "2018-12"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/0jes6jxlxs8?feature=shared");
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
                        "2018-28",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      interstitialAdq4();
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
                        "2018-46",
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
              btn("https://youtu.be/pVPcK5-_PGY?feature=shared", "2022-02",
                  "https://youtu.be/-nf8asFFnro?feature=shared", "2023-04"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Centre of Gravity",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/mDSJcPDY8UQ?t=4m55s", "2000-10",
                  "https://youtu.be/fN_sg5ByFR4?feature=shared", "2001-04"),
              const SizedBox(height: 10),
              btn("https://youtu.be/mDSJcPDY8UQ?t=6m30s", "2002-40",
                  "https://youtu.be/TvM9nXGBaqE?feature=shared", "2003-14"),
              const SizedBox(height: 10),
              btn("https://youtu.be/xSFmkVc1lWM?feature=shared", "2004-04",
                  "https://youtu.be/FYQsGINF3vk?feature=shared", "2005-04"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Inbkavfgbo8?feature=shared", "2007-27",
                  "https://youtu.be/9XAEnSFVFlc?feature=shared", "2008-43"),
              const SizedBox(height: 10),
              btn("https://youtu.be/3bTGM-BeKsU?feature=shared", "2009-37",
                  "https://youtu.be/yninKrRkx2s?feature=shared", "2012-03"),
              const SizedBox(height: 10),
              btn("https://youtu.be/M5WXrW363yU?feature=shared", "2015-14",
                  "https://youtu.be/p56sipMasB4?feature=shared", "2016-33"),
              const SizedBox(height: 10),
              btn("https://youtu.be/w048zehCeqg?feature=shared", "2017-03",
                  "https://youtu.be/z78cGhQHiFA?feature=shared", "2018-15"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      interstitialAdq5();
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
                        "2020-19",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/hI3a8zJq9i8?feature=shared");
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
                        "2021-24",
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
              btn("https://youtu.be/283jbd5dueg?feature=shared", "2022-22",
                  "https://youtu.be/tRy7J0Js2lQ?t=2m26s", "2023-22"),
              const SizedBox(height: 10),
              SizedBox(
                height: 90,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Newton's Law and Momentum",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/eKIAmezioj0?feature=shared", "2000-04",
                  "https://youtu.be/u9tqvtBVFrY?feature=shared", "2000-49"),
              const SizedBox(height: 10),
              btn("https://youtu.be/ifasnITKkHc?t=00m44s", "2001-24",
                  "https://youtu.be/-v-00J0_Apw?feature=shared", "2002-13"),
              const SizedBox(height: 10),
              btn("https://youtu.be/BB2JmDQO-5Y?feature=shared", "2003-05",
                  "https://youtu.be/2j8ibKz-4sg?feature=shared", "2003-46"),
              const SizedBox(height: 10),
              btn("https://youtu.be/cmEr7FyNfYs?feature=shared", "2004-09",
                  "https://youtu.be/bgS1dmDBI64?feature=shared", "2006-22"),
              const SizedBox(height: 10),
              btn("https://youtu.be/ifasnITKkHc?t=6m42s", "2006-24",
                  "https://youtu.be/ZeP-5Abv5mg?feature=shared", "2008-02"),
              const SizedBox(height: 10),
              btn("https://youtu.be/NkBdiVkkaHc?feature=shared", "2008-32",
                  "https://youtu.be/nz48FOkCPkk?feature=shared", "2008-53"),
              const SizedBox(height: 10),
              btn("https://youtu.be/l9RuoY7cDgM?feature=shared", "2009-28",
                  "https://youtu.be/dl7hZ5EA8vg?feature=shared", "2010-31"),
              const SizedBox(height: 10),
              btn("https://youtu.be/ztSqHJBrE_Y?feature=shared", "2010-53",
                  "https://youtu.be/K5Vf3UHfDbs?feature=shared", "2011-12"),
              const SizedBox(height: 10),
              btn("https://youtu.be/xCTsUAahmPc?feature=shared", "2012-20",
                  "https://youtu.be/OSBWs5ytcd4?feature=shared", "2014-15"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Nlphxg9s150?feature=shared", "2014-41",
                  "https://youtu.be/3z9fthSDzRY?feature=shared", "2015-28"),
              const SizedBox(height: 10),
              btn("https://youtu.be/sZzvTEdqBWc?feature=shared", "2015-46",
                  "https://youtu.be/9htnqEz7WdY?feature=shared", "2016-15"),
              const SizedBox(height: 10),
              btn("https://youtu.be/XGIQlbJOP8U?feature=shared", "2016-29",
                  "https://youtu.be/9hDVGbDrxrQ?feature=shared", "2016-47"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      interstitialAdq6();
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
                        "2017-50",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/v347TQ1rO80?feature=shared");
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
                        "2018-13",
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
              btn("https://youtu.be/_xccuoFpIYg?feature=shared", "2018-16",
                  "https://youtu.be/9dyolICU64w?feature=shared", "2019-35"),
              const SizedBox(height: 10),
              btn("https://youtu.be/TM4Ft7sbB8c?feature=shared", "2020-23",
                  "https://youtu.be/PiUAdR0go7Q?feature=shared", "2020-30"),
              const SizedBox(height: 10),
              btn("https://youtu.be/t9FRve6hKFU?feature=shared", "2020-49",
                  "https://youtu.be/pKrXGpXbD68?feature=shared", "2021-04"),
              const SizedBox(height: 10),
              btn("https://youtu.be/6ewrHGhgN1k?feature=shared", "2021-06",
                  "https://youtu.be/8oxE6r8AdW8?feature=shared", "2021-16"),
              const SizedBox(height: 10),
              btn("https://youtu.be/8MsdO20ABpU?feature=shared", "2021-18",
                  "https://youtu.be/1RQ2vDRo2Tg?feature=shared", "2022-18"),
              const SizedBox(height: 10),
              btn("https://youtu.be/sOKpqShsv7Y?feature=shared", "2023-03",
                  "https://youtu.be/lhiV1bXtucE?feature=shared", "2023-16"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Friction",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/-v0hhKnaHHA?feature=shared", "2000-51",
                  "https://youtu.be/wvGtrQG0xWU?feature=shared", "2004-10"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Q5uBR_mkZb4?feature=shared", "2005-27",
                  "https://youtu.be/mSQjODo2Vck?feature=shared", "2008-07"),
              const SizedBox(height: 10),
              btn("https://youtu.be/U1Es6TEBKOo?feature=shared", "2008-20",
                  "https://youtu.be/bQFAXtqOSmg?feature=shared", "2009-51"),
              const SizedBox(height: 10),
              btn("https://youtu.be/m-rEaf2vdTY?feature=shared", "2010-20",
                  "https://youtu.be/zM31YGcASoQ?feature=shared", "2011-50"),
              const SizedBox(height: 10),
              btn("https://youtu.be/87qA6z_Mzl0?feature=shared", "2013-11",
                  "https://youtu.be/0k6u4c8XTCc?feature=shared", "2013-48"),
              const SizedBox(height: 10),
              btn("https://youtu.be/TKoxUoqLbk8?feature=shared", "2014-38",
                  "https://youtu.be/G-lkAvI0eEs?feature=shared", "2017-46"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      interstitialAdq7();
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
                        "2018-14",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/CSOZ9VEhLQ8?feature=shared");
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
                        "2022-20",
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
              btn1("https://youtu.be/J6M7u_oUQx4?feature=shared", "2023-44"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Energy and Power",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/FE8AD-wiOSI?t=3m24s", "2000-05",
                  "https://youtu.be/FE8AD-wiOSI?t=4m41s", "2001-03"),
              const SizedBox(height: 10),
              btn("https://youtu.be/FE8AD-wiOSI?t=5m45s", "2003-04",
                  "https://youtu.be/j23nnHmblzA?feature=shared", "2003-26"),
              const SizedBox(height: 10),
              btn("https://youtu.be/5iopJEWCBJc?feature=shared", "2004-08",
                  "https://youtu.be/XlR9GqrcLSs?feature=shared", "2005-28"),
              const SizedBox(height: 10),
              btn("https://youtu.be/dhZHeBab1WM?t=00m40s", "2005-51",
                  "https://youtu.be/PX6uIDPhqac?feature=shared", "2006-36"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Foe9zDRd654?feature=shared", "2007-23",
                  "https://youtu.be/gKpQgRhKcTc?feature=shared", "2007-26"),
              const SizedBox(height: 10),
              btn("https://youtu.be/n1HsNE28zcs?feature=shared", "2008-31",
                  "https://youtu.be/1Z5ncTuapGs?feature=shared", "2010-19"),
              const SizedBox(height: 10),
              btn("https://youtu.be/CBwK8uanLSs?feature=shared", "2011-39",
                  "https://youtu.be/-PfYdJjJ76k?feature=shared", "2012-21"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Okuqa6fRb6k?feature=shared", "2013-07",
                  "https://youtu.be/f6JG0F0angk?feature=shared", "2013-50"),
              const SizedBox(height: 10),
              btn("https://youtu.be/T_5-EgLsYBY?feature=shared", "2016-17",
                  "https://youtu.be/P3V-CxFvZco?feature=shared", "2017-23"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/AlSqLmNsizA?feature=shared");
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
                        "2019-09",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      interstitialAdq8();
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
                        "2019-36",
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
              btn("https://youtu.be/LEBiOY8Kxc8?feature=shared", "2020-49",
                  "https://youtu.be/RN8zbJhabt8?feature=shared", "2022-27"),
              const SizedBox(height: 10),
              btn("https://youtu.be/99WkXSvVCaA?feature=shared", "2023-17",
                  "https://youtu.be/6pcV3U0zaaA?feature=shared", "2023-32"),
              const SizedBox(height: 10),
              btn1("https://youtu.be/j6E2ExtD4o8?feature=shared", "2023-45"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Rotational Motion",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/7WihDjDFR00?feature=shared", "2000-27",
                  "https://youtu.be/OzuzvYEOPTk?t=9m29s", "2002-47"),
              const SizedBox(height: 10),
              btn("https://youtu.be/krwI9Sx7IsQ?t=0m36s", "2003-30",
                  "https://youtu.be/jCEoVVO34zA?feature=shared", "2004-18"),
              const SizedBox(height: 10),
              btn("https://youtu.be/TbYqEm4LJr8?feature=shared", "2005-38",
                  "https://youtu.be/6g-Ujxzs9Ps?t=9m10s", "2006-55"),
              const SizedBox(height: 10),
              btn("https://youtu.be/6g-Ujxzs9Ps?t=12m02s", "2007-24",
                  "https://youtu.be/1C7o96kz-Lw?feature=shared", "2007-28"),
              const SizedBox(height: 10),
              btn("https://youtu.be/oZ0RJiSW-No?feature=shared", "2007-44",
                  "https://youtu.be/krwI9Sx7IsQ?t=09m33s", "2007-49"),
              const SizedBox(height: 10),
              btn("https://youtu.be/GBTsE8IQg2Y?feature=shared", "2008-59",
                  "https://youtu.be/S37g_SHLRqA?feature=shared", "2009-11"),
              const SizedBox(height: 10),
              btn("https://youtu.be/ZkZZfk5LnI4?feature=shared", "2009-41",
                  "https://youtu.be/jDCOjriSZ0s?feature=shared", "2009-60"),
              const SizedBox(height: 10),
              btn("https://youtu.be/01hcAVxOpMw?feature=shared", "2010-08",
                  "https://youtu.be/Uv8r7vVTByA?feature=shared", "2010-17"),
              const SizedBox(height: 10),
              btn("https://youtu.be/CY_MT6v3WjA?feature=shared", "2010-18",
                  "https://youtu.be/sIs9qPIkPxk?feature=shared", "2010-32"),
              const SizedBox(height: 10),
              btn("https://youtu.be/6mvwnDJeqgE?feature=shared", "2011-13",
                  "https://youtu.be/fre5FM-bn4A?feature=shared", "2011-38"),
              const SizedBox(height: 10),
              btn("https://youtu.be/A4uJwcIA7hg?feature=shared", "2012-24",
                  "https://youtu.be/cldNn08MFPk?feature=shared", "2012-43"),
              const SizedBox(height: 10),
              btn("https://youtu.be/j3eJKPqbEy8?feature=shared", "2013-10",
                  "https://youtu.be/sPNGHgs10ws?feature=shared", "2014-09"),
              const SizedBox(height: 10),
              btn("https://youtu.be/kqIBoQEg4vQ?feature=shared", "2014-16",
                  "https://youtu.be/TYpFQmnYRPE?feature=shared", "2014-50"),
              const SizedBox(height: 10),
              btn("https://youtu.be/gAwqLauCoBs?feature=shared", "2015-34",
                  "https://youtu.be/jw8bdQq3UiM?feature=shared", "2015-35"),
              const SizedBox(height: 10),
              btn("https://youtu.be/8kjHDrA2cFc?feature=shared", "2016-30",
                  "https://youtu.be/TE7G6FGqmsQ?feature=shared", "2016-32"),
              const SizedBox(height: 10),
              btn("https://youtu.be/8k1Ldx8pcg4?feature=shared", "2017-16",
                  "https://youtu.be/UwiZNG77ZOw?feature=shared", "2017-44"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/QBibdAS_D0Y?feature=shared");
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
                        "2018-34",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      interstitialAdq9();
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
                        "2018-35",
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
              btn("https://youtu.be/OBsTGIE0ahg?feature=shared", "2019-25",
                  "https://youtu.be/kRCrYIuuBD0?feature=shared", "2020-05"),
              const SizedBox(height: 10),
              btn("https://youtu.be/s7ZqBjbewbI?t=22m45s", "2021-15",
                  "https://youtu.be/ykCckOJsJaA?feature=shared", "2021-38"),
              const SizedBox(height: 10),
              btn("https://youtu.be/JkqkyIi75K4?feature=shared", "2022-35",
                  "https://youtu.be/A61yh29OxG0?feature=shared", "2023-50"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Circular Motion",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/YZ5wXtNxZS4?t=39m45s", "2000-42",
                  "https://youtu.be/N5zqz-_Q0Bo?feature=shared", "2001-33"),
              const SizedBox(height: 10),
              btn("https://youtu.be/etqUNjExSco?feature=shared", "2001-35",
                  "https://youtu.be/YZ5wXtNxZS4?t=4m50s", "2003-29"),
              const SizedBox(height: 10),
              btn("https://youtu.be/-ppmiQ2gEyA?feature=shared", "2004-57",
                  "https://youtu.be/RMRCpOtKZRg?feature=shared", "2005-42"),
              const SizedBox(height: 10),
              btn("https://youtu.be/u1bXXcR1WXI?t=15m01s", "2005-57",
                  "https://youtu.be/gScnKthAe0o?feature=shared", "2006-52"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Qo_Qbj0QiPk?feature=shared", "2008-47",
                  "https://youtu.be/oNb9Q3_MbdU?feature=shared", "2008-52"),
              const SizedBox(height: 10),
              btn("https://youtu.be/gExIc1xXGHc?feature=shared", "2012-22",
                  "https://youtu.be/t_2VUApB1mQ?feature=shared", "2013-09"),
              const SizedBox(height: 10),
              btn("https://youtu.be/3RO_UQyatLc?feature=shared", "2013-43",
                  "https://youtu.be/GMJyx2ufyEA?feature=shared", "2014-43"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/K5vG16J0ie0?feature=shared");
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
                        "2019-08",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      interstitialAdq10();
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
                        "2019-50",
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
              btn("https://youtu.be/A5ZA5-Ms4dI?feature=shared", "2022-25",
                  "https://youtu.be/F8rdVCZ1jhA?feature=shared", "2023-19"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Hydrostatics",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/_ow-DlXdXNo?feature=shared", "2000-50",
                  "https://youtu.be/Ab50WQg_yLY?t=14m03s", "2001-39"),
              const SizedBox(height: 10),
              btn("https://youtu.be/hNz6oYWkfVQ?feature=shared", "2001-59",
                  "https://youtu.be/ll5w7ORkwOE?feature=shared", "2002-36"),
              const SizedBox(height: 10),
              btn("https://youtu.be/WC16Q30yOO0?feature=shared", "2002-59",
                  "https://youtu.be/xnNbvWzrOg4?feature=shared", "2003-27"),
              const SizedBox(height: 10),
              btn("https://youtu.be/OFf_y0mv2Os?t=29m01s", "2003-47",
                  "https://youtu.be/d0r5lTjl1Eo?feature=shared", "2004-46"),
              const SizedBox(height: 10),
              btn("https://youtu.be/WXP26aHMs4I?t=5m05s", "2005-19",
                  "https://youtu.be/4vkOwh41zkM?feature=shared", "2005-52"),
              const SizedBox(height: 10),
              btn("https://youtu.be/WXP26aHMs4I?t=7m58s", "2005-53",
                  "https://youtu.be/LgQ7Pe-wy7s?feature=shared", "2005-59"),
              const SizedBox(height: 10),
              btn("https://youtu.be/-FnP3WrjF3I?feature=shared", "2006-44",
                  "https://youtu.be/rrUGpx_V03Q?feature=shared", "2007-45"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Ui-gNOxkaI8?feature=shared", "2008-51",
                  "https://youtu.be/4dukCULtaLk?feature=shared", "2009-53"),
              const SizedBox(height: 10),
              btn("https://youtu.be/vB9esw2ht9k?feature=shared", "2010-33",
                  "https://youtu.be/azXlVvNJvhM?feature=shared", "2011-14"),
              const SizedBox(height: 10),
              btn("https://youtu.be/l7l1qVhAKuw?feature=shared", "2011-37",
                  "https://youtu.be/g5Rj7shWV_0?feature=shared", "2012-19"),
              const SizedBox(height: 10),
              btn("https://youtu.be/nnxrWtdxfKA?feature=shared", "2013-27",
                  "https://youtu.be/7zQnHM6DaoI?feature=shared", "2014-11"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/h-gR20oqM6w?feature=shared");
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
                        "2014-40",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      interstitialAdq11();
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
                        "2015-45",
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
              btn("https://youtu.be/QWfdmK_e_j0?feature=shared", "2015-50",
                  "https://youtu.be/-_ko5FyLlEQ?feature=shared", "2016-31"),
              const SizedBox(height: 10),
              btn("https://youtu.be/wc7oW1BSpjg?feature=shared", "2017-13",
                  "https://youtu.be/BJqyqA0EMMQ?feature=shared", "2017-31"),
              const SizedBox(height: 10),
              btn("https://youtu.be/QavZgx1RWIw?feature=shared", "2018-29",
                  "https://youtu.be/9sCe7Mw2bwg?feature=shared", "2018-47"),
              const SizedBox(height: 10),
              btn("https://youtu.be/fXAQGhUKPT4?feature=shared", "2019-38",
                  "https://youtu.be/e3Bj3QPy3OU?feature=shared", "2020-20"),
              const SizedBox(height: 10),
              btn("https://youtu.be/VVz4WKe1NWw?feature=shared", "2020-262",
                  "https://youtu.be/Nu5TRoVu8mA?feature=shared", "2021-21"),
              const SizedBox(height: 10),
              btn("https://youtu.be/iiepBlyLz8Q?feature=shared", "2021-49",
                  "https://youtu.be/AiCF2tyfUMc?feature=shared", "2022-36"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Fluid Dynamics",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/E7Ir9n8YCBQ?feature=shared", "2001-32",
                  "https://youtu.be/0mNNGJkrDHk?t=8m40s", "2002-58"),
              const SizedBox(height: 10),
              btn("https://youtu.be/XImPcEHdBic?feature=shared", "2003-28",
                  "https://youtu.be/Eb6OZUVdU4s?feature=shared", "2004-19"),
              const SizedBox(height: 10),
              btn("https://youtu.be/0mNNGJkrDHk?t=15m12s", "2005-37",
                  "https://youtu.be/BHUDYUSTnrw?feature=shared", "2007-51"),
              const SizedBox(height: 10),
              btn("https://youtu.be/LR1c7HHG8q4?feature=shared", "2008-17",
                  "https://youtu.be/uoCXuQNGzCY?feature=shared", "2009-15"),
              const SizedBox(height: 10),
              btn("https://youtu.be/4zKJAfCTdzM?feature=shared", "2009-16",
                  "https://youtu.be/LCnJn8QRqRw?feature=shared", "2010-09"),
              const SizedBox(height: 10),
              btn("https://youtu.be/0WZSm2ZW_Uw?feature=shared", "2012-41",
                  "https://youtu.be/etMwsqF4s88?feature=shared", "2013-44"),
              const SizedBox(height: 10),
              btn("https://youtu.be/bSvcjCm8yzg?feature=shared", "2014-39",
                  "https://youtu.be/Ld_c7oEYGs4?feature=shared", "2015-33"),
              const SizedBox(height: 10),
              btn("https://youtu.be/yp8dFcfDgqs?feature=shared", "2016-34",
                  "https://youtu.be/BhxoHGiva3c?feature=shared", "2017-25"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/8O1tRvhKj4k?feature=shared");
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
                        "2018-03",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      interstitialAdq12();
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
                        "2019-28",
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
              btn("https://youtu.be/hiJQlB-rz4E?feature=shared", "2019-39",
                  "https://youtu.be/BpjEQV9bf20?feature=shared", "2020-41"),
              const SizedBox(height: 10),
              btn("https://youtu.be/4sYtJVVs63Q?feature=shared", "2021-25",
                  "https://youtu.be/9hoH-Zt_onQ?feature=shared", "2022-34"),
              const SizedBox(height: 10),
              btn1("https://youtu.be/vuDzsLudEBc?feature=shared", "2023-28"),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

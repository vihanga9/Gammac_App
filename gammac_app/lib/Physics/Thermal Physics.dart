import 'package:flutter/material.dart';
import 'package:gammac_app/Screens/Physics.dart';
import 'package:gammac_app/Screens/Subjects.dart';
import 'package:gammac_app/Services/admob.dart';
import 'package:gammac_app/Services/colors.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';

class Heat extends StatefulWidget {
  const Heat({super.key});
  @override
  State<StatefulWidget> createState() => _Heat();
}

class _Heat extends State<Heat> {
  late BannerAd _bottomBannerAd;
  InterstitialAd? interstitialAd;

  bool _isBottomBAnnerAdloaded = false;

  void createBottomBannerAd() {
    _bottomBannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: AdDisplay.bannerAdUnit_5,
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

  interstitialAdq28() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q28,
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
              _launchURL("https://youtu.be/5t08Pezo6fc?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq29() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q29,
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
              _launchURL("https://youtu.be/sYiUWFBQqw4?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq30() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q30,
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
              _launchURL("https://youtu.be/fZr3t60kCw4?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq31() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q31,
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
              _launchURL("https://youtu.be/MNf8Qm3Sr-w?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq32() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q32,
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
              _launchURL("https://youtu.be/0A9SVYRUT70?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq33() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q33,
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
              _launchURL("https://youtu.be/fhrD5UUhvEU?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq34() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q34,
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
              _launchURL("https://youtu.be/Lj2LTP-mrLU?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq35() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q35,
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
              _launchURL("https://youtu.be/1uLU5TagmNI?feature=shared");
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
            "Thermal Physics",
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
                    "Thermometry",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              btn("https://youtu.be/tIybZ6ztWxI?t=7m46s", "2001-06",
                  "https://youtu.be/gSUk9T9k87A?feature=shared", "2003-38"),
              const SizedBox(height: 10),
              btn("https://youtu.be/qP-sqEmqQv4?feature=shared", "2006-49",
                  "https://youtu.be/tIybZ6ztWxI?t=13m41s", "2007-57"),
              const SizedBox(height: 10),
              btn("https://youtu.be/mmMUUxwHAwU?feature=shared", "2011-24",
                  "https://youtu.be/-fgbuRsCLTU?feature=shared", "2012-34"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      interstitialAdq29();
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
                        "2014-31",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/P6aQbsEoGKM?feature=shared");
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
                        "2015-03",
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
              btn("https://youtu.be/QF-9bUSd4Jo?feature=shared", "2016-03",
                  "https://youtu.be/m9kHShjOnqI?feature=shared", "2018-19"),
              const SizedBox(height: 10),
              btn1("https://youtu.be/IgWURNstWdk?feature=shared", "2019-06"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Solid Expansion",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              btn("https://youtu.be/ajS1hYDpkpk?t=13m25s", "2002-05",
                  "https://youtu.be/ajS1hYDpkpk?t=13m38s", "2003-17"),
              const SizedBox(height: 10),
              btn("https://youtu.be/SLEmx_NRFck?feature=shared", "2004-21",
                  "https://youtu.be/EOMa0GO7Mq8?t=3m30s", "2007-09"),
              const SizedBox(height: 10),
              btn("https://youtu.be/nSyI7jrVdyk?feature=shared", "2008-26",
                  "https://youtu.be/kxoa6ziZLDY?feature=shared", "2009-22"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/yQBz38rnOtU?feature=shared");
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
                        "2010-55",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      interstitialAdq30();
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
                        "2013-12",
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
              btn("https://youtu.be/nVWgzCCuzhg?feature=shared", "2014-13",
                  "https://youtu.be/MWFv8OK960c?feature=shared", "2016-09"),
              const SizedBox(height: 10),
              btn("https://youtu.be/0c-teQ85Hqw?feature=shared", "2018-07",
                  "https://youtu.be/2mIAMGQtJWc?feature=shared", "2023-27"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Liquid Expansion",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              btn("https://youtu.be/7thR87Tld7M?t=00m56s", "2002-07",
                  "https://youtu.be/7thR87Tld7M?t=2m03s", "2005-12"),
              const SizedBox(height: 10),
              btn("https://youtu.be/ddz7VRlJHqo?feature=shared", "2006-25",
                  "https://youtu.be/U1QxWqW-mvE?feature=shared", "2009-23"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/0GEbJvjFQs8?feature=shared");
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
                        "2017-12",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      interstitialAdq31();
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
                        "2018-41",
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
              btn1("https://youtu.be/0tOOps5Wyso?feature=shared", "2020-46"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Gas Expansion",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              btn("https://youtu.be/g-4FcDgK8IA?t=14m37s", "2001-44",
                  "https://youtu.be/Jr-4c2MfZG4?feature=shared", "2002-22"),
              const SizedBox(height: 10),
              btn("https://youtu.be/ufKkpaD6YIE?t=3m08s", "2002-23",
                  "https://youtu.be/ufKkpaD6YIE?t=6m31s", "2002-24"),
              const SizedBox(height: 10),
              btn("https://youtu.be/LrId60sqeYE?feature=shared", "2003-20",
                  "https://youtu.be/LrId60sqeYE?feature=shared", "2004-22"),
              const SizedBox(height: 10),
              btn("https://youtu.be/ufKkpaD6YIE?t=15m55s", "2005-07",
                  "https://youtu.be/ufKkpaD6YIE?t=17m52s", "2005-35"),
              const SizedBox(height: 10),
              btn("https://youtu.be/ufKkpaD6YIE?t=20m58s", "2005-49",
                  "https://youtu.be/ufKkpaD6YIE?t=22m17s", "2006-27"),
              const SizedBox(height: 10),
              btn("https://youtu.be/ufKkpaD6YIE?t=23m12s", "2007-34",
                  "https://youtu.be/ehl0N6AqXQ8?feature=shared", "2008-25"),
              const SizedBox(height: 10),
              btn("https://youtu.be/N6eGmNfwuNQ?feature=shared", "2009-20",
                  "https://youtu.be/TArqyyUjEb0?feature=shared", "2010-07"),
              const SizedBox(height: 10),
              btn("https://youtu.be/hWQKeewZQdw?feature=shared", "2010-37",
                  "https://youtu.be/Z1REDyKDsis?feature=shared", "2011-08"),
              const SizedBox(height: 10),
              btn("https://youtu.be/kS-jizW17Q4?feature=shared", "2012-05",
                  "https://youtu.be/DvX2kIfm3gE?feature=shared", "2013-13"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      interstitialAdq32();
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
                        "2016-42",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/tDn6TrtEEkU?feature=shared");
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
                        "2017-42",
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
              btn("https://youtu.be/Q28u359wQ4g?feature=shared", "2019-15",
                  "https://youtu.be/vfsrAi14JmU?feature=shared", "2021-05"),
              const SizedBox(height: 10),
              btn("https://youtu.be/rgiLJ2VU9r0?feature=shared", "2021-19",
                  "https://youtu.be/vZ_RbjwIbY8?feature=shared", "2022-15"),
              const SizedBox(height: 10),
              btn("https://youtu.be/1GgUPLdRD0c?feature=shared", "2022-37",
                  "https://youtu.be/emKA0rpmHMY?feature=shared", "2023-09"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Thermometry",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              btn("https://youtu.be/5Av7s8X2lkg?feature=shared", "2000-30",
                  "https://youtu.be/q7u_9Ek5k6s?feature=shared", "2001-19"),
              const SizedBox(height: 10),
              btn("https://youtu.be/tJcV77nAiQE?feature=shared", "2001-43",
                  "https://youtu.be/CfUwi262nPs?feature=shared", "2002-21"),
              const SizedBox(height: 10),
              btn("https://youtu.be/jHKHQYEErME?feature=shared", "2002-46",
                  "https://youtu.be/KmvsQo_1BXs?feature=shared", "2003-19"),
              const SizedBox(height: 10),
              btn("https://youtu.be/S661E-VthQc?feature=shared", "2004-56",
                  "https://youtu.be/j29dkZExHQw?feature=shared", "2005-17"),
              const SizedBox(height: 10),
              btn("https://youtu.be/HEJIgqDM8ck?feature=shared", "2005-51",
                  "https://youtu.be/Ww8kd9CZ4DM?t=9m55s", "2007-59"),
              const SizedBox(height: 10),
              btn("https://youtu.be/P_w7Ug8gbDU?feature=shared", "2008-45",
                  "https://youtu.be/ZT1ESidrMhg?feature=shared", "2008-46"),
              const SizedBox(height: 10),
              btn("https://youtu.be/EgSoW0CMrgE?feature=shared", "2009-09",
                  "https://youtu.be/Yj-spwZkJ7o?feature=shared", "2010-02"),
              const SizedBox(height: 10),
              btn("https://youtu.be/pg7Z1cJ8shU?feature=shared", "2010-39",
                  "https://youtu.be/rgn9Y6Q6qYo?feature=shared", "2010-40"),
              const SizedBox(height: 10),
              btn("https://youtu.be/l4cZWTTHXBA?feature=shared", "2010-52",
                  "https://youtu.be/qRE2OXrsgOY?feature=shared", "2011-25"),
              const SizedBox(height: 10),
              btn("https://youtu.be/6SUoGLWh-4Q?feature=shared", "2012-46",
                  "https://youtu.be/xXPsgG8dw3w?feature=shared", "2015-44"),
              const SizedBox(height: 10),
              btn("https://youtu.be/UqVYIHw5cFs?feature=shared", "2016-20",
                  "https://youtu.be/cP-mbc7ErQo?feature=shared", "2016-21"),
              const SizedBox(height: 10),
              btn("https://youtu.be/zif3v_UBfps?feature=shared", "2017-36",
                  "https://youtu.be/EEWMqJ0oKoE?feature=shared", "2018-20"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      interstitialAdq33();
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
                        "2019-42",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/orOzLqKdapA?feature=shared");
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
                        "2020-35",
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
              btn("https://youtu.be/Qqa5bqVkpOk?feature=shared", "2021-42",
                  "https://youtu.be/4Z0BVo2QR14?feature=shared", "2023-18"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Thermodynamics",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              btn("https://youtu.be/dRgQNIJk7bA?feature=shared", "2000-29",
                  "https://youtu.be/3IRH9vT9ejU?feature=shared", "2001-53"),
              const SizedBox(height: 10),
              btn("https://youtu.be/xT5MJoT0uyc?feature=shared", "2003-07",
                  "https://youtu.be/TDLRNKd18KI?feature=shared", "2004-20"),
              const SizedBox(height: 10),
              btn("https://youtu.be/duDFoufg8hI?feature=shared", "2005-23",
                  "https://youtu.be/CgThpEnCg8I?feature=shared", "2006-46"),
              const SizedBox(height: 10),
              btn("https://youtu.be/nGSQ5V4bluQ?feature=shared", "2007-56",
                  "https://youtu.be/ibeEtjKCmy8?feature=shared", "2008-56"),
              const SizedBox(height: 10),
              btn("https://youtu.be/ScWM2G2Kcr0?feature=shared", "2009-57",
                  "https://youtu.be/-BbC4migbuE?feature=shared", "2010-38"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      interstitialAdq34();
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
                        "2011-41",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/Vc7V_FybEGk?feature=shared");
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
                        "2012-32",
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
              btn("https://youtu.be/dYMNc9pyUtg?feature=shared", "2013-14",
                  "https://youtu.be/Qf-7HGSj29E?feature=shared", "2014-23"),
              const SizedBox(height: 10),
              btn("https://youtu.be/YJ0BsC186D4?feature=shared", "2015-26",
                  "https://youtu.be/xYmyiKP2gBY?feature=shared", "2016-22"),
              const SizedBox(height: 10),
              btn("https://youtu.be/eP34yOR6syQ?feature=shared", "2017-32",
                  "https://youtu.be/LlfxUzEBXtk?feature=shared", "2018-06"),
              const SizedBox(height: 10),
              btn("https://youtu.be/w4LVMISL7Bg?feature=shared", "2019-30",
                  "https://youtu.be/YHk5Zta42zw?feature=shared", "2020-24"),
              const SizedBox(height: 10),
              btn("https://youtu.be/DhrLf3aM-io?feature=shared", "2021-30",
                  "https://youtu.be/auVhlRLrwNk?feature=shared", "2022-42"),
              const SizedBox(height: 10),
              btn1("https://youtu.be/4zwuoMadHUI?feature=shared", "2023-10"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Vapour and Humidity",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              btn("https://youtu.be/PS6khhIWSk0?t=5m52s", "2000-31",
                  "https://youtu.be/PS6khhIWSk0?t=7m17s", "2000-44"),
              const SizedBox(height: 10),
              btn("https://youtu.be/PS6khhIWSk0?t=8m00s", "2001-20",
                  "https://youtu.be/PS6khhIWSk0?t=8m38s", "2002-53"),
              const SizedBox(height: 10),
              btn("https://youtu.be/H1ky1F19ru4?t=1h47m28s", "2003-39",
                  "https://youtu.be/PS6khhIWSk0?t=11m56s", "2004-55"),
              const SizedBox(height: 10),
              btn("https://youtu.be/4PrupsLwDCU?feature=shared", "2005-16",
                  "https://youtu.be/yCyShMlYTvQ?feature=shared", "2006-57"),
              const SizedBox(height: 10),
              btn("https://youtu.be/H1ky1F19ru4?t=58m52s", "2007-35",
                  "https://youtu.be/jq1NMRLCJJs?feature=shared", "20088-44"),
              const SizedBox(height: 10),
              btn("https://youtu.be/q7VYQ2o2Xdg?feature=shared", "2009-45",
                  "https://youtu.be/wo30VmfjcAs?feature=shared", "2010-50"),
              const SizedBox(height: 10),
              btn("https://youtu.be/j9p5Ue1-iik?feature=shared", "2011-42",
                  "https://youtu.be/g_KDGhQhPig?feature=shared", "2012-45"),
              const SizedBox(height: 10),
              btn("https://youtu.be/j59M4yzzqIQ?feature=shared", "2013-36",
                  "https://youtu.be/uIJTZtPBmQY?feature=shared", "2014-44"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/wwdOsdJw_hQ?feature=shared");
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
                        "2015-27",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      interstitialAdq35();
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
                        "2016-44",
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
              btn("https://youtu.be/NGr5Lb70PVU?feature=shared", "2017-37",
                  "https://youtu.be/-8j9wkwAtA4?feature=shared", "2018-39"),
              const SizedBox(height: 10),
              btn("https://youtu.be/3Rj_NWwMMhg?feature=shared", "2019-13",
                  "https://youtu.be/RI-Z48iQsmU?feature=shared", "2020-13"),
              const SizedBox(height: 10),
              btn1("https://youtu.be/hKT-0Ppy_xg?feature=shared", "2022-47"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Heat Conduction",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              btn("https://youtu.be/a_Hi3Ssiv8I?t=12m04s", "2000-43",
                  "https://youtu.be/a_Hi3Ssiv8I?t=12m38s", "2001-42"),
              const SizedBox(height: 10),
              btn("https://youtu.be/aVRJIuip84k?t=00m45s", "2002-06",
                  "https://youtu.be/aVRJIuip84k?t=1m33s", "2003-37"),
              const SizedBox(height: 10),
              btn("https://youtu.be/aVRJIuip84k?t=2m50s", "2004-37",
                  "https://youtu.be/gGGVNlLopWQ?feature=shared", "2005-48"),
              const SizedBox(height: 10),
              btn("https://youtu.be/xkphctDDCq4?feature=shared", "2006-45",
                  "https://youtu.be/aVRJIuip84k?t=9m32s", "2007-36"),
              const SizedBox(height: 10),
              btn("https://youtu.be/GUOg84I_Yc8?feature=shared", "2009-43",
                  "https://youtu.be/yiVCICNDOX4?feature=shared", "2010-60"),
              const SizedBox(height: 10),
              btn("https://youtu.be/nlqacITUcLM?feature=shared", "2011-01",
                  "https://youtu.be/clREqEHw104?feature=shared", "2012-33"),
              const SizedBox(height: 10),
              btn("https://youtu.be/iU8jzl0dyFI?feature=shared", "2013-37",
                  "https://youtu.be/CkCJO75-2KM?feature=shared", "2014-22"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      interstitialAdq28();
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
                        "2015-48",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/Tadm6ktTUYo?feature=shared");
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
                        "2017-35",
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
              btn("https://youtu.be/--GwqnBekqI?feature=shared", "2018-40",
                  "https://youtu.be/mYBCL83Jgdk?feature=shared", "2020-27"),
              const SizedBox(height: 10),
              btn("https://youtu.be/iD4galouqak?feature=shared", "2021-36",
                  "https://youtu.be/v8pZCII2v9s?feature=shared", "2022-40"),
              const SizedBox(height: 10),
              btn1("https://youtu.be/OZypXg9Oy40?feature=shared", "2023-36"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Heat Convection",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              btn("https://youtu.be/QHW60vz-9As?feature=shared", "2001-36",
                  "https://youtu.be/AS3xmDBtoio?feature=shared", "2002-20"),
              const SizedBox(height: 10),
              btn("https://youtu.be/-LTVMRbGrpQ?feature=shared", "2010-56",
                  "https://youtu.be/8z1mbGGNrGE?feature=shared", "2020-34"),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

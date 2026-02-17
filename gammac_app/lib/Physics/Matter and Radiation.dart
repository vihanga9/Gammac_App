import 'package:flutter/material.dart';
import 'package:gammac_app/Screens/Physics.dart';
import 'package:gammac_app/Screens/Subjects.dart';
import 'package:gammac_app/Services/admob.dart';
import 'package:gammac_app/Services/colors.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';

class Radiation extends StatefulWidget {
  const Radiation({super.key});
  @override
  State<StatefulWidget> createState() => _Radiation();
}

class _Radiation extends State<Radiation> {
  late BannerAd _bottomBannerAd;
  InterstitialAd? interstitialAd;

  bool _isBottomBAnnerAdloaded = false;

  void createBottomBannerAd() {
    _bottomBannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: AdDisplay.bannerAdUnit_12,
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

  interstitialAdq49() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q49,
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
              _launchURL("https://youtu.be/8al7a1pQs-4?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq50() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q50,
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
              _launchURL("https://youtu.be/I616-NvWEWg?feature=shared");
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
            "Matter and Radiations",
            style: TextStyle(
              fontSize: 25,
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
                    "Thermal Radiation",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/Zt_xZdV1rZQ?t=8m40s", "2000-38",
                  "https://youtu.be/MNdVECQSMEQ?feature=shared", "2002-32"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Zt_xZdV1rZQ?t=12m33s", "2003-56",
                  "https://youtu.be/Y7zAtM-qjL4?feature=shared", "2006-59"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Zt_xZdV1rZQ?t=16m40s", "2006-05",
                  "https://youtu.be/lrG73uhUsOY?t=00m55s", "2007-03"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Yva02UD7gtQ?feature=shared", "2008-38",
                  "https://youtu.be/Eo20olqp0Lw?feature=shared", "2009-14"),
              const SizedBox(height: 10),
              btn("https://youtu.be/2DPQqGfXGYU?feature=shared", "2012-15",
                  "https://youtu.be/ozrNXEEfdT0?feature=shared", "2014-37"),
              const SizedBox(height: 10),
              btn("https://youtu.be/cuvW5trGxZw?feature=shared", "2016-12",
                  "https://youtu.be/w-YmI5PzVHA?feature=shared", "2017-17"),
              const SizedBox(height: 10),
              btn("https://youtu.be/3blZlK6xDWQ?feature=shared", "2022-08",
                  "https://youtu.be/zwOYEZ8JdII?feature=shared", "2023-06"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Photoelectric Effect",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/R5w4Pa7O3aY?feature=shared", "2000-37",
                  "https://youtu.be/eVzx76LMuQM?feature=shared", "2001-54"),
              const SizedBox(height: 10),
              btn("https://youtu.be/u-PmaNyK7qE?feature=shared", "2002-33",
                  "https://youtu.be/GOmAiQ1zphg?feature=shared", "2003-10"),
              const SizedBox(height: 10),
              btn("https://youtu.be/BU-hQoYS2n4?t=7m08s", "2004-14",
                  "https://youtu.be/Tc_oU2yF4bw?feature=shared", "2005-24"),
              const SizedBox(height: 10),
              btn("https://youtu.be/pGGZMHAPGc4?feature=shared", "2006-07",
                  "https://youtu.be/-Hb8p7NVFug?feature=shared", "2007-05"),
              const SizedBox(height: 10),
              btn("https://youtu.be/b2StiG9Zrhs?feature=shared", "2008-13",
                  "https://youtu.be/LjdWkCWfUPA?feature=shared", "2009-04"),
              const SizedBox(height: 10),
              btn("https://youtu.be/TH0FLQu_rs4?feature=shared", "2012-16",
                  "https://youtu.be/PXgd5wDii4o?feature=shared", "2013-03"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/BHSCYTrRUS4?feature=shared");
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
                        "2014-21",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      interstitialAdq49();
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
                        "2015-16",
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
              btn("https://youtu.be/Ow7O3Uw7qv0?feature=shared", "2017-21",
                  "https://youtu.be/HFviQAzCww4?feature=shared", "2019-32"),
              const SizedBox(height: 10),
              btn("https://youtu.be/NHoFPtf20Ys?feature=shared", "2021-29",
                  "https://youtu.be/xYrBEUYakNo?feature=shared", "2023-14"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Particles and Waves",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/5HVsVjZPlr8?t=3m20s", "2001-09",
                  "https://youtu.be/dWYGtUdYEoc?feature=shared", "2010-49"),
              const SizedBox(height: 10),
              btn("https://youtu.be/zZ-xlu-ckVk?feature=shared", "2011-10",
                  "https://youtu.be/tI6WoDu5fr8?feature=shared", "2011-11"),
              const SizedBox(height: 10),
              btn("https://youtu.be/NQyHEsyQbUs?feature=shared", "2009-12",
                  "https://youtu.be/maleD881aqY?feature=shared", "2022-13"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Radioactivity",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/s3M_pZmC4_Y?feature=shared", "2000-06",
                  "https://youtu.be/AOX4ZlDKOBA?feature=shared", "2000-36"),
              const SizedBox(height: 10),
              btn("https://youtu.be/zgbVqQge_DE?feature=shared", "2001-27",
                  "https://youtu.be/-DPbDoJTycA?feature=shared", "2001-28"),
              const SizedBox(height: 10),
              btn("https://youtu.be/d-5OrlKotCE?feature=shared", "2002-11",
                  "https://youtu.be/E23Oon2L2Sk?feature=shared", "2003-09"),
              const SizedBox(height: 10),
              btn("https://youtu.be/LfVQ6baCyuk?t=0m42s", "2005-01",
                  "https://youtu.be/wCKZ-KEaFKg?feature=shared", "2005-26"),
              const SizedBox(height: 10),
              btn("https://youtu.be/I7B1JMY3la4?feature=shared", "2006-06",
                  "https://youtu.be/E_OSo-fJ-i0?feature=shared", "2007-20"),
              const SizedBox(height: 10),
              btn("https://youtu.be/LfVQ6baCyuk?t=6m53s", "2007-47",
                  "https://youtu.be/NW6nUsVI8ag?feature=shared", "2008-39"),
              const SizedBox(height: 10),
              btn("https://youtu.be/a1BdhdcCLRw?feature=shared", "2009-01",
                  "https://youtu.be/Ary6Gcz2tIw?feature=shared", "2009-33"),
              const SizedBox(height: 10),
              btn("https://youtu.be/b2lZc0ZjKU4?feature=shared", "2010-15",
                  "https://youtu.be/pkT4Ix27Xjk?feature=shared", "2012-17"),
              const SizedBox(height: 10),
              btn("https://youtu.be/OVmf8WSC4LA?feature=shared", "2013-06",
                  "https://youtu.be/uxDTT5N-1RA?feature=shared", "2014-17"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      interstitialAdq50();
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
                        "2015-31",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://youtu.be/M-gv5AnpT4g?feature=shared");
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
                        "2016-01",
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
              btn("https://youtu.be/NkbrwNzSpv0?feature=shared", "2018-32",
                  "https://youtu.be/UwGGyj-SgqI?feature=shared", "2020-43"),
              const SizedBox(height: 10),
              btn1("https://youtu.be/ROVFIt-AOvg?feature=shared", "2021-28"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Particle Physics",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/XccQAZOI9QA?feature=shared", "2019-04",
                  "https://youtu.be/Vus2JN7_0Wg?feature=shared", "2020-06"),
              const SizedBox(height: 10),
              btn("https://youtu.be/sj_i5ukWiRI?feature=shared", "2021-08",
                  "https://youtu.be/adT7lErIw-E?feature=shared", "2022-07"),
              const SizedBox(height: 10),
              btn1("https://youtu.be/jqEMhjsPGoI?feature=shared", "2023-08"),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

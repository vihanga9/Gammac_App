import 'package:flutter/material.dart';
import 'package:gammac_app/Screens/Physics.dart';
import 'package:gammac_app/Screens/Subjects.dart';
import 'package:gammac_app/Services/admob.dart';
import 'package:gammac_app/Services/colors.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';

class Current extends StatefulWidget {
  const Current({super.key});
  @override
  State<StatefulWidget> createState() => _Current();
}

class _Current extends State<Current> {
  late BannerAd _bottomBannerAd;
  InterstitialAd? interstitialAd;

  bool _isBottomBAnnerAdloaded = false;

  void createBottomBannerAd() {
    _bottomBannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: AdDisplay.bannerAdUnit_9,
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

  interstitialAdq42() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q42,
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
              _launchURL("https://youtu.be/HFq9nzO7-oY?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq43() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q43,
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
              _launchURL("https://youtu.be/p5V559n1utY?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq44() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q44,
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
              _launchURL("https://youtu.be/kgGXv640qbs?feature=shared");
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdq45() {
    InterstitialAd.load(
        adUnitId: AdDisplay.q45,
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
              _launchURL("https://youtu.be/VOhfzRh0AXc?feature=shared");
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
            "Current Elecctricity",
            style: TextStyle(
              fontSize: 29,
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
                height: 90,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Ohms Law and Resistance Systems",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/sxv8gkjOHiA?feature=shared", "2000-17",
                  "https://youtu.be/0m1R7KU5kPc?feature=shared", "2000-26"),
              const SizedBox(height: 10),
              btn("https://youtu.be/B7lxYlapytk?feature=shared", "2000-40",
                  "https://youtu.be/a3xMMm6Rv2w?feature=shared", "2000-47"),
              const SizedBox(height: 10),
              btn("https://youtu.be/mc9qhris8Lk?feature=shared", "2001-21",
                  "https://youtu.be/s5mmUcLOoHg?feature=shared", "2001-45"),
              const SizedBox(height: 10),
              btn("https://youtu.be/31zdxTVS6sw?feature=shared", "2001-46",
                  "https://youtu.be/d20viXmCHSE?feature=shared", "2003-18"),
              const SizedBox(height: 10),
              btn("https://youtu.be/hQoEJkMBLV8?t=12m04s", "2003-54",
                  "https://youtu.be/hQoEJkMBLV8?t=13m56s", "2003-55"),
              const SizedBox(height: 10),
              btn("https://youtu.be/p9GefaLkYlA?feature=shared", "2004-27",
                  "https://youtu.be/10tMYSdZ9Mc?feature=shared", "2004-43"),
              const SizedBox(height: 10),
              btn("https://youtu.be/GumW6M4A5ks?feature=shared", "2005-18",
                  "https://youtu.be/etweuuddj3g?feature=shared", "2005-25"),
              const SizedBox(height: 10),
              btn("https://youtu.be/PWl3_2II6r0?feature=shared", "2005-32",
                  "https://youtu.be/YMbVXNV6rec?feature=shared", "2005-44"),
              const SizedBox(height: 10),
              btn("https://youtu.be/n4N-nTV1YyM?feature=shared", "2006-39",
                  "https://youtu.be/NZOoyBBx0og?feature=shared", "2006-40"),
              const SizedBox(height: 10),
              btn("https://youtu.be/OaDCQi55fOE?t=13m38s", "2006-42",
                  "https://youtu.be/OaDCQi55fOE?t=15m48s", "2006-51"),
              const SizedBox(height: 10),
              btn("https://youtu.be/C0Ss2EZyJd8?feature=shared", "2007-17",
                  "https://youtu.be/OaDCQi55fOE?t=18m53s", "2007-38"),
              const SizedBox(height: 10),
              btn("https://youtu.be/NibAa3E4Zgo?feature=shared", "2007-39",
                  "https://youtu.be/0sjHlC_eB6w?t=5m35s", "2007-53"),
              const SizedBox(height: 10),
              btn("https://youtu.be/_pdRrcEegiU?feature=shared", "2008-09",
                  "https://youtu.be/qyhQ4LLw6V4?feature=shared", "2008-50"),
              const SizedBox(height: 10),
              btn("https://youtu.be/rjQtHA3qono?feature=shared", "2009-12",
                  "https://youtu.be/MZHZouagTVo?feature=shared", "2009-29"),
              const SizedBox(height: 10),
              btn("https://youtu.be/TZY9dZB0i-Y?feature=shared", "2009-30",
                  "https://youtu.be/-2K0YheBowI?feature=shared", "2010-13"),
              const SizedBox(height: 10),
              btn("https://youtu.be/1KWfbXvGg-Y?feature=shared", "2010-41",
                  "https://youtu.be/RRESwI2cwVs?feature=shared", "2010-43"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Glnch97v8TY?feature=shared", "2011-29",
                  "https://youtu.be/XvbEz9axPlA?feature=shared", "2012-13"),
              const SizedBox(height: 10),
              btn("https://youtu.be/jGnq16jZ4E4?feature=shared", "2012-37",
                  "https://youtu.be/PPkcORnCV-M?feature=shared", "2012-50"),
              const SizedBox(height: 10),
              btn("https://youtu.be/GuZWK3iR0_U?feature=shared", "2013-30",
                  "https://youtu.be/WyCOt49AJ5w?feature=shared", "2013-46"),
              const SizedBox(height: 10),
              btn("https://youtu.be/v4UqscGlG00?feature=shared", "2013-34",
                  "https://youtu.be/aFDc9z7nYCE?feature=shared", "2015-10"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Gl6ATNpVGFc?feature=shared", "2016-26",
                  "https://youtu.be/ZPsHf8Hj0oI?feature=shared", "2017-01"),
              const SizedBox(height: 10),
              btn("https://youtu.be/V9uSsxtZsdI?feature=shared", "2017-08",
                  "https://youtu.be/Q40vksAhViM?feature=shared", "2018-21"),
              const SizedBox(height: 10),
              btn("https://youtu.be/fRDd_a2BRqQ?feature=shared", "2018-26",
                  "https://youtu.be/EjmNwhRh2o4?feature=shared", "2019-49"),
              const SizedBox(height: 10),
              btn("https://youtu.be/gcbREupmAnU?feature=shared", "2020-47",
                  "https://youtu.be/hXOBRuv8maU?feature=shared", "2021-40"),
              const SizedBox(height: 10),
              btn("https://youtu.be/pmXS_ermFSw?feature=shared", "2021-43",
                  "https://youtu.be/zAZOZB8Mszw?feature=shared", "2022-31"),
              const SizedBox(height: 10),
              btn("https://youtu.be/lAoEFz1K2BM?feature=shared", "2022-41",
                  "https://youtu.be/LqQ6b6wCRBU?feature=shared", "2023-29"),
              const SizedBox(height: 10),
              btn("https://youtu.be/zXxnpovRFHs?feature=shared", "2023-40",
                  "https://youtu.be/VlmWWl5b6dE?feature=shared", "2023-48"),
              const SizedBox(height: 10),
              SizedBox(
                height: 90,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Electrical Power and Heat Effect",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/GeH5S7BqFLo?t=0m46s", "2002-29",
                  "https://youtu.be/aubI6QWmm8I?feature=shared", "2002-30"),
              const SizedBox(height: 10),
              btn("https://youtu.be/LGacMbYbDVM?feature=shared", "2003-02",
                  "https://youtu.be/3IaDnZf0IQQ?feature=shared", "2004-28"),
              const SizedBox(height: 10),
              btn("https://youtu.be/zED_vsfpUZs?feature=shared", "2004-42",
                  "https://youtu.be/GeH5S7BqFLo?t=9m25s", "2005-46"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Zg5I3OFXcUQ?feature=shared", "2007-18",
                  "https://youtu.be/GeH5S7BqFLo?t=13m55s", "2007-58"),
              const SizedBox(height: 10),
              btn("https://youtu.be/STRQUSDCH8Y?feature=shared", "2008-12",
                  "https://youtu.be/ySplIBelkA0?feature=shared", "2008-24"),
              const SizedBox(height: 10),
              btn("https://youtu.be/orJs06ybkfU?feature=shared", "2008-49",
                  "https://youtu.be/jk5eTZpL5_U?feature=shared", "2009-26"),
              const SizedBox(height: 10),
              btn("https://youtu.be/EZqoPzmYE64?feature=shared", "2011-31",
                  "https://youtu.be/5F-Vk7z-foc?feature=shared", "2011-43"),
              const SizedBox(height: 10),
              btn("https://youtu.be/IE_58D3SarA?feature=shared", "2011-45",
                  "https://youtu.be/rsumQ70CzUM?feature=shared", "2013-17"),
              const SizedBox(height: 10),
              btn("https://youtu.be/I5j0yV8sftg?feature=shared", "2014-24",
                  "https://youtu.be/nRwB0RgOAs0?feature=shared", "2016-25"),
              const SizedBox(height: 10),
              btn("https://youtu.be/bp1L-roOl14?feature=shared", "2017-40",
                  "https://youtu.be/SG9PNh4tUCE?feature=shared", "2018-25"),
              const SizedBox(height: 10),
              btn("https://youtu.be/csS5YrSue-w?feature=shared", "2019-47",
                  "https://youtu.be/xqwYRO_svrk?feature=shared", "2020-33"),
              const SizedBox(height: 10),
              btn1("https://youtu.be/UjD41reYljg?feature=shared", "2021-46"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Kirchoff Laws",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/GcAgzgH5dHQ?feature=shared", "2000-39",
                  "https://youtu.be/l1xxSq3Pg2c?feature=shared", "2002-49"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Tnc6J_3k6bk?t=12m18s", "2002-52",
                  "https://youtu.be/_Iszfc7ZSN4?feature=shared", "2002-53"),
              const SizedBox(height: 10),
              btn("https://youtu.be/5DYt07rNVio?feature=shared", "2004-26",
                  "https://youtu.be/gOlCl4Q3D8s?t=2m17s", "2004-40"),
              const SizedBox(height: 10),
              btn("https://youtu.be/gOlCl4Q3D8s?t=3m08s", "2006-38",
                  "https://youtu.be/gOlCl4Q3D8s?t=5m48s", "2007-40"),
              const SizedBox(height: 10),
              btn("https://youtu.be/IM0BE8t4fZI?feature=shared", "2008-34",
                  "https://youtu.be/rfzvoSpmEBo?feature=shared", "2009-27"),
              const SizedBox(height: 10),
              btn("https://youtu.be/rlANEcvQvEg?feature=shared", "2009-39",
                  "https://youtu.be/Xgw672Sa_rs?feature=shared", "2010-12"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Uup2ioNXDvY?feature=shared", "2011-30",
                  "https://youtu.be/gtAYTa-rIF8?feature=shared", "2012-36"),
              const SizedBox(height: 10),
              btn("https://youtu.be/iwKEMeFIwgY?feature=shared", "2013-45",
                  "https://youtu.be/hsSRxH2poRk?feature=shared", "2013-47"),
              const SizedBox(height: 10),
              btn("https://youtu.be/u3lZQrbhLdY?feature=shared", "2014-06",
                  "https://youtu.be/vk8IiVAtdX8?feature=shared", "2014-48"),
              const SizedBox(height: 10),
              btn("https://youtu.be/4fyJrkY88pw?feature=shared", "2015-43",
                  "https://youtu.be/rXtF7PAREQ8?feature=shared", "2016-40"),
              const SizedBox(height: 10),
              btn("https://youtu.be/02Du5AiE_AI?feature=shared", "2017-26",
                  "https://youtu.be/sFa2wopAgIY?feature=shared", "2017-41"),
              const SizedBox(height: 10),
              btn("https://youtu.be/j0fIsHlUOt0?feature=shared", "2019-45",
                  "https://youtu.be/_3l0HVc4jII?feature=shared", "2019-46"),
              const SizedBox(height: 10),
              btn("https://youtu.be/_1PX3n_poEk?feature=shared", "2020-14",
                  "https://youtu.be/zQa9Eud9gBA?feature=shared", "2022-23"),
              const SizedBox(height: 10),
              SizedBox(
                height: 90,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Wheatstone Bridge and Meter Bridge",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/A1spRGZsZXA?feature=shared", "2002-28",
                  "https://youtu.be/yF0qhPUMbL8?feature=shared", "2004-16"),
              const SizedBox(height: 10),
              btn("https://youtu.be/OAx4gdjbdPs?feature=shared", "2005-40",
                  "https://youtu.be/ER_kOLBa_p0?feature=shared", "2006-32"),
              const SizedBox(height: 10),
              btn("https://youtu.be/MGH3Ppsgzww?t=01m02s", "2006-50",
                  "https://youtu.be/EOQrrRSj27g?feature=shared", "2008-11"),
              const SizedBox(height: 10),
              btn1("https://youtu.be/2LsHX5oBrcc?feature=shared", "2009-49"),
              const SizedBox(height: 10),
              SizedBox(
                height: 90,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Ammeter, Voltmeter and Galvanometer",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/1bcG11C0gYk?t=10m53s", "2000-41",
                  "https://youtu.be/c9KSXoBueog?feature=shared", "2003-58"),
              const SizedBox(height: 10),
              btn("https://youtu.be/YG-7TW1FoHQ?feature=shared", "2004-41",
                  "https://youtu.be/wQ-C22HeWbU?feature=shared", "2008-10"),
              const SizedBox(height: 10),
              btn("https://youtu.be/1fNEjEWBhyg?feature=shared", "2008-33",
                  "https://youtu.be/yhj0itn_LT0?feature=shared", "2009-13"),
              const SizedBox(height: 10),
              btn("https://youtu.be/_t-UtiT0cSI?feature=shared", "2010-05",
                  "https://youtu.be/tk0gvtiQPDQ?feature=shared", "2010-14"),
              const SizedBox(height: 10),
              btn("https://youtu.be/yU9rj_2hpzE?feature=shared", "2015-20",
                  "https://youtu.be/55mG2hpw6vI?feature=shared", "2016-07"),
              const SizedBox(height: 10),
              btn("https://youtu.be/CjotLGw9_5w?feature=shared", "2018-24",
                  "https://youtu.be/0Iyxk1Spg7M?feature=shared", "2018-42"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Q2wOQrnellM?feature=shared", "2019-26",
                  "https://youtu.be/IbKYcbQ4VDo?feature=shared", "2020-38"),
              const SizedBox(height: 10),
              btn1("https://youtu.be/407efhRaHwE?feature=shared", "2023-43"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Potentiometer",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/CbDehANQqz0?feature=shared", "2000-38",
                  "https://youtu.be/YUsJzW5cVTY?feature=shared", "2001-47"),
              const SizedBox(height: 10),
              btn("https://youtu.be/I_DFOA1-viQ?feature=shared", "2001-48",
                  "https://youtu.be/mU3ZNRm55T4?feature=shared", "2002-10"),
              const SizedBox(height: 10),
              btn("https://youtu.be/jHUjrG0PrAc?t=6m12s", "2002-51",
                  "https://youtu.be/Gbt5b2W4Z50?feature=shared", "2003-24"),
              const SizedBox(height: 10),
              btn("https://youtu.be/pzzqR528j5E?feature=shared", "2004-25",
                  "https://youtu.be/_Ley9DPJ4LQ?feature=shared", "2005-06"),
              const SizedBox(height: 10),
              btn("https://youtu.be/NL8bxKl3as0?feature=shared", "2005-41",
                  "https://youtu.be/9h8AqwBjm1A?feature=shared", "2006-09"),
              const SizedBox(height: 10),
              btn("https://youtu.be/vZrfLWX-GQs?feature=shared", "2007-19",
                  "https://youtu.be/_fCcZu99y4c?feature=shared", "2009-40"),
              const SizedBox(height: 10),
              btn("https://youtu.be/PDk_tqNSYjE?feature=shared", "2010-35",
                  "https://youtu.be/zSnraagD9Es?feature=shared", "2011-32"),
              const SizedBox(height: 10),
              btn("https://youtu.be/8EdABsfipJQ?feature=shared", "2015-19",
                  "https://youtu.be/xfu6qAIh6rM?feature=shared", "2016-05"),
              const SizedBox(height: 10),
              btn("https://youtu.be/9Z0HZgc4c-o?feature=shared", "2016-43",
                  "https://youtu.be/QcUG2eSm_Lw?feature=shared", "2017-05"),
              const SizedBox(height: 10),
              btn("https://youtu.be/SWrNn2CF7c4?feature=shared", "2020-17",
                  "https://youtu.be/H0CwtO9g6R0?feature=shared", "2021-23"),
              const SizedBox(height: 10),
              btn("https://youtu.be/YWbglQgxV6E?feature=shared", "2021-31",
                  "https://youtu.be/WJ1qQ-DLC-s?feature=shared", "2022-05"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Electromagnetic Induction",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/RJcfTH_3Lg8?t=15m06s", "2000-60",
                  "https://youtu.be/34BFJtxDeck?feature=shared", "2001-60"),
              const SizedBox(height: 10),
              btn("https://youtu.be/PvpOpz6PzS4?feature=shared", "2002-60",
                  "https://youtu.be/GJhMa3jjyg4?feature=shared", "2003-60"),
              const SizedBox(height: 10),
              btn("https://youtu.be/ETvpAotTV4I?feature=shared", "2004-60",
                  "https://youtu.be/0zfaRK1_7dk?feature=shared", "2005-60"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Ct_h-kK2S30?feature=shared", "2006-28",
                  "https://youtu.be/bgIGyZDCfsI?t=11m47s", "2007-04"),
              const SizedBox(height: 10),
              btn("https://youtu.be/HlsrSVcRouQ?feature=shared", "2007-54",
                  "https://youtu.be/B9tW6pifUaU?feature=shared", "2008-37"),
              const SizedBox(height: 10),
              btn("https://youtu.be/lWWZ8OjWuUk?feature=shared", "2009-50",
                  "https://youtu.be/RDYVMv5dKms?feature=shared", "2010-42"),
              const SizedBox(height: 10),
              btn("https://youtu.be/j66abOJUpyQ?feature=shared", "2010-51",
                  "https://youtu.be/u1-7rWIeQYs?feature=shared", "2012-35"),
              const SizedBox(height: 10),
              btn("https://youtu.be/UNsl7PT0zQA?feature=shared", "2012-47",
                  "https://youtu.be/Eugh9-hQj50?feature=shared", "2013-19"),
              const SizedBox(height: 10),
              btn("https://youtu.be/n4vz4NgXyUs?feature=shared", "2014-49",
                  "https://youtu.be/dsWyp9WYp4w?feature=shared", "2015-39"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      interstitialAdq42();
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
                        "2016-48",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      interstitialAdq43();
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
                        "2017-27",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      interstitialAdq44();
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
                        "2017-34",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      interstitialAdq45();
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
                        "2017-48",
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
              btn("https://youtu.be/9wIdoyssL90?feature=shared", "2017-49",
                  "https://youtu.be/GyEdQDx2imQ?feature=shared", "2018-49"),
              const SizedBox(height: 10),
              btn("https://youtu.be/EsmrK5h-Dzs?feature=shared", "2020-29",
                  "https://youtu.be/HiVC2-W2gzM?feature=shared", "2021-50"),
              const SizedBox(height: 10),
              btn("https://youtu.be/gDqOxviEd3k?feature=shared", "2022-39",
                  "https://youtu.be/jvYj7LHQ1XE?feature=shared", "2023-23"),
              const SizedBox(height: 10),
              btn1("https://youtu.be/P-LOhNPbNUk?feature=shared", "2023-47"),
              const SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Mutual Induction",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              btn("https://youtu.be/oyN0uxi4l-A?feature=shared", "2002-09",
                  "https://youtu.be/g4FyRYUCjOw?feature=shared", "2002-50"),
              const SizedBox(height: 10),
              btn("https://youtu.be/m1yr1ZqqGJ4?feature=shared", "2005-54",
                  "https://youtu.be/xVYQN0rs5lc?feature=shared", "2006-15"),
              const SizedBox(height: 10),
              btn("https://youtu.be/j8k2z7dBMFY?feature=shared", "2009-05",
                  "https://youtu.be/ZbItBg2qgwg?feature=shared", "2010-36"),
              const SizedBox(height: 10),
              btn("https://youtu.be/UQhgLaP-oGA?feature=shared", "2011-47",
                  "https://youtu.be/vpuAlKkQwJk?feature=shared", "2012-12"),
              const SizedBox(height: 10),
              btn("https://youtu.be/zj57SkGWE2s?feature=shared", "2013-18",
                  "https://youtu.be/6RTEsUzvaY0?feature=shared", "2014-25"),
              const SizedBox(height: 10),
              btn("https://youtu.be/i8OMxPikWeE?feature=shared", "2015-40",
                  "https://youtu.be/UhaB1fLg0YI?feature=shared", "2017-30"),
              const SizedBox(height: 10),
              btn("https://youtu.be/Z4SWVgVB_rI?feature=shared", "2018-08",
                  "https://youtu.be/TNBbEi3Eaww?feature=shared", "2019-19"),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

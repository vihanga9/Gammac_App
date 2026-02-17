import 'package:flutter/material.dart';
import 'package:gammac_app/Screens/Applied.dart';
import 'package:gammac_app/Screens/Chemistry.dart';
import 'package:gammac_app/Screens/Physics.dart';
import 'package:gammac_app/Screens/Pure.dart';
import 'package:gammac_app/Screens/about.dart';
import 'package:gammac_app/Services/admob.dart';
import 'package:gammac_app/Services/colors.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

const int maxFailedLoadAttempts = 3;

class Subjects extends StatefulWidget {
  const Subjects({super.key});

  @override
  State<StatefulWidget> createState() => Subject();
}

class Subject extends State<Subjects> {
  late BannerAd _bottomBannerAd;
  InterstitialAd? interstitialAd;

  bool _isBottomBAnnerAdloaded = false;

  void createBottomBannerAd() {
    _bottomBannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: AdDisplay.bannerAdUnit,
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

  interstitialAdChem() {
    InterstitialAd.load(
        adUnitId: AdDisplay.intAdUnitChem,
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const Chemistry()));
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdPure() {
    InterstitialAd.load(
        adUnitId: AdDisplay.intAdUnitPure,
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const Pure()));
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdApp() {
    InterstitialAd.load(
        adUnitId: AdDisplay.intAdUnitApp,
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const Applied()));
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
          titleTextStyle:
              const TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
          backgroundColor: appc,
          title: const Text(
            'Subjects',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.75,
            ),
          ),
        ),
        drawer: Drawer(
          width: 275,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: const Text(
                  'Gammac App',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                accountEmail: const Text(
                  'gammac@gmail.com',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: AssetImage(
                    'assests/images/gammacapp_logo.jpg',
                  ),
                ),
                decoration: BoxDecoration(
                  color: appc,
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.info,
                  size: 25,
                  color: Colors.black54,
                ),
                title: const Text(
                  'About App',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const About()));
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.share,
                  size: 25,
                  color: Colors.black54,
                ),
                title: const Text(
                  'Share',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.star_rate_rounded,
                  size: 25,
                  color: Colors.black54,
                ),
                title: const Text(
                  'Rate App',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Container(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Center(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  15.0), // Set your desired radius here
                            ),
                          ),
                          minimumSize:
                              MaterialStateProperty.all(const Size(330, 100)),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(fc)),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (_) => const Physics()));
                      },
                      child: const Text(
                        "Physics",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Center(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  15.0), // Set your desired radius here
                            ),
                          ),
                          minimumSize:
                              MaterialStateProperty.all(const Size(330, 100)),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(fc)),
                      onPressed: () {
                        interstitialAdChem();
                      },
                      child: const Text(
                        "Chemistry",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Center(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  15.0), // Set your desired radius here
                            ),
                          ),
                          minimumSize:
                              MaterialStateProperty.all(const Size(330, 100)),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(fc)),
                      onPressed: () {
                        interstitialAdPure();
                      },
                      child: const Text(
                        "Pure Mathematics",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Center(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  15.0), // Set your desired radius here
                            ),
                          ),
                          minimumSize:
                              MaterialStateProperty.all(const Size(330, 100)),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(fc)),
                      onPressed: () {
                        interstitialAdApp();
                      },
                      child: const Text(
                        "Applied Mathematics",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}

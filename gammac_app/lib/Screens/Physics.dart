import 'package:flutter/material.dart';
import 'package:gammac_app/Physics/Current%20Electricity.dart';
import 'package:gammac_app/Physics/Electronics.dart';
import 'package:gammac_app/Physics/Electrostatic%20Fields.dart';
import 'package:gammac_app/Physics/Gravitational%20Fields.dart';
import 'package:gammac_app/Physics/Light.dart';
import 'package:gammac_app/Physics/Magnetic%20Fields.dart';
import 'package:gammac_app/Physics/Matter%20and%20Radiation.dart';
import 'package:gammac_app/Physics/Measurement.dart';
import 'package:gammac_app/Physics/Mechanics.dart';
import 'package:gammac_app/Physics/Properties%20of%20Matter.dart';
import 'package:gammac_app/Physics/Thermal%20Physics.dart';
import 'package:gammac_app/Physics/Waves%20and%20Oscillations..dart';
import 'package:gammac_app/Screens/Subjects.dart';
import 'package:gammac_app/Services/admob.dart';
import 'package:gammac_app/Services/colors.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

//ca-app-pub-4054936943725853/8530511880
//ca-app-pub-4054936943725853/5904348546
class Physics extends StatefulWidget {
  const Physics({super.key});
  @override
  State<StatefulWidget> createState() => _Physics();
}

class _Physics extends State<Physics> {
  late BannerAd _bottomBannerAd;
  InterstitialAd? interstitialAd;

  bool _isBottomBAnnerAdloaded = false;

  void createBottomBannerAd() {
    _bottomBannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: AdDisplay.bannerAdUnitPhy,
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

  interstitialAdMech() {
    InterstitialAd.load(
        adUnitId: AdDisplay.intAdUnitMech,
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
                  MaterialPageRoute(builder: (_) => const Mechanics()));
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdWaves() {
    InterstitialAd.load(
        adUnitId: AdDisplay.intAdUnitWaves,
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
                  context, MaterialPageRoute(builder: (_) => const Waves()));
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdLight() {
    InterstitialAd.load(
        adUnitId: AdDisplay.intAdUnitLight,
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
                  context, MaterialPageRoute(builder: (_) => const Light()));
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdHeat() {
    InterstitialAd.load(
        adUnitId: AdDisplay.intAdUnitHeat,
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
                  context, MaterialPageRoute(builder: (_) => const Heat()));
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdMagnetic() {
    InterstitialAd.load(
        adUnitId: AdDisplay.intAdUnitMagnetic,
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
                  context, MaterialPageRoute(builder: (_) => const Magnetic()));
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdElectrostatic() {
    InterstitialAd.load(
        adUnitId: AdDisplay.intAdUnitElectrostatic,
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
                  MaterialPageRoute(builder: (_) => const Electrostatic()));
            },
          );
        }, onAdFailedToLoad: (error) {
          debugPrint(error.message);
        }));
  }

  interstitialAdCurrent() {
    InterstitialAd.load(
        adUnitId: AdDisplay.intAdUnitCurrent,
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
                  context, MaterialPageRoute(builder: (_) => const Current()));
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
          title: const Text(
            "Physics",
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
                  MaterialPageRoute(builder: (_) => const Subjects()));
            },
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              height: 80,
              child: Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15.0), // Set your desired radius here
                        ),
                      ),
                      minimumSize:
                          MaterialStateProperty.all(const Size(300, 75)),
                      backgroundColor: MaterialStateProperty.all<Color>(fc)),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => const Measurement()));
                  },
                  child: const Text(
                    "            Measurement            ",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 80,
              child: Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15.0), // Set your desired radius here
                        ),
                      ),
                      minimumSize:
                          MaterialStateProperty.all(const Size(300, 75)),
                      backgroundColor: MaterialStateProperty.all<Color>(fc)),
                  onPressed: () {
                    interstitialAdMech();
                  },
                  child: const Text(
                    "              Mechanics               ",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 80,
              child: Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15.0), // Set your desired radius here
                        ),
                      ),
                      minimumSize:
                          MaterialStateProperty.all(const Size(300, 75)),
                      backgroundColor: MaterialStateProperty.all<Color>(fc)),
                  onPressed: () {
                    interstitialAdWaves();
                  },
                  child: const Text(
                    "    Waves and Oscillations   ",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 80,
              child: Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15.0), // Set your desired radius here
                        ),
                      ),
                      minimumSize:
                          MaterialStateProperty.all(const Size(300, 75)),
                      backgroundColor: MaterialStateProperty.all<Color>(fc)),
                  onPressed: () {
                    interstitialAdLight();
                  },
                  child: const Text(
                    "                   Light                     ",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 80,
              child: Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15.0), // Set your desired radius here
                        ),
                      ),
                      minimumSize:
                          MaterialStateProperty.all(const Size(300, 75)),
                      backgroundColor: MaterialStateProperty.all<Color>(fc)),
                  onPressed: () {
                    interstitialAdHeat();
                  },
                  child: const Text(
                    "          Thermal Physics         ",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 80,
              child: Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15.0), // Set your desired radius here
                        ),
                      ),
                      minimumSize:
                          MaterialStateProperty.all(const Size(300, 75)),
                      backgroundColor: MaterialStateProperty.all<Color>(fc)),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => const Gravity()));
                  },
                  child: const Text(
                    "       Gravitational Fields       ",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 80,
              child: Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15.0), // Set your desired radius here
                        ),
                      ),
                      minimumSize:
                          MaterialStateProperty.all(const Size(300, 75)),
                      backgroundColor: MaterialStateProperty.all<Color>(fc)),
                  onPressed: () {
                    interstitialAdElectrostatic();
                  },
                  child: const Text(
                    "       Electrostatic Fields       ",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 80,
              child: Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15.0), // Set your desired radius here
                        ),
                      ),
                      minimumSize:
                          MaterialStateProperty.all(const Size(300, 75)),
                      backgroundColor: MaterialStateProperty.all<Color>(fc)),
                  onPressed: () {
                    interstitialAdMagnetic();
                  },
                  child: const Text(
                    "          Magnetic Fields          ",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 80,
              child: Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15.0), // Set your desired radius here
                        ),
                      ),
                      minimumSize:
                          MaterialStateProperty.all(const Size(300, 75)),
                      backgroundColor: MaterialStateProperty.all<Color>(fc)),
                  onPressed: () {
                    interstitialAdCurrent();
                  },
                  child: const Text(
                    "        Current Electricity        ",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 80,
              child: Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15.0), // Set your desired radius here
                        ),
                      ),
                      minimumSize:
                          MaterialStateProperty.all(const Size(300, 75)),
                      backgroundColor: MaterialStateProperty.all<Color>(fc)),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => const Electronics()));
                  },
                  child: const Text(
                    "              Electronics               ",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 80,
              child: Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15.0), // Set your desired radius here
                        ),
                      ),
                      minimumSize:
                          MaterialStateProperty.all(const Size(300, 75)),
                      backgroundColor: MaterialStateProperty.all<Color>(fc)),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => const Matter()));
                  },
                  child: const Text(
                    "      Properties of Matter      ",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 80,
              child: Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15.0), // Set your desired radius here
                        ),
                      ),
                      minimumSize:
                          MaterialStateProperty.all(const Size(300, 75)),
                      backgroundColor: MaterialStateProperty.all<Color>(fc)),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => const Radiation()));
                  },
                  child: const Text(
                    "      Matter and Radiation     ",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gammac_app/Screens/Subjects.dart';
import 'package:gammac_app/Services/admob.dart';
import 'package:gammac_app/Services/colors.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Applied extends StatefulWidget {
  const Applied({super.key});
  @override
  State<StatefulWidget> createState() => _Applied();
}

class _Applied extends State<Applied> {
  late BannerAd _bottomBannerAd;

  bool _isBottomBAnnerAdloaded = false;

  void createBottomBannerAd() {
    _bottomBannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: AdDisplay.bannerAdUnitApp,
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
            "Applied Mathematics",
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
                  MaterialPageRoute(builder: (_) => const Subjects()));
            },
          ),
        ),
        body: const Center(
          child: Text(
            "Will be Updated Soon",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

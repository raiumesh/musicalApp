import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';
import 'package:musical_app/EnglishSongList.dart';
import 'package:flutter/services.dart';

late WebViewController _controller;

class EnglishReaderScreen extends StatelessWidget {
  final ESong esong;
  EnglishReaderScreen(this.esong);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(55),
          child: AppBar(
            elevation: 0,
            brightness: Brightness.dark,
            backgroundColor: Colors.purple,
            title: Text(esong.title),
            centerTitle: true,
          ),
        ),
        body: WebView(
            initialUrl: 'about:blank',
            onWebViewCreated: (WebViewController webviewController) {
              _controller = webviewController;
              if (esong.title == 'Perfect') _loadhtmlperfect();
              if (esong.title == 'Love Me') _loadhtmlloveMe();
              if (esong.title == 'Photograph') _loadhtmlphotograph();
              if (esong.title == 'Happier') _loadhtmlhappier();
              if (esong.title == 'Friends') _loadhtmlfriends();
              if (esong.title == 'Closer') _loadhtmlcloser();
              if (esong.title == 'Roar') _loadhtmlroar();
              if (esong.title == 'Treat you better') _loadhtmltreatYou();
              if (esong.title == "We don't talk anymore") _loadhtmlweDontTalk();
              if (esong.title == 'You are the reason')
                _loadhtmlyouAreTheReason();
            }));
  }
}

_loadhtmlperfect() async {
  String fileText =
      await rootBundle.loadString("assets/englishsong/perfect.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlloveMe() async {
  String fileText =
      await rootBundle.loadString("assets/englishsong/loveMe.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlphotograph() async {
  String fileText =
      await rootBundle.loadString("assets/englishsong/photograph.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlhappier() async {
  String fileText =
      await rootBundle.loadString("assets/englishsong/happier.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlfriends() async {
  String fileText =
      await rootBundle.loadString("assets/englishsong/friends.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlcloser() async {
  String fileText =
      await rootBundle.loadString("assets/englishsong/closer.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlroar() async {
  String fileText = await rootBundle.loadString("assets/englishsong/roar.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmltreatYou() async {
  String fileText =
      await rootBundle.loadString("assets/englishsong/treatYou.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlweDontTalk() async {
  String fileText =
      await rootBundle.loadString("assets/englishsong/weDontTalk.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlyouAreTheReason() async {
  String fileText =
      await rootBundle.loadString("assets/englishsong/youAreTheReason.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

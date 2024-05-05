import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

//Statefull Widget adalah widget yang digunakan untuk menampilkan data-data yang dinamis 
//atau data yang kita telah tampilkan sewaktu-waktu dapat mengalami perubahan.

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WebViewController? _controller;
  
  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
      },
      onPageStarted: (String url) {},
      onPageFinished: (String url) {},
      onWebResourceError: (WebResourceError error) {},
      onNavigationRequest: (NavigationRequest request) {
        if (request.url.startsWith('https://www.youtube.com/')) {
          return NavigationDecision.prevent;
        }
        return NavigationDecision.navigate;
      },
    ),
  )
  ..loadRequest(Uri.parse('https://hbbnas.github.io/ndaru-otopart/'));
  }

  //Penggunaan Scaffold, Scaffold adalah widget utama untuk membuat sebuah halaman pada flutter
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: _controller!),
    );
  }
}
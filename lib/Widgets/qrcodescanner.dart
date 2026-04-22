import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:url_launcher/url_launcher.dart';

class QRCodeScanner extends StatefulWidget {
  const QRCodeScanner({super.key});

  @override
  State<QRCodeScanner> createState() => _QRCodeScannerState();
}

class _QRCodeScannerState extends State<QRCodeScanner> {
  final MobileScannerController controller = MobileScannerController();

  String? scannedCode;
  bool isProcessing = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void reassemble() {
    super.reassemble();
    controller.stop();
    controller.start();
  }

  void _onDetect(BarcodeCapture capture) async {
    if (isProcessing) return;

    final Barcode? barcode =
    capture.barcodes.isNotEmpty ? capture.barcodes.first : null;

    final String? code = barcode?.rawValue;

    if (code == null) return;

    setState(() {
      scannedCode = code;
      isProcessing = true;
    });

    try {
      final uri = Uri.parse(code);
      await _launchInBrowserView(uri);
    } catch (e) {
      debugPrint("Invalid QR or launch failed: $e");
    }

    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      isProcessing = false;
    });
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchInBrowserView(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppBrowserView,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Scanner'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              children: [
                MobileScanner(
                  controller: controller,
                  onDetect: _onDetect,
                ),

                /// Overlay (custom replacement for QrScannerOverlayShape)
                Center(
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          Center(
            child: scannedCode != null
                ? Text(
              scannedCode!,
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            )
                : const Text(
              'Scan a code',
              style: TextStyle(fontSize: 18),
            ),
          ),

          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
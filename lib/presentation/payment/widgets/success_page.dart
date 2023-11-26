import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fic9_ecommerce_app/presentation/dashboard/dashboard_page.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Alert(
        context: context,
        type: AlertType.info,
        title: "Pembayaran Sukses",
        desc: "Selamat Pembayaran Berhasil dilakukan",
        buttons: [
          DialogButton(
            onPressed: () =>
                Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const DashboardPage();
            })),
            width: 120,
            child: const Text(
              "OK",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ).show();

      // Alert(
      //   context: context,
      //   type: AlertType.info,
      //   title: "Pembayaran Sukses",
      //   desc: "Selamat Pembayaran Berhasil dilakukan",
      //   buttons: [
      //     DialogButton(
      //       child: Text(
      //         "OK",
      //         style: const TextStyle(color: Colors.white, fontSize: 20),
      //       ),
      //       onPressed: () =>
      //           Navigator.push(context, MaterialPageRoute(builder: (context) {
      //         return const DashboardPage();
      //       })),
      //       width: 120,
      //     )
      //   ],
      // ).show();
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

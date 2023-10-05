import 'dart:convert';

import 'package:api_calling/dashBoard.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  TextEditingController emailId = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isPassword = false;

  AutoGenerate? jData;
  int a = 0;
  bool getdata = false;
  final dio = Dio();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Align(
          alignment: Alignment.center,
          child: Text(
            'Email',
            textAlign: TextAlign.left,
          ),
        ).paddingOnly(right: 290),
        Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          child: TextField(
            controller: emailId,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.only(left: 10),
              hintText: 'Email Id',
            ),
          ),
        ).paddingOnly(right: 20, left: 20, top: 10),
        const SizedBox(height: 10),
        const Align(
          alignment: Alignment.center,
          child: Text(
            'Password',
            textAlign: TextAlign.left,
          ),
        ).paddingOnly(right: 290),
        Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          child: TextField(
            controller: password,
            obscureText: isPassword,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isPassword = !isPassword;
                  });
                },
                icon: isPassword
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility),
              ),
            ),
          ),
        ).paddingOnly(right: 20, left: 20, top: 10),
        const SizedBox(height: 20),
        GestureDetector(
          onTap: () async {
            try {
              final response = await dio.post(
                  'https://uatapi.redprix.com/api/verify-email',
                  data: {'email': emailId.text, 'email_otp': password.text});

              print('ajayhariyani$response');
              var mm = jsonDecode(response.data);
              AutoGenerate aa = AutoGenerate.fromJson(mm);
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return DashBoard();
                },
              ));
            } catch (e) {
              print('Error: $e');
            }
          },
          child: Container(
            alignment: Alignment.center,
            width: 350,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
            ),
            child: const Text(
              'Login',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ]),
    );
  }
}

class AutoGenerate {
  AutoGenerate({
    required this.status,
    required this.statusCode,
    required this.message,
  });

  late final bool status;
  late final String statusCode;
  late final String message;

  AutoGenerate.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusCode = json['status_code'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['status_code'] = statusCode;
    _data['message'] = message;
    return _data;
  }
}

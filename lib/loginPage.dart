// import 'package:api_calling/signUpPage.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
//
// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);
//
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   TextEditingController emailId = TextEditingController();
//   TextEditingController password = TextEditingController();
//   bool isPassword = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               height: 500,
//               padding: const EdgeInsets.only(top: 50),
//               decoration: const BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topRight: Radius.circular(20),
//                   topLeft: Radius.circular(20),
//                 ),
//               ),
//               child: Column(
//                 children: [
//                   const SizedBox(height: 10),
//                   const Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       'Email Id',
//                       textAlign: TextAlign.left,
//                     ),
//                   ).paddingOnly(right: 290),
//                   Container(
//                     decoration:
//                         BoxDecoration(border: Border.all(color: Colors.grey)),
//                     child: const TextField(
//                       decoration: InputDecoration(
//                         contentPadding: EdgeInsets.only(left: 10),
//                         hintText: 'Email Id',
//                       ),
//                     ),
//                   ).paddingOnly(right: 20, left: 20, top: 10),
//                   const SizedBox(height: 10),
//                   const Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       'Password',
//                       textAlign: TextAlign.left,
//                     ),
//                   ).paddingOnly(right: 290),
//                   Container(
//                     decoration:
//                         BoxDecoration(border: Border.all(color: Colors.grey)),
//                     child: TextField(
//                       controller: password,
//                       obscureText: isPassword,
//                       decoration: InputDecoration(
//                         suffixIcon: IconButton(
//                           onPressed: () {
//                             setState(() {
//                               isPassword = !isPassword;
//                             });
//                           },
//                           icon: isPassword
//                               ? const Icon(Icons.visibility_off)
//                               : const Icon(Icons.visibility),
//                         ),
//                       ),
//                     ),
//                   ).paddingOnly(right: 20, left: 20, top: 10),
//                   const SizedBox(height: 10),
//                   const Text(
//                     'Forgot Password?',
//                     style: TextStyle(color: Colors.blue),
//                   ).paddingOnly(left: 230),
//                   const SizedBox(height: 10),
//                   GestureDetector(
//                     onTap: () {},
//                     child: Container(
//                       alignment: Alignment.center,
//                       child: const Text(
//                         'Login',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       width: 350,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: Colors.red,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text('Not Having Id?'),
//                       TextButton(
//                         onPressed: () {
//                           Navigator.push(context, MaterialPageRoute(
//                             builder: (context) {
//                               return const SignUpPage();
//                             },
//                           ));
//                         },
//                         child: const Text(
//                           'Sign Up',
//                           style: TextStyle(color: Colors.blue),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       SvgPicture.asset('images/googlelogo.svg'),
//                       SvgPicture.asset('images/fblogo.svg'),
//                       SvgPicture.asset('images/applelogo.svg', height: 30),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ResponseData {
//   Info? info;
//   List<Item>? items;
//   List<Event>? events;
//   List<Variable>? variables;
//
//   ResponseData({this.info, this.items, this.events, this.variables});
//
//   ResponseData.fromJson(Map<String, dynamic> json) {
//     info = json['info'] != null ? Info.fromJson(json['info']) : null;
//     items = (json['item'] as List?)
//         ?.map((item) => Item.fromJson(item as Map<String, dynamic>))
//         .toList();
//     events = (json['event'] as List?)
//         ?.map((event) => Event.fromJson(event as Map<String, dynamic>))
//         .toList();
//     variables = (json['variable'] as List?)
//         ?.map((variable) => Variable.fromJson(variable as Map<String, dynamic>))
//         .toList();
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     if (info != null) {
//       data['info'] = info!.toJson();
//     }
//     if (items != null) {
//       data['item'] = items!.map((item) => item.toJson()).toList();
//     }
//     if (events != null) {
//       data['event'] = events!.map((event) => event.toJson()).toList();
//     }
//     if (variables != null) {
//       data['variable'] =
//           variables!.map((variable) => variable.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Info {
//   String? postmanId;
//   String? name;
//   String? schema;
//
//   Info({this.postmanId, this.name, this.schema});
//
//   Info.fromJson(Map<String, dynamic> json) {
//     postmanId = json['_postman_id'];
//     name = json['name'];
//     schema = json['schema'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['_postman_id'] = postmanId;
//     data['name'] = name;
//     data['schema'] = schema;
//     return data;
//   }
// }
//
// class Item {
//   String? name;
//   String? id;
//   Request? request;
//   List<Response>? responses;
//   List<Event>? events;
//   ProtocolProfileBehavior? protocolProfileBehavior;
//
//   Item({
//     this.name,
//     this.id,
//     this.request,
//     this.responses,
//     this.events,
//     this.protocolProfileBehavior,
//   });
//
//   Item.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     id = json['id'];
//     request = json['request'] != null
//         ? Request.fromJson(json['request'] as Map<String, dynamic>)
//         : null;
//     responses = (json['response'] as List?)
//         ?.map((response) => Response.fromJson(response as Map<String, dynamic>))
//         .toList();
//     events = (json['event'] as List?)
//         ?.map((event) => Event.fromJson(event as Map<String, dynamic>))
//         .toList();
//     protocolProfileBehavior = json['protocolProfileBehavior'] != null
//         ? ProtocolProfileBehavior.fromJson(
//             json['protocolProfileBehavior'] as Map<String, dynamic>)
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['name'] = name;
//     data['id'] = id;
//     if (request != null) {
//       data['request'] = request!.toJson();
//     }
//     if (responses != null) {
//       data['response'] =
//           responses!.map((response) => response.toJson()).toList();
//     }
//     if (events != null) {
//       data['event'] = events!.map((event) => event.toJson()).toList();
//     }
//     if (protocolProfileBehavior != null) {
//       data['protocolProfileBehavior'] = protocolProfileBehavior!.toJson();
//     }
//     return data;
//   }
// }
//
// class Request {
//   String? method;
//   List<Header>? headers;
//   Body? body;
//   String? url;
//   Auth? auth;
//   String? description;
//
//   Request({
//     this.method,
//     this.headers,
//     this.body,
//     this.url,
//     this.auth,
//     this.description,
//   });
//
//   Request.fromJson(Map<String, dynamic> json) {
//     method = json['method'];
//     headers = (json['header'] as List?)
//         ?.map((header) => Header.fromJson(header as Map<String, dynamic>))
//         .toList();
//     body = json['body'] != null
//         ? Body.fromJson(json['body'] as Map<String, dynamic>)
//         : null;
//     url = json['url'];
//     auth = json['auth'] != null
//         ? Auth.fromJson(json['auth'] as Map<String, dynamic>)
//         : null;
//     description = json['description'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['method'] = method;
//     if (headers != null) {
//       data['header'] = headers!.map((header) => header.toJson()).toList();
//     }
//     if (body != null) {
//       data['body'] = body!.toJson();
//     }
//     data['url'] = url;
//     if (auth != null) {
//       data['auth'] = auth!.toJson();
//     }
//     data['description'] = description;
//     return data;
//   }
// }
//
// class Header {
//   String? key;
//   String? value;
//
//   Header({this.key, this.value});
//
//   Header.fromJson(Map<String, dynamic> json) {
//     key = json['key'];
//     value = json['value'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['key'] = key;
//     data['value'] = value;
//     return data;
//   }
// }
//
// class Body {
//   String? mode;
//   String? raw;
//   Options? options;
//
//   Body({this.mode, this.raw, this.options});
//
//   Body.fromJson(Map<String, dynamic> json) {
//     mode = json['mode'];
//     raw = json['raw'];
//     options = json['options'] != null
//         ? Options.fromJson(json['options'] as Map<String, dynamic>)
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['mode'] = mode;
//     data['raw'] = raw;
//     if (options != null) {
//       data['options'] = options!.toJson();
//     }
//     return data;
//   }
// }
//
// class Options {
//   Raw? raw;
//
//   Options({this.raw});
//
//   Options.fromJson(Map<String, dynamic> json) {
//     raw = json['raw'] != null
//         ? Raw.fromJson(json['raw'] as Map<String, dynamic>)
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     if (raw != null) {
//       data['raw'] = raw!.toJson();
//     }
//     return data;
//   }
// }
//
// class Raw {
//   String? language;
//
//   Raw({this.language});
//
//   Raw.fromJson(Map<String, dynamic> json) {
//     language = json['language'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['language'] = language;
//     return data;
//   }
// }
//
// class Auth {
//   String? type;
//   Bearer? bearer;
//
//   Auth({this.type, this.bearer});
//
//   Auth.fromJson(Map<String, dynamic> json) {
//     type = json['type'];
//     bearer = json['bearer'] != null
//         ? Bearer.fromJson(json['bearer'] as Map<String, dynamic>)
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['type'] = type;
//     if (bearer != null) {
//       data['bearer'] = bearer!.toJson();
//     }
//     return data;
//   }
// }
//
// class Bearer {
//   String? token;
//
//   Bearer({this.token});
//
//   Bearer.fromJson(Map<String, dynamic> json) {
//     token = json['token'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['token'] = token;
//     return data;
//   }
// }
//
// class Response {
//   String? id;
//   String? name;
//   OriginalRequest? originalRequest;
//   String? status;
//   int? code;
//   String? postmanPreviewLanguage;
//   List<Header>? headers;
//   List<String>? cookies;
//   String? body;
//
//   Response({
//     this.id,
//     this.name,
//     this.originalRequest,
//     this.status,
//     this.code,
//     this.postmanPreviewLanguage,
//     this.headers,
//     this.cookies,
//     this.body,
//   });
//
//   Response.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     originalRequest = json['originalRequest'] != null
//         ? OriginalRequest.fromJson(
//             json['originalRequest'] as Map<String, dynamic>)
//         : null;
//     status = json['status'] ?? '';
//     code = json['code'];
//     postmanPreviewLanguage = json['_postman_previewlanguage'] ?? '';
//     headers = (json['header'] as List?)
//         ?.map((header) => Header.fromJson(header as Map<String, dynamic>))
//         .toList();
//     cookies = (json['cookie'] as List?)?.cast<String>();
//     body = json['body'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['id'] = id;
//     data['name'] = name;
//     if (originalRequest != null) {
//       data['originalRequest'] = originalRequest!.toJson();
//     }
//     data['status'] = status;
//     data['code'] = code;
//     data['_postman_previewlanguage'] = postmanPreviewLanguage;
//     if (headers != null) {
//       data['header'] = headers!.map((header) => header.toJson()).toList();
//     }
//     if (cookies != null) {
//       data['cookie'] = cookies;
//     }
//     data['body'] = body;
//     return data;
//   }
// }
//
// class OriginalRequest {
//   String? method;
//   List<Header>? headers;
//   Body? body;
//   String? url;
//
//   OriginalRequest({this.method, this.headers, this.body, this.url});
//
//   OriginalRequest.fromJson(Map<String, dynamic> json) {
//     method = json['method'];
//     headers = (json['header'] as List?)
//         ?.map((header) => Header.fromJson(header as Map<String, dynamic>))
//         .toList();
//     body = json['body'] != null
//         ? Body.fromJson(json['body'] as Map<String, dynamic>)
//         : null;
//     url = json['url'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['method'] = method;
//     if (headers != null) {
//       data['header'] = headers!.map((header) => header.toJson()).toList();
//     }
//     if (body != null) {
//       data['body'] = body!.toJson();
//     }
//     data['url'] = url;
//     return data;
//   }
// }
//
// class Script {
//   String? type;
//   List<String>? exec;
//
//   Script({this.type, this.exec});
//
//   Script.fromJson(Map<String, dynamic> json) {
//     type = json['type'];
//     exec = json['exec'].cast<String>();
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['type'] = this.type;
//     data['exec'] = this.exec;
//     return data;
//   }
// }
//
// class Event {
//   String? listen;
//   Script? script;
//
//   Event({this.listen, this.script});
//
//   Event.fromJson(Map<String, dynamic> json) {
//     listen = json['listen'];
//     script = json['script'] != null
//         ? Script.fromJson(json['script'] as Map<String, dynamic>)
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['listen'] = listen;
//     if (script != null) {
//       data['script'] = script!.toJson();
//     }
//     return data;
//   }
// }
//
// class ProtocolProfileBehavior {
//   bool? disableBodyPruning;
//
//   ProtocolProfileBehavior({this.disableBodyPruning});
//
//   ProtocolProfileBehavior.fromJson(Map<String, dynamic> json) {
//     disableBodyPruning = json['disableBodyPruning'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['disableBodyPruning'] = disableBodyPruning;
//     return data;
//   }
// }
//
// class Variable {
//   String? id;
//   String? key;
//   String? value;
//   String? type;
//
//   Variable({this.id, this.key, this.value, this.type});
//
//   Variable.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     key = json['key'];
//     value = json['value'];
//     type = json['type'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['id'] = id;
//     data['key'] = key;
//     data['value'] = value;
//     data['type'] = type;
//     return data;
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
//
// class SignUpPage extends StatefulWidget {
//   const SignUpPage({super.key});
//
//   @override
//   State<SignUpPage> createState() => _SignUpPageState();
// }
//
// class _SignUpPageState extends State<SignUpPage> {
//   TextEditingController fullName = TextEditingController();
//   TextEditingController emailId = TextEditingController();
//   TextEditingController setPassword = TextEditingController();
//   TextEditingController confirmPassword = TextEditingController();
//   bool stPassword = false;
//   bool confPassword = false;
//   bool value = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//           backgroundColor: Colors.transparent,
//           body: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Container(
//                   color: Colors.green,
//                   child: Image.network(
//                       fit: BoxFit.fill,
//                       'https://raisingchildren.net.au/__data/assets/image/0033/48786/healthy-food-school-age-children.jpg'),
//                   height: 230,
//                 ),
//                 Container(
//                   padding: EdgeInsets.only(top: 50),
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                           topRight: Radius.circular(20),
//                           topLeft: Radius.circular(20))),
//                   child: Column(
//                     children: [
//                       Text(textAlign: TextAlign.left, 'Full Name')
//                           .paddingOnly(right: 290),
//                       Container(
//                         decoration: BoxDecoration(
//                             border: Border.all(color: Colors.grey)),
//                         child: TextField(
//                           decoration: InputDecoration(
//                             contentPadding: EdgeInsets.only(left: 10),
//                             hintText: 'Full Name',
//                           ),
//                         ),
//                       ).paddingOnly(right: 20, left: 20, top: 10),
//                       SizedBox(height: 10),
//                       Text(textAlign: TextAlign.left, 'Email Id')
//                           .paddingOnly(right: 290),
//                       Container(
//                         decoration: BoxDecoration(
//                             border: Border.all(color: Colors.grey)),
//                         child: TextField(
//                           decoration: InputDecoration(
//                             contentPadding: EdgeInsets.only(left: 10),
//                             hintText: 'Email Id',
//                           ),
//                         ),
//                       ).paddingOnly(right: 20, left: 20, top: 10),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           DropdownButton(
//                             items: [DropdownMenuItem(child: Text('India'))],
//                             onChanged: (value) {},
//                           ),
//                           DropdownButton(
//                             items: [DropdownMenuItem(child: Text('Gujarat'))],
//                             onChanged: (value) {},
//                           ),
//                           DropdownButton(
//                             items: [DropdownMenuItem(child: Text('Surat'))],
//                             onChanged: (value) {},
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 10),
//                       Text(textAlign: TextAlign.left, 'Set Password')
//                           .paddingOnly(right: 270),
//                       Container(
//                         decoration: BoxDecoration(
//                             border: Border.all(color: Colors.grey)),
//                         child: TextField(
//                           controller: setPassword,
//                           obscureText: stPassword,
//                           decoration: InputDecoration(
//                             suffixIcon: IconButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     stPassword = !stPassword;
//                                   });
//                                 },
//                                 icon: confPassword
//                                     ? Icon(Icons.visibility_off)
//                                     : Icon(Icons.visibility)),
//                           ),
//                         ),
//                       ).paddingOnly(right: 20, left: 20, top: 10),
//                       SizedBox(height: 10),
//                       Text(textAlign: TextAlign.left, 'Confirm Password')
//                           .paddingOnly(right: 240),
//                       Container(
//                         decoration: BoxDecoration(
//                             border: Border.all(color: Colors.grey)),
//                         child: TextField(
//                           obscureText: confPassword,
//                           controller: confirmPassword,
//                           decoration: InputDecoration(
//                             suffixIcon: IconButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     confPassword = !confPassword;
//                                   });
//                                 },
//                                 icon: confPassword
//                                     ? Icon(Icons.visibility_off)
//                                     : Icon(Icons.visibility)),
//                           ),
//                         ),
//                       ).paddingOnly(right: 20, left: 20, top: 10),
//                       Row(
//                         children: [
//                           Checkbox(
//                             value: this.value,
//                             onChanged: (value) {
//                               setState(() {
//                                 this.value = value!;
//                               });
//                             },
//                           ),
//                           Text(
//                               style: TextStyle(fontSize: 10),
//                               'Please confirm that you agree to our privacy policy & terms')
//                         ],
//                       ),
//                       Container(
//                         alignment: Alignment.center,
//                         child: Text('Sign Up',
//                             style: TextStyle(color: Colors.white)),
//                         width: 350,
//                         height: 50,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             color: Colors.red),
//                       ),
//                       SizedBox(height: 10),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text('Already member?'),
//                           TextButton(
//                               onPressed: () {},
//                               child: Text(
//                                 'Login',
//                                 style: TextStyle(color: Colors.blue),
//                               )),
//                         ],
//                       ),
//                       // Row(
//                       //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       //   children: [
//                       //     SvgPicture.asset('images/googlelogo.svg'),
//                       //     SvgPicture.asset('images/fblogo.svg'),
//                       //     SvgPicture.asset('images/applelogo.svg', height: 20)
//                       //   ],
//                       // ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           )),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(

        child: Center(
          child: SizedBox(
            height: 500,
            width: 800,
            child: Row(
              children: [
                Expanded(flex: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10.0, // soften the shadow
                            spreadRadius: 1.0, //extend the shadow
                            offset: Offset(
                              0.0, // Move to right 5  horizontally
                              0.0, // Move to bottom 5 Vertically
                            ),
                          )
                        ]
                    ),

                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     Row(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       children: [
                        //         Container(
                        //           decoration: const BoxDecoration(
                        //               color: Colors.blue,
                        //               borderRadius: BorderRadius.all(Radius.circular(20))
                        //           ),
                        //           child: Padding(
                        //             padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                        //             child: Row(
                        //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //               children: const [
                        //                 Icon(Icons.share , color: Colors.white,size: 14,),
                        //                 SizedBox(width: 15,),
                        //                 Text("Sign in with Facebook",style: TextStyle(color: Colors.white),)
                        //               ],
                        //             ),
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //     SizedBox(width: 10,),
                        //     Row(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       children: [
                        //         Container(
                        //           decoration: const BoxDecoration(
                        //               color: Colors.red,
                        //               borderRadius: BorderRadius.all(Radius.circular(20))
                        //           ),
                        //           child: Padding(
                        //             padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                        //             child: Row(
                        //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //               children: const [
                        //                 Icon(Icons.share , color: Colors.white,size: 14,),
                        //                 SizedBox(width: 15,),
                        //                 Text("Sign in with Google",style: TextStyle(color: Colors.white),)
                        //               ],
                        //             ),
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ],
                        // ),
                        // const SizedBox(height: 15,),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     Container(width: 60,height: 2,color: Colors.grey,),
                        //     const Padding(
                        //       padding: EdgeInsets.symmetric(horizontal: 10),
                        //       child: Text("OR"),
                        //     ) ,
                        //     Container(width: 60,height: 2,color: Colors.grey,),
                        //   ],
                        // ),
                        // const SizedBox(height: 15,),
                        Text("Sign Up" , style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),) ,
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Divider(color: Colors.grey,),
                        ),
                        Row(
                          children: const [
                            Flexible(
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: "First Name",
                                    border: OutlineInputBorder()
                                ),
                              ),
                            ),
                            SizedBox(width: 15,) ,
                            Flexible(
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: "Last Name",
                                    border: OutlineInputBorder()
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15,) ,
                        const TextField(
                          decoration: InputDecoration(
                              labelText: "Email",
                              border: OutlineInputBorder()
                          ),
                        ),
                        const SizedBox(height: 15,) ,

                        const TextField(
                          decoration: InputDecoration(
                              labelText: "Password",
                              border: OutlineInputBorder()
                          ),
                        ),

                        const SizedBox(height: 15,) ,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(value: false, onChanged:(value) {

                            },) ,
                            SizedBox(width: 5,),
                            Text("I accept the terms of service and privacy policy")
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(value: false, onChanged:(value) {

                            },) ,
                            SizedBox(width: 5,),
                            Text("Yes, keep me updated with news and offers")
                          ],
                        ),


                        const SizedBox(height: 15,) ,

                        ElevatedButton(onPressed: () {

                        }, child: const Text("Sign up")) ,
                        const SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("already have an account ?"),
                            SizedBox(width: 5,),
                            Text("login",style: TextStyle(
                                color: Colors.teal
                            ),)
                          ],
                        )
                      ],
                    ),
                  ),
                ),) ,
                Expanded(flex: 2,child: Container(
                  decoration: BoxDecoration(
                  color: Colors.teal,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10.0, // soften the shadow
                        spreadRadius: 1.0, //extend the shadow
                        offset: Offset(
                          0.0, // Move to right 5  horizontally
                          0.0, // Move to bottom 5 Vertically
                        ),
                      )
                    ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:  [
                      SvgPicture.asset("assets/login_page/login.svg",height: 180,width: 180,) ,

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      // Icon(Icons.share , color: Colors.white,size: 14,),
                                      // SizedBox(width: 15,),
                                      Text("Sign in with Facebook",style: TextStyle(color: Colors.blueGrey),)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      // Icon(Icons.share , color: Colors.white,size: 14,),
                                      // SizedBox(width: 15,),
                                      Text("Sign in with Google",style: TextStyle(color: Colors.red),)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),) ,
              ],
            ),
          )
        ),
      ),
    );
  }
}

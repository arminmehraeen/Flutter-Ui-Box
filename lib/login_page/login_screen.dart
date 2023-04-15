import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_box/login_page/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool checkBox1 = false , checkBox2 = false ;
  final _formKey = GlobalKey<FormState>();
  double height = 500 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Row(
              children: [
                Expanded(child: Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white,
                ),flex: 5,),
                Expanded(child: Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white,
                ),flex: 3,),
              ],
            ),
          ),
          Center(
              child: SizedBox(
                height: height ,
                width: 800,
                child: Row(
                  children: [
                    Expanded(flex: 5,
                      child: Container(
                        decoration: const BoxDecoration(
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(onPressed: () {

                                  }, icon: const Icon(Ionicons.logo_google,color: Colors.red,size: 22,),),
                                  IconButton(onPressed: () {

                                  }, icon: const Icon(Ionicons.logo_facebook,color: Colors.blueGrey,size: 22,),),
                                  IconButton(onPressed: () {

                                  }, icon: const Icon(Ionicons.logo_github,color: Colors.black,size: 22,),),
                                  IconButton(onPressed: () {

                                  }, icon: const Icon(Ionicons.logo_twitter,color: Colors.blue,size: 22,),),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(width: 80,height: 2,color: Colors.grey,),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 15),
                                      child: Text("OR",style: TextStyle(fontSize: 12),),
                                    ),
                                    Container(width: 80,height: 2,color: Colors.grey,),
                                  ],
                                ),
                              ),

                              const SizedBox(height: 30,) ,

                              Form(
                                  key: _formKey,
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'This field is required';
                                          }
                                          return null;
                                        },
                                        decoration: const InputDecoration(
                                          focusedErrorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(width: 1, color: Colors.teal)
                                          ),
                                          errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(width: 1, color: Colors.teal)
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(width: 1, color: Colors.teal)
                                          ),
                                          border: OutlineInputBorder() ,
                                          errorStyle: TextStyle(color: Colors.grey,fontSize: 10),
                                          labelText: "Email",
                                          labelStyle: TextStyle(fontSize: 14),

                                        ),
                                        style: const TextStyle(fontSize: 14),
                                      ),
                                      const SizedBox(height: 15,) ,
                                      TextFormField(
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'This field is required';
                                          }
                                          return null;
                                        },
                                        obscureText: true,
                                        decoration: const InputDecoration(
                                          focusedErrorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(width: 1, color: Colors.teal)
                                          ),
                                          errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(width: 1, color: Colors.teal)
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(width: 1, color: Colors.teal)
                                          ),
                                          border: OutlineInputBorder() ,
                                          errorStyle: TextStyle(color: Colors.grey,fontSize: 10),
                                          labelText: "Password",
                                          labelStyle: TextStyle(fontSize: 14),

                                        ),
                                        style: const TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  )),



                              const SizedBox(height: 30,) ,

                              ElevatedButton(onPressed: () {
                                if (_formKey.currentState!.validate()) {

                                }
                              }, child: const Text("Sign In")) ,
                              const SizedBox(height: 15,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:  [
                                  const Text("Don't have a account ?"),
                                  const SizedBox(width: 5,),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const RegisterScreen(),)) ;
                                    },
                                    child: const Text("Sign Up",style: TextStyle(
                                        color: Colors.teal
                                    ),),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),) ,
                    Expanded(flex: 2,child: Container(
                      decoration: const BoxDecoration(
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
                          Container(
                            width: 10,
                            height: 10,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                          SvgPicture.asset("assets/login_page/login.svg",height: 180,width: 180,) ,
                          Container(
                            width: 10,
                            height: 10,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          )
                        ],
                      ),
                    ),) ,
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}

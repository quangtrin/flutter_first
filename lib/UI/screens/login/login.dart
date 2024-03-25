import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_first_flutter_app/UI/screens/blogs/blogs.dart';
import 'package:the_first_flutter_app/UI/utils/colors.dart';
import 'package:the_first_flutter_app/UI/utils/dimensions.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: AppColors.mainColor
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: Dimensions.height80,),
              Padding(
                padding: EdgeInsets.all(Dimensions.height20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Login", style: TextStyle(color: AppColors.whiteColor,
                        fontSize: Dimensions.fontSize40),
                    ),
                    SizedBox(height: Dimensions.height10,),
                    Text("Welcome Back", style: TextStyle(color: AppColors.whiteColor,
                        fontSize: Dimensions.fontSize18),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Dimensions.height20,),
              Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimensions.circular60),
                            topRight: Radius.circular(Dimensions.circular60)
                        )
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(Dimensions.height20),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: Dimensions.height60,),
                          Container(
                            padding: EdgeInsets.all(Dimensions.height20),
                            decoration: BoxDecoration(
                                color:  AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(Dimensions.circular10),
                                boxShadow: const [BoxShadow(
                                    color: AppColors.boxShadowInputColor,
                                    blurRadius: 20,
                                    offset: Offset(0,10)
                                )]
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  decoration: const BoxDecoration(
                                      border: Border(bottom: BorderSide(color: AppColors.inputBorderBottomColor))
                                  ),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        hintText: "Email or phone number",
                                        hintStyle: TextStyle(color: AppColors.hintTextColor),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                      border: Border(bottom: BorderSide(color: AppColors.inputBorderBottomColor))
                                  ),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        hintText: "Password",
                                        hintStyle: TextStyle(color: AppColors.hintTextColor),
                                        border: InputBorder.none
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: Dimensions.height40,),
                          const Text(
                            "Forgot Password?",
                            style: TextStyle(
                                color:  AppColors.hintTextColor
                            ),
                          ),
                          SizedBox(height: Dimensions.height40,),
                          Container(
                            height: Dimensions.height50,
                            margin: EdgeInsets.symmetric(horizontal: Dimensions.width50),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimensions.circular50),
                              color: AppColors.backgroundButtonColor
                            ),
                            child:  TextButton(
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Blogs()),
                                );
                              },
                              child: const Center(
                                child: Text("Login",
                                  style: TextStyle(
                                      color: AppColors.textColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: Dimensions.height30,),
                          const Text(
                            "Continue with social media",
                            style: TextStyle(
                                color:  AppColors.hintTextColor
                            ),
                          ),
                          SizedBox(height: Dimensions.height30,),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  height: Dimensions.height50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(Dimensions.circular50),
                                      color: AppColors.backgroundFaceBookColor
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Facebook",
                                      style: TextStyle(
                                          color: AppColors.textColor,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: Dimensions.width30,),
                              Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(Dimensions.circular50),
                                      color: AppColors.backgroundGithubColor
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Github",
                                      style: TextStyle(
                                          color: AppColors.textColor,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }

}
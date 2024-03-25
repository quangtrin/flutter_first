import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_first_flutter_app/UI/utils/colors.dart';
import 'package:the_first_flutter_app/UI/utils/dimensions.dart';

class CreateBlog extends StatefulWidget {
  const CreateBlog({super.key});

  @override
  State<CreateBlog> createState() => _CreateBlogState();
}

class _CreateBlogState extends State<CreateBlog> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: const Text(
              "Create blogs",
              style: TextStyle(color: AppColors.textColor),
            ),
            centerTitle: true,
            iconTheme: const IconThemeData(
                color: AppColors.textColor
            ),
            backgroundColor: AppColors.backgroundButtonColor,
          ),
          body: Container(
            decoration: const BoxDecoration(
              gradient: AppColors.mainColor
            ),
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.whiteColor
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: Dimensions.textFieldCreateBlog,
                          decoration: const BoxDecoration(
                            border: Border(bottom: BorderSide(color: AppColors.inputBorderBottomColor))
                          ),
                          child: TextField(
                            maxLines: 16,
                            decoration: InputDecoration(
                              hintText: "Write anything...",
                              hintStyle: TextStyle(color: AppColors.hintTextColor),
                              border: InputBorder.none,
                              isDense: true,
                              contentPadding: EdgeInsets.all(Dimensions.height10)
                            ),
                          ),
                        ),
                      )
                      // Container(
                      //   height: Dimensions.height80,
                      //   width: Dimensions.width80,
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(Dimensions.circular50),
                      //     image: DecorationImage(image: AssetImage("assets/images/image1.jpg"), fit: BoxFit.cover)
                      //   ),
                      // )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}

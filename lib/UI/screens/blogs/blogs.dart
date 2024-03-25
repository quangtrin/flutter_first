import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:the_first_flutter_app/UI/screens/blogs/widgets/blog_item/blog_item.dart';
import 'package:the_first_flutter_app/UI/screens/create_blog/create_blog.dart';
import 'package:the_first_flutter_app/UI/utils/colors.dart';
import 'package:the_first_flutter_app/UI/utils/dimensions.dart';

class Blogs extends StatelessWidget {
  const Blogs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          endDrawer: Drawer(
            child: Center(
              child: ListView(
                children: [
                  UserAccountsDrawerHeader(
                    accountName: const Text("Quang"),
                    accountEmail: const Text("quang@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      child: ClipOval(child: Image.asset("assets/images/image1.jpg"),),
                    ),
                    decoration: const BoxDecoration(
                      color: AppColors.backgroundButtonColor
                    ),
                  ),
                  ListTile(
                    title: Text("My blogs", textAlign: TextAlign.center,),
                    hoverColor: AppColors.hintTextColor,
                  ),
                  ListTile(
                    title: Text("Other blogs", textAlign: TextAlign.center,),
                  )
                ],
              )
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CreateBlog()),
                );
              },
            child: const Icon(Icons.add),

          ),
          appBar: AppBar(
            iconTheme: const IconThemeData(
              color: AppColors.textColor
            ),
            title: const Text("Blogs", style: TextStyle(color: AppColors.textColor),),
            centerTitle: true,
            backgroundColor: AppColors.backgroundButtonColor,
          ),
          body: Container(
          padding: EdgeInsets.all(Dimensions.height10),
          decoration: const BoxDecoration(gradient: AppColors.mainColor),
              child: Column(
                children: [
                  Flexible(
                    child: RefreshIndicator(
                      onRefresh: () async{
                        return Future<void>.delayed(const Duration(seconds: 2));
                        },
                      color: AppColors.textColor,
                      backgroundColor: AppColors.backgroundButtonColor,
                      child: MasonryGridView.builder(
                          itemCount: 4,
                          physics: const ScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                          itemBuilder: (context, index) => BlogItem(
                          imageUrl: 'assets/images/image${index + 1}.jpg')),
                    ),
                  ),
                ],
              )
          ),
        )
    );
  }
}

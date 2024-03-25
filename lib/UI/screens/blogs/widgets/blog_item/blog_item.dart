import 'package:flutter/cupertino.dart';
import 'package:the_first_flutter_app/UI/components/user_name_text/user_name_text.dart';
import 'package:the_first_flutter_app/UI/utils/colors.dart';
import 'package:the_first_flutter_app/UI/utils/dimensions.dart';

class BlogItem extends StatelessWidget {
  const BlogItem({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimensions.height5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.circular10),
        color: AppColors.whiteColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const UserNameText(
            userName: "quang",
            time: "1h",
            avatarUrl: "assets/images/image1.jpg",
          ),
          Image.asset(imageUrl),
          Padding(
            padding: EdgeInsets.all(Dimensions.height5),
            child: const Text(
                "In Android match_parent and wrap_content are used to resize the widgets automatically relative to their parent to the content the widget contains. In Flutter it seems by default all widgets are set to wrap_content, how would I change it such that I can fill its width and height to that of its parent?In Android match_parent and wrap_content are used to resize the widgets automatically relative to their parent to the content the widget contains. In Flutter it seems by default all widgets are set to wrap_content, how would I change it such that I can fill its width and height to that of its parent?",
              overflow: TextOverflow.ellipsis,
              maxLines: 15,
            ),
          ),
        ],
      ),
    );
  }
}

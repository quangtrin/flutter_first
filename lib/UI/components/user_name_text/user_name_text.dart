import 'package:flutter/cupertino.dart';
import 'package:the_first_flutter_app/UI/utils/colors.dart';
import 'package:the_first_flutter_app/UI/utils/dimensions.dart';

class UserNameText extends StatelessWidget {
  const UserNameText({super.key, required this.userName, required this.time, required this.avatarUrl});

  final String userName;
  final String time;
  final String avatarUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimensions.height5),
      child: Row(
        children: [
          Container(
            height: Dimensions.height35,
            width: Dimensions.width35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.circular50),
              image: DecorationImage(
                image: ExactAssetImage(avatarUrl),
                fit: BoxFit.cover
              )
            ),
      
          ),
          SizedBox(width: Dimensions.width5,),
          Text(
            userName,
            style: const TextStyle(fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
          const Expanded(child: SizedBox()),
          Text(
            time,
            style: const TextStyle(color: AppColors.hintTextColor),
          ),
          SizedBox(width: Dimensions.width5,)
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_openim_widget/flutter_openim_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatCarteView extends StatelessWidget {
  const ChatCarteView({
    Key? key,
    required this.name,
    this.url,
  }) : super(key: key);
  final String name;
  final String? url;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 4.h, bottom: 4.h),
      width: 200.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border:
              Border.all(width: 1, color: Color.fromARGB(255, 247, 247, 247))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ChatAvatarView(
                  size: 40.h,
                  url: url,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: Text(
                    name,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Container(
              color: Color(0xFFE9E9E9),
              height: 1 / MediaQuery.of(context).devicePixelRatio,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.h, bottom: 4.h, left: 16.w),
            child: Text(
              UILocalizations.carte,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Color(0xFF999999),
                fontSize: 11.sp,
              ),
            ),
          )
        ],
      ),
    );
  }
}

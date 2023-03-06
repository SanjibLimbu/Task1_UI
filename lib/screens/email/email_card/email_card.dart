import 'package:flutter/material.dart';
import 'package:ui/screens/email/email_card/email_attached_file.dart';
import 'package:ui/utils/color.dart';

class EmailCard extends StatelessWidget {
  const EmailCard({
    super.key,
    required this.emailData,
  });

  final Map<String, dynamic> emailData;

  @override
  Widget build(BuildContext context) {
    //texttheme
    TextTheme theme = Theme.of(context).textTheme;

    //title style
    TextStyle titleStyle = theme.labelSmall!.copyWith(
      letterSpacing: 0,
      fontWeight: emailData['isUnread'] == true || emailData['isFileAttached']
          ? FontWeight.w600
          : FontWeight.w400,
    );
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 16,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: gray200,
          ),
        ),
      ),

      //column for email heading and file

      //Column(
      /////////Row(
      /////////////profileIcon
      /////////////column(
      ////////////////////Row(title and time),
      ////////////////////Row(subtitle and star)
      ///////////////////)
      /////////file()
      ////////////
      ////////)

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //email heading
          //include- profile icon, title, subtitle, time and star

          //Row(
          //////profileIcon
          //////column(
          /////////////Row(title and time),
          /////////////Row(subtitle and star)
          /////////////)
          ////)

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                  flex: 1,
                  child: emailData['icon'] != null
                      ? Image.asset(
                          emailData['icon'],
                          height: 32,
                          width: 32,
                        )
                      : Container(
                          height: 32,
                          width: 32,
                          decoration: const BoxDecoration(
                              color: softGreenColor, shape: BoxShape.circle),

                          //first letter of member
                          child: Center(
                            child: Text(
                              'A',
                              style: theme.labelMedium!
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                          ),
                        )),
              const SizedBox(
                width: 12,
              ),
              Flexible(
                flex: 9,

                //column(
                ////////Row(title and time)
                ////////Row(subtitle and start)
                ////////)

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //title and time row
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //title
                        Flexible(
                          flex: 8,

                          //check if email is important or not and use condition accordingly
                          child: emailData['isImportant'] == true
                              ? TextButton.icon(
                                  onPressed: () {},
                                  //button style
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    minimumSize:
                                        const Size(double.infinity, 24),
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    alignment: Alignment.topLeft,
                                  ),
                                  //button style end
                                  icon: Image.asset(
                                    'assets/images/label_important.png',
                                    height: 13.33,
                                    width: 17,
                                  ),
                                  label: Text(emailData['title'],
                                      overflow: TextOverflow.ellipsis,
                                      style: titleStyle),
                                )
                              :
                              //if email is not important
                              Text(emailData['title'],
                                  overflow: TextOverflow.ellipsis,
                                  style: titleStyle),
                        ),

                        //time
                        Flexible(
                          flex: 3,
                          child: Text(
                            emailData['time'],
                            style: theme.labelSmall!.copyWith(
                              letterSpacing: 0,

                              //aplly fontweight w600 is email is unread and file is attached
                              fontWeight: emailData['isUnread'] == true ||
                                      emailData['isFileAttached']
                                  ? FontWeight.w600
                                  : FontWeight.w400,
                              color: secondaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    //subtitle and star row
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //subtitle
                        Flexible(
                          flex: 8,
                          child: Text(
                            emailData['subtitle'],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.labelSmall!.copyWith(
                              letterSpacing: 0,

                              //if email is unread true apply secondary color else teritary color
                              color: emailData['isUnread'] == true
                                  ? secondaryColor
                                  : teritaryColor,
                            ),
                          ),
                        ),
                        //star
                        Flexible(
                          flex: 2,

                          //if if email is star or not
                          child: emailData['isStarred']
                              ?
                              //if email, starred
                              Image.asset(
                                  'assets/images/star_filled.png',
                                  height: 20,
                                  width: 20,
                                )
                              : //if email instarred
                              Image.asset(
                                  'assets/images/star_unfilled.png',
                                  height: 20,
                                  width: 20,
                                ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),

          //file attached detail
          FileDetail(
            emailData: emailData,
          ),
        ],
      ),
    );
  }
}

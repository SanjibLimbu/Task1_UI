import 'package:flutter/material.dart';
import 'package:ui/screens/widget/btn_widget.dart';
import 'package:ui/utils/color.dart';

Future<dynamic> logOutShowModal(BuildContext context) {
    return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(
          12,
        ),
        topRight: Radius.circular(
          12,
        ),
      )),
      context: context,
      builder: (context) => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/drag_handle.png',
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Text(
                'Are you sure?',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      fontSize: 18,
                    ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Are you sure you want to Logout from the Workspace?',
                style: TextStyle(
                  color: teritaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 24,
              ),

              //logout button
              Btn(
                btnFunctin: () {},
                title: 'Logout',
                bgColor: errorColor,
              ),
              const SizedBox(
                height: 20,
              ),

              Center(
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: teritaryColor,
                      ),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Image.asset(
                  'assets/images/drag_handle.png',
                  width: 134,
                  height: 5,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
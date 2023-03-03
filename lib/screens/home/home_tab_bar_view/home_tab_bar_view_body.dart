import 'package:flutter/material.dart';
import 'package:ui/screens/home/home_tab_bar_view/project_members.dart';
import 'package:ui/screens/home/home_tab_bar_view/project_progress_bar.dart';
import 'package:ui/screens/home/home_tab_bar_view/project_status.dart';
import 'package:ui/utils/color.dart';

class HomeTabBarView extends StatelessWidget {
  const HomeTabBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.only(
        right: 16,
        left: 16,
      ),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: gray200,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //project title row
                    Row(
                      children: [
                        Text(
                          'Revamp Project',
                          style: theme.labelMedium!.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          width: 11,
                        ),
                        const ImageIcon(
                          AssetImage(
                            'assets/images/globe.png',
                          ),
                          color: mainColor,
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.more_vert_rounded,
                          color: secondaryColor,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),

                    //project status column
                    Column(
                      children: const [
                        ProjectStatus(
                          title: 'Template:',
                          status: 'Kanban',
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        ProjectStatus(
                          title: 'Status:',
                          status: 'On hold',
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        ProjectStatus(
                          title: 'Last Updated:',
                          status: '2m ago',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.47,
                    ),

                    //project progress bar
                    const ProjectProgressBar(),
                    const SizedBox(
                      height: 20.47,
                    ),
                    //project members
                    const ProjectMembers()
                  ],
                ),
              ),
              //on last container sizedbox heigth 16 is applied
              index == 5 - 1
                  ? const SizedBox(
                      height: 16,
                    )
                  : const SizedBox(),
            ],
          );
        },
      ),
    );
  }
}

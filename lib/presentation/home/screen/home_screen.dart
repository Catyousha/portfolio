import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../widgets/widgets.dart';
import '../section/section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: PageContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const HomeHeaderSection(),
              const AboutMeSection(),
              ScreenTypeLayout.builder(
                mobile: (context) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    FeaturedSkillsSection(),
                    SizedBox(height: 8),
                    FeaturedProjectSection(),
                    SizedBox(height: 8),
                    EducationSection(),
                    SizedBox(height: 8),
                    ExperiencesSection(),
                  ],
                ),
                tablet: (context) => GridView.count(
                  shrinkWrap: true,
                  primary: false,
                  crossAxisCount: 2,
                  childAspectRatio: 16 / 10,
                  children: const [
                    FeaturedSkillsSection(),
                    FeaturedProjectSection(),
                    EducationSection(),
                    ExperiencesSection(),
                  ],
                ),
              ),
              const ContactSection(),
            ],
          ),
        ),
      ),
    );
  }
}

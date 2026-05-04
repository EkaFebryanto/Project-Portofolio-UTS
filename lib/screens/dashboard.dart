import 'package:flutter/material.dart';
import 'package:project_uts_portofolio/constants/app_colors.dart';
import 'package:project_uts_portofolio/screens/about_me.dart';
import 'package:project_uts_portofolio/screens/counter_screen.dart';
import 'package:project_uts_portofolio/screens/dynamic_list_screen.dart';
import 'package:project_uts_portofolio/screens/grid_view_screen.dart';
import 'package:project_uts_portofolio/screens/nested_widget_screen.dart';
import 'package:project_uts_portofolio/screens/simple_navigation_screen.dart';
import 'package:project_uts_portofolio/screens/user_input_screen.dart';
import 'package:project_uts_portofolio/widgets/project_button.dart';
import 'package:project_uts_portofolio/widgets/section_header.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final Map<String, bool> buttonStates = {
    'counter': false,
    'nested': false,
    'input': false,
    'list': false,
    'navigation': false,
    'grid': false,
    'about': false,
  };

  final List<Map<String, dynamic>> projects = [
    {'name': 'Counter', 'key': 'counter', 'screen': const CounterScreen()},
    {
      'name': 'Widget Bertingkat',
      'key': 'nested',
      'screen': const NestedWidgetScreen(),
    },
    {
      'name': 'User Input Example',
      'key': 'input',
      'screen': const UserInputScreen(),
    },
    {
      'name': 'Dynamic List Example',
      'key': 'list',
      'screen': const DynamicListScreen(),
    },
    {
      'name': 'Navigasi Sederhana',
      'key': 'navigation',
      'screen': const SimpleNavigationScreen(),
    },
    {'name': 'Grid View', 'key': 'grid', 'screen': const GridViewScreen()},
    {'name': 'Tentang Saya', 'key': 'about', 'screen': const AboutMeScreen()},
  ];

  void _navigateToScreen(int index) {
    setState(() {
      buttonStates[projects[index]['key']] = true;
    });

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => projects[index]['screen']),
    ).then((_) {
      setState(() {
        buttonStates[projects[index]['key']] = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MyPorto'), elevation: 0),
      body: Container(
        decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    gradient: AppColors.surfaceGradient,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.primaryDark.withValues(alpha: 0.1),
                        blurRadius: 22,
                        offset: const Offset(0, 12),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SectionHeader(
                        title: 'Portofolio Digital',
                        subtitle: 'Cek hasil karyaku disini',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Aplikasi yang bisa kamu coba:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                Column(
                  children: List.generate(projects.length, (index) {
                    final projectName = projects[index]['name'] as String;
                    final projectKey = projects[index]['key'] as String;
                    final isClicked = buttonStates[projectKey] ?? false;

                    return Padding(
                      padding: const EdgeInsets.only(bottom: 14),
                      child: ProjectButton(
                        label: projectName,
                        icon: Icons.arrow_forward_ios,
                        isPressed: isClicked,
                        onPressed: () => _navigateToScreen(index),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

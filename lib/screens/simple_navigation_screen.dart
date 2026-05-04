import 'package:flutter/material.dart';
import 'package:project_uts_portofolio/constants/app_colors.dart';

class SimpleNavigationScreen extends StatefulWidget {
  const SimpleNavigationScreen({super.key});

  @override
  State<SimpleNavigationScreen> createState() => _SimpleNavigationScreenState();
}

class _SimpleNavigationScreenState extends State<SimpleNavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const PageContent(
      title: 'Beranda',
      icon: Icons.home,
      description: 'Ini adalah halaman beranda',
    ),
    const PageContent(
      title: 'Profil',
      icon: Icons.person,
      description: 'Ini adalah halaman profil',
    ),
    const PageContent(
      title: 'Pengaturan',
      icon: Icons.settings,
      description: 'Ini adalah halaman pengaturan',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Navigasi Sederhana'), elevation: 0),
      body: Container(
        decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: _pages[_currentIndex],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Beranda'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profil'),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Pengaturan',
          ),
        ],
      ),
    );
  }
}

class PageContent extends StatelessWidget {
  final String title;
  final IconData icon;
  final String description;

  const PageContent({
    required this.title,
    required this.icon,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 88, color: theme.colorScheme.primary),
            const SizedBox(height: 22),
            Text(
              title,
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              description,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

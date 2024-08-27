import 'package:flutter/material.dart';

/// {@template navigation_item}
/// Widget that displays navigation items wrapped in a [ListTile].
/// {@endtemplate}
class NavigationItem extends StatelessWidget {
  /// {@macro navigation_item}
  const NavigationItem({
    required this.title,
    required this.icon,
    required this.onTap,
    this.selected = false,
    super.key,
  });

  /// Title of the navigation item.
  final String title;

  /// Icon for the navigation item.
  final IconData icon;

  /// Whether the navigation item is currently selected.
  final bool selected;

  /// Called when the user taps or clicks on the navigation item.
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
      horizontalTitleGap: 8,
      dense: true,
      selected: selected,
      leading: Icon(icon, size: 20),
      iconColor: Colors.black45,
      splashColor: const Color(0xFFFFF3F6),
      selectedColor: Colors.red[900],
      selectedTileColor: const Color(0xFFFFF3F6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: selected ? FontWeight.w600 : FontWeight.w500,
              color: selected ? Colors.red[900] : null,
            ),
      ),
      onTap: onTap,
    );
  }
}

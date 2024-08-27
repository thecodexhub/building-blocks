import 'package:flutter/material.dart';

/// {@template navigation_team_item}
/// Widget that displays team items in the navigation.
/// 
/// Uses [ListTile] widget.
/// {@endtemplate}
class NavigationTeamItem extends StatelessWidget {
  /// {@macro navigation_team_item}
  const NavigationTeamItem({
    required this.title,
    required this.onTap,
    this.selected = false,
    super.key,
  });

  /// Title for the navigation team item.
  /// 
  /// The first character of the title will be used in the laeding.
  final String title;

  /// Calls when the user taps or clicks on the item.
  final VoidCallback onTap;

  /// Whether this item is selected.
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
      horizontalTitleGap: 12,
      dense: true,
      selected: selected,
      leading: SizedBox(
        height: 24,
        width: 24,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: selected ? const Color(0xFFB71C1C) : Colors.black45,
            ),
          ),
          child: Center(
            child: Text(
              title.substring(0, 1),
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: selected ? FontWeight.w600 : FontWeight.w500,
                    color: selected ? Colors.red[900] : Colors.black45,
                  ),
            ),
          ),
        ),
      ),
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

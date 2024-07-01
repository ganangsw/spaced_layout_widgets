import 'package:flutter/material.dart';

enum SpacingDirection {
  horizontal,
  vertical,
}

class SpacedLayout extends StatelessWidget {
  const SpacedLayout({
    super.key,
    required this.children,
    this.spacing = 8.0,
    required this.direction,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisSize = MainAxisSize.max,
  });

  /// The list of widgets to layout with spacing
  final List<Widget> children;

  /// The spacing betwen each child widget
  final double spacing;

  /// The direction in which the widgets are laid out
  final SpacingDirection direction;

  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisSize mainAxisSize;

  @override
  Widget build(BuildContext context) {
    return direction == SpacingDirection.horizontal ? _buildRow() : _buildColumn();
  }

  Widget _buildRow() {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: _addSpacing(),
    );
  }

  Widget _buildColumn() {
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: _addSpacing(),
    );
  }

  List<Widget> _addSpacing() {
    List<Widget> spacedChildren = [];
    for (int i = 0; i < children.length; i++) {
      spacedChildren.add(children[i]);
      if (i < children.length - 1) {
        spacedChildren.add(
          direction == SpacingDirection.horizontal ? SizedBox(width: spacing) : SizedBox(height: spacing),
        );
      }
    }
    return spacedChildren;
  }
}

import 'package:flutter/material.dart';

class HeavyScrollPhysics extends ScrollPhysics {
  const HeavyScrollPhysics({super.parent});

  @override
  HeavyScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return HeavyScrollPhysics(parent: buildParent(ancestor));
  }

  @override
  double applyPhysicsToUserOffset(ScrollMetrics position, double offset) {
    return offset * 0.5;
  }
}

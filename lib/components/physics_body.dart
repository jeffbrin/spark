library spark;

import 'package:flame/components.dart';
import 'package:flutter/foundation.dart';

/// References a component and applies physics forces to it.
class PhysicsBody {
  double gravity = 98.1;
  double terminalYVelocity = double.infinity;
  PositionComponent target;
  Vector2 velocity = Vector2.all(0);

  /// Creates a PhysicsBody with a reference to a component.
  PhysicsBody(this.target);

  /// Updates the target component with the current
  /// forces applying to the PhysicsBody.
  void update(double deltaTime) {
    _applyGravity(deltaTime);
    _clampTerminalVelocity();

    target.y += velocity.y * deltaTime;
    target.x += velocity.x * deltaTime;
  }

  void _applyGravity(double deltaTime) {
    velocity.y += gravity * deltaTime;
  }

  void _clampTerminalVelocity() {
    velocity.y = clampDouble(velocity.y, -terminalYVelocity, terminalYVelocity);
  }

  void addForce(Vector2 force) {
    velocity.x += force.x;
    velocity.y += force.y;
  }
}

<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

Spark helps with game development by providing several components which help manage physics, collisions and animation.
For examples, see the `/examples` folder or the [usage](#usage) section.

## Features
Important features of the package include:
* [PhysicsBody](https://github.com/jeffbrin/spark/blob/main/lib/components/physics_body.dart)
* [Visuals](https://github.com/jeffbrin/spark/blob/main/lib/helpers/visuals.dart)
* [FootCollider](https://github.com/jeffbrin/spark/blob/main/lib/components/foot_collider.dart)

## Getting started

To add this package to your project, add this package folder to your application. Download the code by opening a git terminal and writing 
  
    git clone https://github.com/jeffbrin/spark.git

Once you have the package downloaded, you can follow this tutorial to add the package to your flame app.

<a href="https://youtu.be/fdwBWA6Djj4" target="_blank">Youtube Tutorial</a>

## Usage

Find longer examples in the `/example` folder.

### Visuals.getAnimation()
```dart
class Wizard extends SpriteAnimationComponent {

  Wizard({size, position}) : super(size: size, position: position);

  @override
  Future<void>? onLoad() async {
    super.onLoad();
    animation = await Visuals.getAnimation(
        'red_hood.png', Vector2(112, 133), 0.1,
        startRow: 5, startColumn: 2);
  }
}
```

### PhysicsBody
```dart
class Object extends SpriteAnimationComponent {
  late PhysicsBody physicsBody;

  Object({size, position}) : super(size: size, position: position) {
    physicsBody = PhysicsBody(this);
  }

  @override
  void update(double dt) {
    super.update(dt);
    physicsBody.update(dt);
  }
}
```

## Additional information
As of October 18th 2022, this package is still being actively updated.

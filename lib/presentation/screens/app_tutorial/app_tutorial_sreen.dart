import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String description;
  final String image;

  const SlideInfo(
    this.title,
    this.description,
    this.image,
  );
}

final slides = <SlideInfo>[
  
  SlideInfo('Busca la comida', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'assets/images/1.png'),
  SlideInfo('Entrega rapida', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'assets/images/2.png'),
  SlideInfo('Disfruta la comida', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'assets/images/3.png'),
];


class AppTutorialScreen extends StatefulWidget {

  static const String name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {

  final PageController pageViewController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();
    
    pageViewController.addListener(() { 

      final page = pageViewController.page ?? 0;

      if (!endReached && page >= (slides.length - 1.5)) {
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            physics: const BouncingScrollPhysics(),
            children: slides.map(
              (slideData) => _Slide(
                title: slideData.title,
                description: slideData.description,
                image: slideData.image,
              )
            ).toList(),
          ),

          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              child: const Text('Salir'),
              onPressed: () => context.pop()
            ),         
          ),

          endReached ? Positioned(
            bottom: 30,
            right: 30,
            child: FadeInRight(
              from: 15,
              delay: const Duration(microseconds: 500),
              child: FilledButton(
                onPressed: () => context.pop(),
                child: const Text('Comenzar'),
              ),
            ),         
          ) : const SizedBox(),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {

  final String title;
  final String description;
  final String image;

  const _Slide({
    required this.title, 
    required this.description, 
    required this.image
  });

  @override
  Widget build(BuildContext context) {

    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final descriptionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage(image)),
            const SizedBox(height: 20),
            Text(title, style: titleStyle,),
            const SizedBox(height: 10),
            Text(description, style: descriptionStyle)
          ],
        )
      ),
    );
  }
}
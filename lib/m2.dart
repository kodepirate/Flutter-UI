// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Color greenTouch = Vx.hexToColor("#788164");
Color blueTouch = Vx.hexToColor("#182f4a");

class M2 extends StatelessWidget {
  const M2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.hexToColor("#a3e6e1"),
      body: SafeArea(
        child: Column(children: [
          //calender
          Calender().h(context.percentHeight * (Vx.isWeb ? 33 : 30)),

          //Music
          MusicBox(),

          //Chats
          Groups(),

          Fuck(),
        ]).scrollVertical(),
      ),

      //Bottom bar

      bottomNavigationBar: bottomBar(),
    );
  }
}

class Calender extends StatelessWidget {
  const Calender({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedBox(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: VStack(
              [
                "Today".text.xl2.color(greenTouch).make(),
                "22".text.xl6.bold.make(),
                "Monday".text.xl2.make(),
              ],
            ),
          ),
          VStack(
            [
              Spacer(),
              VxCapsule(
                height: 30,
                width: context.percentWidth * 50,
                backgroundColor: greenTouch,
                child: "Add Task"
                    .text
                    .white
                    .light
                    .xl
                    .center
                    .letterSpacing(1.5)
                    .makeCentered(),
              ),
              Spacer(),
              VStack(
                [
                  Text("Wake Up").text.white.semiBold.make(),
                  Text("7:00 AM").text.xl2.make(),
                ],
                axisSize: MainAxisSize.max,
              )
                  .box
                  .border(color: greenTouch, width: 4)
                  .p12
                  .rounded
                  .width(context.percentWidth * 50)
                  .make(),
              Spacer(),
              VxCapsule(
                height: 30,
                width: context.percentWidth * 50,
                backgroundColor: Color.fromARGB(255, 35, 125, 153),
                child: "Jerk Off"
                    .text
                    .white
                    .light
                    .xl
                    .center
                    .letterSpacing(1.5)
                    .makeCentered(),
              ),
            ],
          ),
        ],
      ),
    ).p12();
  }
}

// Music Box
class MusicBox extends StatelessWidget {
  const MusicBox({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedBox(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: VxCapsule(
            backgroundColor: Vx.amber100,
            height: 30,
            width: context.percentWidth * 35,
            child: [
              Icon(Icons.phone_android).scale(scaleValue: 0.90),
              const Text("Phone Speaker").text.make(),
            ].hStack(),
          ).objectBottomRight(),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VxBox()
                .square(100)
                .roundedFull
                .bgImage(DecorationImage(
                    image: NetworkImage(
                        "https://i.pinimg.com/originals/a2/36/90/a236906b1858a9704f8da5f9566108f1.jpg"),
                    fit: BoxFit.cover))
                .make(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "The Weeknd".text.xl2.bold.make(),
                "Blinding Lights".text.xl2.make(),
              ],
            ).p12(),
          ],
        ),
        Slider(
          value: 0.5,
          onChanged: (value) {},
          activeColor: blueTouch,
          inactiveColor: Colors.white,
        ),
        Row(
          children: [
            "1:20".text.make(),
            Spacer(),
            "3:40".text.make(),
          ],
        ).p12(),
        HStack(
          [
            Icon(Icons.shuffle, color: Colors.white),
            Spacer(),
            Icon(Icons.fast_rewind, color: Colors.white),
            Spacer(),
            Icon(Icons.play_arrow, color: Colors.white),
            Spacer(),
            Icon(Icons.fast_forward, color: Colors.white),
            Spacer(),
            Icon(Icons.repeat, color: Colors.white),
          ],
          alignment: MainAxisAlignment.spaceAround,
        ).p12(),
      ]),
    ).wFull(context).pSymmetric(h: 12);
  }
}

class Groups extends StatelessWidget {
  const Groups({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: HStack([
        "Groups".text.xl2.semiBold.make(),
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://i.pinimg.com/originals/96/6a/2b/966a2b3f5f307c4b97070b22623e6a9e.jpg"),
          radius: 40,
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://i.pinimg.com/originals/96/6a/2b/966a2b3f5f307c4b97070b22623e6a9e.jpg"),
          radius: 40,
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://i.pinimg.com/originals/96/6a/2b/966a2b3f5f307c4b97070b22623e6a9e.jpg"),
          radius: 40,
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://i.pinimg.com/originals/96/6a/2b/966a2b3f5f307c4b97070b22623e6a9e.jpg"),
          radius: 40,
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://i.pinimg.com/originals/96/6a/2b/966a2b3f5f307c4b97070b22623e6a9e.jpg"),
          radius: 40,
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://i.pinimg.com/originals/96/6a/2b/966a2b3f5f307c4b97070b22623e6a9e.jpg"),
          radius: 40,
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://i.pinimg.com/originals/96/6a/2b/966a2b3f5f307c4b97070b22623e6a9e.jpg"),
          radius: 40,
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://i.pinimg.com/originals/96/6a/2b/966a2b3f5f307c4b97070b22623e6a9e.jpg"),
          radius: 40,
        ),
      ]),
    );
  }
}

class Fuck extends StatelessWidget {
  const Fuck({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Text("FUCK YOU BITCH"),
    );
  }
}

class bottomBar extends StatelessWidget {
  const bottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: SafeArea(
        child: RoundedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.home),
                backgroundColor: blueTouch,
              ),
              Icon(Icons.message, color: Colors.white),
              Icon(Icons.music_note, color: Colors.white),
              Icon(Icons.bookmark, color: Colors.white),
              Icon(Icons.settings, color: Colors.white),
            ],
          ),
        ).p12(),
      ),
    );
  }
}

class RoundedBox extends StatelessWidget {
  const RoundedBox({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return VxBox(child: child)
        .color(Vx.hexToColor("#182f4a"))
        .roundedLg
        .shadow
        .p20
        .make();
  }
}

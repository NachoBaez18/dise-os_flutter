import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //image central
       const Image(image: AssetImage('assets/image.jpg')),
        //titulo
       const _Title(),

        //Button section
       const ButtonSection(),

        //description

        Container(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Text('Lorem do incididunt dolore magna ex non proident mollit labore in tempor. Laborum dolor cupidatat aliqua laboris velit incididunt labore minim veniam dolore velit. Esse amet nostrud sint exercitation duis occaecat exercitation dolore deserunt incididunt.'))
      ],
    ));
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Deschinen Lake Campgroud',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kanderssteg, Switzerland',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:const [
          CustomButton(icon:Icons.call,text: 'CALL',),
          CustomButton(icon:Icons.location_on,text: 'ROUTE',),
          CustomButton(icon:Icons.share,text: 'SHARE',),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButton({
    Key? key, required this.icon, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          this.icon,
          color: Colors.blue,
          size: 30,
        ),
        Text(
          this.text,
          style:const TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}

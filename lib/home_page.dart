import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(height: 70, width: 20),
              GestureDetector(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.network(
                    'https://scontent.fkhi20-1.fna.fbcdn.net/v/t39.30808-1/484074580_2303853949990570_9011627301857853580_n.jpg?stp=dst-jpg_s100x100_tt6&_nc_cat=106&ccb=1-7&_nc_sid=e99d92&_nc_ohc=AGcBrM30rzYQ7kNvwF9IrgJ&_nc_oc=AdlvV7Y29J3wuqenKH7GQjQwY7P4diULruVkVpnKzKjX4druzO85MDZrYCCyl1FH1pg&_nc_zt=24&_nc_ht=scontent.fkhi20-1.fna&_nc_gid=equlwuwRQkywRXPHZnpVlQ&oh=00_AfRWrUCZVwNBH74RGivy-dHdX2B7XDy8HT35y3IoHpEk_Q&oe=687484AE',
                    width: 48,
                    height: 48,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 350,
                child: TextButton(
                  onPressed: () {},

                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                      BorderSide(color: Colors.grey),
                    ),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                    ),
                  ),
                  child: Text(
                    "What's on your mind?",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),

              SizedBox(width: 10),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.image),
                color: Colors.green,
              ),
            ],
          ),
          Divider(
            color: const Color.fromARGB(141, 158, 158, 158),
            height: 1,
            thickness: 3,
          ),
          stories(),
        ],
      ),
    );
  }
}

Widget stories() {
  List<Map<String, String>> storypanel = [];
  storypanel.addAll([
    {"name": "Add to story", "image": "", "isAddStory": ""},
  ]);

  return SizedBox(
    height: 200,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: storypanel.length,
      itemBuilder: (context, index) {
        final story = storypanel[index];
        final isAddStory = story["isAddStory"] == "true";
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 6),
          width: 120,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ClipRect(
                // borderRadius: BorderRadius.circular(16),
                child: Image.network(story["image"]!),
              ),
            ],
          ),
        );
      },
    ),
  );
}

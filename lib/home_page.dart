import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                Expanded(
                  child: SizedBox(
                    // width: 300,
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
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
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

            // Posts here
            post(
              "Dark Code",
              "1 hour ago",
              "https://scontent.fkhi28-1.fna.fbcdn.net/v/t39.30808-1/430701609_847514497388455_7706757909587735002_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=102&ccb=1-7&_nc_sid=2d3e12&_nc_ohc=7m60IlyOjw0Q7kNvwGa_Ma0&_nc_oc=AdmGsfqxD4B3vWx7zVx3xdFx8DUdqenRIi1BCwGrwoQn0s1s44TCtDF0HIiBqqiI0eQ&_nc_zt=24&_nc_ht=scontent.fkhi28-1.fna&_nc_gid=D-W4HUjV8oaQsbQ-2S6U1A&oh=00_AfS3dchojMyB4AS59bIsboH9vQbtYRchla57TdfY3Km6nA&oe=6877FCE4",
              "Errors will occur, but the lessons you learn from them are where true education lies.",
              "https://scontent.fkhi28-1.fna.fbcdn.net/v/t39.30808-6/516557505_1212277980912103_5502661930131392816_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=833d8c&_nc_ohc=8ZRC2Eksx6oQ7kNvwGJKIYs&_nc_oc=AdlgQC_wuEsuKgEcSxIWc1NwGDgLQJsGDJBrv8Ss2WMNxYYZEkq3i5ypyxNYXIpBSTQ&_nc_zt=23&_nc_ht=scontent.fkhi28-1.fna&_nc_gid=SQME7BROJThv4eJAp3Z56Q&oh=00_AfSfINPBaCiQEO8Gz0W4pJjh_MCjXHzX9IhR2Z-LQEHIKg&oe=68782512",
            ),
            post(
              "Anas Shamsi",
              "2 hour ago",
              "https://scontent.fkhi28-1.fna.fbcdn.net/v/t39.30808-1/484074580_2303853949990570_9011627301857853580_n.jpg?stp=dst-jpg_s100x100_tt6&_nc_cat=106&ccb=1-7&_nc_sid=e99d92&_nc_ohc=TWnW5ekJ_WcQ7kNvwG5uLAF&_nc_oc=Adk4SC6k4PxFs30_50OlEpcxVoqt_FWUPy4712RnBOB8xt68K02UVVULZ1PkpyNX_2I&_nc_zt=24&_nc_ht=scontent.fkhi28-1.fna&_nc_gid=d_nczVNFiV-Q5EobbzdAUw&oh=00_AfSqoRqVCrgD87TMgIKSD404-zK5VuM0jELHjH0mpWVIlQ&oe=687808AE",
              "Huntington WV",
              "https://scontent.fkhi28-1.fna.fbcdn.net/v/t39.30808-6/500360299_10160603778330793_647332469274762358_n.jpg?stp=dst-jpg_s720x720_tt6&_nc_cat=106&ccb=1-7&_nc_sid=833d8c&_nc_ohc=95lStGswxmkQ7kNvwEC-qU2&_nc_oc=AdnI7jmtm1u9_ft7K3XK-ZWt_D4eqSd2yjfZV0OUHwseHetnVfR4KaDAvhkV4djyMw4&_nc_zt=23&_nc_ht=scontent.fkhi28-1.fna&_nc_gid=InQgl2uz4j_u4Ter61H3Xw&oh=00_AfSYmOhXociv4rCzl-m6rl2yiQ9UDYpBoBnpH44kAH4www&oe=68780453",
            ),
          ],
        ),
      ),
    );
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

  Widget post(
    String profilename,
    String uploadtime,
    String profileurl,
    String content,
    String posturl,
  ) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(profileurl),
                  radius: 20,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      profilename,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(uploadtime, style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
              ],
            ),
          ),

          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(content),
          ),

          SizedBox(height: 10),

          Image.network(posturl, width: double.infinity, fit: BoxFit.cover),

          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.thumb_up_alt_outlined),
                  label: Text("Like"),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.comment_outlined),
                  label: Text("Comment"),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.share_outlined),
                  label: Text("Share"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

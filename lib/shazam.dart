import 'package:flutter/material.dart';

final List<String> image = [
  "https://i.ytimg.com/an_webp/3JCjWSKUIlA/mqdefault_6s.webp?du=3000&sqp=CIC34tIG&rs=AOn4CLDEv-GxBUhAR-kuK9wiMQviiOIKTQ",
  "https://i.ytimg.com/an_webp/Qz-CAjLvNeU/mqdefault_6s.webp?du=3000&sqp=COS54tIG&rs=AOn4CLC6SGmJLBLr9HUCudRq59Y46ZZ9bA",
];
final List<String> text = ["BASS MUSIC", "CAR MUSIC"];
final List<String> name = ["Dai Dai", "Ariana Grande"];
final List<String> printname = ["BASS MUSIC", "CAR MUSIC"];

class Shazam extends StatelessWidget {
  const Shazam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentGeometry.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade600, Colors.blue.shade900],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsetsGeometry.symmetric(horizontal: 20),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white.withValues(alpha: 0.4),
                        ),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white.withValues(alpha: 0.4),
                      ),
                      child: IconButton(
                        onPressed: () {
                          print("Settings");
                        },
                        icon: Icon(Icons.settings, size: 30),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 140),
                Text(
                  "Tap to Shazam",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: .bold,
                  ),
                ),
                InkWell(
                  onTap: () {
                    print("Shazam");
                  },
                  child: Container(
                    margin: EdgeInsets.all(30),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.4),
                      ),
                      borderRadius: BorderRadius.circular(200),
                      color: Colors.white.withValues(alpha: 0.2),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(100),
                      child: Image(
                        errorBuilder: (context, error, stackTrace) => Column(
                          children: [
                            Icon(
                              Icons.error,
                              color: Colors.white.withValues(alpha: 0.2),
                              size: 100,
                            ),
                            Text(
                              textAlign: .center,
                              "Couldn't load this file",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white.withValues(alpha: 0.4),
                              ),
                            ),
                          ],
                        ),
                        loadingBuilder: (context, child, loadingProgress) =>
                            loadingProgress != null
                            ? CircularProgressIndicator.adaptive()
                            : child,
                        image: NetworkImage(
                          "https://media.giphy.com/avatars/shazam/zulQnovzCEzj.gif",
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 140),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 60,
                        vertical: 10,
                      ),
                      child: Text(
                        "Recently Found",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: .bold,
                          color: Colors.white.withValues(alpha: 0.5),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      image.length,
                      (index) => InkWell(
                        onTap: () => print(printname[index]),
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 100,
                          width: 360,
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.1),
                            borderRadius: .circular(24),
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15, right: 15),
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white.withValues(alpha: 0.2),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    15,
                                  ),
                                  child: Image(
                                    image: NetworkImage(image[index]),
                                    errorBuilder:
                                        (context, error, stackTrace) => Column(
                                          children: [
                                            Icon(
                                              Icons.error,
                                              color: Colors.white.withValues(
                                                alpha: 0.2,
                                              ),
                                              size: 40,
                                            ),
                                            Text(
                                              textAlign: .center,
                                              "Couldn't load this file",
                                              style: TextStyle(
                                                fontSize: 8,
                                                color: Colors.white.withValues(
                                                  alpha: 0.4,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                    loadingBuilder:
                                        (
                                          context,
                                          child,
                                          loadingProgress,
                                        ) => loadingProgress != null
                                        ? CircularProgressIndicator.adaptive()
                                        : child,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Justr now",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: .w200,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      text[index],
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: .bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      name[index],
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: .w200,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

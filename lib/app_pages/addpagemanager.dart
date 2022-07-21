import 'package:flutter/material.dart';
import 'package:scouting_app/app_pages/add_page_match.dart';
import 'package:scouting_app/app_pages/add_page_pit.dart';

class AddPageManager extends StatefulWidget {
  const AddPageManager({Key? key}) : super(key: key);

  @override
  State<AddPageManager> createState() => _AddPageManagerState();
}

class _AddPageManagerState extends State<AddPageManager> {
  @override
  Widget build(BuildContext context) {
    AssetImage image1 = AssetImage("assets/images/background/back3.jpeg");
    precacheImage(image1, context);
    AssetImage image2 = AssetImage("assets/images/background/back5.jpeg");
    precacheImage(image2, context);
    AssetImage image3 = AssetImage("assets/images/background/back2.jpeg");
    precacheImage(image3, context);
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 125.0),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      const Color(0xff4DAAE8).withOpacity(0.3),
                      BlendMode.srcOver),
                  image: image1,
                  fit: BoxFit.cover),
            ),
          ),
        ),

        // Padding(
        //   padding: const EdgeInsets.only(top: 125.0),
        //   child: SingleChildScrollView(
        //     physics: NeverScrollableScrollPhysics(),
        //     child: Column(
        //       children: [
        //         Image(image: image3),
        //         Image(image: image2),
        //         Image(image: image1),
        //       ],
        //     ),
        //   ),
        // ),

        Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                const Text(
                  "Choose a scouting sheet",
                  style: TextStyle(
                    fontSize: 25,
                    color: const Color(0xffFFFFFF),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 75,
                ),
                Container(
                  height: 60,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const AddPageMatch()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xff2356A2),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Match scouting",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Container(
                  height: 60,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const AddPagePit()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xff2356A2),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Pit scouting",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

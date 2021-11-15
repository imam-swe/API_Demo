part of pages;

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/intro');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'images/splashbg.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white.withOpacity(0),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            // color: Colors.white70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/splashlogo.png',
                  fit: BoxFit.fill,
                  width: 250.w,
                ),
                // Text.rich(
                //   TextSpan(
                //     text: 'Meal',
                //     style: Theme.of(context).textTheme.headline4!.copyWith(
                //           fontWeight: FontWeight.bold,
                //           color: mainColor,
                //         ),
                //     children: const [
                //       TextSpan(
                //         text: ' Monkey',
                //         style: TextStyle(color: primaryFontColor),
                //       ),
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: 24.h,
                // ),
                // Text(
                //   'FOOD DELIVERY',
                //   style: Theme.of(context).textTheme.bodyText1!.copyWith(
                //         color: secondaryFontColor,
                //         letterSpacing: 3,
                //       ),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

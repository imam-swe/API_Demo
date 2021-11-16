part of pages;

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log In"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const LoginRegistrationHeader(
                  title: 'Login',
                  subTitle: 'Add your details to login',
                ),
                Container(
                  height: 150,
                  width: 350,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("images/intro4.jpg"),
                  )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white30,
                  ),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: TextField(
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.mail_outline),
                          hintText: "Email"),
                    ),
                  )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white30,
                  ),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: "password",
                          suffixIcon: Icon(Icons.visibility_off)),
                      onChanged: (value) {},
                    ),
                  )),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () async {}, child: const Text("Log In")),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationPage(who)));
                  },
                  child: const Text(
                    "Or Registration",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const Expanded(child: SizedBox.shrink()),
                LoginRegisterFooter(
                  question: 'Don\'t have an Account?',
                  actionText: ' Sign Up',
                  action: () {
                    Navigator.pushReplacementNamed(context, kRouteRegister);
                  },
                ),
                SizedBox(height: kVerticalPadding),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme:ThemeData(
          primarySwatch: Colors.lightBlue,
          scaffoldBackgroundColor: Colors.white24

      ),
      home: Scaffold(
        appBar: AppBar(

          title: Text("Login Page",
            style: TextStyle(
                color: Colors.white
            ),),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 20)),
              Image.network(
                "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQYAAADACAMAAADRLT0TAAAAxlBMVEX///9ot/dCpfUNR6Fes/fB4PvV6v0APJ2crdJbsvY0oPUKRqHN5vwVSJcUSJnF4vwRSJ0ANZuGwvgWR5IAMZq73fug0PqVy/l5vPcXRYyo1Pqez/oXQH9ce7nE4fzF0OUWPHgADTATNmsTMWAbSXcKI0oGHUG9yeJOrfa02vsRWKDN0t0kXqEONXYAKnsANIkTM2wkW5chU4kNJlQUM2QBFjsNJ08POXoMMWwFGjsKLF8NO4QZRXAAQX0AJ2NYcaYAIpaPo80Qi5BHAAADdklEQVR4nO3c61bTUBRF4UKAipVaLqIgogWKqCDQggLF2/u/lFkNlUDaJCcjmObsOR+gY+cbOzn50zQaRERERETkTUvuvah65vLbXl5w7ehT1UOX3vbynGvLr6oeuvRQUCgoFBQKCgWFgkJBoaBQUCgoFNT2AgooRHFHKBQUCgoFhYJCQRVRWKx66NLbRCFss8BbEwoooOC3AmeEQkFxUioUFAoKBcVJqVBQKCgUFAoKBYWCQkGhoFBQKKgiCrtVD116KCgUFAoKBYWCQkGhoFBQKCgU1NsCCi+rHrr0UFBF7gj/FNgFhYJCQaGgUFAoKBQUCgoFhYJCQaGgUFAoKBQUCgoFhYJCQZWrsLvo3Ez8RbVchdcFvhA4C5tVskKBX5uFz0WioFBQKKgic/un0FhzHtxHBXcHPxVcHXxVcHNImbvmCi4OPivkd/BbIa9DyQpL//ECc5bHwfddUNkOFhSyHWwoZDlYUUh3sKOQ5mBJYbpDytxrR94pTHNIU3g+77oNs68w2SFdYd7RYRbfmpIlHbIU3BzqoZB0yFZwcaiLwmOHPAr5Heqj8NAhn0JehzopxB3yKuRzqJfCvUN+hTwOdVMYO7goZDvUTyFycFPIcqijghxcFdId6qkQXqqzQppDXRVSmqow3cGWwjQHawqTHewpTHKwqJB0sKnw2MGqwkMHuwpxB8sK9w4LphXGDrZ3YeyAghxQGDn4p9CYc2f4/KXqoZ+gN64Oxydf31c99BPk6HB8srN1at7h+Gpna2vdusP5mRRW2k3TDudnH3ZChZV2x7LDSGHEYNlBCuEyRAydVaMO5zd7o2W4YwhsOvSlEGcw6SAFLUOMIdgw59Af7EXLEGcw59AfXExiMObQH+xfSCHB0LLk0O/tR8uQYLD0nOwf7msZ4gxjBEMOB5ffRsvwjyGOYMYhVIgzrLeDVhCYczi47IUKI4bwtWGl03qMYMLhoHsYLUPosD7RwIJDqNALGUKHYWgwBcH7czNUGDF8bweJJ4IdBykc9q6GwfQ9MOBw272+vhlmAfjucNsdnHSyr99zhx8/h52OA0PQWv1Y9dBP0K/TtpNCmJ8OTUcFTx3eNV0ZcMABh2StDRwiBx/fH3CI4r6IwiEKh6gCDpybUTjgEIv74s6B5yQO/jusNl377aPDM/f+VD0zEREREZHV/gIjQI05SCxcngAAAABJRU5ErkJggg==",
                width: 80,
                height: 80,
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 20)),
              SizedBox(
                width: 550,
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Email",
                      hintText:  "Masukan email anda",
                      hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0)
                      )
                  ),

                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              SizedBox(
                width: 550,
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText:  "Masukan password anda",
                      hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0)
                      )
                  ),

                ),
              ),


              Padding(padding: EdgeInsets.all(15)),
              SizedBox(
                width: 550,
                height: 35,
                child: ElevatedButton(onPressed: (

                    ){}, child: Text("Login",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
              ),
              Padding(padding: EdgeInsets.all(3)),

              TextButton(onPressed: (){},
                  child: Text("Forgot Password?",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13
                    ),))

            ],
          ),
        ),
      ),
    );
  }
}

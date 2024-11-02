import 'package:flutter/material.dart';

void main() {
  runApp(StromleserApp());
}

class StromleserApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stromleser App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: StromleserHome(),
    );
  }
}

class StromleserHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading:Container(
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.horizontal(right: Radius.circular(32)),
            //  shape: BoxShape.circle,
            ),
          //  padding: EdgeInsets.all(16),
            child: Icon(Icons.arrow_back)
        ),
        title: Text(
          'MoeCellNicco',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(32),
                shape: BoxShape.rectangle,
              ),
              padding: EdgeInsets.all(16),
              child: Icon(Icons.settings)
          )

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Device Image
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/device.png', // Replace with the actual path of your device image
                width: 160,
                height: 160,
              ),
            ),
            SizedBox(height: 20),

            // Output Section
            Container(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Ausgang',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '--',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),

            // Power and Timer Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildIconButton(Icon(Icons.power_settings_new)),
                _buildIconButton(Icon(Icons.timer)),
              ],
            ),
            SizedBox(height: 24),


            SizedBox(height: 8),
Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Energy',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),

      Container(
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(32),
            shape: BoxShape.rectangle,
          ),
          padding: EdgeInsets.all(16),
          child:  Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [


              Icon(Icons.calendar_today, size: 16, color: Colors.white70),
              SizedBox(width: 4),
              Text(
                '2024-10-25',
                style: TextStyle(fontSize: 14, color: Colors.white70),
              ),
            ],
          ),
      ),

              ],
            ),

            SizedBox(height: 50,),
            // Energy Consumption Section
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Consumption',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                SizedBox(height: 4),
                Text(
                  '0',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton( icon) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(32),
        shape: BoxShape.rectangle,
      ),
      padding: EdgeInsets.all(16),
      child: Row(children: [SizedBox(width: 40,),icon,SizedBox(width: 40,)],)
    );
  }

}

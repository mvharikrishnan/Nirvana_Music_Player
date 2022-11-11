import 'package:action_slider/action_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:nirvana/screens/Privacy%20Policies/privacyPolicy.dart';
import 'package:nirvana/screens/Privacy%20Policies/termsAndCondition.dart';
import 'package:nirvana/screens/homeScreen.dart';
import 'package:nirvana/screens/splashScreen.dart';
import 'package:nirvana/widgets/textFormField.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TermsAndConditionScreen extends StatelessWidget {
  TermsAndConditionScreen({super.key});
  final TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF3B1F50),
        title: Text('Terms And Conditions'),
      ),
      backgroundColor: Color(0xFF3B1F50),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Html(data: TermsAndConditions, style: {
            "table": Style(
              backgroundColor: Color.fromARGB(0x50, 0xee, 0xee, 0xee),
            ),
            "tr": Style(
              border: Border(bottom: BorderSide(color: Colors.grey)),
            ),
            "th": Style(
              padding: EdgeInsets.all(6),
              backgroundColor: Colors.grey,
            ),
            "td": Style(
              padding: EdgeInsets.all(6),
              alignment: Alignment.topLeft,
            ),
            'h5': Style(maxLines: 2, textOverflow: TextOverflow.ellipsis),
          },)
              ],
            ),
          )
        ),
      ),
    );
  }

  
}

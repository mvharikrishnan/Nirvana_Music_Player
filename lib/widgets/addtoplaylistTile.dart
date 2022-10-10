import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AddtoPlayListTILE(
  String CreatorsName, {
  required String ImagePathAddToProfile,
  required String PlaylistTitle,
}) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Container(
            height: 62,
            width: 62,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(ImagePathAddToProfile),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  ' $PlaylistTitle',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'by $CreatorsName',
                  style: TextStyle(
                      color: Color.fromARGB(162, 217, 51, 195),
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

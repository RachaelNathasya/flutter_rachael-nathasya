import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SmartphoneRecommender(),
    );
  }
}

class SmartphoneRecommender extends StatefulWidget {
  @override
  _SmartphoneRecommenderState createState() => _SmartphoneRecommenderState();
}

class _SmartphoneRecommenderState extends State<SmartphoneRecommender> {
  TextEditingController priceController = TextEditingController();
  TextEditingController cameraController = TextEditingController();
  TextEditingController storageController = TextEditingController();

  String recommendation = "";

  Future<void> getSmartphoneRecommendation() async {
    final apiUrl =
        "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"; // Ganti dengan URL API OpenAI yang valid.

    final response = await http.post(
      Uri.parse(apiUrl),
      body: json.encode({
        "price": priceController.text,
        "camera": cameraController.text,
        "storage": storageController.text,
      }),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $apiUrl",
      },
    );

    if (response.statusCode == 200) {
      final result = json.decode(response.body);
      setState(() {
        recommendation = result['recommendation'];
      });
    } else {
      setState(() {
        recommendation = "Gagal mendapatkan rekomendasi.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rekomendasi Smartphone"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: priceController,
              decoration: InputDecoration(labelText: "Harga"),
            ),
            TextField(
              controller: cameraController,
              decoration: InputDecoration(labelText: "Kamera"),
            ),
            TextField(
              controller: storageController,
              decoration: InputDecoration(labelText: "Kapasitas Penyimpanan"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: getSmartphoneRecommendation,
              child: Text("Dapatkan Rekomendasi"),
            ),
            SizedBox(height: 16),
            Text("Rekomendasi Smartphone:"),
            Text(recommendation),
          ],
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// const String openaiEndpoint =
//     'https://api.openai.com/v1/engines/davinci/completions';

// class SmartphoneRecommendationApp extends StatefulWidget {
//   @override
//   _SmartphoneRecommendationAppState createState() =>
//       _SmartphoneRecommendationAppState();
// }

// class _SmartphoneRecommendationAppState
//     extends State<SmartphoneRecommendationApp> {
//   TextEditingController priceController = TextEditingController();
//   TextEditingController cameraController = TextEditingController();
//   TextEditingController storageController = TextEditingController();

//   String recommendation = '';

//   Future<void> getSmartphoneRecommendation() async {
//     String apiKey =
//         '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'; 
//     String prompt =
//         'Recommend a smartphone based on:\nPrice: ${priceController.text}\nCamera: ${cameraController.text}\nStorage: ${storageController.text}';

//     Map<String, dynamic> requestBody = {
//       'prompt': prompt,
//       'max_tokens': 50 
//     };

    // Map<String, String> headers = {
    //   'Authorization': 'Bearer $apiKey',
    //   'Content-Type': 'application/json'
    // };

//     final response = await http.post(Uri.parse(openaiEndpoint),
//         headers: headers, body: json.encode(requestBody));

//     if (response.statusCode == 200) {
//       setState(() {
//         recommendation =
//             json.decode(response.body)['choices'][0]['text'].toString();
//       });
//     } else {
//       throw Exception('Failed to get recommendation');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Smartphone Recommendation'),
//         ),
//         body: Padding(
//           padding: EdgeInsets.all(20.0),
//           child: Column(
//             children: [
//               TextField(
//                 controller: priceController,
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(labelText: 'Enter price'),
//               ),
//               TextField(
//                 controller: cameraController,
//                 keyboardType: TextInputType.text,
//                 decoration:
//                     InputDecoration(labelText: 'Enter camera specification'),
//               ),
//               TextField(
//                 controller: storageController,
//                 keyboardType: TextInputType.text,
//                 decoration:
//                     InputDecoration(labelText: 'Enter storage capacity'),
//               ),
//               SizedBox(height: 20.0),
//               ElevatedButton(
//                 onPressed: () {
//                   getSmartphoneRecommendation();
//                 },
//                 child: Text('Get Smartphone Recommendation'),
//               ),
//               SizedBox(height: 20.0),
//               Text('Recommendation: $recommendation'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(SmartphoneRecommendationApp());
// }

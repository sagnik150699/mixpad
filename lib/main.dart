import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MixPad",
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("MixPad", style: GoogleFonts.orbitron(fontSize: 30.0)),
          ),
          body: Center(
            child: Wrap(
              spacing: 6,
              runSpacing: 6,
              children: [
                MixPad(
                  colorCenter: Color(0xffCD80F7),
                  colorOutline: Color(0xff8A47CC),
                  note: "1.mp3",
                ),
                MixPad(
                  colorCenter: Color(0xffADCBFC),
                  colorOutline: Color(0xff067CCB),
                  note: "2.mp3",
                ),
                MixPad(
                  colorCenter: Color(0xffff2525),
                  colorOutline: Color(0xffc40050),
                  note: "3.mp3",
                ),
                MixPad(
                  colorCenter: Color(0xffADCBFC),
                  colorOutline: Color(0xff067CCB),
                  note: "4.mp3",
                ),
                MixPad(
                  colorCenter: Color(0xffCD80F7),
                  colorOutline: Color(0xff8A47CC),
                  note: "5.mp3",
                ),
                MixPad(
                  colorCenter: Color(0xffADCBFC),
                  colorOutline: Color(0xff067CCB),
                  note: "6.mp3",
                ),
                MixPad(
                  colorCenter: Color(0xffff2525),
                  colorOutline: Color(0xffc40050),
                  note: "7.mp3",
                ),
                MixPad(
                  colorCenter: Color(0xffADCBFC),
                  colorOutline: Color(0xff067CCB),
                  note: "8.mp3",
                ),
                MixPad(
                  colorCenter: Color(0xffCD80F7),
                  colorOutline: Color(0xff8A47CC),
                  note: "9.mp3",
                ),
                MixPad(
                  colorCenter: Color(0xffADCBFC),
                  colorOutline: Color(0xff067CCB),
                  note: "10.mp3",
                ),
                MixPad(
                  colorCenter: Color(0xffff2525),
                  colorOutline: Color(0xffc40050),
                  note: "11.mp3",
                ),
                MixPad(
                  colorCenter: Color(0xffADCBFC),
                  colorOutline: Color(0xff067CCB),
                  note: "12.mp3",
                ),
                MixPad(
                  colorCenter: Color(0xffCD80F7),
                  colorOutline: Color(0xff8A47CC),
                  note: "13.mp3",
                ),
                MixPad(
                  colorCenter: Color(0xffADCBFC),
                  colorOutline: Color(0xff067CCB),
                  note: "14.mp3",
                ),
                MixPad(
                  colorCenter: Color(0xffff2525),
                  colorOutline: Color(0xffc40050),
                  note: "15.mp3",
                ),
                MixPad(
                  colorCenter: Color(0xffADCBFC),
                  colorOutline: Color(0xff067CCB),
                  note: "16.mp3",
                ),
                MixPad(
                  colorCenter: Color(0xffCD80F7),
                  colorOutline: Color(0xff8A47CC),
                  note: "17.mp3",
                ),
                MixPad(
                  colorCenter: Color(0xffADCBFC),
                  colorOutline: Color(0xff067CCB),
                  note: "18.mp3",
                ),
                MixPad(
                  colorCenter: Color(0xffff2525),
                  colorOutline: Color(0xffc40050),
                  note: "18.mp3",
                ),
                MixPad(
                  colorCenter: Color(0xffADCBFC),
                  colorOutline: Color(0xff067CCB),
                  note: "19.mp3",
                ),
                MixPad(
                  colorCenter: Color(0xffCD80F7),
                  colorOutline: Color(0xff8A47CC),
                  note: "20.wav",
                ),
                MixPad(
                  colorCenter: Color(0xffADCBFC),
                  colorOutline: Color(0xff067CCB),
                  note: "21.mp3",
                ),
                MixPad(
                  colorCenter: Color(0xffff2525),
                  colorOutline: Color(0xffc40050),
                  note: "22.wav",
                ),
                MixPad(
                  colorCenter: Color(0xffADCBFC),
                  colorOutline: Color(0xff067CCB),
                  note: "23.wav",
                ),
                MixPad(
                  colorCenter: Color(0xffCD80F7),
                  colorOutline: Color(0xff8A47CC),
                  note: "24.wav",
                ),
                MixPad(
                  colorCenter: Color(0xffADCBFC),
                  colorOutline: Color(0xff067CCB),
                  note: "25.wav",
                ),
                MixPad(
                  colorCenter: Color(0xffff2525),
                  colorOutline: Color(0xffc40050),
                  note: "26.wav",
                ),
                MixPad(
                  colorCenter: Color(0xffADCBFC),
                  colorOutline: Color(0xff067CCB),
                  note: "27.wav",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MixPad extends StatefulWidget {
  final colorCenter;
  final colorOutline;
  final note;
  const MixPad(
      {Key? key,
      required this.colorCenter,
      required this.colorOutline,
      required this.note})
      : super(key: key);
  _MixPadState createState() => _MixPadState();
}

class _MixPadState extends State<MixPad> {
  late Color colorCenter;
  late Color colorOutline;
  final player = AudioPlayer();
  @override
  void initState() {
    colorCenter = widget.colorCenter;
    colorOutline = widget.colorOutline;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () async {
        player.play(AssetSource(widget.note));
        setState(() {
          colorCenter = Colors.white;
          colorOutline = Colors.white;
        });
        await Future.delayed(Duration(milliseconds: 500));
        setState(() {
          colorCenter = widget.colorCenter;
          colorOutline = widget.colorOutline;
        });
      },
      child: Container(
        height: height / 8.2,
        width: width / 4.3,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.pink,
              blurRadius: 5.0,
            ),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(6.0),
          ),
          gradient: RadialGradient(
            colors: [
              colorCenter,
              colorOutline,
            ],
            radius: 0.5,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components.dart';

class Blogpost extends StatefulWidget {
  final title;
  final body;
  const Blogpost({super.key,required this.body,required this.title});

  @override
  State<Blogpost> createState() => _BlogpostState();
}

class _BlogpostState extends State<Blogpost> {
  bool expand = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8.0)),
                child: SansBoldColor(
                    color: Colors.white, size: 25.0, text: widget.title.toString()),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      expand = !expand;
                    });
                  },
                  icon: Icon(
                    Icons.arrow_drop_down_circle_outlined,
                    color: Colors.black,
                  )),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(widget.body.toString(),
            style: GoogleFonts.openSans(fontSize: 15.0),
            maxLines: expand == true ? null : 3,
            overflow:
                expand == true ? TextOverflow.visible : TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}

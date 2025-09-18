import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';
import 'package:toku/models/family_member.dart';
import 'package:toku/models/color.dart';
import 'package:toku/models/phrase.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    this.number,
    this.familyMember,
    this.colorItem,
    this.phrase,
  });

  final Number? number;
  final FamilyMember? familyMember;
  final ColorItem? colorItem;
  final Phrase? phrase;

  @override
  Widget build(BuildContext context) {
    // Determine which type of item we're dealing with
    String jpName = '';
    String enName = '';
    String audio = '';
    String? image;

    if (number != null) {
      jpName = number!.jpName;
      enName = number!.enName;
      audio = number!.audio;
      image = number!.image;
    } else if (familyMember != null) {
      jpName = familyMember!.jpName;
      enName = familyMember!.enName;
      audio = familyMember!.audio;
      image = familyMember!.image;
    } else if (colorItem != null) {
      jpName = colorItem!.jpName;
      enName = colorItem!.enName;
      audio = colorItem!.audio;
      image = colorItem!.image;
    } else if (phrase != null) {
      jpName = phrase!.jpName;
      enName = phrase!.enName;
      audio = phrase!.audio;
      // Phrases don't have images
    }

    return Container(
      height: phrase != null ? 120 : 100,
      child: Column(
        children: [
          Flexible(
            child: Row(
              children: [
                // Only show image if it exists (not for phrases)
                if (image != null)
                  Container(
                    color: colorItem != null ? Colors.transparent : Color(0xfffff4d9),
                    child: Image.asset(image),
                  ),

                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            jpName,
                            style: TextStyle(color: Colors.white, fontSize: phrase!=null ? 20 : 24),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                          SizedBox(height: 4),
                          Text(
                            enName,
                            style: TextStyle(color: Colors.white, fontSize: 18),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                
                IconButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.play(AssetSource(audio));
                    print('sound played');
                  },
                  icon: Icon(Icons.play_arrow, size: 40, color: Colors.white),
                ),
              
              ],
              
            ),
          ),
                Divider(
        thickness: 1,
        color: Colors.black,
      )
        ],
      ),
      

    );
  }
}

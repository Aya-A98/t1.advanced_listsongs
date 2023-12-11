import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
   int id =0 ;
  final assetsAudioPlayer = AssetsAudioPlayer();
  //final assetsAudioPlayer = AssetsAudioPlayer.withId(id="");
  //final PlayingAudio playing = assetsAudioPlayer.current.value;
  bool playing =false;
  @override
  void initState() {
    //for(int A =0 ; A < 10 ; A++){}
    assetsAudioPlayer.open(Playlist(audios: [
      Audio("sound/adyna_bdwb.mp3"),
      Audio("sound/an_alawan.mp3"),
      Audio("sound/awad_klba.mp3"),
      Audio("sound/awl_lylt.mp3"),
      Audio("sound/bt57k.mp3"),
      Audio("sound/btbad_lyh.mp3"),
      Audio("sound/klyna_naysh.mp3"),
      Audio("sound/lyt_la.mp3"),
      Audio("sound/mkdrsh_ansak.mp3"),
      Audio("sound/Yalli.Ghayeb.mp3"),
    ],), autoStart: false, showNotification: true,
        //loopMode: LoopMode.playlist
        );
    //assetsAudioPlayer.playlistPlayAtIndex(1);
    //assetsAudioPlayer.next();
    assetsAudioPlayer.playlistFinished.listen((event) {
      playing = false;
    });
//for one song
    //assetsAudioPlayer.prev();
    // assetsAudioPlayer.open(Audio("sound/adyna_bdwb.mp3"));
    // assetsAudioPlayer.open(Audio("sound/"));
    //  assetsAudioPlayer.playlistAudioFinished.listen((Playing playing){
    //    playing = false as Playing;
    // });
    super.initState();
  }


  IconButton button(audio,index){
    return IconButton( onPressed: (){
      if(assetsAudioPlayer.isPlaying.value){
        assetsAudioPlayer.pause();
      } else {assetsAudioPlayer.play();}

      setState(() {
        playing = !playing;
      });
    },icon: playing ? Icon(Icons.pause) : Icon(Icons.play_arrow),);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( appBar:AppBar(title: Text(" Hamaki's Songs"),backgroundColor: Colors.pinkAccent,),
        body: SafeArea(child: ListView(
          children: [SizedBox(height: 20,),
            Center(child: Text("Adeny Badoub Album",style:TextStyle(
                fontWeight:FontWeight.bold,fontSize: 18,color: Colors.pinkAccent),)),
            ListTile(
              leading: Image.asset("images/h.jpg",width: 100,height: 100,),
              title: Text("adiny_badoub"),
              trailing: button("sound/adyna_bdwb.mp3",0)
            ),
            SizedBox(height:10),
            ListTile(
              leading: Image.asset("images/h.jpg",width: 100,height: 100,),
              title: Text("an_alawan"),
              trailing: button("sound/an_alawan.mp3",1)
            ),
            SizedBox(height:10),
            ListTile(
              leading: Image.asset("images/h.jpg",width: 100,height: 100,),
              title: Text("aw3ed_alby"),
              trailing: button("sound/awad_klba.mp3",2)
            ),
            SizedBox(height:10),
            ListTile(
              leading: Image.asset("images/h.jpg",width: 100,height: 100,),
              title: Text("awel_lyla"),
              trailing: button("sound/awl_lylt.mp3",3)
            ),
            SizedBox(height:10),
            ListTile(
              leading: Image.asset("images/h.jpg",width: 100,height: 100,),
              title: Text("betab3ed_lyh"),
              trailing: button("sound/bt57k.mp3",4)
            ),
            SizedBox(height:10),
            ListTile(
              leading: Image.asset("images/h.jpg",width: 100,height: 100,),
              title: Text("betad7ak"),
              trailing: button("sound/btbad_lyh.mp3",5)
            ),
            SizedBox(height:10),
            ListTile(
              leading: Image.asset("images/h.jpg",width: 100,height: 100,),
              title: Text("khalina_ne3esh"),
              trailing: button("sound/klyna_naysh.mp3",6)
            ),
            SizedBox(height:10),
            ListTile(
              leading: Image.asset("images/h.jpg",width: 100,height: 100,),
              title: Text("lyh_la2"),
              trailing: button("sound/lyt_la.mp3",7)
            ),
            SizedBox(height:10),
            ListTile(
              leading: Image.asset("images/h.jpg",width: 100,height: 100,),
              title: Text("maqdarsh_ansak"),
              trailing: button("sound/mkdrsh_ansak.mp3",8)
            ),
            SizedBox(height:10),
            ListTile(
              leading: Image.asset("images/h.jpg",width: 100,height: 100,),
              title: Text("yally_ghayb"),
              trailing: button("sound/Yalli.Ghayeb.mp3",9)
            ),
          ],
        ),
        ),
      ),
    );
  }

}









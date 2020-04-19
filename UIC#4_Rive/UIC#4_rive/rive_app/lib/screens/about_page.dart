import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_controls.dart';

class AbouPage extends StatelessWidget {
  final FlareControls animationControls = FlareControls();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            'Follow Me On GitHub @satyamraj123 For More!',
            style: Theme.of(context).textTheme.title,
          ),
          GestureDetector(
            onTap: (){
            animationControls.play('Wave');
            animationControls.play('Stand');
            },
            onVerticalDragStart: (_){
              animationControls.play('Jump');
              animationControls.play('Stand');
            },
            
            onHorizontalDragStart: (_){
              animationControls.play('Dance');
              animationControls.play('Stand');
            },
                      child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.topCenter,
                child: FlareActor(
                  'assets/Bob.flr',
                  animation: 'Stand',
                  fit: BoxFit.cover,
                  controller: animationControls,
                )),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:intranet_maispet/controller/aniversariante_controller.dart';
import 'package:intranet_maispet/model/entities/aniversariante.dart';
import 'package:intranet_maispet/view/colors.dart';

class CardViewAniversariante extends StatelessWidget {

  final Aniversariante aniversariante;
  final AniversarianteController aniversarianteController = AniversarianteController();

  CardViewAniversariante({
    super.key,
    required this.aniversariante,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: amareloClaro,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            aniversariante.nomeSobrenome,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),
            textAlign: TextAlign.center,
          ),

          Text(
            aniversarianteController.converterDataAniversarioSemAnoToString(
              aniversariante.dataAniversario,
            ),
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16),
          ),

          Text(
            aniversariante.cargo,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16),
          ),

          Text(
            aniversariante.departamento,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
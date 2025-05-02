import 'package:flutter/material.dart';
import 'package:macro_fit/view/init/init_viewmodel.dart';
import 'package:macro_fit/view/init/widget/build_card.dart';
import 'package:macro_fit/view/init/widget/custom_btn.dart';
import 'package:macro_fit/widgets/custom_form.dart';
import 'package:provider/provider.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<InitViewmodel>(context);
    final selectedIndex = vm.selectedCardIndex;

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Back button
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                elevation: 0,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(8),
              ),
              child: const Icon(Icons.arrow_back, color: Colors.black),
            ),
            // Title
            Row(
              children: const [
                Text(
                  'Macro',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Fit',
                  style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Name input
            CustomFormField(
              txt: 'Nombre',
              prefixIcon: Icons.person,
              onChanged: (_) {},
            ),
            const SizedBox(height: 16),
            // Weight and fat %
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 170,
                  child: CustomFormField(
                    txtType: const TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    txt: 'Peso',
                    prefixIcon: Icons.monitor_weight,
                    onChanged: (_) {},
                  ),
                ),
                SizedBox(
                  width: 170,
                  child: CustomFormField(
                    txtType: const TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    txt: '% Grasa',
                    prefixIcon: Icons.fastfood_rounded,
                    onChanged: (_) {},
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),
            Align(
              alignment: Alignment.topCenter,
              child: Text('Actividad', style: TextStyle(color: Colors.grey)),
            ),
            buildCard(
              index: 0,
              title: 'Sedentario',
              description:
                  'Actividad casi nula, no realizas ejercicio y pasas la mayor parte del tiempo son moverte',
              icon: Icons.local_fire_department,
              vm: vm,
            ),
            buildCard(
              index: 1,
              title: 'Moderado',
              description:
                  'Actividad moderada como ejercicio de 3 a 4 veces por la semana y estas activo la mitad del tiempo en el dia',
              icon: Icons.local_fire_department,
              vm: vm,
            ),
            buildCard(
              index: 2,
              title: 'Activo',
              description:
                  'Actividad intensa con mas de 5 veces de ejercicio en la semana y pasas la mayor tiempo del dia activo ',
              icon: Icons.local_fire_department,
              vm: vm,
            ),
            //Training freq.
            Row(children: [
              Column(children: [
                Text('Cuantas veces por semana',style: TextStyle(color: Colors.grey,fontSize: 8),),
                Text('entrenas?',style: TextStyle(color: Colors.grey,fontSize: 8),)
              ],),
              DropdownMenu(
                label: Text("1 vez"),
              onSelected: (value){
                vm.selecFreq(value!);
              },
              dropdownMenuEntries: [
                DropdownMenuEntry(value: 1, label: "1"),
                DropdownMenuEntry(value: 2, label: "2"),
                DropdownMenuEntry(value: 3, label: "3"),
                DropdownMenuEntry(value: 4, label: "4"),
                DropdownMenuEntry(value: 5, label: "5"),
                DropdownMenuEntry(value: 6, label: "6"),
                DropdownMenuEntry(value: 7, label: "7")
              ]),
            ],),
            SizedBox(height: 100),
            Align(
              alignment: Alignment.topCenter,
              child: CustomBtn(
                color: Colors.black,
                onFcn: () {},
                txt: 'Continuar',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

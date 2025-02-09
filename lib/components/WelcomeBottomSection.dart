import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, bottom: 15),
            child: Text(
              'Obtenha a combinação de salada de frutas mais fresca',
              softWrap: true,
              maxLines: 2,
              style: AppTheme.light.textTheme.displaySmall,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Text(
              'Entregamos a melhor e mais fresca salada de frutas da cidade. Peça um combo hoje!!!',
              softWrap: true,
              maxLines: 2,
              style: AppTheme.light.textTheme.bodyLarge,
            ),
          ),
          PrimaryButton(
            label: 'Vamos continuar',
            onPressed: () => GoRouter.of(context).push('/login'),
            width: double.infinity,
            height: 56,
          ),
        ],
      ),
    );
  }
}

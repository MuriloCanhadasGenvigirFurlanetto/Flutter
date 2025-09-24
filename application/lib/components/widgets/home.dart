import 'package:flutter/material.dart';
import './Header.dart';
import './Banner.dart';
import './map.dart';
import './cards.dart';
import './donationbutton.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderWithSearch(),
              const SizedBox(height: 16),

              // Banner carrossel
              SizedBox(
                height: 160,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    BannerWidget(title: "Doe sangue, salve vidas!"),
                    BannerWidget(title: "Julho Vermelho: Participe!"),
                    BannerWidget(title: "Um gesto simples, um impacto gigante."),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Botão agendar doação
              const DonationButton(text: "Agendar Doação"),
              const SizedBox(height: 16),

              // 3 cards em linha
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SquareValueCard(value: "5", title: "Doações"),
                  SquareValueCard(value: "15", title: "Vidas Salvas"),
                  SquareValueCard(value: "3", title: "Streak"),
                ],
              ),
              const SizedBox(height: 16),

              // Circular counter e card genérico
              Row(
                children: const [
                  CircularCounter(value: 7),
                  SizedBox(width: 16),
                  Expanded(
                    child: GenericTitleCard(title: "Próxima doação em breve!"),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const MapaWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
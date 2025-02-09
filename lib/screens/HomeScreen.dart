import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/components/ComboCard.dart';

import '../components/LoginController.dart';

class HomeScreen extends StatefulWidget {
  final LoginController loginController;

  HomeScreen({super.key, required this.loginController});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {GoRouter.of(context).push('/welcome');},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ValueListenableBuilder<String>(
                valueListenable: widget.loginController,
                builder: (context, value, child) {
                  return Text(
                      "Olá $value, que combinação \nde salada de frutas você \nquer hoje?",
                      style: AppTheme.light.textTheme.displaySmall);
                },
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  hintText: "Pesquisar por combinações",
                  prefixIcon: Icon(Icons.search),
                  fillColor: Color.fromRGBO(243, 244, 249, 1),
                  filled: true,
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 24),
              Text("Combo recomendado",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              // Horizontal scrolling list
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ComboCard(
                      image: "assets/honey_salad.png",
                      title: "Combinação de mel e Limão",
                      price: "R\$ 2,000",
                    ),
                    ComboCard(
                      image: "assets/strawberry_pie.png",
                      title: "Combinação de mel e Limão",
                      price: "R\$ 2,000",
                    ),
                    ComboCard(
                      image: "assets/strawberry_pie.png",
                      title: "Combinação de mel e Limão",
                      price: "R\$ 2,000",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              // Tabs
              DefaultTabController(
                length: 4,
                child: Column(
                  children: [
                    TabBar(
                      tabs: [
                        Tab(text: "Quente"),
                        Tab(text: "Popular"),
                        Tab(text: "Combo"),
                        Tab(text: "Top"),
                      ],
                    ),
                    SizedBox(
                      height: 200,
                      child: TabBarView(
                        children: [
                          ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              ComboCard(
                                image: "assets/honey_salad.png",
                                title: "Combinação de mel e Limão",
                                backgroundColor: Color.fromRGBO(240, 240, 240, 1),

                                price: "R\$ 2,000",
                              ),
                              ComboCard(
                                image: "assets/strawberry_pie.png",
                                title: "Combinação de morango",
                                backgroundColor: Color.fromRGBO(255, 250, 235, 1),
                                price: "R\$ 3,000",
                              ),
                              ComboCard(
                                image: "assets/honey_salad.png",
                                title: "Combinação de mel e Framboesa",
                                price: "R\$ 2,500",
                              ),
                            ],
                          ),
                          // Aba "Popular"
                          ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              ComboCard(
                                image: "assets/honey_salad.png",
                                title: "Combinação de mel e Limão",
                                price: "R\$ 2,000",
                              ),
                              ComboCard(
                                image: "assets/strawberry_pie.png",
                                title: "Combinação de morango",
                                price: "R\$ 3,000",
                              ),
                              ComboCard(
                                image: "assets/honey_salad.png",
                                title: "Combinação de mel e Framboesa",
                                price: "R\$ 2,500",
                              ),
                            ],
                          ),
                          // Aba "Combo"
                          ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              ComboCard(
                                image: "assets/honey_salad.png",
                                title: "Combinação de mel e Limão",
                                price: "R\$ 2,000",
                              ),
                              ComboCard(
                                image: "assets/strawberry_pie.png",
                                title: "Combinação de morango",
                                price: "R\$ 3,000",
                              ),
                              ComboCard(
                                image: "assets/honey_salad.png",
                                title: "Combinação de mel e Framboesa",
                                price: "R\$ 2,500",
                              ),
                            ],
                          ),
                          // Aba "Top"
                          ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              ComboCard(
                                image: "assets/honey_salad.png",
                                title: "Combinação de mel e Limão",
                                price: "R\$ 2,000",
                              ),
                              ComboCard(
                                image: "assets/strawberry_pie.png",
                                title: "Combinação de morango",
                                price: "R\$ 3,000",
                              ),
                              ComboCard(
                                image: "assets/honey_salad.png",
                                title: "Combinação de mel e Framboesa",
                                price: "R\$ 2,500",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

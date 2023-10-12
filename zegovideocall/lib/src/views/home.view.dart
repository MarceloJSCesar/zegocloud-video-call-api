import 'package:flutter/material.dart';
import 'package:zegovideocall/src/controller/home.controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: HomeController.usernameController,
                    onChanged: HomeController.onUsernameChanged,
                    decoration: const InputDecoration(
                      hintText: "Username",
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: HomeController.callIdController,
                    onChanged: HomeController.onCallIdChanged,
                    decoration: const InputDecoration(
                      hintText: "CallId",
                    ),
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: Container(
                      height: 35,
                      width: 90,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Semantics(
                        button: true,
                        child: InkWell(
                          onTap: () => HomeController.onJoin(context),
                          child: const Text("Join"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

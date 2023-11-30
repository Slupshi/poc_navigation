import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poc_navigation/custom_scaffold.dart';

class SectionA extends StatelessWidget {
  const SectionA({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'Appbar de A',
      hasLeadingAvatar: true,
      body: Center(
        child: TextButton(
          child: const Text("A route button"),
          onPressed: () => context.go("/a/details"),
        ),
      ),
    );
  }
}

class SectionADetail extends StatelessWidget {
  const SectionADetail({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      title: 'Appbar de A détails',
      body: Center(
        child: Text("A details"),
      ),
    );
  }
}

class SectionB extends StatelessWidget {
  const SectionB({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'Appbar de B',
      hasTrailingButtons: true,
      body: Center(
        child: TextButton(
          child: const Text("B to D route button"),
          onPressed: () => context.push("/d"),
        ),
      ),
    );
  }
}

class SectionBDetail extends StatelessWidget {
  const SectionBDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      title: 'Appbar de B détails',
      body: Center(
        child: Text("B details"),
      ),
    );
  }
}

class SectionC extends StatelessWidget {
  const SectionC({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'Appbar de C',
      hasTrailingButtons: true,
      hasLeadingAvatar: true,
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: const Text("C to details"),
              onPressed: () => context.go("/c/details"),
            ),
            TextButton(
              child: const Text("C to A route button"),
              onPressed: () => context.go("/a"),
            ),
          ],
        ),
      ),
    );
  }
}

class SectionD extends StatelessWidget {
  const SectionD({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      title: "Appbar de D",
      background: Colors.green,
      body: Center(
        child: Text("D route"),
      ),
    );
  }
}

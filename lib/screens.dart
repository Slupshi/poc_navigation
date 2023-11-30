import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poc_navigation/custom_scaffold.dart';
import 'package:poc_navigation/routes.dart';

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
          onPressed: () => const SectionADetailRoute(id: 456).go(context),
        ),
      ),
    );
  }
}

class SectionADetail extends StatelessWidget {
  const SectionADetail({
    required this.idToto,
    super.key,
  });

  final int idToto;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'Appbar de A détails avec id: $idToto',
      body: const Center(
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
        child: Column(
          children: [
            TextButton(
              child: const Text("b to details"),
              onPressed: () => const SectionBDetailRoute().go(context),
            ),
            TextButton(
              child: const Text("b to A details"),
              onPressed: () => const SectionADetailRoute(id: 1234).go(context),
            ),
            TextButton(
              child: const Text("B to D route button"),
              onPressed: () => const SectionDRoute().push(context),
            ),
          ],
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
              onPressed: () => const SectionARoute().go(context),
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

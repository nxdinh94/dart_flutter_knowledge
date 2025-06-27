
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class LeadingAppbar extends StatelessWidget {
  const LeadingAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return GoRouter.of(context).canPop() ? GestureDetector(
        onTap: () => context.pop(),
        child: const SizedBox(
          child: Icon(Icons.arrow_back_ios_new_rounded, size: 22, color: Colors.white,),
        ),
      ) : const SizedBox();
  }
}

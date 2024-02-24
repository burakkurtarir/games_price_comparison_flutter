import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_price_comparison_flutter/features/deals/cubit/deals_cubit.dart';

class DealsPage extends StatefulWidget {
  const DealsPage({super.key});

  @override
  State<DealsPage> createState() => _DealsPageState();
}

class _DealsPageState extends State<DealsPage>
    with AutomaticKeepAliveClientMixin<DealsPage> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create: (context) => DealsCubit(),
      child: const DealsView(),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class DealsView extends StatelessWidget {
  const DealsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Deals"),
      ),
      body: BlocBuilder<DealsCubit, DealsState>(
        builder: (context, state) {
          return Container();
        },
      ),
    );
  }
}

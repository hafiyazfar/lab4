import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_app/base/utils/app_routes.dart';
import 'package:ticket_app/bloc/bottom_nav_bloc.dart';
import 'package:ticket_app/bloc/text_expansion_blocs.dart';
import 'package:ticket_app/screens/home/all_hotels.dart';
import 'package:ticket_app/screens/home/all_tickets.dart';
import 'package:ticket_app/screens/hotel_detail.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';

import 'base/bottom_nav_bar.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => BottomNavBloc()),
        BlocProvider(create: (_) => TextExpansionBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          AppRoutes.homePage: (context) => BottomNavBar(),
          AppRoutes.allTickets: (context) => const AllTickets(),
          AppRoutes.ticketScreen: (context) => const TicketScreen(),
          AppRoutes.allHotels: (context) => const AllHotels(),
          AppRoutes.hotelDetail: (context) => const HotelDetail(),
        },
      ),
    );
  }
}

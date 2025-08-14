import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'src/presentation/bloc/task/task_bloc.dart';
import 'src/presentation/screens/matrix_screen.dart';

void main() {
  runApp(const PriorityMatrixApp());
}

class PriorityMatrixApp extends StatelessWidget {
  const PriorityMatrixApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TasksBloc()..add(LoadTasks()),
      child: MaterialApp(
        title: 'Priority Matrix',
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: const Color(0xFF007BFF),
          colorScheme: const ColorScheme.dark(
            primary: Color(0xFF007BFF),
            secondary: Color(0xFF007BFF),
          ),
          scaffoldBackgroundColor: const Color(0xFF121212),
          fontFamily: 'Inter',
        ),
        debugShowCheckedModeBanner: false,
        home: const MatrixScreen(),
      ),
    );
  }
}

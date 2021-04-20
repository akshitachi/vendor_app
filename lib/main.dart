import 'package:flutter/material.dart';
import './screens/add_product_screen.dart';
import './screens/auth_screen.dart';
import './widgets/auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Auth(),
        ),
      ],
      child: Consumer<Auth>(
        builder: (ctx, auth, _) => MaterialApp(
            title: 'Vendor-App',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: auth.isAuth
                ? AddProductScreen()
                : FutureBuilder(
                    future: auth.tryAutoLogin(),
                    builder: (ctx, authResultSnapshot) =>
                        authResultSnapshot.connectionState ==
                                ConnectionState.waiting
                            ? CircularProgressIndicator()
                            : auth.isAuth
                                ? AddProductScreen()
                                : AuthScreen(),
                  ),
            routes: {}),
      ),
    );
  }
}

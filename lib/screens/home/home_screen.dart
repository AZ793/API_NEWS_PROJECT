import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:new_project/core/theme/app_colors.dart';
import 'package:new_project/core/theme/codes_extensions.dart';
import 'package:new_project/utils/dailoo.dart';
import 'package:new_project/utils/snackso.dart';

class HomeScreen extends StatelessWidget {
  final VoidCallback? onToggleTheme;
  const HomeScreen({super.key, this.onToggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: context.appColors.background),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼
                //             </> UI start </>
                //▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼

                //          START YOUR CODE HERE <3
                Text('Home Screen', style: context.textStyles.h1),
                SizedBox(height: 100),
                GestureDetector(
                  onTap: () {
                    Snackso.show(
                      context,
                      message: "Snacksoooooo",
                      backgroundColor: Colors.blueGrey,
                    );
                  },
                  child: Container(
                    height: 80,
                    width: 150,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text("press me ", style: context.textStyles.b1),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                //==============================================
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //================  CHLILDERN START  ================
                    GestureDetector(
                      onTap: () {
                        Dialoo.happy(context);
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: context.appColors.surface,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text("hello", style: context.textStyles.b1),
                        ),
                      ),
                    ),

                    SizedBox(width: 30),
                    GestureDetector(
                      onTap: () {
                        Dialoo.sad(context);
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: context.appColors.surface,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text("hello", style: context.textStyles.b1),
                        ),
                      ),
                    ),
                  ], //================  CHLILDERN END    ================
                ),
                //▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼
                //              </>  UI END </>
                //▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼
              ],
            ),
          ),
        ),
      ),
    );
  }
}

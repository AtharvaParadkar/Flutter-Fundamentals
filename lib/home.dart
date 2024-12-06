import 'package:flutter/material.dart';
import 'package:flutter_basics/Widgets/expandanimation.dart';
import 'package:flutter_basics/Widgets/stack.dart';
import 'package:flutter_basics/Widgets/upi_animation.dart';
import 'package:flutter_basics/Widgets/youtubeplayer.dart';
import 'package:flutter_basics/cardwidget.dart';
import 'package:flutter_basics/navigation.dart';
import 'package:flutter_basics/notifier/theme_notifier.dart';
import 'package:flutter_basics/uis.dart';
import 'package:flutter_basics/Widgets/alert.dart';
import 'package:flutter_basics/Widgets/animatedtext.dart';
import 'package:flutter_basics/Widgets/animation.dart';
import 'package:flutter_basics/Widgets/bottomnav.dart';
import 'package:flutter_basics/Widgets/bottomsheet.dart';
import 'package:flutter_basics/Widgets/buttons.dart';
import 'package:flutter_basics/Widgets/concentric_transition_page.dart';
import 'package:flutter_basics/Widgets/containersized.dart';
import 'package:flutter_basics/Widgets/dismissible.dart';
import 'package:flutter_basics/Widgets/drawer.dart';
import 'package:flutter_basics/Widgets/dropdown.dart';
import 'package:flutter_basics/Widgets/form.dart';
import 'package:flutter_basics/Widgets/glowing_avatar.dart';
import 'package:flutter_basics/Widgets/image.dart';
import 'package:flutter_basics/Widgets/imagepicker.dart';
import 'package:flutter_basics/Widgets/list_grid.dart';
import 'package:flutter_basics/Widgets/location.dart';
import 'package:flutter_basics/Widgets/opacityanimation.dart';
import 'package:flutter_basics/Widgets/pagerouteanimation.dart';
import 'package:flutter_basics/Widgets/progressbar.dart';
import 'package:flutter_basics/Widgets/qrcodescanner.dart';
import 'package:flutter_basics/Widgets/radio_checkbox.dart';
import 'package:flutter_basics/Widgets/rowscolumns.dart';
import 'package:flutter_basics/Widgets/snackbar.dart';
import 'package:flutter_basics/Widgets/tabbar.dart';
import 'package:flutter_basics/Widgets/useremailpassauth.dart';
import 'package:flutter_basics/listmodal/listview.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen(
      {super.key});

  

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late bool themeSwitcher;
  // @override
  // void initState() {
  //   super.initState();
  //   themeSwitcher = widget.isDarkMode;
  // }

  final themeIcon = WidgetStateProperty.resolveWith<Icon?>(
    (Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return const Icon(
          Icons.nightlight_round_sharp,
          color: Colors.white,
        );
      }
      return const Icon(
        Icons.light_mode_rounded,
        color: Colors.black,
      );
    },
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text('Flutter Basics'),
        backgroundColor: Provider.of<ThemeNotifier>(context,listen: false).getMode()
            ? const Color.fromARGB(255, 30, 30, 30)
            : const Color.fromARGB(255, 240, 230, 220),
        actions: [
          Consumer<ThemeNotifier>(
            builder: (BuildContext context, ThemeNotifier notifier, Widget? child) =>
            Switch(
              value: notifier.getMode(),
              activeColor: Colors.black12,
              inactiveThumbColor: Colors.white,
              thumbIcon: themeIcon,
              onChanged: (bool value) =>Provider.of<ThemeNotifier>(context,listen:false).setMode(),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          // color: Provider.of<ThemeNotifier>(context,listen: false).getMode()
          //     ? const Color.fromARGB(255, 30, 30, 30)
          //     : const Color.fromARGB(255, 240, 230, 220),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              cardWidget(
                  context, 'UI\'s', () => MyNavigation(context, MyUIs())),
              cardWidget(context, 'Container SizedBox',
                  () => MyNavigation(context, ContainerSized())),
              cardWidget(context, 'Rows Columns',
                  () => MyNavigation(context, RowsCols())),
              cardWidget(
                  context, 'Buttons', () => MyNavigation(context, Buttons())),
              cardWidget(context, 'List/Grid View',
                  () => MyNavigation(context, ListGrid())),
              cardWidget(context, 'Snack Bar',
                  () => MyNavigation(context, SnackbarWidget())),
              cardWidget(context, 'Dismissible',
                  () => MyNavigation(context, DismissableWidget())),
              cardWidget(
                  context, 'Image', () => MyNavigation(context, ImageWidget())),
              cardWidget(context, 'Image Picker',
                  () => MyNavigation(context, ImagePickerWidget())),
              cardWidget(
                  context, 'Alert', () => MyNavigation(context, AlertWidget())),
              cardWidget(context, 'Drawer',
                  () => MyNavigation(context, DrawerWidget())),
              cardWidget(context, 'Bottom Sheet',
                  () => MyNavigation(context, BottomSheetWidget())),
              cardWidget(context, 'Animated Text',
                  () => MyNavigation(context, AnimatedTextWidget())),
              cardWidget(context, 'Animation',
                  () => MyNavigation(context, AnimationWidget())),
              cardWidget(context, 'Expand Animation',
                  () => MyNavigation(context, ExpandAnimation())),
              cardWidget(context, 'Opacity Animation',
                  () => MyNavigation(context, OpacityAnimation())),
              cardWidget(context, 'Page Route Animation',
                  () => MyNavigation(context, PageRouteAnimation())),
              cardWidget(context, 'Bottom Nav Bar',
                  () => MyNavigation(context, BottomNavWidget())),
              cardWidget(context, 'Drop Down',
                  () => MyNavigation(context, DropDownWidget())),
              cardWidget(
                  context, 'Form', () => MyNavigation(context, FormWidget())),
              cardWidget(context, 'Firebase Signin/Signup',
                  () => MyNavigation(context, UserEmailPassAuth())),
              cardWidget(context, 'Tab Bar',
                  () => MyNavigation(context, TabbarWidget())),
              cardWidget(context, 'Stack',
                  () => MyNavigation(context, StackWidget())),
              cardWidget(context, 'Geo Location',
                  () => MyNavigation(context, LocationWidget())),
              cardWidget(context, 'List Modal Class',
                  () => MyNavigation(context, Listviewwidget())),
              cardWidget(context, 'Radio/Checkbox',
                  () => MyNavigation(context, RadioCheckbox())),
              cardWidget(context, 'Progress Bar',
                  () => MyNavigation(context, ProgressBar())),
              cardWidget(context, 'QR Code Scanner',
                  () => MyNavigation(context, QRCodeScanner())),
              cardWidget(context, 'Glowing Avatar',
                  () => MyNavigation(context, GlowingAvatar())),
              cardWidget(context, 'Youtube Video Player',
                  () => MyNavigation(context, YouTubeVideoPlayer())),
              cardWidget(context, 'Concentric Transition Page',
                  () => MyNavigation(context, ConcentricTransitionPage())),
              cardWidget(context, 'UPI Success Animation',
                  () => MyNavigation(context, UpiAnimation())),
            ],
          ),
        ),
      ),
    );
  }
}

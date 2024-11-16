import 'package:flutter/material.dart';
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
import 'package:flutter_basics/cardwidget.dart';
import 'package:flutter_basics/listmodal/listview.dart';
import 'package:flutter_basics/navigation.dart';

class MyWidgets extends StatelessWidget {
  const MyWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text('Widgets'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
            cardWidget(
                context, 'Drawer', () => MyNavigation(context, DrawerWidget())),
            cardWidget(context, 'Bottom Sheet',
                () => MyNavigation(context, BottomSheetWidget())),
            cardWidget(context, 'Animated Text',
                () => MyNavigation(context, AnimatedTextWidget())),
            cardWidget(context, 'Animation',
                () => MyNavigation(context, AnimationWidget())),
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
            cardWidget(context, 'Snack',
                () => MyNavigation(context, SnackbarWidget())),
            cardWidget(context, 'Tab Bar',
                () => MyNavigation(context, TabbarWidget())),
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
            cardWidget(context, 'Concentric Transition Page',
                () => MyNavigation(context, ConcentricTransitionPage())),
          ],
        ),
      ),
    );
  }
}

import 'package:agriscape/app/modules/contact/views/contact_view.dart';
import 'package:agriscape/app/modules/orders/views/orders_view.dart';
import 'package:agriscape/app/modules/privacypolicy/views/privacypolicy_view.dart';
import 'package:agriscape/app/modules/products/views/products_view.dart';
import 'package:agriscape/app/modules/settings/views/settings_view.dart';
import 'package:agriscape/app/modules/update/views/update_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../app/modules/customers/views/customers_view.dart';
import 'assets.dart';
import 'colors.dart';
/* Submit Button */
class Button extends StatelessWidget {
  final String btnText;
  final GestureTapCallback onClick;

  const Button({super.key,required this.btnText,required this.onClick,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Column(
        children: [
          Container(
            height: 50.h,
            width: 335.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0).w,
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.topRight,
                  colors: <Color>[Color(0xff66CCFF), Color(0xff36F3AA)]),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0).r,
                  child: Text(btnText,style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                    fontFamily: "Roboto"
                  ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


/* CustomTextFormField  */
class CustomTextFormField extends StatelessWidget {

  final GestureTapCallback? onClick;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String hintText;
  final IconData? iconData;
  final bool obscureText;
  final String? Function(String?)? validator;
  final int? maxLength;
  final Widget? suffixIcon;

  const CustomTextFormField({
    super.key,
    this.onClick,
    required this.controller,
    required this.keyboardType,
    required this.hintText,
    this.iconData,
    required this.obscureText,
    this.validator,
    this.maxLength,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(0.8).w,
        child: GestureDetector(
          onTap: onClick ?? () {},
          child: TextFormField(
            controller: controller,
            obscureText: obscureText,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              hintText: hintText,
              contentPadding: EdgeInsets.all(20.0).w,
              hintStyle: TextStyle(
                color: TextColor,
              fontFamily: 'Roboto',
              fontSize: 14.sp
            ),
              // prefixIcon: Icon(iconData),
              // prefixIconColor: MaterialStateColor.resolveWith((states) =>
              // states.contains(MaterialState.focused)
              //     ? Color(0xFF1B4C76)
              //     : Colors.grey),
               suffixIcon: suffixIcon,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10).r),
                gapPadding: 10,
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10).r),
                gapPadding: 10,
                borderSide: BorderSide(color: borderColor, width: 2),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(25).r),
                gapPadding: 10,
                borderSide: BorderSide(color: borderColor, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25).r,
                borderSide: BorderSide(color: appColor, width: 2),
              ),
              counterText: "",
            ),
            validator: validator,
            maxLength: maxLength,
          ),
        )
    );
  }
}


/* MyDropdownButton  */
class MyDropdownButton extends StatefulWidget {
  @override
  _MyDropdownButtonState createState() => _MyDropdownButtonState();
}
class _MyDropdownButtonState extends State<MyDropdownButton> {
   String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0).w,
      child: Container(
        // width: 150.w,
        // height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20).r,
          border: Border.all(
            color: Colors.grey,
            width: 1.w,
          ),
        ),
        child: DropdownButton<String>(
          isExpanded: true,
          value: selectedValue,
          hint: Padding(
            padding: EdgeInsets.only(left: 20).r,
            child: Text('Select',style: TextStyle(
              fontSize: 15.sp
            ),),
          ),
          onChanged: (newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
          items: [
            DropdownMenuItem(
              value: 'Item 1',
              child: Text('Gujarat'),
            ),
            DropdownMenuItem(
              value: 'Item 2',
              child: Text('Delhi'),
            ),
            DropdownMenuItem(
              value: 'Item 3',
              child: Text('Punjab'),
            ),
          ],
        ),
      ),
    );
  }
}
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();


/* Drawer */
class myDrawer extends StatefulWidget {
  const myDrawer({super.key});

  @override
  State<myDrawer> createState() => _myDrawerState();
}
class _myDrawerState extends State<myDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0).w,
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 13.w),
                    Text("WELCOME KEYUR P",
                      style: TextStyle(
                          fontSize: 20.sp,
                        fontFamily: "Oswald"
                      ),),
                  ],
                ),
                SizedBox(height: 15.h,),
                Image.asset(icDrawer),
                ListTile(
                  leading: Image.asset(icDrawerProducts),
                  title: const Text(' Products'),
                  onTap: () {
                    Get.to(() => ProductsView());
                  },
                ),
                ListTile(
                  leading: Image.asset(icDrawerVehicals),
                  title: const Text('Vehicles'),
                  onTap: () {
                  },
                ),
                ListTile(
                  leading: Image.asset(icDrawerCustomes),
                  title: const Text('Customers'),
                  onTap: () {
                    Get.to(() => CustomersView());

                  },
                ),
                ListTile(
                  leading: Image.asset(icDrawerOprators),
                  title: const Text('Operators'),
                  onTap: () {
                  },
                ),
                ListTile(
                  leading: Image.asset(icDrawerOrders),
                  title: const Text('Orders'),
                  onTap: () {
                    Get.to(() => OrdersView());
                  },
                ),
                ListTile(
                  leading: Image.asset(icDrawerReports),
                  title: const Text('Reports'),
                  onTap: () {
                  },
                ),
                ListTile(
                  leading: Image.asset(icDrawericSettings),
                  title: const Text('Settings'),
                  onTap: () {
                    //scaffoldKey.currentState!.openEndDrawer();
                    Get.to(() => SettingsView());
                  },
                ),
                ListTile(
                  leading: Image.asset(icDrawerProfile),
                  title: const Text('Contact Us'),
                  onTap: () {
                    Get.to(() => ContactView());
                  },
                ),
                ListTile(
                  leading: Image.asset(icDrawerShare),
                  title: const Text('Share App'),
                  onTap: () {
                  },
                ),
                ListTile(
                  leading: Image.asset(icDrawerPrivacy),
                  title: const Text('Privacy Policy'),
                  onTap: () {
                    Get.to(() => PrivacyPolicyView());
                  },
                ),
                ListTile(
                  leading: Image.asset(icDrawerTerms),
                  title: const Text('Terms & Conditions'),
                  onTap: () {
                  },
                ),
                ListTile(
                  leading: Image.asset(icDrawerPrivacy),
                  title: const Text('Updates'),
                  onTap: () {
                    Get.to(() => UpdateView());
                  },
                ),
                Divider(
                  color: Colors.grey.shade400
                ),
                Text("Power by ❤ Karon")
              ],
            ),
          )
        ],
      ),
    );
  }
}


/* Update button */
customButton(
    VoidCallback voidCallback,
    String text,
    ) {
  return Container(
    height: 50.h,
    width: 160.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.0).w,
      gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.topRight,
          colors: <Color>[Color(0xff66CCFF), Color(0xff36F3AA)]),
    ),
    child: ElevatedButton(
      onPressed: voidCallback,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0).w,
        ),
      ),
      child: Text(text,
        style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16.sp,
            color: Colors.white
        ),
      ),
    ),
  );
}

/* No dialog button */
noDialogButton(
    VoidCallback voidCallback,
    String text,
    ) {
  return Container(
    height: 50.h,
    width: 120.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.0).w,
      gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.topRight,
          colors: <Color>[Color(0xff66CCFF), Color(0xff36F3AA)]),
    ),
    child: ElevatedButton(
      onPressed: voidCallback,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0).w,
        ),
      ),
      child: Text(text,
        style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16.sp,
            color: Colors.white,
            fontWeight: FontWeight.bold

        ),
      ),
    ),
  );
}

/* No dialog button */
yesDialogButton(
    VoidCallback voidCallback,
    String text,
    ) {
  return Container(
    height: 50.h,
    width: 120.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.0).w,
      color: Color(0xffF7F7F7)
    ),
    child: ElevatedButton(
      onPressed: voidCallback,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0).w,
        ),
      ),
      child: Text(text,
        style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16.sp,
            color: Colors.black,
          fontWeight: FontWeight.bold
        ),
      ),
    ),
  );
}
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import '../widgets/custom_dropdown_button.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  late double _deviceHeight, _deviceWidth;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
            height: _deviceHeight,
            width: _deviceWidth,
            padding: EdgeInsets.only(
                left: _deviceWidth * 0.05,
                right: _deviceWidth * 0.05,
                bottom: _deviceHeight * 0.03),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [_moonTitle(), _moonImageWidget(), _bookRideWidget()],
            )),
      ),
      backgroundColor: Colors.black,
    );
  }

  Widget _moonImageWidget() {
    return Container(
      height: _deviceHeight * 0.5,
      width: _deviceWidth,
      decoration: BoxDecoration(
          //   color: Colors.black,
          image: DecorationImage(
              image: AssetImage("assets/images/moon.png"),
              fit: BoxFit.contain)),
    );
  }

  Widget _moonTitle() {
    return Center(
      child: Text("#MoonApp",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 70, color: Colors.white, fontWeight: FontWeight.w800)),
    );
  }

  Widget _destinationDropdownWidget() {
    List<String> _items = <String>[
      "Agregar",
      "Editar",
      "Actualizar",
      "Eliminar"
    ];

    return CustomDropdownButton(values: _items, width: _deviceWidth);
  }

  Widget _travellersInformationWidget() {
    List<String> items = <String>["1", "2", "3", "4"];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropdownButton(values: items, width: _deviceWidth * 0.43),
        CustomDropdownButton(values: items, width: _deviceWidth * 0.43)
      ],
    );
  }

  Widget _bookRideWidget() {
    return SizedBox(
      height: _deviceHeight * 0.25,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _destinationDropdownWidget(),
            _travellersInformationWidget(),
            _rideButton()
          ]),
    );
  }

  Widget _rideButton() {
    return Container(
      width: _deviceWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 18),
        onPressed: () {},
        child: Text(
          "Book Ride!",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
        ),
      ),
    );
  }
}

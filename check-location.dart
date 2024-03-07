 bool isLocationEnabled = await Geolocator.isLocationServiceEnabled();
    if (isLocationEnabled) {
   
    } else {
      Get.bottomSheet(
        const LocationSwitcherWidget(),
        isScrollControlled: false,
        backgroundColor: const Color.fromRGBO(252, 252, 252, 1),
        shape: BorderRadiusAttributes.onlyTopRounded(30),
      );
    }

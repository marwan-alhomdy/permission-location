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



class LocationSwitcherWidget extends StatelessWidget {
  const LocationSwitcherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const LineButtonSheetWidget(),
        Text(
          'تحتاج إلى تشغيل الموقع',
          style: AppTextStyles.getMediumStyle(),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'يحتاج التطبيق إلى تشغيل خدمة الموقع لكي يعمل بشكل صحيح. هل تريد تشغيلها الآن؟',
            style: AppTextStyles.getRegularStyle(),
          ),
        ),
        const SizedBox(height: 10),
        ButtonPermissonWidget(
          name: "تشغيل الموقع".tr,
          icon: IconlyBold.location,
          onTap: () async {
            await Geolocator.openLocationSettings();
            // ignore: use_build_context_synchronously
            Navigator.of(context).pop();
          },
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}

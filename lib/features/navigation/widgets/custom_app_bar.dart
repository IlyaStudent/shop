part of '../navigation.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: const Column(
        children: [
          OrderTypeSwitcher(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AddressWidget(),
                BalanceWidget(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: SearchWidget(),
          ),
        ],
      ),
    );
  }
}

part of '../navigation.dart';

class OrderTypeSwitcher extends StatefulWidget {
  const OrderTypeSwitcher({super.key});

  @override
  State<OrderTypeSwitcher> createState() => _OrderTypeSwitcherState();
}

class _OrderTypeSwitcherState extends State<OrderTypeSwitcher> {
  bool isDeliverySelected = true;

  void toggleSelection() {
    setState(() {
      isDeliverySelected = !isDeliverySelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: toggleSelection,
            child: Container(
              height: 36,
              decoration: BoxDecoration(
                color:
                    isDeliverySelected ? AppColors.main : AppColors.secondary,
              ),
              alignment: Alignment.center,
              child: Text(
                LocalizationCosts.delivery,
                style: TextStyle(
                  color: isDeliverySelected ? AppColors.white : AppColors.black,
                  fontSize: 14,
                  fontWeight:
                      isDeliverySelected ? FontWeight.w500 : FontWeight.w300,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: toggleSelection,
            child: Container(
              height: 36,
              decoration: BoxDecoration(
                color:
                    !isDeliverySelected ? AppColors.main : AppColors.secondary,
              ),
              alignment: Alignment.center,
              child: Text(
                LocalizationCosts.selfTake,
                style: TextStyle(
                  color: isDeliverySelected ? AppColors.black : AppColors.white,
                  fontSize: 14,
                  fontWeight:
                      isDeliverySelected ? FontWeight.w300 : FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

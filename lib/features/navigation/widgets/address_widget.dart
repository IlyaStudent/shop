part of '../navigation.dart';

class AddressWidget extends StatelessWidget {
  const AddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          LocalizationCosts.address,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        SizedBox(
          width: 4,
        ),
        Icon(
          Icons.edit_outlined,
          color: AppColors.iconColor,
        )
      ],
    );
  }
}

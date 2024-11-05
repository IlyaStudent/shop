part of '../navigation.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
        prefixIcon: const Padding(
          padding: EdgeInsets.only(left: 24, right: 8),
          child: Icon(
            Icons.search,
            color: AppColors.black,
          ),
        ),
        hintText: LocalizationCosts.searchHint,
        hintStyle: const TextStyle(
          color: AppColors.iconColor,
          fontSize: 16,
          fontWeight: FontWeight.w300,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: const BorderSide(
            color: AppColors.borderColor,
          ),
        ),
      ),
    );
  }
}

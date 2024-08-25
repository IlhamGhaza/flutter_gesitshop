import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/configs/theme/app_colors.dart';
import '../../../domain/product/entities/product.dart';
import '../bloc/product_size_selection_cubit.dart';

class ProductColors extends StatelessWidget {
  final ProductEntity productEntity;
  const ProductColors({required this.productEntity, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(16), topLeft: Radius.circular(16))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 40,
            child: Stack(
              children: [
                const Center(
                  child: Text(
                    'Colors',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close)),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return BlocBuilder<ProductSizeSelectionCubit, int>(
                      builder: (context, state) => GestureDetector(
                        onTap: () {
                          context
                              .read<ProductSizeSelectionCubit>()
                              .itemSelection(index);
                        },
                        child: Container(
                          height: 60,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                              color: state == index
                                  ? AppColors.primary
                                  : AppColors.secondBackground,
                              borderRadius: BorderRadius.circular(50)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                productEntity.colors[index].title,
                                style: const TextStyle(fontSize: 16),
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(
                                          productEntity.colors[index].rgb[0],
                                          productEntity.colors[index].rgb[1],
                                          productEntity.colors[index].rgb[2],
                                          1),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  const SizedBox(width: 15,),
                                  state == index?
                                  const Icon(
                                    Icons.check,
                                    size: 30,
                                  ) : Container(
                                    width: 30,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                  itemCount: productEntity.colors.length
                    )
                ),
        ],
      ),
    );
  }
}
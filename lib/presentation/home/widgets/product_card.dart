import 'package:flutter/material.dart';
import 'package:flutter_fic9_ecommerce_app/common/components/space_height.dart';
import 'package:flutter_fic9_ecommerce_app/common/constants/colors.dart';

import '../../../common/constants/variables.dart';
import '../../../data/models/responses/products_response_model.dart';

class ProductCard extends StatelessWidget {
  final Products data;
  const ProductCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        // context,
        //MaterialPageRoute(builder: (context) => const ) ProductDetailPage())
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(6.0)),
          boxShadow: [
            BoxShadow(
              color: ColorName.black.withOpacity(0.05),
              blurRadius: 7.0,
              spreadRadius: 0,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              '${Variables.baseUrl}${data.attributes.images.data.first.attributes.url}',
              width: 170.0,
              height: 112.0,
              fit: BoxFit.cover,
            ),
            const SpaceHeight(14.0),
            Flexible(
              child: Text(
                data.attributes.name,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SpaceHeight(4.0),
            Text(
              data.attributes.price,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

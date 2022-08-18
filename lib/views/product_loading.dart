import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class ProductLoading extends StatelessWidget {
  const ProductLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 2,
      itemCount: 100,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      itemBuilder: (context, index) {
        return Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Shimmer.fromColors(
                  highlightColor: Colors.white,
                  baseColor: Colors.grey[300]!,
                  child: Stack(
                    children: [
                      Container(
                        height: 220,
                        width: double.infinity,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Container(
                          width: 100,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 10,
                  width: 100,
                  color: Colors.grey[400],
                ),
                const SizedBox(height: 8),
                Container(
                  height: 30,
                  width: 100,
                  color: Colors.grey[400],
                ),
              ],
            ),
          ),
        );
      },
      staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
    );
  }
}

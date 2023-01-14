import 'package:three_working/multi_views.dart';
import 'package:three_working/webgl_camera.dart';
import 'package:three_working/webgl_clipping.dart';
import 'package:three_working/webgl_clipping_advanced.dart';
import 'package:three_working/webgl_clipping_intersection.dart';
import 'package:three_working/webgl_clipping_stencil.dart';
import 'package:three_working/webgl_geometries.dart';
import 'package:three_working/webgl_geometry_colors.dart';
import 'package:three_working/webgl_instancing_performance.dart';
import 'package:three_working/webgl_loader_texture_basis.dart';
import 'package:three_working/webgl_materials.dart';
import 'package:three_working/webgl_materials_browser.dart';
import 'package:three_working/webgl_shadowmap_viewer.dart';
import 'package:flutter/material.dart';

import 'webgl_loader_svg.dart';

class ExamplePage extends StatefulWidget {
  final String? id;

  const ExamplePage({Key? key, this.id}) : super(key: key);

  @override
  State<ExamplePage> createState() => _MyAppState();
}

class _MyAppState extends State<ExamplePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget page;

    String fileName = widget.id!;

    if (fileName == "webgl_materials_browser") {
      page = WebglMaterialsBrowser(fileName: fileName);
      // } else if (fileName == "webgl_geometry_shapes") {
      //   page = WebGlGeometryShapes(fileName: fileName);
    } else if (fileName == "webgl_instancing_performance") {
      page = WebglInstancingPerformance(fileName: fileName);
    } else if (fileName == "webgl_shadowmap_viewer") {
      page = WebGlShadowmapViewer(fileName: fileName);
    } else if (fileName == "webgl_loader_texture_basis") {
      page = WebGlLoaderTextureBasis(fileName: fileName);
      // } else if (fileName == "misc_animation_keys") {
      //   page = MiscAnimationKeys(fileName: fileName);
    } else if (fileName == "webgl_clipping_intersection") {
      page = WebGlClippingIntersection(fileName: fileName);
    } else if (fileName == "webgl_clipping_advanced") {
      page = WebGlClippingAdvanced(fileName: fileName);
    } else if (fileName == "webgl_clipping_stencil") {
      page = WebGlClippingStencil(fileName: fileName);
    } else if (fileName == "webgl_clipping") {
      page = WebGlClipping(fileName: fileName);
    } else if (fileName == "webgl_geometries") {
      page = WebglGeometries(fileName: fileName);
    } else if (fileName == "webgl_materials") {
      page = WebGlMaterials(fileName: fileName);
    } else if (fileName == "webgl_camera") {
      page = WebGlCamera(fileName: fileName);
    } else if (fileName == "webgl_geometry_colors") {
      page = WebGlGeometryColors(fileName: fileName);
    } else if (fileName == "webgl_loader_svg") {
      page = WebGlLoaderSvg(fileName: fileName);
    } else if (fileName == "multi_views") {
      page = MultiViews(fileName: fileName);
    } else {
      throw ("ExamplePage fileName $fileName is not support yet ");
    }

    return page;
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/goods/goods_detail/goods_detail.dart';
import 'package:flutter_demo/tab_bar.dart';
import 'package:flutter_demo/pages/goods/goods_detail/tab_goods/tab_goods.dart';
import 'package:flutter_demo/pages/goods/goods_detail/tab_detail/tab_detail.dart';
import 'package:flutter_demo/pages/goods/goods_detail/tab_comment/tab_comment.dart';
import 'package:flutter_demo/pages/goods/goods_detail/tab_recommend/tab_recommend.dart';
import 'package:flutter_demo/tabbar/mine/widgets/a/absorb_pointer.dart';
import 'package:flutter_demo/tabbar/mine/widgets/a/alert_dialog.dart';
import 'package:flutter_demo/tabbar/mine/widgets/a/align.dart';
import 'package:flutter_demo/tabbar/mine/widgets/a/animated_builder.dart';
import 'package:flutter_demo/tabbar/mine/widgets/a/animated_container.dart';
import 'package:flutter_demo/tabbar/mine/widgets/a/animated_cross_fade.dart';
import 'package:flutter_demo/tabbar/mine/widgets/a/animated_default_text_style.dart';
import 'package:flutter_demo/tabbar/mine/widgets/a/animated_list_state.dart';
import 'package:flutter_demo/tabbar/mine/widgets/a/animated_modal_barrier.dart';
import 'package:flutter_demo/tabbar/mine/widgets/a/animated_opacity.dart';
import 'package:flutter_demo/tabbar/mine/widgets/a/animated_physical_model.dart';
import 'package:flutter_demo/tabbar/mine/widgets/a/animated_positioned.dart';
import 'package:flutter_demo/tabbar/mine/widgets/a/animated_size.dart';
import 'package:flutter_demo/tabbar/mine/widgets/a/animated_widget.dart';
import 'package:flutter_demo/tabbar/mine/widgets/a/app_bar.dart';
import 'package:flutter_demo/tabbar/mine/widgets/a/aspect_ratio.dart';
import 'package:flutter_demo/tabbar/mine/widgets/a/asset_bundle.dart';
import 'package:flutter_demo/tabbar/mine/widgets/b/backdrop_filter.dart';
import 'package:flutter_demo/tabbar/mine/widgets/b/baseline.dart';
import 'package:flutter_demo/tabbar/mine/widgets/b/bottom_navigation_bar.dart';
import 'package:flutter_demo/tabbar/mine/widgets/b/bottom_sheet.dart';
import 'package:flutter_demo/tabbar/mine/widgets/b/button_bar.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/card.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/center.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/checkbox.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/chip.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/circular_progress_indicator.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/clip_oval.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/clip_path.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/clip_rect.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/column.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/constrained_box.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/container.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/cupertino_action_sheet.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/cupertino_activity_indicator.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/cupertino_alert_dialog.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/cupertino_button.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/cupertino_date_picker.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/cupertino_fullscreen_dialog_transition.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/cupertino_navigation_bar.dart';

final routers = {
  "/": (context) => TabBarPage(),
  "/goods_detail": (context, {arguments}) => GoodsDetail(goodsId: arguments),
  "/tab_goods": (context) => TabGoods(),
  "/detail": (context) => DetailPage(),
  "/evaluation": (context) => EvaluationPage(),
  "/recommend": (context) => RecommendPage(),
  "/absorbPointer": (context) => AbsorbPointerPage(),
  "/alertDialog": (context) => AlertDialogPage(),
  "/align": (context) => AlignPage(),
  "/animatedBuilder": (context) => AnimatedBuilderPage(),
  "/animatedCrossFade": (context) => AnimatedCrossFadePage(),
  "/animatedDefaultTextStyle": (context) => AnimatedDefaultTextStylePage(),
  "/animatedListState": (context) => AnimatedListStatePage(),
  "/animatedModalBarrier": (context) => AnimatedModalBarrierPage(),
  "/animatedOpacity": (context) => AnimatedOpacityPage(),
  "/animatedPhysicalModel": (context) => AnimatedPhysicalModelPage(),
  "/animatedPositioned": (context) => AnimatedPositionedPage(),
  "/animatedSize": (context) => AnimatedSizePage(),
  "/animatedWidget": (context) => AnimatedWidgetPage(),
  "/appBar": (context) => AppBarPage(),
  "/aspectRatio": (context) => AspectRatioPage(),
  "/assetBundle": (context) => AssetBundlePage(),
  "/backdropFilter": (context) => BackdropFilterPage(),
  "/baseline": (context) => BaselinePage(),
  "/bottomNavigationBar": (context) => BottomNavigationBarPage(),
  "/bottomSheet": (context) => BottomSheetPage(),
  "/buttonBar": (context) => ButtonBarPage(),
  "/card": (context) => CardPage(),
  "/center": (context) => CenterPage(),
  "/checkbox": (context) => CheckboxPage(),
  "/chip": (context) => ChipPage(),
  "/circularProgressIndicator": (context) => CircularProgressIndicatorPage(),
  "/clipOval": (context) => ClipOvalPage(),
  "/clipPath": (context) => ClipPathPage(),
  "/clipRect": (context) => ClipRectPage(),
  "/column": (context) => ColumnPage(),
  "/constrainedBox": (context) => ConstrainedBoxPage(),
  "/container": (context) => ContainerPage(),
  "/cupertinoActionSheet": (context) => CupertinoActionSheetPage(),
  "/cupertinoActivityIndicator": (context) => CupertinoActivityIndicatorPage(),
  "/cupertinoAlertDialog": (context) => CupertinoAlertDialogPage(),
  "/cupertinoButton": (context) => CupertinoButtonPage(),
  "/cupertinoDatePicker": (context) => CupertinoDatePickerPage(),
  "/cupertinoFullscreenDialogTransition": (context) => CupertinoFullscreenDialogTransitionPage(),
  "/cupertinoNavigationBar": (context) => CupertinoNavigationBarPage(),
};

var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routers[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context, arguments: settings.arguments)
      );
      return route;
    } else {
      final Route route = MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
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
import 'package:flutter_demo/tabbar/mine/widgets/c/cupertino_page_transition.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/cupertino_picker.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/cupertino_popup_surface.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/cupertino_scrollbar.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/cupertino_segmented_control.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/cupertino_slider.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/cupertino_switch.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/cupertino_tab_bar.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/cupertino_tab_scaffold.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/cupertino_text_field.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/cupertino_timer_picker.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/custom_multi_child_layout.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/custom_paint.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/custom_scroll_view.dart';
import 'package:flutter_demo/tabbar/mine/widgets/c/custom_single_child_layout.dart';
import 'package:flutter_demo/tabbar/mine/widgets/d/data_table.dart';
import 'package:flutter_demo/tabbar/mine/widgets/d/date_time_picker.dart';
import 'package:flutter_demo/tabbar/mine/widgets/d/decorated_box.dart';
import 'package:flutter_demo/tabbar/mine/widgets/d/decorated_box_transition.dart';
import 'package:flutter_demo/tabbar/mine/widgets/d/default_text_style.dart';
import 'package:flutter_demo/tabbar/mine/widgets/d/dismissible.dart';
import 'package:flutter_demo/tabbar/mine/widgets/d/divider.dart';
import 'package:flutter_demo/tabbar/mine/widgets/d/drag_target.dart';
import 'package:flutter_demo/tabbar/mine/widgets/d/draggable.dart';
import 'package:flutter_demo/tabbar/mine/widgets/d/drawer.dart';
import 'package:flutter_demo/tabbar/mine/widgets/d/dropdown_button.dart';
import 'package:flutter_demo/tabbar/mine/widgets/e/exclude_semantics.dart';
import 'package:flutter_demo/tabbar/mine/widgets/e/expanded.dart';
import 'package:flutter_demo/tabbar/mine/widgets/e/expansion_panel.dart';
import 'package:flutter_demo/tabbar/mine/widgets/f/fade_transition.dart';
import 'package:flutter_demo/tabbar/mine/widgets/f/fitted_box.dart';
import 'package:flutter_demo/tabbar/mine/widgets/f/flat_button.dart';
import 'package:flutter_demo/tabbar/mine/widgets/f/floating_action_button.dart';
import 'package:flutter_demo/tabbar/mine/widgets/f/flow.dart';
import 'package:flutter_demo/tabbar/mine/widgets/f/flutter_logo.dart';
import 'package:flutter_demo/tabbar/mine/widgets/f/form.dart';
import 'package:flutter_demo/tabbar/mine/widgets/f/form_field.dart';
import 'package:flutter_demo/tabbar/mine/widgets/f/fractional_translation.dart';
import 'package:flutter_demo/tabbar/mine/widgets/f/fractionally_sized_box.dart';
import 'package:flutter_demo/tabbar/mine/widgets/f/future_builder.dart';
import 'package:flutter_demo/tabbar/mine/widgets/g/gesture_detector.dart';
import 'package:flutter_demo/tabbar/mine/widgets/g/grid_view.dart';
import 'package:flutter_demo/tabbar/mine/widgets/h/hero1.dart';
import 'package:flutter_demo/tabbar/mine/widgets/h/hero2.dart';
import 'package:flutter_demo/tabbar/mine/widgets/i/icon.dart';
import 'package:flutter_demo/tabbar/mine/widgets/i/icon_button.dart';
import 'package:flutter_demo/tabbar/mine/widgets/i/ignore_pointer.dart';
import 'package:flutter_demo/tabbar/mine/widgets/i/image.dart';
import 'package:flutter_demo/tabbar/mine/widgets/i/indexed_stack.dart';
import 'package:flutter_demo/tabbar/mine/widgets/i/intrinsic_height.dart';
import 'package:flutter_demo/tabbar/mine/widgets/i/intrinsic_width.dart';
import 'package:flutter_demo/tabbar/mine/widgets/l/layout_builder.dart';
import 'package:flutter_demo/tabbar/mine/widgets/l/limited_box.dart';
import 'package:flutter_demo/tabbar/mine/widgets/l/linear_progress_indicator.dart';
import 'package:flutter_demo/tabbar/mine/widgets/l/list_body.dart';
import 'package:flutter_demo/tabbar/mine/widgets/l/list_tile.dart';
import 'package:flutter_demo/tabbar/mine/widgets/l/list_view.dart';
import 'package:flutter_demo/tabbar/mine/widgets/l/long_press_draggable.dart';
import 'package:flutter_demo/tabbar/mine/widgets/m/material_app.dart';
import 'package:flutter_demo/tabbar/mine/widgets/m/media_query.dart';
import 'package:flutter_demo/tabbar/mine/widgets/m/merge_semantics.dart';
import 'package:flutter_demo/tabbar/mine/widgets/n/navigator.dart';
import 'package:flutter_demo/tabbar/mine/widgets/n/nested_scroll_view.dart';
import 'package:flutter_demo/tabbar/mine/widgets/n/notification_listener.dart';
import 'package:flutter_demo/tabbar/mine/widgets/o/offstage.dart';
import 'package:flutter_demo/tabbar/mine/widgets/o/opacity.dart';
import 'package:flutter_demo/tabbar/mine/widgets/o/outline_button.dart';
import 'package:flutter_demo/tabbar/mine/widgets/o/overflow_box.dart';
import 'package:flutter_demo/tabbar/mine/widgets/o/popup_menu_button.dart';
import 'package:flutter_demo/tabbar/mine/widgets/o/positioned_transition.dart';
import 'package:flutter_demo/tabbar/mine/widgets/p/padding.dart';
import 'package:flutter_demo/tabbar/mine/widgets/p/page_view.dart';
import 'package:flutter_demo/tabbar/mine/widgets/p/placeholder.dart';
import 'package:flutter_demo/tabbar/mine/widgets/r/radio.dart';
import 'package:flutter_demo/tabbar/mine/widgets/r/raised_button.dart';
import 'package:flutter_demo/tabbar/mine/widgets/r/raw_image.dart';
import 'package:flutter_demo/tabbar/mine/widgets/r/raw_keyboard_listener.dart';
import 'package:flutter_demo/tabbar/mine/widgets/r/refresh_indicator.dart';
import 'package:flutter_demo/tabbar/mine/widgets/r/rich_text.dart';
import 'package:flutter_demo/tabbar/mine/widgets/r/rotated_box.dart';
import 'package:flutter_demo/tabbar/mine/widgets/r/rotation_transition.dart';
import 'package:flutter_demo/tabbar/mine/widgets/r/row.dart';
import 'package:flutter_demo/tabbar/mine/widgets/s/scale_transition.dart';
import 'package:flutter_demo/tabbar/mine/widgets/s/scroll_configuration.dart';

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
  "/cupertinoPageTransition": (context) => CupertinoPageTransitionPage(),
  "/cupertinoPicker": (context) => CupertinoPickerPage(),
  "/cupertinoPopupSurface": (context) => CupertinoPopupSurfacePage(),
  "/cupertinoScrollbar": (context) => CupertinoScrollbarPage(),
  "/cupertinoSegmentedControl": (context) => CupertinoSegmentedControlPage(),
  "/CupertinoSlider": (context) => CupertinoSliderPage(),
  "/CupertinoSwitch": (context) => CupertinoSwitchPage(),
  "/CupertinoTabBar": (context) => CupertinoTabBarPage(),
  "/CupertinoTabScaffold": (context) => CupertinoTabScaffoldPage(),
  "/CupertinoTextField": (context) => CupertinoTextFieldPage(),
  "/CupertinoTimerPicker": (context) => CupertinoTimerPickerPage(),
  "/CustomMultiChildLayout": (context) => CustomMultiChildLayoutPage(),
  "/CustomPaint": (context) => CustomPaintPage(),
  "/CustomSingleChildLayout": (context) => CustomSingleChildLayoutPage(),
  "/DataTable": (context) => DataTablePage(),
  "/DateTimePacker": (context) => DateTimePackerPage(),
  "/DecoratedBox": (context) => DecoratedBoxPage(),
  "/DecoratedBoxTransition": (context) => DecoratedBoxTransitionPage(),
  "/DefaultTextStyle": (context) => DefaultTextStylePage(),
  "/Dismissible": (context) => DismissiblePage(),
  "/Divider": (context) => DividerPage(),
  "/DragTarget": (context) => DragTargetPage(),
  "/Draggable": (context) => DraggablePage(),
  "/DropdownButton": (context) => DropdownButtonPage(),
  "/ExcludeSemantics": (context) => ExcludeSemanticsPage(),
  "/Expanded": (context) => ExpandedPage(),
  "/ExpansionPanel": (context) => ExpansionPanelPage(),
  "/FadeTransition": (context) => FadeTransitionPage(),
  "/FittedBox": (context) => FittedBoxPage(),
  "/FlatButton": (context) => FlatButtonPage(),
  "/FloatingActionButton": (context) => FloatingActionButtonPage(),
  "/Flow": (context) => FlowPage(),
  "/FlutterLogo": (context) => FlutterLogoPage(),
  "/Form": (context) => FormPage(),
  "/FormField": (context) => FormFieldPage(),
  "/FractionalTranslation": (context) => FractionalTranslationPage(),
  "/FractionallySizedBox": (context) => FractionallySizedBoxPage(),
  "/GestureDetector": (context) => GestureDetectorPage(),
  "/GridView": (context) => GridViewPage(),
  "/Hero": (context) => HeroPage(),
  "/Hero2": (context) => HeroPage2(),
  "/Icon": (context) => IconPage(),
  "/IconButton": (context) => IconButtonPage(),
  "/IgnorePointer": (context) => IgnorePointerPage(),
  "/Image": (context) => ImagePage(),
  "/IndexedStack": (context) => IndexedStackPage(),
  "/IntrinsicHeight": (context) => IntrinsicHeightPage(),
  "/IntrinsicWidth": (context) => IntrinsicWidthPage(),
  "/LayoutBuilder": (context) => LayoutBuilderPage(),
  "/LimitedBox": (context) => LimitedBoxPage(),
  "/LinearProgressIndicator": (context) => LinearProgressIndicatorPage(),
  "/ListBody": (context) => ListBodyPage(),
  "/ListTile": (context) => ListTilePage(),
  "/ListView": (context) => ListViewPage(),
  "/LongPressDraggable": (context) => LongPressDraggablePage(),
  "/MaterialApp": (context) => MaterialAppPage(),
  "/MediaQuery": (context) => MediaQueryPage(),
  "/MergeSemantics": (context) => MergeSemanticsPage(),
  "/Navigator": (context) => NavigatorPage(),
  "/Offstage": (context) => OffstagePage(),
  "/Opacity": (context) => OpacityPage(),
  "/OverflowBox": (context) => OverflowBoxPage(),
  "/Padding": (context) => PaddingPage(),
  "/PopupMenuButton": (context) => PopupMenuButtonPage(),
  "/PositionedTransition": (context) => PositionedTransitionPage(),
  "/Radio": (context) => RadioPage(),
  "/RaisedButton": (context) => RaisedButtonPage(),
  "/RawImage": (context) => RawImagePage(),
  "/RawKeyboardListener": (context) => RawKeyboardListenerPage(),
  "/RefreshIndicator": (context) => RefreshIndicatorPage(),
  "/RotatedBox": (context) => RotatedBoxPage(),
  "/RotationTransition": (context) => RotationTransitionPage(),
  "/Row": (context) => RowPage(),
  "/ScaleTransition": (context) => ScaleTransitionPage(),
  "/ScrollConfiguration": (context) => ScrollConfigurationPage(),
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

.class public abstract Lcom/google/android/material/navigation/NavigationBarView;
.super Landroid/widget/FrameLayout;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/navigation/NavigationBarView$SavedState;,
        Lcom/google/android/material/navigation/NavigationBarView$OnItemReselectedListener;,
        Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;,
        Lcom/google/android/material/navigation/NavigationBarView$LabelVisibility;
    }
.end annotation


# static fields
.field public static final LABEL_VISIBILITY_AUTO:I = -0x1

.field public static final LABEL_VISIBILITY_LABELED:I = 0x1

.field public static final LABEL_VISIBILITY_SELECTED:I = 0x0

.field public static final LABEL_VISIBILITY_UNLABELED:I = 0x2

.field private static final MENU_PRESENTER_ID:I = 0x1


# instance fields
.field private final menu:Lcom/google/android/material/navigation/NavigationBarMenu;

.field private menuInflater:Landroid/view/MenuInflater;

.field private final menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

.field private final presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

.field private reselectedListener:Lcom/google/android/material/navigation/NavigationBarView$OnItemReselectedListener;

.field private selectedListener:Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 138
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-static/range {p1 .. p4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    new-instance v9, Lcom/google/android/material/navigation/NavigationBarPresenter;

    invoke-direct {v9}, Lcom/google/android/material/navigation/NavigationBarPresenter;-><init>()V

    iput-object v9, v0, Lcom/google/android/material/navigation/NavigationBarView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 144
    .end local p1    # "context":Landroid/content/Context;
    .local v10, "context":Landroid/content/Context;
    sget-object v3, Lcom/google/android/material/R$styleable;->NavigationBarView:[I

    sget v1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemTextAppearanceInactive:I

    sget v2, Lcom/google/android/material/R$styleable;->NavigationBarView_itemTextAppearanceActive:I

    filled-new-array {v1, v2}, [I

    move-result-object v6

    .line 145
    move-object v1, v10

    move-object/from16 v2, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v1

    .line 155
    .local v1, "attributes":Landroidx/appcompat/widget/TintTypedArray;
    new-instance v2, Lcom/google/android/material/navigation/NavigationBarMenu;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationBarView;->getMaxItemCount()I

    move-result v4

    invoke-direct {v2, v10, v3, v4}, Lcom/google/android/material/navigation/NavigationBarMenu;-><init>(Landroid/content/Context;Ljava/lang/Class;I)V

    iput-object v2, v0, Lcom/google/android/material/navigation/NavigationBarView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    .line 158
    invoke-virtual {v0, v10}, Lcom/google/android/material/navigation/NavigationBarView;->createNavigationBarMenuView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarMenuView;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 160
    invoke-virtual {v9, v3}, Lcom/google/android/material/navigation/NavigationBarPresenter;->setMenuView(Lcom/google/android/material/navigation/NavigationBarMenuView;)V

    .line 161
    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Lcom/google/android/material/navigation/NavigationBarPresenter;->setId(I)V

    .line 162
    invoke-virtual {v3, v9}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setPresenter(Lcom/google/android/material/navigation/NavigationBarPresenter;)V

    .line 163
    invoke-virtual {v2, v9}, Lcom/google/android/material/navigation/NavigationBarMenu;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v9, v5, v2}, Lcom/google/android/material/navigation/NavigationBarPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 166
    sget v5, Lcom/google/android/material/R$styleable;->NavigationBarView_itemIconTint:I

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 167
    sget v5, Lcom/google/android/material/R$styleable;->NavigationBarView_itemIconTint:I

    .line 168
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 167
    invoke-virtual {v3, v5}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_73

    .line 170
    :cond_68
    nop

    .line 171
    const v5, 0x1010038

    invoke-virtual {v3, v5}, Lcom/google/android/material/navigation/NavigationBarMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 170
    invoke-virtual {v3, v5}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 174
    :goto_73
    sget v5, Lcom/google/android/material/R$styleable;->NavigationBarView_itemIconSize:I

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v9, Lcom/google/android/material/R$dimen;->mtrl_navigation_bar_item_default_icon_size:I

    .line 178
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 175
    invoke-virtual {v1, v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 174
    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationBarView;->setItemIconSize(I)V

    .line 180
    sget v5, Lcom/google/android/material/R$styleable;->NavigationBarView_itemTextAppearanceInactive:I

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_98

    .line 181
    sget v5, Lcom/google/android/material/R$styleable;->NavigationBarView_itemTextAppearanceInactive:I

    .line 182
    invoke-virtual {v1, v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v5

    .line 181
    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationBarView;->setItemTextAppearanceInactive(I)V

    .line 185
    :cond_98
    sget v5, Lcom/google/android/material/R$styleable;->NavigationBarView_itemTextAppearanceActive:I

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 186
    sget v5, Lcom/google/android/material/R$styleable;->NavigationBarView_itemTextAppearanceActive:I

    .line 187
    invoke-virtual {v1, v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v5

    .line 186
    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationBarView;->setItemTextAppearanceActive(I)V

    .line 190
    :cond_a9
    sget v5, Lcom/google/android/material/R$styleable;->NavigationBarView_itemTextAppearanceActiveBoldEnabled:I

    .line 191
    invoke-virtual {v1, v5, v4}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 192
    .local v5, "isBold":Z
    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationBarView;->setItemTextAppearanceActiveBoldEnabled(Z)V

    .line 194
    sget v9, Lcom/google/android/material/R$styleable;->NavigationBarView_itemTextColor:I

    invoke-virtual {v1, v9}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_c3

    .line 195
    sget v9, Lcom/google/android/material/R$styleable;->NavigationBarView_itemTextColor:I

    invoke-virtual {v1, v9}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/google/android/material/navigation/NavigationBarView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 198
    :cond_c3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationBarView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_d5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationBarView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    instance-of v9, v9, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v9, :cond_d2

    goto :goto_d5

    :cond_d2
    move/from16 v9, p4

    goto :goto_e7

    .line 200
    :cond_d5
    :goto_d5
    nop

    .line 201
    move/from16 v9, p4

    invoke-static {v10, v7, v8, v9}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v11

    .line 200
    invoke-direct {v0, v10, v11}, Lcom/google/android/material/navigation/NavigationBarView;->createMaterialShapeDrawableBackground(Landroid/content/Context;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v11

    invoke-static {v0, v11}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 204
    :goto_e7
    sget v11, Lcom/google/android/material/R$styleable;->NavigationBarView_itemPaddingTop:I

    invoke-virtual {v1, v11}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_f8

    .line 205
    sget v11, Lcom/google/android/material/R$styleable;->NavigationBarView_itemPaddingTop:I

    .line 206
    invoke-virtual {v1, v11, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v11

    .line 205
    invoke-virtual {v0, v11}, Lcom/google/android/material/navigation/NavigationBarView;->setItemPaddingTop(I)V

    .line 209
    :cond_f8
    sget v11, Lcom/google/android/material/R$styleable;->NavigationBarView_itemPaddingBottom:I

    invoke-virtual {v1, v11}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_109

    .line 210
    sget v11, Lcom/google/android/material/R$styleable;->NavigationBarView_itemPaddingBottom:I

    .line 211
    invoke-virtual {v1, v11, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v11

    .line 210
    invoke-virtual {v0, v11}, Lcom/google/android/material/navigation/NavigationBarView;->setItemPaddingBottom(I)V

    .line 214
    :cond_109
    sget v11, Lcom/google/android/material/R$styleable;->NavigationBarView_activeIndicatorLabelPadding:I

    invoke-virtual {v1, v11}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_11a

    .line 215
    sget v11, Lcom/google/android/material/R$styleable;->NavigationBarView_activeIndicatorLabelPadding:I

    .line 216
    invoke-virtual {v1, v11, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v11

    .line 215
    invoke-virtual {v0, v11}, Lcom/google/android/material/navigation/NavigationBarView;->setActiveIndicatorLabelPadding(I)V

    .line 219
    :cond_11a
    sget v11, Lcom/google/android/material/R$styleable;->NavigationBarView_elevation:I

    invoke-virtual {v1, v11}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_12c

    .line 220
    sget v11, Lcom/google/android/material/R$styleable;->NavigationBarView_elevation:I

    invoke-virtual {v1, v11, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v0, v11}, Lcom/google/android/material/navigation/NavigationBarView;->setElevation(F)V

    .line 223
    :cond_12c
    sget v11, Lcom/google/android/material/R$styleable;->NavigationBarView_backgroundTint:I

    .line 224
    invoke-static {v10, v1, v11}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 226
    .local v11, "backgroundTint":Landroid/content/res/ColorStateList;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationBarView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-static {v12, v11}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 228
    sget v12, Lcom/google/android/material/R$styleable;->NavigationBarView_labelVisibilityMode:I

    .line 229
    const/4 v13, -0x1

    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result v12

    .line 228
    invoke-virtual {v0, v12}, Lcom/google/android/material/navigation/NavigationBarView;->setLabelVisibilityMode(I)V

    .line 233
    sget v12, Lcom/google/android/material/R$styleable;->NavigationBarView_itemBackground:I

    invoke-virtual {v1, v12, v6}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v12

    .line 234
    .local v12, "itemBackground":I
    if-eqz v12, :cond_153

    .line 235
    invoke-virtual {v3, v12}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemBackgroundRes(I)V

    goto :goto_15c

    .line 237
    :cond_153
    sget v13, Lcom/google/android/material/R$styleable;->NavigationBarView_itemRippleColor:I

    .line 238
    invoke-static {v10, v1, v13}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 237
    invoke-virtual {v0, v13}, Lcom/google/android/material/navigation/NavigationBarView;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    .line 242
    :goto_15c
    sget v13, Lcom/google/android/material/R$styleable;->NavigationBarView_itemActiveIndicatorStyle:I

    .line 243
    invoke-virtual {v1, v13, v6}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v13

    .line 245
    .local v13, "activeIndicatorStyleResId":I
    if-eqz v13, :cond_1ae

    .line 246
    invoke-virtual {v0, v4}, Lcom/google/android/material/navigation/NavigationBarView;->setItemActiveIndicatorEnabled(Z)V

    .line 249
    sget-object v4, Lcom/google/android/material/R$styleable;->NavigationBarActiveIndicator:[I

    .line 250
    invoke-virtual {v10, v13, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 253
    .local v4, "activeIndicatorAttributes":Landroid/content/res/TypedArray;
    sget v14, Lcom/google/android/material/R$styleable;->NavigationBarActiveIndicator_android_width:I

    .line 254
    invoke-virtual {v4, v14, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    .line 256
    .local v14, "itemActiveIndicatorWidth":I
    invoke-virtual {v0, v14}, Lcom/google/android/material/navigation/NavigationBarView;->setItemActiveIndicatorWidth(I)V

    .line 258
    sget v15, Lcom/google/android/material/R$styleable;->NavigationBarActiveIndicator_android_height:I

    .line 259
    invoke-virtual {v4, v15, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    .line 261
    .local v15, "itemActiveIndicatorHeight":I
    invoke-virtual {v0, v15}, Lcom/google/android/material/navigation/NavigationBarView;->setItemActiveIndicatorHeight(I)V

    .line 263
    move/from16 p1, v5

    .end local v5    # "isBold":Z
    .local p1, "isBold":Z
    sget v5, Lcom/google/android/material/R$styleable;->NavigationBarActiveIndicator_marginHorizontal:I

    .line 264
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 266
    .local v5, "itemActiveIndicatorMarginHorizontal":I
    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationBarView;->setItemActiveIndicatorMarginHorizontal(I)V

    .line 268
    sget v6, Lcom/google/android/material/R$styleable;->NavigationBarActiveIndicator_android_color:I

    .line 269
    invoke-static {v10, v4, v6}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 273
    .local v6, "itemActiveIndicatorColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v0, v6}, Lcom/google/android/material/navigation/NavigationBarView;->setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V

    .line 275
    move/from16 v16, v5

    .end local v5    # "itemActiveIndicatorMarginHorizontal":I
    .local v16, "itemActiveIndicatorMarginHorizontal":I
    sget v5, Lcom/google/android/material/R$styleable;->NavigationBarActiveIndicator_shapeAppearance:I

    .line 276
    move-object/from16 v17, v6

    const/4 v6, 0x0

    .end local v6    # "itemActiveIndicatorColor":Landroid/content/res/ColorStateList;
    .local v17, "itemActiveIndicatorColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 278
    .local v5, "shapeAppearanceResId":I
    nop

    .line 279
    invoke-static {v10, v5, v6}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v6

    .line 280
    .local v6, "itemActiveIndicatorShapeAppearance":Lcom/google/android/material/shape/ShapeAppearanceModel;
    invoke-virtual {v0, v6}, Lcom/google/android/material/navigation/NavigationBarView;->setItemActiveIndicatorShapeAppearance(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 282
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1b0

    .line 245
    .end local v4    # "activeIndicatorAttributes":Landroid/content/res/TypedArray;
    .end local v6    # "itemActiveIndicatorShapeAppearance":Lcom/google/android/material/shape/ShapeAppearanceModel;
    .end local v14    # "itemActiveIndicatorWidth":I
    .end local v15    # "itemActiveIndicatorHeight":I
    .end local v16    # "itemActiveIndicatorMarginHorizontal":I
    .end local v17    # "itemActiveIndicatorColor":Landroid/content/res/ColorStateList;
    .end local p1    # "isBold":Z
    .local v5, "isBold":Z
    :cond_1ae
    move/from16 p1, v5

    .line 285
    .end local v5    # "isBold":Z
    .restart local p1    # "isBold":Z
    :goto_1b0
    sget v4, Lcom/google/android/material/R$styleable;->NavigationBarView_menu:I

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1c2

    .line 286
    sget v4, Lcom/google/android/material/R$styleable;->NavigationBarView_menu:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/material/navigation/NavigationBarView;->inflateMenu(I)V

    .line 289
    :cond_1c2
    invoke-virtual {v1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 291
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationBarView;->addView(Landroid/view/View;)V

    .line 293
    new-instance v3, Lcom/google/android/material/navigation/NavigationBarView$1;

    invoke-direct {v3, v0}, Lcom/google/android/material/navigation/NavigationBarView$1;-><init>(Lcom/google/android/material/navigation/NavigationBarView;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/NavigationBarMenu;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 307
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/navigation/NavigationBarView;)Lcom/google/android/material/navigation/NavigationBarView$OnItemReselectedListener;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/navigation/NavigationBarView;

    .line 80
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->reselectedListener:Lcom/google/android/material/navigation/NavigationBarView$OnItemReselectedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/material/navigation/NavigationBarView;)Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/navigation/NavigationBarView;

    .line 80
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->selectedListener:Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;

    return-object v0
.end method

.method private createMaterialShapeDrawableBackground(Landroid/content/Context;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 312
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 313
    .local v0, "materialShapeDrawable":Lcom/google/android/material/shape/MaterialShapeDrawable;
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 314
    .local v1, "originalBackground":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_1b

    .line 315
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    .line 316
    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 315
    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 318
    :cond_1b
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 319
    invoke-virtual {v0, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 320
    return-object v0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .line 901
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_f

    .line 902
    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuInflater:Landroid/view/MenuInflater;

    .line 904
    :cond_f
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method protected abstract createNavigationBarMenuView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarMenuView;
.end method

.method public getActiveIndicatorLabelPadding()I
    .registers 2

    .line 595
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getActiveIndicatorLabelPadding()I

    move-result v0

    return v0
.end method

.method public getBadge(I)Lcom/google/android/material/badge/BadgeDrawable;
    .registers 3
    .param p1, "menuItemId"    # I

    .line 836
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getBadge(I)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 702
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemActiveIndicatorHeight()I
    .registers 2

    .line 642
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemActiveIndicatorHeight()I

    move-result v0

    return v0
.end method

.method public getItemActiveIndicatorMarginHorizontal()I
    .registers 2

    .line 662
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemActiveIndicatorMarginHorizontal()I

    move-result v0

    return v0
.end method

.method public getItemActiveIndicatorShapeAppearance()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 2

    .line 682
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemActiveIndicatorShapeAppearance()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public getItemActiveIndicatorWidth()I
    .registers 2

    .line 623
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemActiveIndicatorWidth()I

    move-result v0

    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 511
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemBackgroundResource()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 487
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemBackgroundRes()I

    move-result v0

    return v0
.end method

.method public getItemIconSize()I
    .registers 2

    .line 450
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemIconSize()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 405
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemPaddingBottom()I
    .registers 2

    .line 573
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getItemPaddingTop()I
    .registers 2

    .line 557
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemPaddingTop()I

    move-result v0

    return v0
.end method

.method public getItemRippleColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 536
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemRippleColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemTextAppearanceActive()I
    .registers 2

    .line 815
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemTextAppearanceActive()I

    move-result v0

    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .registers 2

    .line 787
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemTextAppearanceInactive()I

    move-result v0

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 463
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .registers 2

    .line 768
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getLabelVisibilityMode()I

    move-result v0

    return v0
.end method

.method public abstract getMaxItemCount()I
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    .line 369
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    return-object v0
.end method

.method public getMenuView()Landroidx/appcompat/view/menu/MenuView;
    .registers 2

    .line 380
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    return-object v0
.end method

.method public getOrCreateBadge(I)Lcom/google/android/material/badge/BadgeDrawable;
    .registers 3
    .param p1, "menuItemId"    # I

    .line 849
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getOrCreateBadge(I)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getPresenter()Lcom/google/android/material/navigation/NavigationBarPresenter;
    .registers 2

    .line 915
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    return-object v0
.end method

.method public getSelectedItemId()I
    .registers 2

    .line 721
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getSelectedItemId()I

    move-result v0

    return v0
.end method

.method public inflateMenu(I)V
    .registers 5
    .param p1, "resId"    # I

    .line 391
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    .line 392
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    invoke-virtual {v0, p1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 393
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    .line 394
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateMenuView(Z)V

    .line 395
    return-void
.end method

.method public isItemActiveIndicatorEnabled()Z
    .registers 2

    .line 604
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemActiveIndicatorEnabled()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 325
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 327
    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    .line 328
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 930
    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationBarView$SavedState;

    if-nez v0, :cond_8

    .line 931
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 932
    return-void

    .line 934
    :cond_8
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/navigation/NavigationBarView$SavedState;

    .line 935
    .local v0, "savedState":Lcom/google/android/material/navigation/NavigationBarView$SavedState;
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 936
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    iget-object v2, v0, Lcom/google/android/material/navigation/NavigationBarView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/google/android/material/navigation/NavigationBarMenu;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 937
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .line 921
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 922
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/google/android/material/navigation/NavigationBarView$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/navigation/NavigationBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 923
    .local v1, "savedState":Lcom/google/android/material/navigation/NavigationBarView$SavedState;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Lcom/google/android/material/navigation/NavigationBarView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    .line 924
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    iget-object v3, v1, Lcom/google/android/material/navigation/NavigationBarView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/NavigationBarMenu;->savePresenterStates(Landroid/os/Bundle;)V

    .line 925
    return-object v1
.end method

.method public removeBadge(I)V
    .registers 3
    .param p1, "menuItemId"    # I

    .line 860
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->removeBadge(I)V

    .line 861
    return-void
.end method

.method public setActiveIndicatorLabelPadding(I)V
    .registers 3
    .param p1, "activeIndicatorLabelPadding"    # I

    .line 587
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setActiveIndicatorLabelPadding(I)V

    .line 588
    return-void
.end method

.method public setElevation(F)V
    .registers 2
    .param p1, "elevation"    # F

    .line 337
    nop

    .line 338
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 340
    invoke-static {p0, p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setElevation(Landroid/view/View;F)V

    .line 341
    return-void
.end method

.method public setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "csl"    # Landroid/content/res/ColorStateList;

    .line 711
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V

    .line 712
    return-void
.end method

.method public setItemActiveIndicatorEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 613
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemActiveIndicatorEnabled(Z)V

    .line 614
    return-void
.end method

.method public setItemActiveIndicatorHeight(I)V
    .registers 3
    .param p1, "height"    # I

    .line 651
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemActiveIndicatorHeight(I)V

    .line 652
    return-void
.end method

.method public setItemActiveIndicatorMarginHorizontal(I)V
    .registers 3
    .param p1, "horizontalMargin"    # I

    .line 672
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemActiveIndicatorMarginHorizontal(I)V

    .line 673
    return-void
.end method

.method public setItemActiveIndicatorShapeAppearance(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 3
    .param p1, "shapeAppearance"    # Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 692
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemActiveIndicatorShapeAppearance(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 693
    return-void
.end method

.method public setItemActiveIndicatorWidth(I)V
    .registers 3
    .param p1, "width"    # I

    .line 632
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemActiveIndicatorWidth(I)V

    .line 633
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 524
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 525
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 500
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemBackgroundRes(I)V

    .line 501
    return-void
.end method

.method public setItemIconSize(I)V
    .registers 3
    .param p1, "iconSize"    # I

    .line 427
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemIconSize(I)V

    .line 428
    return-void
.end method

.method public setItemIconSizeRes(I)V
    .registers 3
    .param p1, "iconSizeRes"    # I

    .line 439
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarView;->setItemIconSize(I)V

    .line 440
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 415
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 416
    return-void
.end method

.method public setItemOnTouchListener(ILandroid/view/View$OnTouchListener;)V
    .registers 4
    .param p1, "menuItemId"    # I
    .param p2, "onTouchListener"    # Landroid/view/View$OnTouchListener;

    .line 823
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemOnTouchListener(ILandroid/view/View$OnTouchListener;)V

    .line 824
    return-void
.end method

.method public setItemPaddingBottom(I)V
    .registers 3
    .param p1, "paddingBottom"    # I

    .line 580
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemPaddingBottom(I)V

    .line 581
    return-void
.end method

.method public setItemPaddingTop(I)V
    .registers 3
    .param p1, "paddingTop"    # I

    .line 565
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemPaddingTop(I)V

    .line 566
    return-void
.end method

.method public setItemRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "itemRippleColor"    # Landroid/content/res/ColorStateList;

    .line 548
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    .line 549
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .registers 3
    .param p1, "textAppearanceRes"    # I

    .line 796
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemTextAppearanceActive(I)V

    .line 797
    return-void
.end method

.method public setItemTextAppearanceActiveBoldEnabled(Z)V
    .registers 3
    .param p1, "isBold"    # Z

    .line 805
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemTextAppearanceActiveBoldEnabled(Z)V

    .line 806
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .registers 3
    .param p1, "textAppearanceRes"    # I

    .line 777
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemTextAppearanceInactive(I)V

    .line 778
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;

    .line 474
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 475
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .registers 4
    .param p1, "labelVisibilityMode"    # I

    .line 754
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getLabelVisibilityMode()I

    move-result v0

    if-eq v0, p1, :cond_13

    .line 755
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setLabelVisibilityMode(I)V

    .line 756
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateMenuView(Z)V

    .line 758
    :cond_13
    return-void
.end method

.method public setOnItemReselectedListener(Lcom/google/android/material/navigation/NavigationBarView$OnItemReselectedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/google/android/material/navigation/NavigationBarView$OnItemReselectedListener;

    .line 363
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarView;->reselectedListener:Lcom/google/android/material/navigation/NavigationBarView$OnItemReselectedListener;

    .line 364
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;

    .line 352
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarView;->selectedListener:Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;

    .line 353
    return-void
.end method

.method public setSelectedItemId(I)V
    .registers 6
    .param p1, "itemId"    # I

    .line 731
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 732
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_17

    .line 733
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/material/navigation/NavigationBarMenu;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 734
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 737
    :cond_17
    return-void
.end method

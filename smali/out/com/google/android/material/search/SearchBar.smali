.class public Lcom/google/android/material/search/SearchBar;
.super Landroidx/appcompat/widget/Toolbar;
.source "SearchBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/search/SearchBar$SavedState;,
        Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;,
        Lcom/google/android/material/search/SearchBar$ScrollingViewBehavior;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCROLL_FLAGS:I = 0x35

.field private static final DEF_STYLE_RES:I

.field private static final NAMESPACE_APP:Ljava/lang/String; = "http://schemas.android.com/apk/res-auto"


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private centerView:Landroid/view/View;

.field private final defaultMarginsEnabled:Z

.field private final defaultNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private defaultScrollFlagsEnabled:Z

.field private final forceDefaultNavigationOnClickListener:Z

.field private final layoutInflated:Z

.field private menuResId:I

.field private navigationIconTint:Ljava/lang/Integer;

.field private originalNavigationIconBackground:Landroid/graphics/drawable/Drawable;

.field private final searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

.field private final textView:Landroid/widget/TextView;

.field private final tintNavigationIcon:Z

.field private final touchExplorationStateChangeListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 126
    sget v0, Lcom/google/android/material/R$style;->Widget_Material3_SearchBar:I

    sput v0, Lcom/google/android/material/search/SearchBar;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 158
    sget v0, Lcom/google/android/material/R$attr;->materialSearchBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/search/SearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 162
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    sget v9, Lcom/google/android/material/search/SearchBar;->DEF_STYLE_RES:I

    move-object/from16 v0, p1

    invoke-static {v0, v7, v8, v9}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v6, v1, v7, v8}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 145
    const/4 v10, -0x1

    iput v10, v6, Lcom/google/android/material/search/SearchBar;->menuResId:I

    .line 150
    new-instance v1, Lcom/google/android/material/search/SearchBar$$ExternalSyntheticLambda0;

    invoke-direct {v1, v6}, Lcom/google/android/material/search/SearchBar$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/search/SearchBar;)V

    iput-object v1, v6, Lcom/google/android/material/search/SearchBar;->touchExplorationStateChangeListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/search/SearchBar;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 165
    .end local p1    # "context":Landroid/content/Context;
    .local v11, "context":Landroid/content/Context;
    invoke-direct {v6, v7}, Lcom/google/android/material/search/SearchBar;->validateAttributes(Landroid/util/AttributeSet;)V

    .line 167
    nop

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/search/SearchBar;->getDefaultNavigationIconResource()I

    move-result v0

    invoke-static {v11, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/material/search/SearchBar;->defaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 169
    new-instance v0, Lcom/google/android/material/search/SearchBarAnimationHelper;

    invoke-direct {v0}, Lcom/google/android/material/search/SearchBarAnimationHelper;-><init>()V

    iput-object v0, v6, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    .line 171
    sget-object v2, Lcom/google/android/material/R$styleable;->SearchBar:[I

    const/4 v12, 0x0

    new-array v5, v12, [I

    .line 172
    move-object v0, v11

    move-object/from16 v1, p2

    move/from16 v3, p3

    move v4, v9

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 175
    .local v13, "a":Landroid/content/res/TypedArray;
    nop

    .line 176
    invoke-static {v11, v7, v8, v9}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v9

    .line 177
    .local v9, "shapeAppearanceModel":Lcom/google/android/material/shape/ShapeAppearanceModel;
    sget v0, Lcom/google/android/material/R$styleable;->SearchBar_backgroundTint:I

    invoke-virtual {v13, v0, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    .line 178
    .local v14, "backgroundColor":I
    sget v0, Lcom/google/android/material/R$styleable;->SearchBar_elevation:I

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v15

    .line 179
    .local v15, "elevation":F
    sget v0, Lcom/google/android/material/R$styleable;->SearchBar_defaultMarginsEnabled:I

    const/4 v1, 0x1

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v6, Lcom/google/android/material/search/SearchBar;->defaultMarginsEnabled:Z

    .line 180
    sget v0, Lcom/google/android/material/R$styleable;->SearchBar_defaultScrollFlagsEnabled:I

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v6, Lcom/google/android/material/search/SearchBar;->defaultScrollFlagsEnabled:Z

    .line 181
    sget v0, Lcom/google/android/material/R$styleable;->SearchBar_hideNavigationIcon:I

    invoke-virtual {v13, v0, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 182
    .local v16, "hideNavigationIcon":Z
    sget v0, Lcom/google/android/material/R$styleable;->SearchBar_forceDefaultNavigationOnClickListener:I

    .line 183
    invoke-virtual {v13, v0, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v6, Lcom/google/android/material/search/SearchBar;->forceDefaultNavigationOnClickListener:Z

    .line 184
    sget v0, Lcom/google/android/material/R$styleable;->SearchBar_tintNavigationIcon:I

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v6, Lcom/google/android/material/search/SearchBar;->tintNavigationIcon:Z

    .line 185
    sget v0, Lcom/google/android/material/R$styleable;->SearchBar_navigationIconTint:I

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 186
    sget v0, Lcom/google/android/material/R$styleable;->SearchBar_navigationIconTint:I

    invoke-virtual {v13, v0, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/material/search/SearchBar;->navigationIconTint:Ljava/lang/Integer;

    .line 188
    :cond_94
    sget v0, Lcom/google/android/material/R$styleable;->SearchBar_android_textAppearance:I

    invoke-virtual {v13, v0, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 189
    .local v10, "textAppearanceResId":I
    sget v0, Lcom/google/android/material/R$styleable;->SearchBar_android_text:I

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, "text":Ljava/lang/String;
    sget v0, Lcom/google/android/material/R$styleable;->SearchBar_android_hint:I

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "hint":Ljava/lang/String;
    sget v0, Lcom/google/android/material/R$styleable;->SearchBar_strokeWidth:I

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v13, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    .line 192
    .local v17, "strokeWidth":F
    sget v0, Lcom/google/android/material/R$styleable;->SearchBar_strokeColor:I

    invoke-virtual {v13, v0, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    .line 194
    .local v12, "strokeColor":I
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    if-nez v16, :cond_bc

    .line 197
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/search/SearchBar;->initNavigationIcon()V

    .line 199
    :cond_bc
    invoke-virtual {v6, v1}, Lcom/google/android/material/search/SearchBar;->setClickable(Z)V

    .line 200
    invoke-virtual {v6, v1}, Lcom/google/android/material/search/SearchBar;->setFocusable(Z)V

    .line 202
    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/google/android/material/R$layout;->mtrl_search_bar:I

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 203
    iput-boolean v1, v6, Lcom/google/android/material/search/SearchBar;->layoutInflated:Z

    .line 205
    sget v0, Lcom/google/android/material/R$id;->open_search_bar_text_view:I

    invoke-virtual {v6, v0}, Lcom/google/android/material/search/SearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/google/android/material/search/SearchBar;->textView:Landroid/widget/TextView;

    .line 207
    invoke-static {v6, v15}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 208
    invoke-direct {v6, v10, v5, v4}, Lcom/google/android/material/search/SearchBar;->initTextView(ILjava/lang/String;Ljava/lang/String;)V

    .line 209
    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v14

    move v3, v15

    move-object/from16 v18, v4

    .end local v4    # "hint":Ljava/lang/String;
    .local v18, "hint":Ljava/lang/String;
    move/from16 v4, v17

    move-object/from16 v19, v5

    .end local v5    # "text":Ljava/lang/String;
    .local v19, "text":Ljava/lang/String;
    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/search/SearchBar;->initBackground(Lcom/google/android/material/shape/ShapeAppearanceModel;IFFI)V

    .line 211
    nop

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/search/SearchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, v6, Lcom/google/android/material/search/SearchBar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 213
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/search/SearchBar;->setupTouchExplorationStateChangeListener()V

    .line 214
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/search/SearchBar;)Landroid/view/accessibility/AccessibilityManager;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/search/SearchBar;

    .line 124
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/material/search/SearchBar;)Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/search/SearchBar;

    .line 124
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->touchExplorationStateChangeListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    return-object v0
.end method

.method private defaultIfZero(II)I
    .registers 4
    .param p1, "value"    # I
    .param p2, "defValue"    # I

    .line 505
    if-nez p1, :cond_4

    move v0, p2

    goto :goto_5

    :cond_4
    move v0, p1

    :goto_5
    return v0
.end method

.method private getCompatBackgroundColorStateList(II)Landroid/content/res/ColorStateList;
    .registers 7
    .param p1, "backgroundColor"    # I
    .param p2, "rippleColor"    # I

    .line 308
    const/4 v0, 0x3

    new-array v0, v0, [[I

    const v1, 0x10100a7

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x101009c

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v2, [I

    aput-object v2, v0, v1

    .line 314
    .local v0, "states":[[I
    invoke-static {p1, p2}, Lcom/google/android/material/color/MaterialColors;->layer(II)I

    move-result v1

    .line 315
    .local v1, "pressedBackgroundColor":I
    filled-new-array {v1, v1, p1}, [I

    move-result-object v2

    .line 316
    .local v2, "colors":[I
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private initBackground(Lcom/google/android/material/shape/ShapeAppearanceModel;IFFI)V
    .registers 10
    .param p1, "shapeAppearance"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p2, "backgroundColor"    # I
    .param p3, "elevation"    # F
    .param p4, "strokeWidth"    # F
    .param p5, "strokeColor"    # I

    .line 285
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object v0, p0, Lcom/google/android/material/search/SearchBar;->backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 286
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 287
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 288
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_1d

    .line 289
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p4, p5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FI)V

    .line 292
    :cond_1d
    sget v0, Lcom/google/android/material/R$attr;->colorControlHighlight:I

    invoke-static {p0, v0}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v0

    .line 294
    .local v0, "rippleColor":I
    nop

    .line 295
    iget-object v1, p0, Lcom/google/android/material/search/SearchBar;->backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 296
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    .line 297
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/search/SearchBar;->backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v1, v2, v3, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 303
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 304
    return-void
.end method

.method private initNavigationIcon()V
    .registers 2

    .line 257
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->defaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_d
    invoke-virtual {p0, v0}, Lcom/google/android/material/search/SearchBar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 262
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchBar;->setNavigationIconDecorative(Z)V

    .line 263
    return-void
.end method

.method private initTextView(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "textAppearanceResId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "hint"    # Ljava/lang/String;

    .line 266
    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    .line 267
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->textView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 269
    :cond_8
    invoke-virtual {p0, p2}, Lcom/google/android/material/search/SearchBar;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {p0, p3}, Lcom/google/android/material/search/SearchBar;->setHint(Ljava/lang/CharSequence;)V

    .line 271
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_29

    .line 272
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->textView:Landroid/widget/TextView;

    .line 273
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 274
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$dimen;->m3_searchbar_text_margin_start_no_navigation_icon:I

    .line 275
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 272
    invoke-static {v0, v1}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 277
    :cond_29
    return-void
.end method

.method private layoutCenterView()V
    .registers 13

    .line 530
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->centerView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 531
    return-void

    .line 534
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 535
    .local v0, "centerViewWidth":I
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    .line 536
    .local v1, "left":I
    add-int v2, v1, v0

    .line 538
    .local v2, "right":I
    iget-object v3, p0, Lcom/google/android/material/search/SearchBar;->centerView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 539
    .local v9, "centerViewHeight":I
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v9, 0x2

    sub-int v10, v3, v4

    .line 540
    .local v10, "top":I
    add-int v11, v10, v9

    .line 542
    .local v11, "bottom":I
    iget-object v4, p0, Lcom/google/android/material/search/SearchBar;->centerView:Landroid/view/View;

    move-object v3, p0

    move v5, v1

    move v6, v10

    move v7, v2

    move v8, v11

    invoke-direct/range {v3 .. v8}, Lcom/google/android/material/search/SearchBar;->layoutChild(Landroid/view/View;IIII)V

    .line 543
    return-void
.end method

.method private layoutChild(Landroid/view/View;IIII)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 546
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 547
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v0, p4

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {p1, v0, p3, v1, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_18

    .line 549
    :cond_15
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 551
    :goto_18
    return-void
.end method

.method private maybeTintNavigationIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "navigationIcon"    # Landroid/graphics/drawable/Drawable;

    .line 372
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchBar;->tintNavigationIcon:Z

    if-eqz v0, :cond_2b

    if-nez p1, :cond_7

    goto :goto_2b

    .line 377
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->navigationIconTint:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    .line 378
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "navigationIconColor":I
    goto :goto_1f

    .line 384
    .end local v0    # "navigationIconColor":I
    :cond_10
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->defaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_17

    .line 385
    sget v0, Lcom/google/android/material/R$attr;->colorOnSurfaceVariant:I

    goto :goto_19

    .line 386
    :cond_17
    sget v0, Lcom/google/android/material/R$attr;->colorOnSurface:I

    :goto_19
    nop

    .line 387
    .local v0, "navigationIconColorAttr":I
    invoke-static {p0, v0}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v1

    move v0, v1

    .line 390
    .local v0, "navigationIconColor":I
    :goto_1f
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 391
    .local v1, "wrappedNavigationIcon":Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 392
    return-object v1

    .line 373
    .end local v0    # "navigationIconColor":I
    .end local v1    # "wrappedNavigationIcon":Landroid/graphics/drawable/Drawable;
    :cond_2b
    :goto_2b
    return-object p1
.end method

.method private measureCenterView(II)V
    .registers 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 524
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->centerView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 525
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 527
    :cond_7
    return-void
.end method

.method private setDefaultMargins()V
    .registers 6

    .line 477
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchBar;->defaultMarginsEnabled:Z

    if-eqz v0, :cond_44

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_44

    .line 478
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 479
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcom/google/android/material/R$dimen;->m3_searchbar_margin_horizontal:I

    .line 480
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 481
    .local v1, "marginHorizontal":I
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getDefaultMarginVerticalResource()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 482
    .local v2, "marginVertical":I
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 483
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-direct {p0, v4, v1}, Lcom/google/android/material/search/SearchBar;->defaultIfZero(II)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 484
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0, v4, v2}, Lcom/google/android/material/search/SearchBar;->defaultIfZero(II)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 485
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-direct {p0, v4, v1}, Lcom/google/android/material/search/SearchBar;->defaultIfZero(II)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 486
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-direct {p0, v4, v2}, Lcom/google/android/material/search/SearchBar;->defaultIfZero(II)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 488
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v1    # "marginHorizontal":I
    .end local v2    # "marginVertical":I
    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_44
    return-void
.end method

.method private setNavigationIconDecorative(Z)V
    .registers 5
    .param p1, "decorative"    # Z

    .line 396
    invoke-static {p0}, Lcom/google/android/material/internal/ToolbarUtils;->getNavigationIconButton(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    .line 397
    .local v0, "navigationIconButton":Landroid/widget/ImageButton;
    if-nez v0, :cond_7

    .line 398
    return-void

    .line 401
    :cond_7
    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 402
    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 404
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 405
    .local v1, "navigationIconBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_19

    .line 407
    iput-object v1, p0, Lcom/google/android/material/search/SearchBar;->originalNavigationIconBackground:Landroid/graphics/drawable/Drawable;

    .line 412
    :cond_19
    nop

    .line 413
    if-eqz p1, :cond_1e

    const/4 v2, 0x0

    goto :goto_20

    :cond_1e
    iget-object v2, p0, Lcom/google/android/material/search/SearchBar;->originalNavigationIconBackground:Landroid/graphics/drawable/Drawable;

    .line 412
    :goto_20
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 414
    return-void
.end method

.method private setOrClearDefaultScrollFlags()V
    .registers 4

    .line 509
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    if-eqz v0, :cond_28

    .line 510
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 511
    .local v0, "lp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    iget-boolean v1, p0, Lcom/google/android/material/search/SearchBar;->defaultScrollFlagsEnabled:Z

    const/16 v2, 0x35

    if-eqz v1, :cond_1e

    .line 512
    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v1

    if-nez v1, :cond_28

    .line 513
    invoke-virtual {v0, v2}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    goto :goto_28

    .line 516
    :cond_1e
    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v1

    if-ne v1, v2, :cond_28

    .line 517
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    .line 521
    .end local v0    # "lp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    :cond_28
    :goto_28
    return-void
.end method

.method private setupTouchExplorationStateChangeListener()V
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1e

    .line 219
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 220
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/search/SearchBar;->setFocusableInTouchMode(Z)V

    .line 224
    :cond_16
    new-instance v0, Lcom/google/android/material/search/SearchBar$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/search/SearchBar$1;-><init>(Lcom/google/android/material/search/SearchBar;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/search/SearchBar;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 239
    :cond_1e
    return-void
.end method

.method private validateAttributes(Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "attributeSet"    # Landroid/util/AttributeSet;

    .line 242
    if-nez p1, :cond_3

    .line 243
    return-void

    .line 245
    :cond_3
    const-string/jumbo v0, "title"

    const-string v1, "http://schemas.android.com/apk/res-auto"

    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    .line 249
    const-string/jumbo v0, "subtitle"

    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    .line 253
    return-void

    .line 250
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SearchBar does not support subtitle. Use hint or text instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SearchBar does not support title. Use hint or text instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addCollapseAnimationListener(Landroid/animation/AnimatorListenerAdapter;)V
    .registers 3
    .param p1, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .line 810
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->addCollapseAnimationListener(Landroid/animation/AnimatorListenerAdapter;)V

    .line 811
    return-void
.end method

.method public addExpandAnimationListener(Landroid/animation/AnimatorListenerAdapter;)V
    .registers 3
    .param p1, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .line 752
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->addExpandAnimationListener(Landroid/animation/AnimatorListenerAdapter;)V

    .line 753
    return-void
.end method

.method public addOnLoadAnimationCallback(Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;)V
    .registers 3
    .param p1, "onLoadAnimationCallback"    # Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;

    .line 695
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->addOnLoadAnimationCallback(Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;)V

    .line 696
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 321
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchBar;->layoutInflated:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->centerView:Landroid/view/View;

    if-nez v0, :cond_12

    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuView;

    if-nez v0, :cond_12

    .line 322
    iput-object p1, p0, Lcom/google/android/material/search/SearchBar;->centerView:Landroid/view/View;

    .line 323
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 325
    :cond_12
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 326
    return-void
.end method

.method public clearText()V
    .registers 3

    .line 594
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->textView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    return-void
.end method

.method public collapse(Landroid/view/View;)Z
    .registers 3
    .param p1, "expandedView"    # Landroid/view/View;

    .line 773
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/search/SearchBar;->collapse(Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Z

    move-result v0

    return v0
.end method

.method public collapse(Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Z
    .registers 4
    .param p1, "expandedView"    # Landroid/view/View;
    .param p2, "appBarLayout"    # Lcom/google/android/material/appbar/AppBarLayout;

    .line 779
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/search/SearchBar;->collapse(Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)Z

    move-result v0

    return v0
.end method

.method public collapse(Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)Z
    .registers 5
    .param p1, "expandedView"    # Landroid/view/View;
    .param p2, "appBarLayout"    # Lcom/google/android/material/appbar/AppBarLayout;
    .param p3, "skipAnimation"    # Z

    .line 797
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->isCollapsing()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->isExpanding()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 798
    :cond_12
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/material/search/SearchBarAnimationHelper;->startCollapseAnimation(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V

    .line 800
    const/4 v0, 0x1

    return v0

    .line 802
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public expand(Landroid/view/View;)Z
    .registers 3
    .param p1, "expandedView"    # Landroid/view/View;

    .line 715
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/search/SearchBar;->expand(Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Z

    move-result v0

    return v0
.end method

.method public expand(Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Z
    .registers 4
    .param p1, "expandedView"    # Landroid/view/View;
    .param p2, "appBarLayout"    # Lcom/google/android/material/appbar/AppBarLayout;

    .line 721
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/search/SearchBar;->expand(Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)Z

    move-result v0

    return v0
.end method

.method public expand(Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)Z
    .registers 5
    .param p1, "expandedView"    # Landroid/view/View;
    .param p2, "appBarLayout"    # Lcom/google/android/material/appbar/AppBarLayout;
    .param p3, "skipAnimation"    # Z

    .line 739
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->isExpanding()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->isCollapsing()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 740
    :cond_12
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/material/search/SearchBarAnimationHelper;->startExpandAnimation(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V

    .line 742
    const/4 v0, 0x1

    return v0

    .line 744
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public getCenterView()Landroid/view/View;
    .registers 2

    .line 556
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->centerView:Landroid/view/View;

    return-object v0
.end method

.method getCompatElevation()F
    .registers 2

    .line 828
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getElevation()F

    move-result v0

    goto :goto_d

    :cond_9
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    :goto_d
    return v0
.end method

.method public getCornerSize()F
    .registers 2

    .line 642
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTopLeftCornerResolvedSize()F

    move-result v0

    return v0
.end method

.method protected getDefaultMarginVerticalResource()I
    .registers 2

    .line 494
    sget v0, Lcom/google/android/material/R$dimen;->m3_searchbar_margin_vertical:I

    return v0
.end method

.method protected getDefaultNavigationIconResource()I
    .registers 2

    .line 501
    sget v0, Lcom/google/android/material/R$drawable;->ic_search_black_24:I

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .registers 2

    .line 600
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method getMenuResId()I
    .registers 2

    .line 824
    iget v0, p0, Lcom/google/android/material/search/SearchBar;->menuResId:I

    return v0
.end method

.method public getStrokeColor()I
    .registers 2

    .line 616
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getStrokeColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .registers 2

    .line 629
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .line 579
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .registers 2

    .line 573
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public inflateMenu(I)V
    .registers 4
    .param p1, "resId"    # I

    .line 419
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 420
    .local v0, "menu":Landroid/view/Menu;
    instance-of v1, v0, Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v1, :cond_e

    .line 421
    move-object v1, v0

    check-cast v1, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 423
    :cond_e
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 424
    iput p1, p0, Lcom/google/android/material/search/SearchBar;->menuResId:I

    .line 425
    instance-of v1, v0, Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v1, :cond_1d

    .line 426
    move-object v1, v0

    check-cast v1, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 428
    :cond_1d
    return-void
.end method

.method public isCollapsing()Z
    .registers 2

    .line 767
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBarAnimationHelper;->isCollapsing()Z

    move-result v0

    return v0
.end method

.method public isDefaultScrollFlagsEnabled()Z
    .registers 2

    .line 650
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchBar;->defaultScrollFlagsEnabled:Z

    return v0
.end method

.method public isExpanding()Z
    .registers 2

    .line 709
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBarAnimationHelper;->isExpanding()Z

    move-result v0

    return v0
.end method

.method public isOnLoadAnimationFadeInEnabled()Z
    .registers 2

    .line 681
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBarAnimationHelper;->isOnLoadAnimationFadeInEnabled()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$new$0$com-google-android-material-search-SearchBar(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 151
    invoke-virtual {p0, p1}, Lcom/google/android/material/search/SearchBar;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method synthetic lambda$startOnLoadAnimation$1$com-google-android-material-search-SearchBar()V
    .registers 2

    .line 668
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    invoke-virtual {v0, p0}, Lcom/google/android/material/search/SearchBarAnimationHelper;->startOnLoadAnimation(Lcom/google/android/material/search/SearchBar;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 446
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onAttachedToWindow()V

    .line 448
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {p0, v0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    .line 449
    invoke-direct {p0}, Lcom/google/android/material/search/SearchBar;->setDefaultMargins()V

    .line 450
    invoke-direct {p0}, Lcom/google/android/material/search/SearchBar;->setOrClearDefaultScrollFlags()V

    .line 451
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 339
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 340
    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 341
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 342
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 343
    .local v1, "isTextEmpty":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_24

    .line 344
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    .line 345
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setShowingHintText(Z)V

    .line 348
    :cond_24
    if-eqz v1, :cond_2a

    .line 349
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 352
    :cond_2a
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 353
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 439
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/Toolbar;->onLayout(ZIIII)V

    .line 441
    invoke-direct {p0}, Lcom/google/android/material/search/SearchBar;->layoutCenterView()V

    .line 442
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 432
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/Toolbar;->onMeasure(II)V

    .line 434
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/search/SearchBar;->measureCenterView(II)V

    .line 435
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 894
    instance-of v0, p1, Lcom/google/android/material/search/SearchBar$SavedState;

    if-nez v0, :cond_8

    .line 895
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 896
    return-void

    .line 898
    :cond_8
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/search/SearchBar$SavedState;

    .line 899
    .local v0, "savedState":Lcom/google/android/material/search/SearchBar$SavedState;
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 900
    iget-object v1, v0, Lcom/google/android/material/search/SearchBar$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/material/search/SearchBar;->setText(Ljava/lang/CharSequence;)V

    .line 901
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 886
    new-instance v0, Lcom/google/android/material/search/SearchBar$SavedState;

    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/search/SearchBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 887
    .local v0, "savedState":Lcom/google/android/material/search/SearchBar$SavedState;
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 888
    .local v1, "text":Ljava/lang/CharSequence;
    if-nez v1, :cond_11

    const/4 v2, 0x0

    goto :goto_15

    :cond_11
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_15
    iput-object v2, v0, Lcom/google/android/material/search/SearchBar$SavedState;->text:Ljava/lang/String;

    .line 889
    return-object v0
.end method

.method public removeCollapseAnimationListener(Landroid/animation/AnimatorListenerAdapter;)Z
    .registers 3
    .param p1, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .line 820
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->removeCollapseAnimationListener(Landroid/animation/AnimatorListenerAdapter;)Z

    move-result v0

    return v0
.end method

.method public removeExpandAnimationListener(Landroid/animation/AnimatorListenerAdapter;)Z
    .registers 3
    .param p1, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .line 762
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->removeExpandAnimationListener(Landroid/animation/AnimatorListenerAdapter;)Z

    move-result v0

    return v0
.end method

.method public removeOnLoadAnimationCallback(Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;)Z
    .registers 3
    .param p1, "onLoadAnimationCallback"    # Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;

    .line 704
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->removeOnLoadAnimationCallback(Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;)Z

    move-result v0

    return v0
.end method

.method public setCenterView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 561
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->centerView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 562
    invoke-virtual {p0, v0}, Lcom/google/android/material/search/SearchBar;->removeView(Landroid/view/View;)V

    .line 563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/search/SearchBar;->centerView:Landroid/view/View;

    .line 565
    :cond_a
    if-eqz p1, :cond_f

    .line 566
    invoke-virtual {p0, p1}, Lcom/google/android/material/search/SearchBar;->addView(Landroid/view/View;)V

    .line 568
    :cond_f
    return-void
.end method

.method public setDefaultScrollFlagsEnabled(Z)V
    .registers 2
    .param p1, "defaultScrollFlagsEnabled"    # Z

    .line 658
    iput-boolean p1, p0, Lcom/google/android/material/search/SearchBar;->defaultScrollFlagsEnabled:Z

    .line 659
    invoke-direct {p0}, Lcom/google/android/material/search/SearchBar;->setOrClearDefaultScrollFlags()V

    .line 660
    return-void
.end method

.method public setElevation(F)V
    .registers 3
    .param p1, "elevation"    # F

    .line 331
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setElevation(F)V

    .line 332
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_a

    .line 333
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 335
    :cond_a
    return-void
.end method

.method public setHint(I)V
    .registers 3
    .param p1, "hintResId"    # I

    .line 610
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(I)V

    .line 611
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .line 605
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 606
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "navigationIcon"    # Landroid/graphics/drawable/Drawable;

    .line 367
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchBar;->maybeTintNavigationIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 368
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 357
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchBar;->forceDefaultNavigationOnClickListener:Z

    if-eqz v0, :cond_5

    .line 359
    return-void

    .line 361
    :cond_5
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    if-nez p1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchBar;->setNavigationIconDecorative(Z)V

    .line 363
    return-void
.end method

.method public setOnLoadAnimationFadeInEnabled(Z)V
    .registers 3
    .param p1, "onLoadAnimationFadeInEnabled"    # Z

    .line 686
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->setOnLoadAnimationFadeInEnabled(Z)V

    .line 687
    return-void
.end method

.method public setStrokeColor(I)V
    .registers 4
    .param p1, "strokeColor"    # I

    .line 621
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getStrokeColor()I

    move-result v0

    if-eq v0, p1, :cond_f

    .line 622
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 624
    :cond_f
    return-void
.end method

.method public setStrokeWidth(F)V
    .registers 3
    .param p1, "strokeWidth"    # F

    .line 634
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_d

    .line 635
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeWidth(F)V

    .line 637
    :cond_d
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 474
    return-void
.end method

.method public setText(I)V
    .registers 3
    .param p1, "textResId"    # I

    .line 589
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 590
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 584
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 462
    return-void
.end method

.method public startOnLoadAnimation()V
    .registers 2

    .line 668
    new-instance v0, Lcom/google/android/material/search/SearchBar$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/material/search/SearchBar$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/search/SearchBar;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/search/SearchBar;->post(Ljava/lang/Runnable;)Z

    .line 669
    return-void
.end method

.method public stopOnLoadAnimation()V
    .registers 2

    .line 676
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar;->searchBarAnimationHelper:Lcom/google/android/material/search/SearchBarAnimationHelper;

    invoke-virtual {v0, p0}, Lcom/google/android/material/search/SearchBarAnimationHelper;->stopOnLoadAnimation(Lcom/google/android/material/search/SearchBar;)V

    .line 677
    return-void
.end method

.class Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# static fields
.field private static final ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "androidx.appcompat.app.ActionBar$Tab"


# instance fields
.field private final BG_ATTRS:[I

.field private mCustomView:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private mTab:Landroidx/appcompat/app/ActionBar$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ScrollingTabContainerView;Landroid/content/Context;Landroidx/appcompat/app/ActionBar$Tab;Z)V
    .registers 8
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "tab"    # Landroidx/appcompat/app/ActionBar$Tab;
    .param p4, "forList"    # Z

    .line 395
    iput-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    .line 396
    sget p1, Landroidx/appcompat/R$attr;->actionBarTabStyle:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 382
    const p1, 0x10100d4

    filled-new-array {p1}, [I

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->BG_ATTRS:[I

    .line 397
    iput-object p3, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    .line 399
    sget v1, Landroidx/appcompat/R$attr;->actionBarTabStyle:I

    const/4 v2, 0x0

    invoke-static {p2, v0, p1, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p1

    .line 401
    .local p1, "a":Landroidx/appcompat/widget/TintTypedArray;
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 402
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 404
    :cond_27
    invoke-virtual {p1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 406
    if-eqz p4, :cond_32

    .line 407
    const v0, 0x800013

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->setGravity(I)V

    .line 410
    :cond_32
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->update()V

    .line 411
    return-void
.end method


# virtual methods
.method public bindTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .registers 2
    .param p1, "tab"    # Landroidx/appcompat/app/ActionBar$Tab;

    .line 414
    iput-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    .line 415
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->update()V

    .line 416
    return-void
.end method

.method public getTab()Landroidx/appcompat/app/ActionBar$Tab;
    .registers 2

    .line 522
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 429
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 431
    const-string v0, "androidx.appcompat.app.ActionBar$Tab"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 432
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 436
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 439
    const-string v0, "androidx.appcompat.app.ActionBar$Tab"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 440
    return-void
.end method

.method public onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 444
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 447
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget v0, v0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    if-lez v0, :cond_20

    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget v1, v1, Landroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    if-le v0, v1, :cond_20

    .line 448
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget v0, v0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 451
    :cond_20
    return-void
.end method

.method public setSelected(Z)V
    .registers 4
    .param p1, "selected"    # Z

    .line 420
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 421
    .local v0, "changed":Z
    :goto_9
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 422
    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    .line 423
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->sendAccessibilityEvent(I)V

    .line 425
    :cond_14
    return-void
.end method

.method public update()V
    .registers 13

    .line 454
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    .line 455
    .local v0, "tab":Landroidx/appcompat/app/ActionBar$Tab;
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 456
    .local v1, "custom":Landroid/view/View;
    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_33

    .line 457
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 458
    .local v4, "customParent":Landroid/view/ViewParent;
    if-eq v4, p0, :cond_1c

    .line 459
    if-eqz v4, :cond_19

    move-object v5, v4

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 460
    :cond_19
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 462
    :cond_1c
    iput-object v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 463
    iget-object v5, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_25

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 464
    :cond_25
    iget-object v5, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v5, :cond_31

    .line 465
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    iget-object v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 468
    .end local v4    # "customParent":Landroid/view/ViewParent;
    :cond_31
    goto/16 :goto_d5

    .line 469
    :cond_33
    iget-object v4, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    if-eqz v4, :cond_3c

    .line 470
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->removeView(Landroid/view/View;)V

    .line 471
    iput-object v3, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 474
    :cond_3c
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 475
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 477
    .local v5, "text":Ljava/lang/CharSequence;
    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v8, -0x2

    if-eqz v4, :cond_71

    .line 478
    iget-object v9, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v9, :cond_66

    .line 479
    new-instance v9, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 480
    .local v9, "iconView":Landroid/widget/ImageView;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 482
    .local v10, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 483
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    invoke-virtual {p0, v9, v7}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;I)V

    .line 485
    iput-object v9, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    .line 487
    .end local v9    # "iconView":Landroid/widget/ImageView;
    .end local v10    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_66
    iget-object v9, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 488
    iget-object v9, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7d

    .line 489
    :cond_71
    iget-object v9, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v9, :cond_7d

    .line 490
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 491
    iget-object v9, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 494
    :cond_7d
    :goto_7d
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    .line 495
    .local v9, "hasText":Z
    if-eqz v9, :cond_b4

    .line 496
    iget-object v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v2, :cond_a9

    .line 497
    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Landroidx/appcompat/R$attr;->actionBarTabTextStyle:I

    invoke-direct {v2, v10, v3, v11}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 499
    .local v2, "textView":Landroid/widget/TextView;
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 500
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v8, v10

    .line 502
    .local v8, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 503
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 505
    iput-object v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 507
    .end local v2    # "textView":Landroid/widget/TextView;
    .end local v8    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_a9
    iget-object v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c0

    .line 509
    :cond_b4
    iget-object v6, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_c0

    .line 510
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 511
    iget-object v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    :cond_c0
    :goto_c0
    iget-object v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_cb

    .line 515
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 517
    :cond_cb
    if-eqz v9, :cond_ce

    goto :goto_d2

    :cond_ce
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_d2
    invoke-static {p0, v3}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 519
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "text":Ljava/lang/CharSequence;
    .end local v9    # "hasText":Z
    :goto_d5
    return-void
.end method

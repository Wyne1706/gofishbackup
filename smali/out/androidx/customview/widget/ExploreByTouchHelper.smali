.class public abstract Landroidx/customview/widget/ExploreByTouchHelper;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String; = "android.view.View"

.field public static final HOST_ID:I = -0x1

.field public static final INVALID_ID:I = -0x80000000

.field private static final INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

.field private static final NODE_ADAPTER:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/customview/widget/FocusStrategy$BoundsAdapter<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/FocusStrategy$CollectionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/customview/widget/FocusStrategy$CollectionAdapter<",
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAccessibilityFocusedVirtualViewId:I

.field private final mHost:Landroid/view/View;

.field private mHoveredVirtualViewId:I

.field mKeyboardFocusedVirtualViewId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

.field private final mTempGlobalRect:[I

.field private final mTempParentRect:Landroid/graphics/Rect;

.field private final mTempScreenRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroidx/customview/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    .line 335
    new-instance v0, Landroidx/customview/widget/ExploreByTouchHelper$1;

    invoke-direct {v0}, Landroidx/customview/widget/ExploreByTouchHelper$1;-><init>()V

    sput-object v0, Landroidx/customview/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    .line 347
    new-instance v0, Landroidx/customview/widget/ExploreByTouchHelper$2;

    invoke-direct {v0}, Landroidx/customview/widget/ExploreByTouchHelper$2;-><init>()V

    sput-object v0, Landroidx/customview/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/FocusStrategy$CollectionAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 5
    .param p1, "host"    # Landroid/view/View;

    .line 135
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    .line 119
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 123
    iput v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 127
    iput v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 136
    if-eqz p1, :cond_45

    .line 140
    iput-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    .local v0, "context":Landroid/content/Context;
    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 147
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 148
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_44

    .line 150
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 153
    :cond_44
    return-void

    .line 137
    .end local v0    # "context":Landroid/content/Context;
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearAccessibilityFocus(I)Z
    .registers 3
    .param p1, "virtualViewId"    # I

    .line 1001
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-ne v0, p1, :cond_14

    .line 1002
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 1003
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1004
    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 1006
    const/4 v0, 0x1

    return v0

    .line 1008
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private clickKeyboardFocusedVirtualView()Z
    .registers 4

    .line 483
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_11

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method private createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 4
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .line 639
    packed-switch p1, :pswitch_data_e

    .line 643
    invoke-direct {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    return-object v0

    .line 641
    :pswitch_8
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch -0x1
        :pswitch_8
    .end packed-switch
.end method

.method private createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 7
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .line 679
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 680
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 683
    .local v1, "node":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 685
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isScrollable()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 686
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isPassword()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 687
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 688
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 691
    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 694
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_4a

    goto :goto_52

    .line 695
    :cond_4a
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 700
    :cond_52
    :goto_52
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 701
    iget-object v2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v0, v2, p1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    .line 702
    iget-object v2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 704
    return-object v0
.end method

.method private createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
    .registers 4
    .param p1, "eventType"    # I

    .line 655
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 656
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 657
    return-object v0
.end method

.method private createNodeForChild(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 13
    .param p1, "virtualViewId"    # I

    .line 793
    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 796
    .local v0, "node":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 797
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 798
    const-string v2, "android.view.View"

    invoke-virtual {v0, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 800
    sget-object v2, Landroidx/customview/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 801
    invoke-virtual {v0, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 802
    iget-object v3, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    .line 805
    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 808
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_35

    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_2d

    goto :goto_35

    .line 809
    :cond_2d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 813
    :cond_35
    :goto_35
    iget-object v3, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 814
    iget-object v3, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_146

    .line 819
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    move-result v3

    .line 820
    .local v3, "actions":I
    and-int/lit8 v4, v3, 0x40

    if-nez v4, :cond_13e

    .line 824
    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_136

    .line 830
    iget-object v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    .line 831
    iget-object v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0, v4, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;I)V

    .line 834
    iget v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    const/4 v5, 0x0

    if-ne v4, p1, :cond_6e

    .line 835
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 836
    const/16 v4, 0x80

    invoke-virtual {v0, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_76

    .line 838
    :cond_6e
    invoke-virtual {v0, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 839
    const/16 v4, 0x40

    invoke-virtual {v0, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 843
    :goto_76
    iget v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-ne v4, p1, :cond_7c

    move v4, v1

    goto :goto_7d

    :cond_7c
    move v4, v5

    .line 844
    .local v4, "isFocused":Z
    :goto_7d
    if-eqz v4, :cond_84

    .line 845
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_8d

    .line 846
    :cond_84
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 847
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 849
    :cond_8d
    :goto_8d
    invoke-virtual {v0, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocused(Z)V

    .line 851
    iget-object v6, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    iget-object v7, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 855
    iget-object v6, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 856
    iget-object v6, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 857
    iget-object v2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 860
    iget v2, v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    const/4 v6, -0x1

    if-eq v2, v6, :cond_db

    .line 861
    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    .line 863
    .local v2, "parentNode":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    iget v7, v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    .line 864
    .local v7, "virtualDescendantId":I
    :goto_b4
    if-eq v7, v6, :cond_d8

    .line 867
    iget-object v8, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2, v8, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;I)V

    .line 868
    sget-object v8, Landroidx/customview/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 870
    invoke-virtual {p0, v7, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 871
    iget-object v8, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 872
    iget-object v8, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v9, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 865
    iget v7, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    goto :goto_b4

    .line 874
    .end local v7    # "virtualDescendantId":I
    :cond_d8
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 877
    .end local v2    # "parentNode":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_db
    iget-object v2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v6, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v6, v6, v5

    iget-object v7, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v7, v7, v1

    iget-object v8, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 878
    invoke-virtual {v8}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int/2addr v7, v8

    .line 877
    invoke-virtual {v2, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 881
    :cond_f6
    iget-object v2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    iget-object v6, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_135

    .line 882
    iget-object v2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    iget-object v6, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v5, v6, v5

    iget-object v6, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v6, v6, v1

    iget-object v7, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 883
    invoke-virtual {v7}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr v6, v7

    .line 882
    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 884
    iget-object v2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    .line 885
    .local v2, "intersects":Z
    if-eqz v2, :cond_135

    .line 886
    iget-object v5, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 888
    iget-object v5, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-direct {p0, v5}, Landroidx/customview/widget/ExploreByTouchHelper;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_135

    .line 889
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 894
    .end local v2    # "intersects":Z
    :cond_135
    return-object v0

    .line 825
    .end local v4    # "isFocused":Z
    :cond_136
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 821
    :cond_13e
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 815
    .end local v3    # "actions":I
    :cond_146
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createNodeForHost()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 8

    .line 736
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 737
    .local v0, "info":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    iget-object v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 740
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 741
    .local v1, "virtualViewIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 743
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    move-result v2

    .line 744
    .local v2, "realNodeCount":I
    if-lez v2, :cond_28

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_20

    goto :goto_28

    .line 745
    :cond_20
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Views cannot have both real and virtual children"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 748
    :cond_28
    :goto_28
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "count":I
    :goto_2d
    if-ge v3, v4, :cond_41

    .line 749
    iget-object v5, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;I)V

    .line 748
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 752
    .end local v3    # "i":I
    .end local v4    # "count":I
    :cond_41
    return-object v0
.end method

.method private getAllNodes()Landroidx/collection/SparseArrayCompat;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v0, "virtualViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 430
    new-instance v1, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v1}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 431
    .local v1, "allNodes":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;>;"
    const/4 v2, 0x0

    .local v2, "virtualViewIdIndex":I
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_33

    .line 433
    nop

    .line 434
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroidx/customview/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v3

    .line 435
    .local v3, "virtualView":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4, v3}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 432
    .end local v3    # "virtualView":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 438
    .end local v2    # "virtualViewIdIndex":I
    :cond_33
    return-object v1
.end method

.method private getBoundsInParent(ILandroid/graphics/Rect;)V
    .registers 4
    .param p1, "virtualViewId"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 328
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 329
    .local v0, "node":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {v0, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 330
    return-void
.end method

.method private static guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7
    .param p0, "host"    # Landroid/view/View;
    .param p1, "direction"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 452
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 453
    .local v0, "w":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 455
    .local v1, "h":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_26

    .line 469
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 466
    :sswitch_15
    invoke-virtual {p2, v3, v2, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 467
    goto :goto_25

    .line 463
    :sswitch_19
    invoke-virtual {p2, v2, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 464
    goto :goto_25

    .line 460
    :sswitch_1d
    invoke-virtual {p2, v3, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 461
    goto :goto_25

    .line 457
    :sswitch_21
    invoke-virtual {p2, v0, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 458
    nop

    .line 473
    :goto_25
    return-object p2

    :sswitch_data_26
    .sparse-switch
        0x11 -> :sswitch_21
        0x21 -> :sswitch_1d
        0x42 -> :sswitch_19
        0x82 -> :sswitch_15
    .end sparse-switch
.end method

.method private isVisibleToUser(Landroid/graphics/Rect;)Z
    .registers 7
    .param p1, "localRect"    # Landroid/graphics/Rect;

    .line 935
    const/4 v0, 0x0

    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3a

    .line 940
    :cond_a
    iget-object v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-eqz v1, :cond_13

    .line 941
    return v0

    .line 945
    :cond_13
    iget-object v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 946
    .local v1, "viewParent":Landroid/view/ViewParent;
    :goto_19
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_36

    .line 947
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    .line 948
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_35

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_35

    .line 951
    :cond_30
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 952
    .end local v2    # "view":Landroid/view/View;
    goto :goto_19

    .line 949
    .restart local v2    # "view":Landroid/view/View;
    :cond_35
    :goto_35
    return v0

    .line 955
    .end local v2    # "view":Landroid/view/View;
    :cond_36
    if-eqz v1, :cond_39

    const/4 v0, 0x1

    :cond_39
    return v0

    .line 936
    .end local v1    # "viewParent":Landroid/view/ViewParent;
    :cond_3a
    :goto_3a
    return v0
.end method

.method private static keyToDirection(I)I
    .registers 2
    .param p0, "keyCode"    # I

    .line 309
    packed-switch p0, :pswitch_data_10

    .line 317
    :pswitch_3
    const/16 v0, 0x82

    return v0

    .line 315
    :pswitch_6
    const/16 v0, 0x42

    return v0

    .line 311
    :pswitch_9
    const/16 v0, 0x11

    return v0

    .line 313
    :pswitch_c
    const/16 v0, 0x21

    return v0

    nop

    :pswitch_data_10
    .packed-switch 0x13
        :pswitch_c
        :pswitch_3
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private moveFocus(ILandroid/graphics/Rect;)Z
    .registers 16
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 372
    invoke-direct {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->getAllNodes()Landroidx/collection/SparseArrayCompat;

    move-result-object v11

    .line 374
    .local v11, "allNodes":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;>;"
    iget v12, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 376
    .local v12, "focusedNodeId":I
    const/high16 v0, -0x80000000

    if-ne v12, v0, :cond_c

    const/4 v1, 0x0

    goto :goto_12

    :cond_c
    invoke-virtual {v11, v12}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    :goto_12
    move-object v3, v1

    .line 379
    .local v3, "focusedNode":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sparse-switch p1, :sswitch_data_74

    .line 410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :sswitch_1e
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v6, v1

    .line 393
    .local v6, "selectedRect":Landroid/graphics/Rect;
    iget v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-eq v1, v0, :cond_2c

    .line 395
    invoke-direct {p0, v1, v6}, Landroidx/customview/widget/ExploreByTouchHelper;->getBoundsInParent(ILandroid/graphics/Rect;)V

    goto :goto_37

    .line 396
    :cond_2c
    if-eqz p2, :cond_32

    .line 398
    invoke-virtual {v6, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_37

    .line 404
    :cond_32
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v0, p1, v6}, Landroidx/customview/widget/ExploreByTouchHelper;->guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 406
    :goto_37
    sget-object v1, Landroidx/customview/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/FocusStrategy$CollectionAdapter;

    sget-object v2, Landroidx/customview/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    move-object v0, v11

    move-object v4, v6

    move v5, p1

    invoke-static/range {v0 .. v5}, Landroidx/customview/widget/FocusStrategy;->findNextFocusInAbsoluteDirection(Ljava/lang/Object;Landroidx/customview/widget/FocusStrategy$CollectionAdapter;Landroidx/customview/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 408
    .local v0, "nextFocusedNode":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    goto :goto_61

    .line 382
    .end local v0    # "nextFocusedNode":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .end local v6    # "selectedRect":Landroid/graphics/Rect;
    :sswitch_45
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 383
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_50

    move v9, v1

    goto :goto_52

    :cond_50
    const/4 v0, 0x0

    move v9, v0

    .line 384
    .local v9, "isLayoutRtl":Z
    :goto_52
    sget-object v5, Landroidx/customview/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/FocusStrategy$CollectionAdapter;

    sget-object v6, Landroidx/customview/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    const/4 v10, 0x0

    move-object v4, v11

    move-object v7, v3

    move v8, p1

    invoke-static/range {v4 .. v10}, Landroidx/customview/widget/FocusStrategy;->findNextFocusInRelativeDirection(Ljava/lang/Object;Landroidx/customview/widget/FocusStrategy$CollectionAdapter;Landroidx/customview/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;IZZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 387
    .restart local v0    # "nextFocusedNode":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    nop

    .line 416
    .end local v9    # "isLayoutRtl":Z
    :goto_61
    if-nez v0, :cond_66

    .line 417
    const/high16 v1, -0x80000000

    .local v1, "nextFocusedNodeId":I
    goto :goto_6f

    .line 419
    .end local v1    # "nextFocusedNodeId":I
    :cond_66
    invoke-virtual {v11, v0}, Landroidx/collection/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    .line 420
    .local v1, "index":I
    invoke-virtual {v11, v1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v2

    move v1, v2

    .line 423
    .local v1, "nextFocusedNodeId":I
    :goto_6f
    invoke-virtual {p0, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    move-result v2

    return v2

    :sswitch_data_74
    .sparse-switch
        0x1 -> :sswitch_45
        0x2 -> :sswitch_45
        0x11 -> :sswitch_1e
        0x21 -> :sswitch_1e
        0x42 -> :sswitch_1e
        0x82 -> :sswitch_1e
    .end sparse-switch
.end method

.method private performActionForChild(IILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 911
    sparse-switch p2, :sswitch_data_1c

    .line 921
    invoke-virtual {p0, p1, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 915
    :sswitch_8
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    move-result v0

    return v0

    .line 913
    :sswitch_d
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->requestAccessibilityFocus(I)Z

    move-result v0

    return v0

    .line 919
    :sswitch_12
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    move-result v0

    return v0

    .line 917
    :sswitch_17
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    move-result v0

    return v0

    :sswitch_data_1c
    .sparse-switch
        0x1 -> :sswitch_17
        0x2 -> :sswitch_12
        0x40 -> :sswitch_d
        0x80 -> :sswitch_8
    .end sparse-switch
.end method

.method private performActionForHost(ILandroid/os/Bundle;)Z
    .registers 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 907
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v0, p1, p2}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private requestAccessibilityFocus(I)Z
    .registers 4
    .param p1, "virtualViewId"    # I

    .line 971
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_2d

    .line 975
    :cond_12
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-eq v0, p1, :cond_2c

    .line 977
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1d

    .line 978
    invoke-direct {p0, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    .line 982
    :cond_1d
    iput p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 985
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 986
    const v0, 0x8000

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 988
    const/4 v0, 0x1

    return v0

    .line 990
    :cond_2c
    return v1

    .line 972
    :cond_2d
    :goto_2d
    return v1
.end method

.method private updateHoveredVirtualView(I)V
    .registers 4
    .param p1, "virtualViewId"    # I

    .line 614
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-ne v0, p1, :cond_5

    .line 615
    return-void

    .line 618
    :cond_5
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 619
    .local v0, "previousVirtualViewId":I
    iput p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 623
    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 624
    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 626
    return-void
.end method


# virtual methods
.method public final clearKeyboardFocusForVirtualView(I)Z
    .registers 4
    .param p1, "virtualViewId"    # I

    .line 1053
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_6

    .line 1055
    return v1

    .line 1058
    :cond_6
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 1060
    invoke-virtual {p0, p1, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V

    .line 1061
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 1063
    const/4 v0, 0x1

    return v0
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 182
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_39

    .line 186
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    packed-switch v0, :pswitch_data_3a

    .line 199
    :pswitch_1c
    return v1

    .line 193
    :pswitch_1d
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-eq v0, v3, :cond_25

    .line 194
    invoke-direct {p0, v3}, Landroidx/customview/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    .line 195
    return v2

    .line 197
    :cond_25
    return v1

    .line 189
    :pswitch_26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v0, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->getVirtualViewAt(FF)I

    move-result v0

    .line 190
    .local v0, "virtualViewId":I
    invoke-direct {p0, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    .line 191
    if-eq v0, v3, :cond_38

    move v1, v2

    :cond_38
    return v1

    .line 183
    .end local v0    # "virtualViewId":I
    :cond_39
    :goto_39
    return v1

    :pswitch_data_3a
    .packed-switch 0x7
        :pswitch_26
        :pswitch_1c
        :pswitch_26
        :pswitch_1d
    .end packed-switch
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 216
    const/4 v0, 0x0

    .line 218
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 219
    .local v1, "action":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_56

    .line 220
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 221
    .local v3, "keyCode":I
    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_58

    goto :goto_56

    .line 248
    :sswitch_11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 249
    const/4 v2, 0x2

    invoke-direct {p0, v2, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_56

    .line 250
    :cond_1d
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 251
    invoke-direct {p0, v2, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_56

    .line 240
    :sswitch_28
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 241
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_56

    .line 242
    invoke-direct {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->clickKeyboardFocusedVirtualView()Z

    .line 243
    const/4 v0, 0x1

    goto :goto_56

    .line 226
    :sswitch_39
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 227
    invoke-static {v3}, Landroidx/customview/widget/ExploreByTouchHelper;->keyToDirection(I)I

    move-result v5

    .line 228
    .local v5, "direction":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    add-int/2addr v6, v2

    .line 229
    .local v6, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_49
    if-ge v2, v6, :cond_55

    .line 230
    invoke-direct {p0, v5, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 231
    const/4 v0, 0x1

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 236
    .end local v2    # "i":I
    .end local v5    # "direction":I
    .end local v6    # "count":I
    :cond_55
    nop

    .line 257
    .end local v3    # "keyCode":I
    :cond_56
    :goto_56
    return v0

    nop

    :sswitch_data_58
    .sparse-switch
        0x13 -> :sswitch_39
        0x14 -> :sswitch_39
        0x15 -> :sswitch_39
        0x16 -> :sswitch_39
        0x17 -> :sswitch_28
        0x3d -> :sswitch_11
        0x42 -> :sswitch_28
    .end sparse-switch
.end method

.method public final getAccessibilityFocusedVirtualViewId()I
    .registers 2

    .line 290
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 3
    .param p1, "host"    # Landroid/view/View;

    .line 157
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mNodeProvider:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    if-nez v0, :cond_b

    .line 158
    new-instance v0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    invoke-direct {v0, p0}, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;-><init>(Landroidx/customview/widget/ExploreByTouchHelper;)V

    iput-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mNodeProvider:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    .line 160
    :cond_b
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mNodeProvider:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    return-object v0
.end method

.method public getFocusedVirtualView()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 591
    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->getAccessibilityFocusedVirtualViewId()I

    move-result v0

    return v0
.end method

.method public final getKeyboardFocusedVirtualViewId()I
    .registers 2

    .line 298
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    return v0
.end method

.method protected abstract getVirtualViewAt(FF)I
.end method

.method protected abstract getVisibleVirtualViews(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public final invalidateRoot()V
    .registers 3

    .line 528
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    .line 529
    return-void
.end method

.method public final invalidateVirtualView(I)V
    .registers 3
    .param p1, "virtualViewId"    # I

    .line 544
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    .line 546
    return-void
.end method

.method public final invalidateVirtualView(II)V
    .registers 6
    .param p1, "virtualViewId"    # I
    .param p2, "changeTypes"    # I

    .line 568
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_22

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 569
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 570
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_22

    .line 572
    const/16 v1, 0x800

    invoke-direct {p0, p1, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 574
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-static {v1, p2}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 575
    iget-object v2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-interface {v0, v2, v1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 578
    .end local v0    # "parent":Landroid/view/ViewParent;
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_22
    return-void
.end method

.method obtainAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3
    .param p1, "virtualViewId"    # I

    .line 721
    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    .line 722
    invoke-direct {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->createNodeForHost()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0

    .line 725
    :cond_8
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 275
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    .line 276
    invoke-virtual {p0, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    .line 279
    :cond_9
    if-eqz p1, :cond_e

    .line 280
    invoke-direct {p0, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    .line 282
    :cond_e
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 662
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 665
    invoke-virtual {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 666
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 757
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 760
    invoke-virtual {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateNodeForHost(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 761
    return-void
.end method

.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1135
    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1123
    return-void
.end method

.method protected onPopulateNodeForHost(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 2
    .param p1, "node"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1213
    return-void
.end method

.method protected abstract onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
.end method

.method protected onVirtualViewKeyboardFocusChanged(IZ)V
    .registers 3
    .param p1, "virtualViewId"    # I
    .param p2, "hasFocus"    # Z

    .line 603
    return-void
.end method

.method performAction(IILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 898
    packed-switch p1, :pswitch_data_e

    .line 902
    invoke-direct {p0, p1, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->performActionForChild(IILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 900
    :pswitch_8
    invoke-direct {p0, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->performActionForHost(ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_e
    .packed-switch -0x1
        :pswitch_8
    .end packed-switch
.end method

.method public final requestKeyboardFocusForVirtualView(I)Z
    .registers 5
    .param p1, "virtualViewId"    # I

    .line 1019
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1021
    return v1

    .line 1024
    :cond_12
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-ne v0, p1, :cond_17

    .line 1026
    return v1

    .line 1029
    :cond_17
    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_1e

    .line 1030
    invoke-virtual {p0, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    .line 1033
    :cond_1e
    if-ne p1, v2, :cond_21

    .line 1034
    return v1

    .line 1037
    :cond_21
    iput p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 1039
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V

    .line 1040
    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 1042
    return v0
.end method

.method public final sendEventForVirtualView(II)Z
    .registers 6
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .line 507
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    if-eq p1, v0, :cond_22

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_22

    .line 511
    :cond_e
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 512
    .local v0, "parent":Landroid/view/ViewParent;
    if-nez v0, :cond_17

    .line 513
    return v1

    .line 516
    :cond_17
    invoke-direct {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 517
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-interface {v0, v2, v1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    return v2

    .line 508
    .end local v0    # "parent":Landroid/view/ViewParent;
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_22
    :goto_22
    return v1
.end method

.class Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;
.super Ljava/lang/Object;
.source "BottomAppBar.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 1323
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 19
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 1335
    move-object v0, p0

    move-object v1, p1

    iget-object v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-static {v2}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->access$2500(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 1338
    .local v2, "child":Lcom/google/android/material/bottomappbar/BottomAppBar;
    if-eqz v2, :cond_b0

    instance-of v3, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-nez v3, :cond_1a

    instance-of v3, v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    if-nez v3, :cond_1a

    goto/16 :goto_b0

    .line 1345
    :cond_1a
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1346
    .local v3, "height":I
    instance-of v4, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v4, :cond_56

    .line 1347
    move-object v4, v1

    check-cast v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 1349
    .local v4, "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    iget-object v5, v0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-static {v5}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->access$2600(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getMeasuredContentRect(Landroid/graphics/Rect;)V

    .line 1351
    iget-object v5, v0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-static {v5}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->access$2600(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 1354
    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setFabDiameter(I)Z

    .line 1357
    nop

    .line 1358
    invoke-virtual {v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v5

    .line 1359
    invoke-virtual {v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v5

    new-instance v6, Landroid/graphics/RectF;

    iget-object v7, v0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 1360
    invoke-static {v7}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->access$2600(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v5, v6}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v5

    .line 1362
    .local v5, "cornerSize":F
    invoke-virtual {v2, v5}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setFabCornerSize(F)V

    .line 1365
    .end local v4    # "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .end local v5    # "cornerSize":F
    :cond_56
    nop

    .line 1366
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1370
    .local v4, "fabLayoutParams":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    iget-object v5, v0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-static {v5}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->access$2700(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)I

    move-result v5

    if-nez v5, :cond_ac

    .line 1373
    invoke-static {v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$400(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_87

    .line 1374
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    .line 1375
    .local v5, "bottomShadowPadding":I
    nop

    .line 1377
    invoke-virtual {v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/android/material/R$dimen;->mtrl_bottomappbar_fab_bottom_margin:I

    .line 1378
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 1380
    .local v6, "bottomMargin":I
    sub-int v7, v6, v5

    .line 1381
    .local v7, "minBottomMargin":I
    invoke-static {v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$2800(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result v8

    add-int/2addr v8, v7

    iput v8, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    .line 1383
    .end local v5    # "bottomShadowPadding":I
    .end local v6    # "bottomMargin":I
    .end local v7    # "minBottomMargin":I
    :cond_87
    invoke-static {v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$2900(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result v5

    iput v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    .line 1384
    invoke-static {v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$3000(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result v5

    iput v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    .line 1385
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    .line 1386
    .local v5, "isRtl":Z
    if-eqz v5, :cond_a3

    .line 1387
    iget v6, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    invoke-static {v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$3100(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    goto :goto_ac

    .line 1389
    :cond_a3
    iget v6, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    invoke-static {v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$3100(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    .line 1392
    .end local v5    # "isRtl":Z
    :cond_ac
    :goto_ac
    invoke-static {v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1400(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    .line 1393
    return-void

    .line 1341
    .end local v3    # "height":I
    .end local v4    # "fabLayoutParams":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    :cond_b0
    :goto_b0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1342
    return-void
.end method

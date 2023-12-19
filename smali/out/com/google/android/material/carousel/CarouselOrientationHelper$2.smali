.class Lcom/google/android/material/carousel/CarouselOrientationHelper$2;
.super Lcom/google/android/material/carousel/CarouselOrientationHelper;
.source "CarouselOrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/carousel/CarouselOrientationHelper;->createHorizontalHelper(Lcom/google/android/material/carousel/CarouselLayoutManager;)Lcom/google/android/material/carousel/CarouselOrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;


# direct methods
.method constructor <init>(ILcom/google/android/material/carousel/CarouselLayoutManager;)V
    .registers 3
    .param p1, "orientation"    # I

    .line 241
    iput-object p2, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselOrientationHelper;-><init>(ILcom/google/android/material/carousel/CarouselOrientationHelper$1;)V

    return-void
.end method


# virtual methods
.method public containMaskWithinBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .registers 7
    .param p1, "maskRect"    # Landroid/graphics/RectF;
    .param p2, "offsetMaskRect"    # Landroid/graphics/RectF;
    .param p3, "boundsRect"    # Landroid/graphics/RectF;

    .line 295
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1f

    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p3, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1f

    .line 296
    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    .line 297
    .local v0, "diff":F
    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 298
    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 301
    .end local v0    # "diff":F
    :cond_1f
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p3, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4a

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4a

    .line 302
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    .line 303
    .restart local v0    # "diff":F
    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    iget v2, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 304
    iget v1, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    iget v2, p2, Landroid/graphics/RectF;->left:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 306
    .end local v0    # "diff":F
    :cond_4a
    return-void
.end method

.method public getMaskMargins(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)F
    .registers 4
    .param p1, "layoutParams"    # Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 284
    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    iget v1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public getMaskRect(FFFF)Landroid/graphics/RectF;
    .registers 8
    .param p1, "childHeight"    # F
    .param p2, "childWidth"    # F
    .param p3, "maskHeight"    # F
    .param p4, "maskWidth"    # F

    .line 290
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    sub-float v2, p2, p4

    invoke-direct {v0, p4, v1, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method getParentBottom()I
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method getParentEnd()I
    .registers 2

    .line 259
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->getParentLeft()I

    move-result v0

    goto :goto_11

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->getParentRight()I

    move-result v0

    :goto_11
    return v0
.end method

.method getParentLeft()I
    .registers 2

    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method getParentRight()I
    .registers 2

    .line 254
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getWidth()I

    move-result v0

    return v0
.end method

.method getParentStart()I
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->getParentRight()I

    move-result v0

    goto :goto_11

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->getParentLeft()I

    move-result v0

    :goto_11
    return v0
.end method

.method getParentTop()I
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;II)V
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "head"    # I
    .param p3, "tail"    # I

    .line 274
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 277
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->getParentTop()I

    move-result v3

    .line 279
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->getParentBottom()I

    move-result v5

    .line 274
    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/carousel/CarouselLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 280
    return-void
.end method

.method public moveMaskOnEdgeOutsideBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .registers 8
    .param p1, "maskRect"    # Landroid/graphics/RectF;
    .param p2, "offsetMaskRect"    # Landroid/graphics/RectF;
    .param p3, "parentBoundsRect"    # Landroid/graphics/RectF;

    .line 311
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p3, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    if-gtz v0, :cond_15

    .line 312
    iget v0, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 314
    :cond_15
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_28

    .line 315
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v0, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 317
    :cond_28
    return-void
.end method

.method public offsetChild(Landroid/view/View;Landroid/graphics/Rect;FF)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "boundsRect"    # Landroid/graphics/Rect;
    .param p3, "halfItemSize"    # F
    .param p4, "offsetCenter"    # F

    .line 321
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float/2addr v0, p3

    .line 322
    .local v0, "actualCx":F
    sub-float v1, p4, v0

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 323
    return-void
.end method

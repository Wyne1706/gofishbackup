.class Lcom/google/android/material/carousel/CarouselLayoutManager$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "CarouselLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/carousel/CarouselLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;


# direct methods
.method constructor <init>(Lcom/google/android/material/carousel/CarouselLayoutManager;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/android/material/carousel/CarouselLayoutManager;
    .param p2, "context"    # Landroid/content/Context;

    .line 1056
    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDxToMakeVisible(Landroid/view/View;I)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "snapPreference"    # I

    .line 1065
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-static {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->access$000(Lcom/google/android/material/carousel/CarouselLayoutManager;)Lcom/google/android/material/carousel/KeylineStateList;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_1c

    .line 1070
    :cond_11
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateScrollDeltaToMakePositionVisible(I)I

    move-result v0

    return v0

    .line 1066
    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "snapPreference"    # I

    .line 1075
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-static {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->access$000(Lcom/google/android/material/carousel/CarouselLayoutManager;)Lcom/google/android/material/carousel/KeylineStateList;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1c

    .line 1080
    :cond_11
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateScrollDeltaToMakePositionVisible(I)I

    move-result v0

    return v0

    .line 1076
    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 3
    .param p1, "targetPosition"    # I

    .line 1060
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

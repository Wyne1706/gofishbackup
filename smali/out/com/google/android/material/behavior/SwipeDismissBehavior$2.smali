.class Lcom/google/android/material/behavior/SwipeDismissBehavior$2;
.super Ljava/lang/Object;
.source "SwipeDismissBehavior.java"

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/behavior/SwipeDismissBehavior;->updateAccessibilityActions(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 427
    .local p0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$2;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$2;"
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "arguments"    # Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;

    .line 430
    .local p0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$2;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$2;"
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-virtual {v0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->canSwipeDismissView(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    .line 431
    nop

    .line 432
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v1

    .line 433
    .local v0, "isRtl":Z
    :goto_14
    iget-object v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v3, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    if-nez v3, :cond_1c

    if-nez v0, :cond_24

    :cond_1c
    iget-object v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v3, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    if-ne v3, v2, :cond_25

    if-nez v0, :cond_25

    :cond_24
    move v1, v2

    .line 436
    .local v1, "dismissToLeft":Z
    :cond_25
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v1, :cond_2c

    neg-int v3, v3

    .line 437
    .local v3, "offset":I
    :cond_2c
    invoke-static {p1, v3}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 438
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 439
    iget-object v4, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v4, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    if-eqz v4, :cond_40

    .line 440
    iget-object v4, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v4, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    invoke-interface {v4, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;->onDismiss(Landroid/view/View;)V

    .line 442
    :cond_40
    return v2

    .line 444
    .end local v0    # "isRtl":Z
    .end local v1    # "dismissToLeft":Z
    .end local v3    # "offset":I
    :cond_41
    return v1
.end method
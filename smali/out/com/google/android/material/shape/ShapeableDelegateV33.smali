.class Lcom/google/android/material/shape/ShapeableDelegateV33;
.super Lcom/google/android/material/shape/ShapeableDelegate;
.source "ShapeableDelegateV33.java"


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 39
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeableDelegate;-><init>()V

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeableDelegateV33;->initMaskOutlineProvider(Landroid/view/View;)V

    .line 41
    return-void
.end method

.method private initMaskOutlineProvider(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 60
    new-instance v0, Lcom/google/android/material/shape/ShapeableDelegateV33$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/shape/ShapeableDelegateV33$1;-><init>(Lcom/google/android/material/shape/ShapeableDelegateV33;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 69
    return-void
.end method


# virtual methods
.method invalidateClippingMethod(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 50
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeableDelegateV33;->shouldUseCompatClipping()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeableDelegateV33;->shouldUseCompatClipping()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_16

    .line 54
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->invalidateOutline()V

    .line 56
    :goto_16
    return-void
.end method

.method shouldUseCompatClipping()Z
    .registers 2

    .line 45
    iget-boolean v0, p0, Lcom/google/android/material/shape/ShapeableDelegateV33;->forceCompatClippingEnabled:Z

    return v0
.end method

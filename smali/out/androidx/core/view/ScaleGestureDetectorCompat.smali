.class public final Landroidx/core/view/ScaleGestureDetectorCompat;
.super Ljava/lang/Object;
.source "ScaleGestureDetectorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ScaleGestureDetectorCompat$Api19Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isQuickScaleEnabled(Landroid/view/ScaleGestureDetector;)Z
    .registers 2
    .param p0, "scaleGestureDetector"    # Landroid/view/ScaleGestureDetector;

    .line 82
    nop

    .line 83
    invoke-static {p0}, Landroidx/core/view/ScaleGestureDetectorCompat$Api19Impl;->isQuickScaleEnabled(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public static isQuickScaleEnabled(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "scaleGestureDetector"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    move-object v0, p0

    check-cast v0, Landroid/view/ScaleGestureDetector;

    invoke-static {v0}, Landroidx/core/view/ScaleGestureDetectorCompat;->isQuickScaleEnabled(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public static setQuickScaleEnabled(Landroid/view/ScaleGestureDetector;Z)V
    .registers 2
    .param p0, "scaleGestureDetector"    # Landroid/view/ScaleGestureDetector;
    .param p1, "enabled"    # Z

    .line 57
    nop

    .line 58
    invoke-static {p0, p1}, Landroidx/core/view/ScaleGestureDetectorCompat$Api19Impl;->setQuickScaleEnabled(Landroid/view/ScaleGestureDetector;Z)V

    .line 60
    return-void
.end method

.method public static setQuickScaleEnabled(Ljava/lang/Object;Z)V
    .registers 3
    .param p0, "scaleGestureDetector"    # Ljava/lang/Object;
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    move-object v0, p0

    check-cast v0, Landroid/view/ScaleGestureDetector;

    invoke-static {v0, p1}, Landroidx/core/view/ScaleGestureDetectorCompat;->setQuickScaleEnabled(Landroid/view/ScaleGestureDetector;Z)V

    .line 46
    return-void
.end method

.class Landroidx/appcompat/widget/DropDownListView$Api21Impl;
.super Ljava/lang/Object;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/DropDownListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 806
    return-void
.end method

.method static drawableHotspotChanged(Landroid/view/View;FF)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 810
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 811
    return-void
.end method

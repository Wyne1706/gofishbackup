.class Landroidx/appcompat/widget/SwitchCompat$Api18Impl;
.super Ljava/lang/Object;
.source "SwitchCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SwitchCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api18Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1700
    return-void
.end method

.method static setAutoCancel(Landroid/animation/ObjectAnimator;Z)V
    .registers 2
    .param p0, "objectAnimator"    # Landroid/animation/ObjectAnimator;
    .param p1, "cancel"    # Z

    .line 1704
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 1705
    return-void
.end method

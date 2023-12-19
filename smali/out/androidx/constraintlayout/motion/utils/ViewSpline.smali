.class public abstract Landroidx/constraintlayout/motion/utils/ViewSpline;
.super Landroidx/constraintlayout/core/motion/utils/SplineSet;
.source "ViewSpline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationZset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationYset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationXset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleYset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleXset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$PivotYset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$PivotXset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$RotationYset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$RotationXset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$RotationSet;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$ElevationSet;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewSpline"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/SplineSet;-><init>()V

    return-void
.end method

.method public static makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/utils/ViewSpline;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "attrList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)",
            "Landroidx/constraintlayout/motion/utils/ViewSpline;"
        }
    .end annotation

    .line 36
    .local p1, "attrList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/constraintlayout/widget/ConstraintAttribute;>;"
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public static makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/ViewSpline;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_12c

    :cond_7
    goto/16 :goto_c5

    :sswitch_9
    const-string/jumbo v0, "waveOffset"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto/16 :goto_c6

    :sswitch_16
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto/16 :goto_c6

    :sswitch_21
    const-string/jumbo v0, "transitionPathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto/16 :goto_c6

    :sswitch_2d
    const-string v0, "elevation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto/16 :goto_c6

    :sswitch_38
    const-string/jumbo v0, "rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto/16 :goto_c6

    :sswitch_44
    const-string/jumbo v0, "transformPivotY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto/16 :goto_c6

    :sswitch_50
    const-string/jumbo v0, "transformPivotX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto/16 :goto_c6

    :sswitch_5c
    const-string/jumbo v0, "waveVariesBy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto :goto_c6

    :sswitch_68
    const-string/jumbo v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_c6

    :sswitch_74
    const-string/jumbo v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_c6

    :sswitch_80
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xf

    goto :goto_c6

    :sswitch_8b
    const-string/jumbo v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xe

    goto :goto_c6

    :sswitch_97
    const-string/jumbo v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    goto :goto_c6

    :sswitch_a3
    const-string/jumbo v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    goto :goto_c6

    :sswitch_af
    const-string/jumbo v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_c6

    :sswitch_ba
    const-string/jumbo v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_c6

    :goto_c5
    const/4 v0, -0x1

    :goto_c6
    packed-switch v0, :pswitch_data_16e

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 72
    :pswitch_cb
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;-><init>()V

    return-object v0

    .line 70
    :pswitch_d1
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationZset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationZset;-><init>()V

    return-object v0

    .line 68
    :pswitch_d7
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationYset;-><init>()V

    return-object v0

    .line 66
    :pswitch_dd
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationXset;-><init>()V

    return-object v0

    .line 64
    :pswitch_e3
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>()V

    return-object v0

    .line 62
    :pswitch_e9
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>()V

    return-object v0

    .line 60
    :pswitch_ef
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleYset;-><init>()V

    return-object v0

    .line 58
    :pswitch_f5
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleXset;-><init>()V

    return-object v0

    .line 56
    :pswitch_fb
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;-><init>()V

    return-object v0

    .line 54
    :pswitch_101
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotYset;-><init>()V

    return-object v0

    .line 52
    :pswitch_107
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotXset;-><init>()V

    return-object v0

    .line 50
    :pswitch_10d
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationYset;-><init>()V

    return-object v0

    .line 48
    :pswitch_113
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationXset;-><init>()V

    return-object v0

    .line 46
    :pswitch_119
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationSet;-><init>()V

    return-object v0

    .line 44
    :pswitch_11f
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$ElevationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$ElevationSet;-><init>()V

    return-object v0

    .line 42
    :pswitch_125
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>()V

    return-object v0

    nop

    :sswitch_data_12c
    .sparse-switch
        -0x4a771f66 -> :sswitch_ba
        -0x4a771f65 -> :sswitch_af
        -0x490b9c39 -> :sswitch_a3
        -0x490b9c38 -> :sswitch_97
        -0x490b9c37 -> :sswitch_8b
        -0x3bab3dd3 -> :sswitch_80
        -0x3621dfb2 -> :sswitch_74
        -0x3621dfb1 -> :sswitch_68
        -0x2f893320 -> :sswitch_5c
        -0x2d5a2d1e -> :sswitch_50
        -0x2d5a2d1d -> :sswitch_44
        -0x266f082 -> :sswitch_38
        -0x42d1a3 -> :sswitch_2d
        0x2382115 -> :sswitch_21
        0x589b15e -> :sswitch_16
        0x94e04ec -> :sswitch_9
    .end sparse-switch

    :pswitch_data_16e
    .packed-switch 0x0
        :pswitch_125
        :pswitch_11f
        :pswitch_119
        :pswitch_113
        :pswitch_10d
        :pswitch_107
        :pswitch_101
        :pswitch_fb
        :pswitch_f5
        :pswitch_ef
        :pswitch_e9
        :pswitch_e3
        :pswitch_dd
        :pswitch_d7
        :pswitch_d1
        :pswitch_cb
    .end packed-switch
.end method


# virtual methods
.method public abstract setProperty(Landroid/view/View;F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "t"
        }
    .end annotation
.end method

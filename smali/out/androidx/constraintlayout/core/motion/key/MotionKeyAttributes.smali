.class public Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;
.super Landroidx/constraintlayout/core/motion/key/MotionKey;
.source "MotionKeyAttributes.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final KEY_TYPE:I = 0x1

.field static final NAME:Ljava/lang/String; = "KeyAttribute"

.field private static final TAG:Ljava/lang/String; = "KeyAttributes"


# instance fields
.field private mAlpha:F

.field private mCurveFit:I

.field private mElevation:F

.field private mPivotX:F

.field private mPivotY:F

.field private mProgress:F

.field private mRotation:F

.field private mRotationX:F

.field private mRotationY:F

.field private mScaleX:F

.field private mScaleY:F

.field private mTransitionEasing:Ljava/lang/String;

.field private mTransitionPathRotate:F

.field private mTranslationX:F

.field private mTranslationY:F

.field private mTranslationZ:F

.field private mVisibility:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/key/MotionKey;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mVisibility:I

    .line 32
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mAlpha:F

    .line 33
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mElevation:F

    .line 34
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotation:F

    .line 35
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationX:F

    .line 36
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationY:F

    .line 37
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mPivotX:F

    .line 38
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mPivotY:F

    .line 39
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTransitionPathRotate:F

    .line 40
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleX:F

    .line 41
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleY:F

    .line 42
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationX:F

    .line 43
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationY:F

    .line 44
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationZ:F

    .line 45
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mProgress:F

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mType:I

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCustom:Ljava/util/HashMap;

    .line 52
    return-void
.end method

.method private getFloatValue(I)F
    .registers 3
    .param p1, "id"    # I

    .line 364
    sparse-switch p1, :sswitch_data_34

    .line 396
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 392
    :sswitch_6
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTransitionPathRotate:F

    return v0

    .line 390
    :sswitch_9
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mProgress:F

    return v0

    .line 388
    :sswitch_c
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mPivotY:F

    return v0

    .line 386
    :sswitch_f
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mPivotX:F

    return v0

    .line 384
    :sswitch_12
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleY:F

    return v0

    .line 382
    :sswitch_15
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleX:F

    return v0

    .line 380
    :sswitch_18
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotation:F

    return v0

    .line 378
    :sswitch_1b
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationY:F

    return v0

    .line 376
    :sswitch_1e
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationX:F

    return v0

    .line 374
    :sswitch_21
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mElevation:F

    return v0

    .line 372
    :sswitch_24
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationZ:F

    return v0

    .line 370
    :sswitch_27
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationY:F

    return v0

    .line 368
    :sswitch_2a
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationX:F

    return v0

    .line 366
    :sswitch_2d
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mAlpha:F

    return v0

    .line 394
    :sswitch_30
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    int-to-float v0, v0

    return v0

    :sswitch_data_34
    .sparse-switch
        0x64 -> :sswitch_30
        0x12f -> :sswitch_2d
        0x130 -> :sswitch_2a
        0x131 -> :sswitch_27
        0x132 -> :sswitch_24
        0x133 -> :sswitch_21
        0x134 -> :sswitch_1e
        0x135 -> :sswitch_1b
        0x136 -> :sswitch_18
        0x137 -> :sswitch_15
        0x138 -> :sswitch_12
        0x139 -> :sswitch_f
        0x13a -> :sswitch_c
        0x13b -> :sswitch_9
        0x13c -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/SplineSet;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p1, "splines":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/SplineSet;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1ee

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 109
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 110
    .local v2, "splineSet":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    if-nez v2, :cond_1d

    .line 111
    goto :goto_8

    .line 114
    :cond_1d
    const-string v3, "CUSTOM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_42

    .line 115
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "cKey":Ljava/lang/String;
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCustom:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 117
    .local v4, "cValue":Landroidx/constraintlayout/core/motion/CustomVariable;
    if-eqz v4, :cond_8

    .line 118
    move-object v5, v2

    check-cast v5, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    invoke-virtual {v5, v6, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->setPoint(ILandroidx/constraintlayout/core/motion/CustomVariable;)V

    goto :goto_8

    .line 122
    .end local v3    # "cKey":Ljava/lang/String;
    .end local v4    # "cValue":Landroidx/constraintlayout/core/motion/CustomVariable;
    :cond_42
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1f0

    :cond_49
    goto/16 :goto_e8

    :sswitch_4b
    const-string v3, "pathRotate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    const/4 v5, 0x7

    goto/16 :goto_e9

    :sswitch_56
    const-string v3, "alpha"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    const/4 v5, 0x0

    goto/16 :goto_e9

    :sswitch_61
    const-string v3, "elevation"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    goto/16 :goto_e9

    :sswitch_6b
    const-string/jumbo v3, "scaleY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    const/16 v5, 0x9

    goto/16 :goto_e9

    :sswitch_78
    const-string/jumbo v3, "scaleX"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    const/16 v5, 0x8

    goto :goto_e9

    :sswitch_84
    const-string v3, "pivotY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    const/4 v5, 0x6

    goto :goto_e9

    :sswitch_8e
    const-string v3, "pivotX"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    const/4 v5, 0x5

    goto :goto_e9

    :sswitch_98
    const-string v3, "progress"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    const/16 v5, 0xd

    goto :goto_e9

    :sswitch_a3
    const-string/jumbo v3, "translationZ"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    const/16 v5, 0xc

    goto :goto_e9

    :sswitch_af
    const-string/jumbo v3, "translationY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    const/16 v5, 0xb

    goto :goto_e9

    :sswitch_bb
    const-string/jumbo v3, "translationX"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    const/16 v5, 0xa

    goto :goto_e9

    :sswitch_c7
    const-string/jumbo v3, "rotationZ"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    const/4 v5, 0x2

    goto :goto_e9

    :sswitch_d2
    const-string/jumbo v3, "rotationY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    const/4 v5, 0x4

    goto :goto_e9

    :sswitch_dd
    const-string/jumbo v3, "rotationX"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    const/4 v5, 0x3

    goto :goto_e9

    :goto_e8
    const/4 v5, -0x1

    :goto_e9
    packed-switch v5, :pswitch_data_22a

    .line 194
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not supported by KeyAttributes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1ec

    .line 189
    :pswitch_106
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mProgress:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1ec

    .line 190
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mProgress:F

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_1ec

    .line 184
    :pswitch_117
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationZ:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1ec

    .line 185
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationZ:F

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_1ec

    .line 179
    :pswitch_128
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1ec

    .line 180
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationY:F

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_1ec

    .line 174
    :pswitch_139
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1ec

    .line 175
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationX:F

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_1ec

    .line 169
    :pswitch_14a
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1ec

    .line 170
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleY:F

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_1ec

    .line 164
    :pswitch_15b
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1ec

    .line 165
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleX:F

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_1ec

    .line 159
    :pswitch_16c
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTransitionPathRotate:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1ec

    .line 160
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTransitionPathRotate:F

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_1ec

    .line 154
    :pswitch_17d
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1ec

    .line 155
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mPivotY:F

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto :goto_1ec

    .line 149
    :pswitch_18d
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1ec

    .line 150
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mPivotX:F

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto :goto_1ec

    .line 144
    :pswitch_19d
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1ec

    .line 145
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationY:F

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto :goto_1ec

    .line 139
    :pswitch_1ad
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1ec

    .line 140
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationX:F

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto :goto_1ec

    .line 134
    :pswitch_1bd
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotation:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1ec

    .line 135
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotation:F

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto :goto_1ec

    .line 129
    :pswitch_1cd
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mElevation:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1ec

    .line 130
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mElevation:F

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto :goto_1ec

    .line 124
    :pswitch_1dd
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mAlpha:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1ec

    .line 125
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mAlpha:F

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    .line 196
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "splineSet":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    :cond_1ec
    :goto_1ec
    goto/16 :goto_8

    .line 197
    :cond_1ee
    return-void

    nop

    :sswitch_data_1f0
    .sparse-switch
        -0x4a771f66 -> :sswitch_dd
        -0x4a771f65 -> :sswitch_d2
        -0x4a771f64 -> :sswitch_c7
        -0x490b9c39 -> :sswitch_bb
        -0x490b9c38 -> :sswitch_af
        -0x490b9c37 -> :sswitch_a3
        -0x3bab3dd3 -> :sswitch_98
        -0x3ae243aa -> :sswitch_8e
        -0x3ae243a9 -> :sswitch_84
        -0x3621dfb2 -> :sswitch_78
        -0x3621dfb1 -> :sswitch_6b
        -0x42d1a3 -> :sswitch_61
        0x589b15e -> :sswitch_56
        0x2fdfbde0 -> :sswitch_4b
    .end sparse-switch

    :pswitch_data_22a
    .packed-switch 0x0
        :pswitch_1dd
        :pswitch_1cd
        :pswitch_1bd
        :pswitch_1ad
        :pswitch_19d
        :pswitch_18d
        :pswitch_17d
        :pswitch_16c
        :pswitch_15b
        :pswitch_14a
        :pswitch_139
        :pswitch_128
        :pswitch_117
        :pswitch_106
    .end packed-switch
.end method

.method public clone()Landroidx/constraintlayout/core/motion/key/MotionKey;
    .registers 2

    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->clone()Landroidx/constraintlayout/core/motion/key/MotionKey;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p1, "attributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    .line 58
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_d
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 61
    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_1a
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_28

    .line 64
    const-string/jumbo v0, "rotationZ"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_28
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_36

    .line 67
    const-string/jumbo v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_36
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_44

    .line 70
    const-string/jumbo v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_44
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mPivotX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_51

    .line 73
    const-string v0, "pivotX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_51
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mPivotY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 76
    const-string v0, "pivotY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_5e
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 79
    const-string/jumbo v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_6c
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 82
    const-string/jumbo v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_7a
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_88

    .line 85
    const-string/jumbo v0, "translationZ"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_88
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_95

    .line 88
    const-string v0, "pathRotate"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_95
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a3

    .line 91
    const-string/jumbo v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_a3
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b1

    .line 94
    const-string/jumbo v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_b1
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_be

    .line 97
    const-string v0, "progress"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_be
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCustom:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_f3

    .line 100
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCustom:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CUSTOM,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_d0

    .line 104
    :cond_f3
    return-void
.end method

.method public getCurveFit()I
    .registers 2

    .line 348
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    return v0
.end method

.method public getId(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 344
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType$-CC;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public printAttributes()V
    .registers 8

    .line 352
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 353
    .local v0, "nameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->getAttributeNames(Ljava/util/HashSet;)V

    .line 355
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ------------- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -------------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 356
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 357
    .local v1, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_32
    array-length v3, v1

    if-ge v2, v3, :cond_60

    .line 358
    aget-object v3, v1, v2

    invoke-static {v3}, Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType$-CC;->getId(Ljava/lang/String;)I

    move-result v3

    .line 359
    .local v3, "id":I
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v3}, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->getFloatValue(I)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 357
    .end local v3    # "id":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 361
    .end local v2    # "i":I
    :cond_60
    return-void
.end method

.method public setInterpolation(Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 278
    .local p1, "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_13

    .line 279
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "alpha"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_13
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_26

    .line 282
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "elevation"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_26
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 285
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "rotationZ"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_3a
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 288
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "rotationX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_4e
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_62

    .line 291
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "rotationY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_62
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mPivotX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_75

    .line 294
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "pivotX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_75
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mPivotY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_88

    .line 297
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "pivotY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_88
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9c

    .line 300
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "translationX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_9c
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b0

    .line 303
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "translationY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_b0
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_c4

    .line 306
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "translationZ"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_c4
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d7

    .line 309
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "pathRotate"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_d7
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_eb

    .line 312
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "scaleX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_eb
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_ff

    .line 315
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "scaleY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_ff
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_112

    .line 318
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_112
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCustom:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_14d

    .line 321
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCustom:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_124
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 322
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CUSTOM,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_124

    .line 325
    :cond_14d
    return-void
.end method

.method public setValue(IF)Z
    .registers 4
    .param p1, "type"    # I
    .param p2, "value"    # F

    .line 225
    sparse-switch p1, :sswitch_data_38

    .line 272
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(IF)Z

    move-result v0

    return v0

    .line 266
    :sswitch_8
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTransitionPathRotate:F

    .line 267
    goto :goto_35

    .line 263
    :sswitch_b
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mProgress:F

    .line 264
    goto :goto_35

    .line 260
    :sswitch_e
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mPivotY:F

    .line 261
    goto :goto_35

    .line 257
    :sswitch_11
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mPivotX:F

    .line 258
    goto :goto_35

    .line 254
    :sswitch_14
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleY:F

    .line 255
    goto :goto_35

    .line 251
    :sswitch_17
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleX:F

    .line 252
    goto :goto_35

    .line 248
    :sswitch_1a
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotation:F

    .line 249
    goto :goto_35

    .line 245
    :sswitch_1d
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationY:F

    .line 246
    goto :goto_35

    .line 242
    :sswitch_20
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationX:F

    .line 243
    goto :goto_35

    .line 239
    :sswitch_23
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mElevation:F

    .line 240
    goto :goto_35

    .line 236
    :sswitch_26
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationZ:F

    .line 237
    goto :goto_35

    .line 233
    :sswitch_29
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationY:F

    .line 234
    goto :goto_35

    .line 230
    :sswitch_2c
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationX:F

    .line 231
    goto :goto_35

    .line 227
    :sswitch_2f
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mAlpha:F

    .line 228
    goto :goto_35

    .line 269
    :sswitch_32
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTransitionPathRotate:F

    .line 270
    nop

    .line 274
    :goto_35
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_38
    .sparse-switch
        0x64 -> :sswitch_32
        0x12f -> :sswitch_2f
        0x130 -> :sswitch_2c
        0x131 -> :sswitch_29
        0x132 -> :sswitch_26
        0x133 -> :sswitch_23
        0x134 -> :sswitch_20
        0x135 -> :sswitch_1d
        0x136 -> :sswitch_1a
        0x137 -> :sswitch_17
        0x138 -> :sswitch_14
        0x139 -> :sswitch_11
        0x13a -> :sswitch_e
        0x13b -> :sswitch_b
        0x13c -> :sswitch_8
    .end sparse-switch
.end method

.method public setValue(II)Z
    .registers 4
    .param p1, "type"    # I
    .param p2, "value"    # I

    .line 206
    sparse-switch p1, :sswitch_data_1a

    .line 217
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->setValue(II)Z

    move-result v0

    if-nez v0, :cond_17

    .line 218
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(II)Z

    move-result v0

    return v0

    .line 208
    :sswitch_e
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mVisibility:I

    .line 209
    goto :goto_17

    .line 211
    :sswitch_11
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    .line 212
    goto :goto_17

    .line 214
    :sswitch_14
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    .line 215
    nop

    .line 221
    :cond_17
    :goto_17
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_1a
    .sparse-switch
        0x64 -> :sswitch_14
        0x12d -> :sswitch_11
        0x12e -> :sswitch_e
    .end sparse-switch
.end method

.method public setValue(ILjava/lang/String;)Z
    .registers 4
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 328
    sparse-switch p1, :sswitch_data_10

    .line 337
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 330
    :sswitch_8
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTransitionEasing:Ljava/lang/String;

    .line 331
    goto :goto_e

    .line 334
    :sswitch_b
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTargetString:Ljava/lang/String;

    .line 335
    nop

    .line 339
    :goto_e
    const/4 v0, 0x1

    return v0

    :sswitch_data_10
    .sparse-switch
        0x65 -> :sswitch_b
        0x13d -> :sswitch_8
    .end sparse-switch
.end method

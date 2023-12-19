.class public abstract Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;,
        Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$IntFloatFloatSort;,
        Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$IntDoubleSort;,
        Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;,
        Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;,
        Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CoreSpline;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyCycleOscillator"


# instance fields
.field private mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field private mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

.field private mType:Ljava/lang/String;

.field public mVariesBy:I

.field mWavePoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mWaveShape:I

.field private mWaveString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveShape:I

    .line 37
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveString:Ljava/lang/String;

    .line 39
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mVariesBy:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    return-void
.end method

.method public static makeWidgetCycle(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    .registers 2
    .param p0, "attribute"    # Ljava/lang/String;

    .line 43
    const-string v0, "pathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 44
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 46
    :cond_e
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CoreSpline;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CoreSpline;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public get(F)F
    .registers 4
    .param p1, "t"    # F

    .line 117
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->getValues(F)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getCurveFit()Landroidx/constraintlayout/core/motion/utils/CurveFit;
    .registers 2

    .line 125
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    return-object v0
.end method

.method public getSlope(F)F
    .registers 4
    .param p1, "position"    # F

    .line 121
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->getSlope(F)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected setCustom(Ljava/lang/Object;)V
    .registers 2
    .param p1, "custom"    # Ljava/lang/Object;

    .line 130
    return-void
.end method

.method public setPoint(IILjava/lang/String;IFFFF)V
    .registers 19
    .param p1, "framePosition"    # I
    .param p2, "shape"    # I
    .param p3, "waveString"    # Ljava/lang/String;
    .param p4, "variesBy"    # I
    .param p5, "period"    # F
    .param p6, "offset"    # F
    .param p7, "phase"    # F
    .param p8, "value"    # F

    .line 177
    move-object v0, p0

    move v1, p4

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    new-instance v9, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;

    move-object v3, v9

    move v4, p1

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;-><init>(IFFFF)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    .line 179
    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mVariesBy:I

    .line 181
    :cond_1a
    move v2, p2

    iput v2, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveShape:I

    .line 182
    move-object v3, p3

    iput-object v3, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveString:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setPoint(IILjava/lang/String;IFFFFLjava/lang/Object;)V
    .registers 20
    .param p1, "framePosition"    # I
    .param p2, "shape"    # I
    .param p3, "waveString"    # Ljava/lang/String;
    .param p4, "variesBy"    # I
    .param p5, "period"    # F
    .param p6, "offset"    # F
    .param p7, "phase"    # F
    .param p8, "value"    # F
    .param p9, "custom"    # Ljava/lang/Object;

    .line 151
    move-object v0, p0

    move v1, p4

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    new-instance v9, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;

    move-object v3, v9

    move v4, p1

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;-><init>(IFFFF)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    .line 153
    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mVariesBy:I

    .line 155
    :cond_1a
    move v2, p2

    iput v2, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveShape:I

    .line 156
    move-object/from16 v3, p9

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setCustom(Ljava/lang/Object;)V

    .line 157
    move-object v4, p3

    iput-object v4, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveString:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setProperty(Landroidx/constraintlayout/core/motion/MotionWidget;F)V
    .registers 3
    .param p1, "widget"    # Landroidx/constraintlayout/core/motion/MotionWidget;
    .param p2, "t"    # F

    .line 412
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .line 113
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mType:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setup(F)V
    .registers 15
    .param p1, "pathLength"    # F

    .line 186
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 187
    .local v0, "count":I
    if-nez v0, :cond_9

    .line 188
    return-void

    .line 190
    :cond_9
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    new-instance v2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$1;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$1;-><init>(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 196
    new-array v1, v0, [D

    .line 197
    .local v1, "time":[D
    const/4 v2, 0x3

    filled-new-array {v0, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 198
    .local v2, "values":[[D
    new-instance v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    iget v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveShape:I

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveString:Ljava/lang/String;

    iget v6, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mVariesBy:I

    invoke-direct {v3, v4, v5, v6, v0}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;-><init>(ILjava/lang/String;II)V

    iput-object v3, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    .line 199
    const/4 v3, 0x0

    .line 200
    .local v3, "i":I
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_7a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;

    .line 201
    .local v12, "wp":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;
    iget v5, v12, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPeriod:F

    float-to-double v7, v5

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v7, v9

    aput-wide v7, v1, v3

    .line 202
    aget-object v5, v2, v3

    iget v7, v12, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mValue:F

    float-to-double v7, v7

    aput-wide v7, v5, v6

    .line 203
    aget-object v5, v2, v3

    iget v6, v12, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mOffset:F

    float-to-double v6, v6

    const/4 v8, 0x1

    aput-wide v6, v5, v8

    .line 204
    aget-object v5, v2, v3

    iget v6, v12, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPhase:F

    float-to-double v6, v6

    const/4 v8, 0x2

    aput-wide v6, v5, v8

    .line 205
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    iget v7, v12, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPosition:I

    iget v8, v12, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPeriod:F

    iget v9, v12, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mOffset:F

    iget v10, v12, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPhase:F

    iget v11, v12, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mValue:F

    move v6, v3

    invoke-virtual/range {v5 .. v11}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->setPoint(IIFFFF)V

    .line 206
    nop

    .end local v12    # "wp":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;
    add-int/lit8 v3, v3, 0x1

    .line 207
    goto :goto_36

    .line 208
    :cond_7a
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    invoke-virtual {v4, p1}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->setup(F)V

    .line 209
    invoke-static {v6, v1, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 210
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 104
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mType:Ljava/lang/String;

    .line 105
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "df":Ljava/text/DecimalFormat;
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;

    .line 107
    .local v3, "wp":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mValue:F

    float-to-double v5, v5

    invoke-virtual {v1, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .end local v3    # "wp":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;
    goto :goto_f

    .line 109
    :cond_4c
    return-object v0
.end method

.method public variesByPath()Z
    .registers 3

    .line 83
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mVariesBy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

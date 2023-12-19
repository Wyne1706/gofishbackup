.class public final Lcom/google/android/material/color/utilities/TemperatureCache;
.super Ljava/lang/Object;
.source "TemperatureCache.java"


# instance fields
.field private final input:Lcom/google/android/material/color/utilities/Hct;

.field private precomputedComplement:Lcom/google/android/material/color/utilities/Hct;

.field private precomputedHctsByHue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/color/utilities/Hct;",
            ">;"
        }
    .end annotation
.end field

.field private precomputedHctsByTemp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/color/utilities/Hct;",
            ">;"
        }
    .end annotation
.end field

.field private precomputedTempsByHct:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/material/color/utilities/Hct;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lcom/google/android/material/color/utilities/Hct;)V
    .registers 2
    .param p1, "input"    # Lcom/google/android/material/color/utilities/Hct;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/android/material/color/utilities/TemperatureCache;->input:Lcom/google/android/material/color/utilities/Hct;

    .line 59
    return-void
.end method

.method private getColdest()Lcom/google/android/material/color/utilities/Hct;
    .registers 3

    .line 256
    invoke-direct {p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getHctsByTemp()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/utilities/Hct;

    return-object v0
.end method

.method private getHctsByHue()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/utilities/Hct;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/google/android/material/color/utilities/TemperatureCache;->precomputedHctsByHue:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 266
    return-object v0

    .line 268
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v0, "hcts":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/color/utilities/Hct;>;"
    const-wide/16 v1, 0x0

    .local v1, "hue":D
    :goto_c
    const-wide v3, 0x4076800000000000L    # 360.0

    cmpg-double v3, v1, v3

    if-gtz v3, :cond_2d

    .line 270
    iget-object v3, p0, Lcom/google/android/material/color/utilities/TemperatureCache;->input:Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {v3}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v5

    iget-object v3, p0, Lcom/google/android/material/color/utilities/TemperatureCache;->input:Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {v3}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v7

    move-wide v3, v1

    invoke-static/range {v3 .. v8}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v3

    .line 271
    .local v3, "colorAtHue":Lcom/google/android/material/color/utilities/Hct;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    .end local v3    # "colorAtHue":Lcom/google/android/material/color/utilities/Hct;
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    goto :goto_c

    .line 273
    .end local v1    # "hue":D
    :cond_2d
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/color/utilities/TemperatureCache;->precomputedHctsByHue:Ljava/util/List;

    .line 274
    return-object v1
.end method

.method private getHctsByTemp()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/utilities/Hct;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/google/android/material/color/utilities/TemperatureCache;->precomputedHctsByTemp:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 290
    return-object v0

    .line 293
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getHctsByHue()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 294
    .local v0, "hcts":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/color/utilities/Hct;>;"
    iget-object v1, p0, Lcom/google/android/material/color/utilities/TemperatureCache;->input:Lcom/google/android/material/color/utilities/Hct;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v1, Lcom/google/android/material/color/utilities/TemperatureCache$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/material/color/utilities/TemperatureCache$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/color/utilities/TemperatureCache;)V

    new-instance v2, Lcom/google/android/material/color/utilities/TemperatureCache$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/TemperatureCache$$ExternalSyntheticLambda1;-><init>()V

    .line 296
    invoke-static {v1, v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    .line 297
    .local v1, "temperaturesComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/google/android/material/color/utilities/Hct;>;"
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 298
    iput-object v0, p0, Lcom/google/android/material/color/utilities/TemperatureCache;->precomputedHctsByTemp:Ljava/util/List;

    .line 299
    return-object v0
.end method

.method private getTempsByHct()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/android/material/color/utilities/Hct;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/google/android/material/color/utilities/TemperatureCache;->precomputedTempsByHct:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 305
    return-object v0

    .line 308
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getHctsByHue()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 309
    .local v0, "allHcts":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/color/utilities/Hct;>;"
    iget-object v1, p0, Lcom/google/android/material/color/utilities/TemperatureCache;->input:Lcom/google/android/material/color/utilities/Hct;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 312
    .local v1, "temperaturesByHct":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/material/color/utilities/Hct;Ljava/lang/Double;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/color/utilities/Hct;

    .line 313
    .local v3, "hct":Lcom/google/android/material/color/utilities/Hct;
    invoke-static {v3}, Lcom/google/android/material/color/utilities/TemperatureCache;->rawTemperature(Lcom/google/android/material/color/utilities/Hct;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .end local v3    # "hct":Lcom/google/android/material/color/utilities/Hct;
    goto :goto_1c

    .line 316
    :cond_34
    iput-object v1, p0, Lcom/google/android/material/color/utilities/TemperatureCache;->precomputedTempsByHct:Ljava/util/Map;

    .line 317
    return-object v1
.end method

.method private getWarmest()Lcom/google/android/material/color/utilities/Hct;
    .registers 3

    .line 322
    invoke-direct {p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getHctsByTemp()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getHctsByTemp()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/utilities/Hct;

    return-object v0
.end method

.method private static isBetween(DDD)Z
    .registers 9
    .param p0, "angle"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D

    .line 327
    cmpg-double v0, p2, p4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_10

    .line 328
    cmpg-double v0, p2, p0

    if-gtz v0, :cond_f

    cmpg-double v0, p0, p4

    if-gtz v0, :cond_f

    move v1, v2

    :cond_f
    return v1

    .line 330
    :cond_10
    cmpg-double v0, p2, p0

    if-lez v0, :cond_18

    cmpg-double v0, p0, p4

    if-gtz v0, :cond_19

    :cond_18
    move v1, v2

    :cond_19
    return v1
.end method

.method public static rawTemperature(Lcom/google/android/material/color/utilities/Hct;)D
    .registers 11
    .param p0, "color"    # Lcom/google/android/material/color/utilities/Hct;

    .line 245
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->toInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/material/color/utilities/ColorUtils;->labFromArgb(I)[D

    move-result-object v0

    .line 246
    .local v0, "lab":[D
    const/4 v1, 0x2

    aget-wide v2, v0, v1

    const/4 v4, 0x1

    aget-wide v5, v0, v4

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesDouble(D)D

    move-result-wide v2

    .line 247
    .local v2, "hue":D
    aget-wide v4, v0, v4

    aget-wide v6, v0, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    .line 248
    .local v4, "chroma":D
    nop

    .line 250
    const-wide v6, 0x3ff11eb851eb851fL    # 1.07

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide v8, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    sub-double v8, v2, v8

    .line 251
    invoke-static {v8, v9}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesDouble(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, -0x4020000000000000L    # -0.5

    add-double/2addr v6, v8

    .line 248
    return-wide v6
.end method


# virtual methods
.method public getAnalogousColors()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/utilities/Hct;",
            ">;"
        }
    .end annotation

    .line 111
    const/4 v0, 0x5

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/color/utilities/TemperatureCache;->getAnalogousColors(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAnalogousColors(II)Ljava/util/List;
    .registers 33
    .param p1, "count"    # I
    .param p2, "divisions"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/utilities/Hct;",
            ">;"
        }
    .end annotation

    .line 127
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/google/android/material/color/utilities/TemperatureCache;->input:Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {v3}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    .line 128
    .local v3, "startHue":I
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getHctsByHue()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/color/utilities/Hct;

    .line 129
    .local v4, "startHct":Lcom/google/android/material/color/utilities/Hct;
    invoke-virtual {v0, v4}, Lcom/google/android/material/color/utilities/TemperatureCache;->getRelativeTemperature(Lcom/google/android/material/color/utilities/Hct;)D

    move-result-wide v5

    .line 131
    .local v5, "lastTemp":D
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v7, "allColors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/color/utilities/Hct;>;"
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    const-wide/16 v8, 0x0

    .line 135
    .local v8, "absoluteTotalTempDelta":D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2a
    const/16 v11, 0x168

    if-ge v10, v11, :cond_4d

    .line 136
    add-int v11, v3, v10

    invoke-static {v11}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesInt(I)I

    move-result v11

    .line 137
    .local v11, "hue":I
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getHctsByHue()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/material/color/utilities/Hct;

    .line 138
    .local v12, "hct":Lcom/google/android/material/color/utilities/Hct;
    invoke-virtual {v0, v12}, Lcom/google/android/material/color/utilities/TemperatureCache;->getRelativeTemperature(Lcom/google/android/material/color/utilities/Hct;)D

    move-result-wide v13

    .line 139
    .local v13, "temp":D
    sub-double v15, v13, v5

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    .line 140
    .local v15, "tempDelta":D
    move-wide v5, v13

    .line 141
    add-double/2addr v8, v15

    .line 135
    .end local v11    # "hue":I
    .end local v12    # "hct":Lcom/google/android/material/color/utilities/Hct;
    .end local v13    # "temp":D
    .end local v15    # "tempDelta":D
    add-int/lit8 v10, v10, 0x1

    goto :goto_2a

    .line 144
    .end local v10    # "i":I
    :cond_4d
    const/4 v10, 0x1

    .line 145
    .local v10, "hueAddend":I
    int-to-double v12, v2

    div-double v12, v8, v12

    .line 146
    .local v12, "tempStep":D
    const-wide/16 v14, 0x0

    .line 147
    .local v14, "totalTempDelta":D
    invoke-virtual {v0, v4}, Lcom/google/android/material/color/utilities/TemperatureCache;->getRelativeTemperature(Lcom/google/android/material/color/utilities/Hct;)D

    move-result-wide v5

    .line 148
    :goto_57
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    move-object/from16 v17, v4

    .end local v4    # "startHct":Lcom/google/android/material/color/utilities/Hct;
    .local v17, "startHct":Lcom/google/android/material/color/utilities/Hct;
    const/16 v18, 0x1

    if-ge v11, v2, :cond_d2

    .line 149
    add-int v11, v3, v10

    invoke-static {v11}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesInt(I)I

    move-result v11

    .line 150
    .restart local v11    # "hue":I
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getHctsByHue()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/color/utilities/Hct;

    .line 151
    .local v4, "hct":Lcom/google/android/material/color/utilities/Hct;
    invoke-virtual {v0, v4}, Lcom/google/android/material/color/utilities/TemperatureCache;->getRelativeTemperature(Lcom/google/android/material/color/utilities/Hct;)D

    move-result-wide v19

    .line 152
    .local v19, "temp":D
    sub-double v21, v19, v5

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    .line 153
    .local v21, "tempDelta":D
    add-double v14, v14, v21

    .line 155
    move/from16 v23, v3

    .end local v3    # "startHue":I
    .local v23, "startHue":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    move-wide/from16 v24, v5

    .end local v5    # "lastTemp":D
    .local v24, "lastTemp":D
    int-to-double v5, v3

    mul-double/2addr v5, v12

    .line 156
    .local v5, "desiredTotalTempDeltaForIndex":D
    cmpl-double v3, v14, v5

    if-ltz v3, :cond_8e

    move/from16 v3, v18

    goto :goto_8f

    :cond_8e
    const/4 v3, 0x0

    .line 157
    .local v3, "indexSatisfied":Z
    :goto_8f
    const/16 v26, 0x1

    .line 166
    .local v26, "indexAddend":I
    :goto_91
    if-eqz v3, :cond_b6

    move/from16 v27, v3

    .end local v3    # "indexSatisfied":Z
    .local v27, "indexSatisfied":Z
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v2, :cond_b3

    .line 167
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    add-int v3, v3, v26

    move-wide/from16 v28, v5

    .end local v5    # "desiredTotalTempDeltaForIndex":D
    .local v28, "desiredTotalTempDeltaForIndex":D
    int-to-double v5, v3

    mul-double/2addr v5, v12

    .line 169
    .end local v28    # "desiredTotalTempDeltaForIndex":D
    .restart local v5    # "desiredTotalTempDeltaForIndex":D
    cmpl-double v3, v14, v5

    if-ltz v3, :cond_af

    move/from16 v3, v18

    goto :goto_b0

    :cond_af
    const/4 v3, 0x0

    .line 170
    .end local v27    # "indexSatisfied":Z
    .restart local v3    # "indexSatisfied":Z
    :goto_b0
    add-int/lit8 v26, v26, 0x1

    goto :goto_91

    .line 166
    .end local v3    # "indexSatisfied":Z
    .restart local v27    # "indexSatisfied":Z
    :cond_b3
    move-wide/from16 v28, v5

    .end local v5    # "desiredTotalTempDeltaForIndex":D
    .restart local v28    # "desiredTotalTempDeltaForIndex":D
    goto :goto_ba

    .end local v27    # "indexSatisfied":Z
    .end local v28    # "desiredTotalTempDeltaForIndex":D
    .restart local v3    # "indexSatisfied":Z
    .restart local v5    # "desiredTotalTempDeltaForIndex":D
    :cond_b6
    move/from16 v27, v3

    move-wide/from16 v28, v5

    .line 172
    .end local v3    # "indexSatisfied":Z
    .end local v5    # "desiredTotalTempDeltaForIndex":D
    .restart local v27    # "indexSatisfied":Z
    .restart local v28    # "desiredTotalTempDeltaForIndex":D
    :goto_ba
    move-wide/from16 v5, v19

    .line 173
    .end local v24    # "lastTemp":D
    .local v5, "lastTemp":D
    add-int/lit8 v10, v10, 0x1

    .line 175
    const/16 v3, 0x168

    if-le v10, v3, :cond_cc

    .line 176
    :goto_c2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v2, :cond_d6

    .line 177
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c2

    .line 181
    .end local v4    # "hct":Lcom/google/android/material/color/utilities/Hct;
    .end local v11    # "hue":I
    .end local v19    # "temp":D
    .end local v21    # "tempDelta":D
    .end local v26    # "indexAddend":I
    .end local v27    # "indexSatisfied":Z
    .end local v28    # "desiredTotalTempDeltaForIndex":D
    :cond_cc
    move v11, v3

    move-object/from16 v4, v17

    move/from16 v3, v23

    goto :goto_57

    .line 148
    .end local v23    # "startHue":I
    .local v3, "startHue":I
    :cond_d2
    move/from16 v23, v3

    move-wide/from16 v24, v5

    .line 183
    .end local v3    # "startHue":I
    .restart local v23    # "startHue":I
    :cond_d6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v3, "answers":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/color/utilities/Hct;>;"
    iget-object v4, v0, Lcom/google/android/material/color/utilities/TemperatureCache;->input:Lcom/google/android/material/color/utilities/Hct;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    move-wide/from16 v19, v5

    .end local v5    # "lastTemp":D
    .local v19, "lastTemp":D
    int-to-double v4, v1

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    sub-double v4, v4, v21

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    div-double v4, v4, v21

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 187
    .local v4, "ccwCount":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_f1
    add-int/lit8 v6, v4, 0x1

    if-ge v5, v6, :cond_119

    .line 188
    rsub-int/lit8 v6, v5, 0x0

    .line 189
    .local v6, "index":I
    :goto_f7
    if-gez v6, :cond_ff

    .line 190
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v6, v11

    goto :goto_f7

    .line 192
    :cond_ff
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-lt v6, v11, :cond_10a

    .line 193
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    rem-int/2addr v6, v11

    .line 195
    :cond_10a
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/material/color/utilities/Hct;

    const/4 v0, 0x0

    invoke-interface {v3, v0, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 187
    .end local v6    # "index":I
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_f1

    .line 198
    .end local v5    # "i":I
    :cond_119
    sub-int v0, v1, v4

    add-int/lit8 v0, v0, -0x1

    .line 199
    .local v0, "cwCount":I
    const/4 v5, 0x1

    .restart local v5    # "i":I
    :goto_11e
    add-int/lit8 v6, v0, 0x1

    if-ge v5, v6, :cond_142

    .line 200
    move v6, v5

    .line 201
    .restart local v6    # "index":I
    :goto_123
    if-gez v6, :cond_12b

    .line 202
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v6, v11

    goto :goto_123

    .line 204
    :cond_12b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-lt v6, v11, :cond_136

    .line 205
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    rem-int/2addr v6, v11

    .line 207
    :cond_136
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/material/color/utilities/Hct;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    .end local v6    # "index":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_11e

    .line 210
    .end local v5    # "i":I
    :cond_142
    return-object v3
.end method

.method public getComplement()Lcom/google/android/material/color/utilities/Hct;
    .registers 36

    .line 68
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/material/color/utilities/TemperatureCache;->precomputedComplement:Lcom/google/android/material/color/utilities/Hct;

    if-eqz v1, :cond_7

    .line 69
    return-object v1

    .line 72
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getColdest()Lcom/google/android/material/color/utilities/Hct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v8

    .line 73
    .local v8, "coldestHue":D
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getTempsByHct()Ljava/util/Map;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getColdest()Lcom/google/android/material/color/utilities/Hct;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 75
    .local v10, "coldestTemp":D
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getWarmest()Lcom/google/android/material/color/utilities/Hct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v12

    .line 76
    .local v12, "warmestHue":D
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getTempsByHct()Ljava/util/Map;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getWarmest()Lcom/google/android/material/color/utilities/Hct;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 77
    .local v14, "warmestTemp":D
    sub-double v16, v14, v10

    .line 78
    .local v16, "range":D
    iget-object v1, v0, Lcom/google/android/material/color/utilities/TemperatureCache;->input:Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {v1}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v2

    move-wide v4, v8

    move-wide v6, v12

    invoke-static/range {v2 .. v7}, Lcom/google/android/material/color/utilities/TemperatureCache;->isBetween(DDD)Z

    move-result v1

    .line 79
    .local v1, "startHueIsColdestToWarmest":Z
    if-eqz v1, :cond_4d

    move-wide v2, v12

    goto :goto_4e

    :cond_4d
    move-wide v2, v8

    .line 80
    .local v2, "startHue":D
    :goto_4e
    if-eqz v1, :cond_53

    move-wide/from16 v22, v8

    goto :goto_55

    :cond_53
    move-wide/from16 v22, v12

    .line 81
    .local v22, "endHue":D
    :goto_55
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 82
    .local v4, "directionOfRotation":D
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 83
    .local v6, "smallestError":D
    move/from16 v24, v1

    .end local v1    # "startHueIsColdestToWarmest":Z
    .local v24, "startHueIsColdestToWarmest":Z
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getHctsByHue()Ljava/util/List;

    move-result-object v1

    move-wide/from16 v18, v6

    .end local v6    # "smallestError":D
    .local v18, "smallestError":D
    iget-object v6, v0, Lcom/google/android/material/color/utilities/TemperatureCache;->input:Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {v6}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/color/utilities/Hct;

    .line 85
    .local v1, "answer":Lcom/google/android/material/color/utilities/Hct;
    iget-object v6, v0, Lcom/google/android/material/color/utilities/TemperatureCache;->input:Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {v0, v6}, Lcom/google/android/material/color/utilities/TemperatureCache;->getRelativeTemperature(Lcom/google/android/material/color/utilities/Hct;)D

    move-result-wide v6

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    sub-double v6, v25, v6

    .line 88
    .local v6, "complementRelativeTemp":D
    const-wide/16 v20, 0x0

    move-wide/from16 v27, v18

    move-wide/from16 v29, v20

    .end local v18    # "smallestError":D
    .local v27, "smallestError":D
    .local v29, "hueAddend":D
    :goto_85
    const-wide v18, 0x4076800000000000L    # 360.0

    cmpg-double v18, v29, v18

    if-gtz v18, :cond_dd

    .line 89
    mul-double v18, v4, v29

    add-double v18, v2, v18

    invoke-static/range {v18 .. v19}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesDouble(D)D

    move-result-wide v31

    .line 90
    .local v31, "hue":D
    move-wide/from16 v18, v31

    move-wide/from16 v20, v2

    invoke-static/range {v18 .. v23}, Lcom/google/android/material/color/utilities/TemperatureCache;->isBetween(DDD)Z

    move-result v18

    if-nez v18, :cond_a5

    .line 91
    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    goto :goto_d6

    .line 93
    :cond_a5
    move-wide/from16 v18, v2

    .end local v2    # "startHue":D
    .local v18, "startHue":D
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getHctsByHue()Ljava/util/List;

    move-result-object v2

    move-wide/from16 v20, v4

    .end local v4    # "directionOfRotation":D
    .local v20, "directionOfRotation":D
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/utilities/Hct;

    .line 94
    .local v2, "possibleAnswer":Lcom/google/android/material/color/utilities/Hct;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getTempsByHct()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    sub-double/2addr v3, v10

    div-double v3, v3, v16

    .line 95
    .local v3, "relativeTemp":D
    sub-double v33, v6, v3

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->abs(D)D

    move-result-wide v33

    .line 96
    .local v33, "error":D
    cmpg-double v5, v33, v27

    if-gez v5, :cond_d6

    .line 97
    move-wide/from16 v27, v33

    .line 98
    move-object v1, v2

    .line 88
    .end local v2    # "possibleAnswer":Lcom/google/android/material/color/utilities/Hct;
    .end local v3    # "relativeTemp":D
    .end local v31    # "hue":D
    .end local v33    # "error":D
    :cond_d6
    :goto_d6
    add-double v29, v29, v25

    move-wide/from16 v2, v18

    move-wide/from16 v4, v20

    goto :goto_85

    .line 101
    .end local v18    # "startHue":D
    .end local v20    # "directionOfRotation":D
    .end local v29    # "hueAddend":D
    .local v2, "startHue":D
    .restart local v4    # "directionOfRotation":D
    :cond_dd
    iput-object v1, v0, Lcom/google/android/material/color/utilities/TemperatureCache;->precomputedComplement:Lcom/google/android/material/color/utilities/Hct;

    .line 102
    return-object v1
.end method

.method public getRelativeTemperature(Lcom/google/android/material/color/utilities/Hct;)D
    .registers 8
    .param p1, "hct"    # Lcom/google/android/material/color/utilities/Hct;

    .line 220
    invoke-direct {p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getTempsByHct()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getWarmest()Lcom/google/android/material/color/utilities/Hct;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getTempsByHct()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getColdest()Lcom/google/android/material/color/utilities/Hct;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 221
    .local v0, "range":D
    invoke-direct {p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getTempsByHct()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getTempsByHct()Ljava/util/Map;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getColdest()Lcom/google/android/material/color/utilities/Hct;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 224
    .local v2, "differenceFromColdest":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-nez v4, :cond_4f

    .line 225
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    return-wide v4

    .line 227
    :cond_4f
    div-double v4, v2, v0

    return-wide v4
.end method

.method synthetic lambda$getHctsByTemp$0$com-google-android-material-color-utilities-TemperatureCache(Lcom/google/android/material/color/utilities/Hct;)Ljava/lang/Double;
    .registers 3
    .param p1, "arg"    # Lcom/google/android/material/color/utilities/Hct;

    .line 296
    invoke-direct {p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getTempsByHct()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

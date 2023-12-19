.class public final Lcom/google/android/material/color/utilities/Score;
.super Ljava/lang/Object;
.source "Score.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/utilities/Score$ScoredComparator;,
        Lcom/google/android/material/color/utilities/Score$ScoredHCT;
    }
.end annotation


# static fields
.field private static final BLUE_500:I = -0xbd7a0c

.field private static final CUTOFF_CHROMA:D = 5.0

.field private static final CUTOFF_EXCITED_PROPORTION:D = 0.01

.field private static final MAX_COLOR_COUNT:I = 0x4

.field private static final TARGET_CHROMA:D = 48.0

.field private static final WEIGHT_CHROMA_ABOVE:D = 0.3

.field private static final WEIGHT_CHROMA_BELOW:D = 0.1

.field private static final WEIGHT_PROPORTION:D = 0.7


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static score(Ljava/util/Map;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 53
    .local p0, "colorsToPopulation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const v0, -0xbd7a0c

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {p0, v2, v0, v1}, Lcom/google/android/material/color/utilities/Score;->score(Ljava/util/Map;IIZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static score(Ljava/util/Map;I)Ljava/util/List;
    .registers 4
    .param p1, "maxColorCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 57
    .local p0, "colorsToPopulation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const v0, -0xbd7a0c

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/material/color/utilities/Score;->score(Ljava/util/Map;IIZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static score(Ljava/util/Map;II)Ljava/util/List;
    .registers 4
    .param p1, "maxColorCount"    # I
    .param p2, "fallbackColorArgb"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 62
    .local p0, "colorsToPopulation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/color/utilities/Score;->score(Ljava/util/Map;IIZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static score(Ljava/util/Map;IIZ)Ljava/util/List;
    .registers 26
    .param p1, "maxColorCount"    # I
    .param p2, "fallbackColorArgb"    # I
    .param p3, "filter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 87
    .local p0, "colorsToPopulation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v1, "colorsHct":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/color/utilities/Hct;>;"
    const/16 v2, 0x168

    new-array v3, v2, [I

    .line 89
    .local v3, "huePopulation":[I
    const-wide/16 v4, 0x0

    .line 90
    .local v4, "populationSum":D
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 91
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/material/color/utilities/Hct;->fromInt(I)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v8

    .line 92
    .local v8, "hct":Lcom/google/android/material/color/utilities/Hct;
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v8}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 94
    .local v9, "hue":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 95
    .local v10, "population":I
    aget v11, v3, v9

    add-int/2addr v11, v10

    aput v11, v3, v9

    .line 96
    int-to-double v11, v10

    add-double/2addr v4, v11

    .line 97
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v8    # "hct":Lcom/google/android/material/color/utilities/Hct;
    .end local v9    # "hue":I
    .end local v10    # "population":I
    goto :goto_15

    .line 100
    :cond_4d
    new-array v6, v2, [D

    .line 101
    .local v6, "hueExcitedProportions":[D
    const/4 v7, 0x0

    .local v7, "hue":I
    :goto_50
    if-ge v7, v2, :cond_6b

    .line 102
    aget v8, v3, v7

    int-to-double v8, v8

    div-double/2addr v8, v4

    .line 103
    .local v8, "proportion":D
    add-int/lit8 v10, v7, -0xe

    .local v10, "i":I
    :goto_58
    add-int/lit8 v11, v7, 0x10

    if-ge v10, v11, :cond_68

    .line 104
    invoke-static {v10}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesInt(I)I

    move-result v11

    .line 105
    .local v11, "neighborHue":I
    aget-wide v12, v6, v11

    add-double/2addr v12, v8

    aput-wide v12, v6, v11

    .line 103
    .end local v11    # "neighborHue":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_58

    .line 101
    .end local v8    # "proportion":D
    .end local v10    # "i":I
    :cond_68
    add-int/lit8 v7, v7, 0x1

    goto :goto_50

    .line 111
    .end local v7    # "hue":I
    :cond_6b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v2, "scoredHcts":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/color/utilities/Score$ScoredHCT;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_74
    :goto_74
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_de

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/color/utilities/Hct;

    .line 113
    .local v8, "hct":Lcom/google/android/material/color/utilities/Hct;
    invoke-virtual {v8}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v9, v9

    invoke-static {v9}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesInt(I)I

    move-result v9

    .line 114
    .restart local v9    # "hue":I
    aget-wide v10, v6, v9

    .line 115
    .local v10, "proportion":D
    if-eqz p3, :cond_a5

    invoke-virtual {v8}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v12

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    cmpg-double v12, v12, v14

    if-ltz v12, :cond_74

    const-wide v12, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v12, v10, v12

    if-gtz v12, :cond_a5

    .line 116
    goto :goto_74

    .line 119
    :cond_a5
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v10

    const-wide v14, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v12, v14

    .line 121
    .local v12, "proportionScore":D
    invoke-virtual {v8}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v14

    const-wide/high16 v16, 0x4048000000000000L    # 48.0

    cmpg-double v14, v14, v16

    if-gez v14, :cond_be

    const-wide v14, 0x3fb999999999999aL    # 0.1

    goto :goto_c3

    :cond_be
    const-wide v14, 0x3fd3333333333333L    # 0.3

    .line 122
    .local v14, "chromaWeight":D
    :goto_c3
    invoke-virtual {v8}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v18

    sub-double v18, v18, v16

    mul-double v18, v18, v14

    .line 123
    .local v18, "chromaScore":D
    move-object/from16 v16, v3

    move-wide/from16 v20, v4

    .end local v3    # "huePopulation":[I
    .end local v4    # "populationSum":D
    .local v16, "huePopulation":[I
    .local v20, "populationSum":D
    add-double v3, v12, v18

    .line 124
    .local v3, "score":D
    new-instance v5, Lcom/google/android/material/color/utilities/Score$ScoredHCT;

    invoke-direct {v5, v8, v3, v4}, Lcom/google/android/material/color/utilities/Score$ScoredHCT;-><init>(Lcom/google/android/material/color/utilities/Hct;D)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v3    # "score":D
    .end local v8    # "hct":Lcom/google/android/material/color/utilities/Hct;
    .end local v9    # "hue":I
    .end local v10    # "proportion":D
    .end local v12    # "proportionScore":D
    .end local v14    # "chromaWeight":D
    .end local v18    # "chromaScore":D
    move-object/from16 v3, v16

    move-wide/from16 v4, v20

    goto :goto_74

    .line 127
    .end local v16    # "huePopulation":[I
    .end local v20    # "populationSum":D
    .local v3, "huePopulation":[I
    .restart local v4    # "populationSum":D
    :cond_de
    move-object/from16 v16, v3

    move-wide/from16 v20, v4

    .end local v3    # "huePopulation":[I
    .end local v4    # "populationSum":D
    .restart local v16    # "huePopulation":[I
    .restart local v20    # "populationSum":D
    new-instance v3, Lcom/google/android/material/color/utilities/Score$ScoredComparator;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/Score$ScoredComparator;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 133
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v3, "chosenColors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/color/utilities/Hct;>;"
    const/16 v4, 0x5a

    .local v4, "differenceDegrees":I
    :goto_f1
    const/16 v5, 0xf

    if-lt v4, v5, :cond_146

    .line 135
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 136
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_fc
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/color/utilities/Score$ScoredHCT;

    .line 137
    .local v7, "entry":Lcom/google/android/material/color/utilities/Score$ScoredHCT;
    iget-object v8, v7, Lcom/google/android/material/color/utilities/Score$ScoredHCT;->hct:Lcom/google/android/material/color/utilities/Hct;

    .line 138
    .restart local v8    # "hct":Lcom/google/android/material/color/utilities/Hct;
    const/4 v9, 0x0

    .line 139
    .local v9, "hasDuplicateHue":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_10f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/material/color/utilities/Hct;

    .line 140
    .local v11, "chosenHct":Lcom/google/android/material/color/utilities/Hct;
    invoke-virtual {v8}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v12

    invoke-virtual {v11}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Lcom/google/android/material/color/utilities/MathUtils;->differenceDegrees(DD)D

    move-result-wide v12

    int-to-double v14, v4

    cmpg-double v12, v12, v14

    if-gez v12, :cond_12e

    .line 141
    const/4 v9, 0x1

    .line 142
    goto :goto_12f

    .line 144
    .end local v11    # "chosenHct":Lcom/google/android/material/color/utilities/Hct;
    :cond_12e
    goto :goto_10f

    .line 145
    :cond_12f
    :goto_12f
    if-nez v9, :cond_134

    .line 146
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_134
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lt v10, v0, :cond_13b

    .line 149
    goto :goto_13c

    .line 151
    .end local v7    # "entry":Lcom/google/android/material/color/utilities/Score$ScoredHCT;
    .end local v8    # "hct":Lcom/google/android/material/color/utilities/Hct;
    .end local v9    # "hasDuplicateHue":Z
    :cond_13b
    goto :goto_fc

    .line 152
    :cond_13c
    :goto_13c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v0, :cond_143

    .line 153
    goto :goto_146

    .line 134
    :cond_143
    add-int/lit8 v4, v4, -0x1

    goto :goto_f1

    .line 156
    .end local v4    # "differenceDegrees":I
    :cond_146
    :goto_146
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v4, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_159

    .line 158
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    return-object v4

    .line 161
    :cond_159
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_175

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/color/utilities/Hct;

    .line 162
    .local v7, "chosenHct":Lcom/google/android/material/color/utilities/Hct;
    invoke-virtual {v7}, Lcom/google/android/material/color/utilities/Hct;->toInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v7    # "chosenHct":Lcom/google/android/material/color/utilities/Hct;
    goto :goto_15d

    .line 164
    :cond_175
    return-object v4
.end method

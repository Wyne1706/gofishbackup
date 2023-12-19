.class public final Lcom/google/android/material/color/utilities/Contrast;
.super Ljava/lang/Object;
.source "Contrast.java"


# static fields
.field private static final CONTRAST_RATIO_EPSILON:D = 0.04

.field private static final LUMINANCE_GAMUT_MAP_TOLERANCE:D = 0.4

.field public static final RATIO_30:D = 3.0

.field public static final RATIO_45:D = 4.5

.field public static final RATIO_70:D = 7.0

.field public static final RATIO_MAX:D = 21.0

.field public static final RATIO_MIN:D = 1.0


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static darker(DD)D
    .registers 23
    .param p0, "tone"    # D
    .param p2, "ratio"    # D

    .line 175
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    if-ltz v2, :cond_52

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    cmpl-double v2, p0, v5

    if-lez v2, :cond_f

    goto :goto_52

    .line 179
    :cond_f
    invoke-static/range {p0 .. p1}, Lcom/google/android/material/color/utilities/ColorUtils;->yFromLstar(D)D

    move-result-wide v7

    .line 180
    .local v7, "lightY":D
    const-wide/high16 v9, 0x4014000000000000L    # 5.0

    add-double v11, v7, v9

    div-double v11, v11, p2

    sub-double/2addr v11, v9

    .line 181
    .local v11, "darkY":D
    cmpg-double v2, v11, v0

    if-ltz v2, :cond_51

    cmpl-double v2, v11, v5

    if-lez v2, :cond_23

    goto :goto_51

    .line 184
    :cond_23
    invoke-static {v7, v8, v11, v12}, Lcom/google/android/material/color/utilities/Contrast;->ratioOfYs(DD)D

    move-result-wide v9

    .line 185
    .local v9, "realContrast":D
    sub-double v13, v9, p2

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    .line 186
    .local v13, "delta":D
    cmpg-double v2, v9, p2

    if-gez v2, :cond_3b

    const-wide v15, 0x3fa47ae147ae147bL    # 0.04

    cmpl-double v2, v13, v15

    if-lez v2, :cond_3b

    .line 187
    return-wide v3

    .line 191
    :cond_3b
    invoke-static {v11, v12}, Lcom/google/android/material/color/utilities/ColorUtils;->lstarFromY(D)D

    move-result-wide v15

    const-wide v17, 0x3fd999999999999aL    # 0.4

    sub-double v15, v15, v17

    .line 193
    .local v15, "returnValue":D
    cmpg-double v0, v15, v0

    if-ltz v0, :cond_50

    cmpl-double v0, v15, v5

    if-lez v0, :cond_4f

    goto :goto_50

    .line 196
    :cond_4f
    return-wide v15

    .line 194
    :cond_50
    :goto_50
    return-wide v3

    .line 182
    .end local v9    # "realContrast":D
    .end local v13    # "delta":D
    .end local v15    # "returnValue":D
    :cond_51
    :goto_51
    return-wide v3

    .line 176
    .end local v7    # "lightY":D
    .end local v11    # "darkY":D
    :cond_52
    :goto_52
    return-wide v3
.end method

.method public static darkerUnsafe(DD)D
    .registers 8
    .param p0, "tone"    # D
    .param p2, "ratio"    # D

    .line 209
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/color/utilities/Contrast;->darker(DD)D

    move-result-wide v0

    .line 210
    .local v0, "darkerSafe":D
    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    return-wide v2
.end method

.method public static lighter(DD)D
    .registers 23
    .param p0, "tone"    # D
    .param p2, "ratio"    # D

    .line 130
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    if-ltz v2, :cond_52

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    cmpl-double v2, p0, v5

    if-lez v2, :cond_f

    goto :goto_52

    .line 134
    :cond_f
    invoke-static/range {p0 .. p1}, Lcom/google/android/material/color/utilities/ColorUtils;->yFromLstar(D)D

    move-result-wide v7

    .line 135
    .local v7, "darkY":D
    const-wide/high16 v9, 0x4014000000000000L    # 5.0

    add-double v11, v7, v9

    mul-double v11, v11, p2

    sub-double/2addr v11, v9

    .line 136
    .local v11, "lightY":D
    cmpg-double v2, v11, v0

    if-ltz v2, :cond_51

    cmpl-double v2, v11, v5

    if-lez v2, :cond_23

    goto :goto_51

    .line 139
    :cond_23
    invoke-static {v11, v12, v7, v8}, Lcom/google/android/material/color/utilities/Contrast;->ratioOfYs(DD)D

    move-result-wide v9

    .line 140
    .local v9, "realContrast":D
    sub-double v13, v9, p2

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    .line 141
    .local v13, "delta":D
    cmpg-double v2, v9, p2

    if-gez v2, :cond_3b

    const-wide v15, 0x3fa47ae147ae147bL    # 0.04

    cmpl-double v2, v13, v15

    if-lez v2, :cond_3b

    .line 142
    return-wide v3

    .line 145
    :cond_3b
    invoke-static {v11, v12}, Lcom/google/android/material/color/utilities/ColorUtils;->lstarFromY(D)D

    move-result-wide v15

    const-wide v17, 0x3fd999999999999aL    # 0.4

    add-double v15, v15, v17

    .line 147
    .local v15, "returnValue":D
    cmpg-double v0, v15, v0

    if-ltz v0, :cond_50

    cmpl-double v0, v15, v5

    if-lez v0, :cond_4f

    goto :goto_50

    .line 150
    :cond_4f
    return-wide v15

    .line 148
    :cond_50
    :goto_50
    return-wide v3

    .line 137
    .end local v9    # "realContrast":D
    .end local v13    # "delta":D
    .end local v15    # "returnValue":D
    :cond_51
    :goto_51
    return-wide v3

    .line 131
    .end local v7    # "darkY":D
    .end local v11    # "lightY":D
    :cond_52
    :goto_52
    return-wide v3
.end method

.method public static lighterUnsafe(DD)D
    .registers 8
    .param p0, "tone"    # D
    .param p2, "ratio"    # D

    .line 163
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/color/utilities/Contrast;->lighter(DD)D

    move-result-wide v0

    .line 164
    .local v0, "lighterSafe":D
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_d

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    goto :goto_e

    :cond_d
    move-wide v2, v0

    :goto_e
    return-wide v2
.end method

.method public static ratioOfTones(DD)D
    .registers 8
    .param p0, "t1"    # D
    .param p2, "t2"    # D

    .line 119
    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/ColorUtils;->yFromLstar(D)D

    move-result-wide v0

    invoke-static {p2, p3}, Lcom/google/android/material/color/utilities/ColorUtils;->yFromLstar(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/color/utilities/Contrast;->ratioOfYs(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ratioOfYs(DD)D
    .registers 12
    .param p0, "y1"    # D
    .param p2, "y2"    # D

    .line 98
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 99
    .local v0, "lighter":D
    cmpl-double v2, v0, p2

    if-nez v2, :cond_a

    move-wide v2, p0

    goto :goto_b

    :cond_a
    move-wide v2, p2

    .line 100
    .local v2, "darker":D
    :goto_b
    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    add-double v6, v0, v4

    add-double/2addr v4, v2

    div-double/2addr v6, v4

    return-wide v6
.end method

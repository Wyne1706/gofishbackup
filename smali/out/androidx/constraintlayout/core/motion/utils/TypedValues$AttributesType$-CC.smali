.class public final synthetic Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType$-CC;
.super Ljava/lang/Object;
.source "TypedValues.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType;->NAME:Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_134

    :cond_8
    goto/16 :goto_f3

    :sswitch_a
    const-string/jumbo v0, "visibility"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto/16 :goto_f4

    :sswitch_16
    const-string v0, "pivotTarget"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x13

    goto/16 :goto_f4

    :sswitch_22
    const-string v0, "pathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xf

    goto/16 :goto_f4

    :sswitch_2e
    const-string v0, "curveFit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto/16 :goto_f4

    :sswitch_39
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x11

    goto/16 :goto_f4

    :sswitch_45
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto/16 :goto_f4

    :sswitch_50
    const-string v0, "elevation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    goto/16 :goto_f4

    :sswitch_5b
    const-string/jumbo v0, "target"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x12

    goto/16 :goto_f4

    :sswitch_68
    const-string/jumbo v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb

    goto/16 :goto_f4

    :sswitch_75
    const-string/jumbo v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    goto/16 :goto_f4

    :sswitch_82
    const-string v0, "pivotY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xd

    goto/16 :goto_f4

    :sswitch_8e
    const-string v0, "pivotX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xc

    goto :goto_f4

    :sswitch_99
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xe

    goto :goto_f4

    :sswitch_a4
    const-string/jumbo v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    goto :goto_f4

    :sswitch_af
    const-string/jumbo v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_f4

    :sswitch_ba
    const-string/jumbo v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_f4

    :sswitch_c5
    const-string/jumbo v0, "rotationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    goto :goto_f4

    :sswitch_d1
    const-string/jumbo v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    goto :goto_f4

    :sswitch_dd
    const-string/jumbo v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    goto :goto_f4

    :sswitch_e8
    const-string v0, "easing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x10

    goto :goto_f4

    :goto_f3
    move v0, v1

    :goto_f4
    packed-switch v0, :pswitch_data_186

    .line 189
    return v1

    .line 187
    :pswitch_f8
    const/16 v0, 0x13e

    return v0

    .line 185
    :pswitch_fb
    const/16 v0, 0x65

    return v0

    .line 183
    :pswitch_fe
    const/16 v0, 0x64

    return v0

    .line 181
    :pswitch_101
    const/16 v0, 0x13d

    return v0

    .line 179
    :pswitch_104
    const/16 v0, 0x13c

    return v0

    .line 177
    :pswitch_107
    const/16 v0, 0x13b

    return v0

    .line 175
    :pswitch_10a
    const/16 v0, 0x13a

    return v0

    .line 173
    :pswitch_10d
    const/16 v0, 0x139

    return v0

    .line 171
    :pswitch_110
    const/16 v0, 0x138

    return v0

    .line 169
    :pswitch_113
    const/16 v0, 0x137

    return v0

    .line 167
    :pswitch_116
    const/16 v0, 0x136

    return v0

    .line 165
    :pswitch_119
    const/16 v0, 0x135

    return v0

    .line 163
    :pswitch_11c
    const/16 v0, 0x134

    return v0

    .line 161
    :pswitch_11f
    const/16 v0, 0x133

    return v0

    .line 159
    :pswitch_122
    const/16 v0, 0x132

    return v0

    .line 157
    :pswitch_125
    const/16 v0, 0x131

    return v0

    .line 155
    :pswitch_128
    const/16 v0, 0x130

    return v0

    .line 153
    :pswitch_12b
    const/16 v0, 0x12f

    return v0

    .line 151
    :pswitch_12e
    const/16 v0, 0x12e

    return v0

    .line 149
    :pswitch_131
    const/16 v0, 0x12d

    return v0

    :sswitch_data_134
    .sparse-switch
        -0x4e19c2d5 -> :sswitch_e8
        -0x4a771f66 -> :sswitch_dd
        -0x4a771f65 -> :sswitch_d1
        -0x4a771f64 -> :sswitch_c5
        -0x490b9c39 -> :sswitch_ba
        -0x490b9c38 -> :sswitch_af
        -0x490b9c37 -> :sswitch_a4
        -0x3bab3dd3 -> :sswitch_99
        -0x3ae243aa -> :sswitch_8e
        -0x3ae243a9 -> :sswitch_82
        -0x3621dfb2 -> :sswitch_75
        -0x3621dfb1 -> :sswitch_68
        -0x34818e6f -> :sswitch_5b
        -0x42d1a3 -> :sswitch_50
        0x589b15e -> :sswitch_45
        0x5d2a96d -> :sswitch_39
        0x2283b8a2 -> :sswitch_2e
        0x2fdfbde0 -> :sswitch_22
        0x45917073 -> :sswitch_16
        0x73b66312 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_186
    .packed-switch 0x0
        :pswitch_131
        :pswitch_12e
        :pswitch_12b
        :pswitch_128
        :pswitch_125
        :pswitch_122
        :pswitch_11f
        :pswitch_11c
        :pswitch_119
        :pswitch_116
        :pswitch_113
        :pswitch_110
        :pswitch_10d
        :pswitch_10a
        :pswitch_107
        :pswitch_104
        :pswitch_101
        :pswitch_fe
        :pswitch_fb
        :pswitch_f8
    .end packed-switch
.end method

.method public static getType(I)I
    .registers 2
    .param p0, "name"    # I

    .line 193
    sparse-switch p0, :sswitch_data_c

    .line 218
    const/4 v0, -0x1

    return v0

    .line 212
    :sswitch_5
    const/4 v0, 0x4

    return v0

    .line 216
    :sswitch_7
    const/16 v0, 0x8

    return v0

    .line 197
    :sswitch_a
    const/4 v0, 0x2

    return v0

    :sswitch_data_c
    .sparse-switch
        0x64 -> :sswitch_a
        0x65 -> :sswitch_7
        0x12d -> :sswitch_a
        0x12e -> :sswitch_a
        0x12f -> :sswitch_5
        0x130 -> :sswitch_5
        0x131 -> :sswitch_5
        0x132 -> :sswitch_5
        0x133 -> :sswitch_5
        0x134 -> :sswitch_5
        0x135 -> :sswitch_5
        0x136 -> :sswitch_5
        0x137 -> :sswitch_5
        0x138 -> :sswitch_5
        0x139 -> :sswitch_5
        0x13a -> :sswitch_5
        0x13b -> :sswitch_5
        0x13c -> :sswitch_5
        0x13d -> :sswitch_7
        0x13e -> :sswitch_7
    .end sparse-switch
.end method

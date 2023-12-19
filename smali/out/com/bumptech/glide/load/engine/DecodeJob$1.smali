.class synthetic Lcom/bumptech/glide/load/engine/DecodeJob$1;
.super Ljava/lang/Object;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$bumptech$glide$load$EncodeStrategy:[I

.field static final synthetic $SwitchMap$com$bumptech$glide$load$engine$DecodeJob$RunReason:[I

.field static final synthetic $SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 603
    invoke-static {}, Lcom/bumptech/glide/load/EncodeStrategy;->values()[Lcom/bumptech/glide/load/EncodeStrategy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$1;->$SwitchMap$com$bumptech$glide$load$EncodeStrategy:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/bumptech/glide/load/EncodeStrategy;->SOURCE:Lcom/bumptech/glide/load/EncodeStrategy;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/EncodeStrategy;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    const/4 v0, 0x2

    :try_start_15
    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$1;->$SwitchMap$com$bumptech$glide$load$EncodeStrategy:[I

    sget-object v3, Lcom/bumptech/glide/load/EncodeStrategy;->TRANSFORMED:Lcom/bumptech/glide/load/EncodeStrategy;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/EncodeStrategy;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v2

    .line 291
    :goto_21
    invoke-static {}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->values()[Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$1;->$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage:[I

    :try_start_2a
    sget-object v3, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_32} :catch_33

    goto :goto_34

    :catch_33
    move-exception v2

    :goto_34
    :try_start_34
    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$1;->$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage:[I

    sget-object v3, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3f

    goto :goto_40

    :catch_3f
    move-exception v2

    :goto_40
    const/4 v2, 0x3

    :try_start_41
    sget-object v3, Lcom/bumptech/glide/load/engine/DecodeJob$1;->$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage:[I

    sget-object v4, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->SOURCE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_4b} :catch_4c

    goto :goto_4d

    :catch_4c
    move-exception v3

    :goto_4d
    :try_start_4d
    sget-object v3, Lcom/bumptech/glide/load/engine/DecodeJob$1;->$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage:[I

    sget-object v4, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_58} :catch_59

    goto :goto_5a

    :catch_59
    move-exception v3

    :goto_5a
    :try_start_5a
    sget-object v3, Lcom/bumptech/glide/load/engine/DecodeJob$1;->$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage:[I

    sget-object v4, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->INITIALIZE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_65} :catch_66

    goto :goto_67

    :catch_66
    move-exception v3

    .line 273
    :goto_67
    invoke-static {}, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->values()[Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/bumptech/glide/load/engine/DecodeJob$1;->$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$RunReason:[I

    :try_start_70
    sget-object v4, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->INITIALIZE:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_78} :catch_79

    goto :goto_7a

    :catch_79
    move-exception v1

    :goto_7a
    :try_start_7a
    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$1;->$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$RunReason:[I

    sget-object v3, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_84} :catch_85

    goto :goto_86

    :catch_85
    move-exception v0

    :goto_86
    :try_start_86
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$1;->$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$RunReason:[I

    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->DECODE_DATA:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_90} :catch_91

    goto :goto_92

    :catch_91
    move-exception v0

    :goto_92
    return-void
.end method

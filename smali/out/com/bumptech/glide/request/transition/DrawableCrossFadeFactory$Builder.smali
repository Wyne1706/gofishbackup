.class public Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_DURATION_MS:I = 0x12c


# instance fields
.field private final durationMillis:I

.field private isCrossFadeEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 50
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;-><init>(I)V

    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "durationMillis"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->durationMillis:I

    .line 58
    return-void
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;
    .registers 4

    .line 78
    new-instance v0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;

    iget v1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->durationMillis:I

    iget-boolean v2, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->isCrossFadeEnabled:Z

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;-><init>(IZ)V

    return-object v0
.end method

.method public setCrossFadeEnabled(Z)Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;
    .registers 2
    .param p1, "isCrossFadeEnabled"    # Z

    .line 73
    iput-boolean p1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->isCrossFadeEnabled:Z

    .line 74
    return-object p0
.end method

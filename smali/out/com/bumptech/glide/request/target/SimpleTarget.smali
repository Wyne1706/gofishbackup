.class public abstract Lcom/bumptech/glide/request/target/SimpleTarget;
.super Lcom/bumptech/glide/request/target/BaseTarget;
.source "SimpleTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/target/BaseTarget<",
        "TZ;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 79
    .local p0, "this":Lcom/bumptech/glide/request/target/SimpleTarget;, "Lcom/bumptech/glide/request/target/SimpleTarget<TZ;>;"
    const/high16 v0, -0x80000000

    invoke-direct {p0, v0, v0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    .line 80
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 91
    .local p0, "this":Lcom/bumptech/glide/request/target/SimpleTarget;, "Lcom/bumptech/glide/request/target/SimpleTarget<TZ;>;"
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/BaseTarget;-><init>()V

    .line 92
    iput p1, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->width:I

    .line 93
    iput p2, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->height:I

    .line 94
    return-void
.end method


# virtual methods
.method public final getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 5
    .param p1, "cb"    # Lcom/bumptech/glide/request/target/SizeReadyCallback;

    .line 103
    .local p0, "this":Lcom/bumptech/glide/request/target/SimpleTarget;, "Lcom/bumptech/glide/request/target/SimpleTarget<TZ;>;"
    iget v0, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->width:I

    iget v1, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->height:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 113
    iget v0, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->width:I

    iget v1, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->height:I

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    .line 114
    return-void

    .line 104
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", either provide dimensions in the constructor or call override()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 2
    .param p1, "cb"    # Lcom/bumptech/glide/request/target/SizeReadyCallback;

    .line 119
    .local p0, "this":Lcom/bumptech/glide/request/target/SimpleTarget;, "Lcom/bumptech/glide/request/target/SimpleTarget<TZ;>;"
    return-void
.end method

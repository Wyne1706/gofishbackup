.class public final Lcom/bumptech/glide/load/engine/bitmap_recycle/ByteArrayAdapter;
.super Ljava/lang/Object;
.source "ByteArrayAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface<",
        "[B>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ByteArrayPool"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getArrayLength(Ljava/lang/Object;)I
    .registers 2

    .line 4
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ByteArrayAdapter;->getArrayLength([B)I

    move-result p1

    return p1
.end method

.method public getArrayLength([B)I
    .registers 3
    .param p1, "array"    # [B

    .line 15
    array-length v0, p1

    return v0
.end method

.method public getElementSizeInBytes()I
    .registers 2

    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 10
    const-string v0, "ByteArrayPool"

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .registers 2

    .line 4
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ByteArrayAdapter;->newArray(I)[B

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[B
    .registers 3
    .param p1, "length"    # I

    .line 20
    new-array v0, p1, [B

    return-object v0
.end method

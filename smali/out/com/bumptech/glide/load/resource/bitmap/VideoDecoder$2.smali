.class Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$2;
.super Ljava/lang/Object;
.source "VideoDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/Option$CacheKeyUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Option$CacheKeyUpdater<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$2;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public update([BLjava/lang/Integer;Ljava/security/MessageDigest;)V
    .registers 7
    .param p1, "keyBytes"    # [B
    .param p2, "value"    # Ljava/lang/Integer;
    .param p3, "messageDigest"    # Ljava/security/MessageDigest;

    .line 106
    if-nez p2, :cond_3

    .line 107
    return-void

    .line 109
    :cond_3
    invoke-virtual {p3, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 110
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$2;->buffer:Ljava/nio/ByteBuffer;

    monitor-enter v0

    .line 111
    :try_start_9
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$2;->buffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 112
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$2;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 113
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public bridge synthetic update([BLjava/lang/Object;Ljava/security/MessageDigest;)V
    .registers 4

    .line 97
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$2;->update([BLjava/lang/Integer;Ljava/security/MessageDigest;)V

    return-void
.end method

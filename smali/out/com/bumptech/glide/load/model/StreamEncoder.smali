.class public Lcom/bumptech/glide/load/model/StreamEncoder;
.super Ljava/lang/Object;
.source "StreamEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/Encoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Encoder<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamEncoder"


# instance fields
.field private final byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .registers 2
    .param p1, "byteArrayPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/bumptech/glide/load/model/StreamEncoder;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 23
    return-void
.end method


# virtual methods
.method public encode(Ljava/io/InputStream;Ljava/io/File;Lcom/bumptech/glide/load/Options;)Z
    .registers 11
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "options"    # Lcom/bumptech/glide/load/Options;

    .line 27
    const-string v0, "StreamEncoder"

    iget-object v1, p0, Lcom/bumptech/glide/load/model/StreamEncoder;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    const/high16 v2, 0x10000

    const-class v3, [B

    invoke-interface {v1, v2, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->get(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 28
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 29
    .local v2, "success":Z
    const/4 v3, 0x0

    .line 31
    .local v3, "os":Ljava/io/OutputStream;
    :try_start_10
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 33
    :goto_16
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "read":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_23

    .line 34
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_16

    .line 36
    :cond_23
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_26} :catch_30
    .catchall {:try_start_10 .. :try_end_26} :catchall_2e

    .line 37
    const/4 v2, 0x1

    .line 43
    .end local v5    # "read":I
    nop

    .line 45
    :try_start_28
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_42

    .line 46
    :catch_2c
    move-exception v0

    goto :goto_44

    .line 43
    :catchall_2e
    move-exception v0

    goto :goto_4b

    .line 38
    :catch_30
    move-exception v4

    .line 39
    .local v4, "e":Ljava/io/IOException;
    const/4 v5, 0x3

    :try_start_32
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 40
    const-string v5, "Failed to encode data onto the OutputStream"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_2e

    .line 43
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3d
    if-eqz v3, :cond_44

    .line 45
    :try_start_3f
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    .line 48
    :goto_42
    goto :goto_44

    .line 46
    :catch_43
    move-exception v0

    .line 50
    :cond_44
    :goto_44
    iget-object v0, p0, Lcom/bumptech/glide/load/model/StreamEncoder;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    .line 51
    nop

    .line 52
    return v2

    .line 43
    :goto_4b
    if-eqz v3, :cond_52

    .line 45
    :try_start_4d
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    .line 48
    goto :goto_52

    .line 46
    :catch_51
    move-exception v4

    .line 50
    :cond_52
    :goto_52
    iget-object v4, p0, Lcom/bumptech/glide/load/model/StreamEncoder;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v4, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    .line 51
    throw v0
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/Options;)Z
    .registers 4

    .line 17
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/model/StreamEncoder;->encode(Ljava/io/InputStream;Ljava/io/File;Lcom/bumptech/glide/load/Options;)Z

    move-result p1

    return p1
.end method

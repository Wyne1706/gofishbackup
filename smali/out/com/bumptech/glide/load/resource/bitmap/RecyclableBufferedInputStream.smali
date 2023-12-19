.class public Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
.super Ljava/io/FilterInputStream;
.source "RecyclableBufferedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;
    }
.end annotation


# instance fields
.field private volatile buf:[B

.field private final byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private count:I

.field private marklimit:I

.field private markpos:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "byteArrayPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 62
    const/high16 v0, 0x10000

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;I)V

    .line 63
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;I)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "byteArrayPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    .param p3, "bufferSize"    # I

    .line 68
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    .line 69
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 70
    const-class v0, [B

    invoke-interface {p2, p3, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->get(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 71
    return-void
.end method

.method private fillbuf(Ljava/io/InputStream;[B)I
    .registers 8
    .param p1, "localIn"    # Ljava/io/InputStream;
    .param p2, "localBuf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_58

    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    if-lt v3, v4, :cond_e

    goto :goto_58

    .line 154
    :cond_e
    if-nez v0, :cond_37

    array-length v2, p2

    if-le v4, v2, :cond_37

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    array-length v3, p2

    if-ne v2, v3, :cond_37

    .line 156
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x2

    .line 157
    .local v0, "newLength":I
    if-le v0, v4, :cond_1f

    .line 158
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    .line 160
    :cond_1f
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    const-class v3, [B

    invoke-interface {v2, v0, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->get(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 161
    .local v2, "newbuf":[B
    array-length v3, p2

    invoke-static {p2, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    move-object v3, p2

    .line 165
    .local v3, "oldbuf":[B
    iput-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    move-object p2, v2

    .line 166
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v4, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    .line 167
    .end local v0    # "newLength":I
    .end local v2    # "newbuf":[B
    .end local v3    # "oldbuf":[B
    :cond_36
    goto :goto_3e

    :cond_37
    if-lez v0, :cond_36

    .line 168
    array-length v2, p2

    sub-int/2addr v2, v0

    invoke-static {p2, v0, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    :goto_3e
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 172
    iput v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    iput v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    .line 173
    array-length v1, p2

    sub-int/2addr v1, v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 174
    .local v0, "bytesread":I
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    if-gtz v0, :cond_54

    goto :goto_55

    :cond_54
    add-int/2addr v1, v0

    :goto_55
    iput v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    .line 175
    return v0

    .line 137
    .end local v0    # "bytesread":I
    :cond_58
    :goto_58
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 138
    .local v0, "result":I
    if-lez v0, :cond_64

    .line 139
    iput v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    .line 140
    iput v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 141
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    .line 143
    :cond_64
    return v0
.end method

.method private static streamClosed()Ljava/io/IOException;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 84
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    .line 85
    .local v0, "localIn":Ljava/io/InputStream;
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eqz v1, :cond_15

    if-eqz v0, :cond_15

    .line 88
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1a

    add-int/2addr v1, v2

    monitor-exit p0

    return v1

    .line 86
    .end local p0    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    :cond_15
    :try_start_15
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1a

    .line 83
    .end local v0    # "localIn":Ljava/io/InputStream;
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 124
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    invoke-interface {v0, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    .line 125
    iput-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 127
    :cond_e
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    .line 128
    .local v0, "localIn":Ljava/io/InputStream;
    iput-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    .line 129
    if-eqz v0, :cond_17

    .line 130
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 132
    :cond_17
    return-void
.end method

.method public declared-synchronized fixMarkLimit()V
    .registers 2

    monitor-enter p0

    .line 105
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    array-length v0, v0

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 106
    monitor-exit p0

    return-void

    .line 104
    .end local p0    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mark(I)V
    .registers 3
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 193
    :try_start_1
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    .line 194
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 195
    monitor-exit p0

    return-void

    .line 192
    .end local p0    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    .end local p1    # "readlimit":I
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .registers 2

    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 223
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 224
    .local v0, "localBuf":[B
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    .line 225
    .local v1, "localIn":Ljava/io/InputStream;
    if-eqz v0, :cond_3a

    if-eqz v1, :cond_3a

    .line 230
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    const/4 v4, -0x1

    if-lt v2, v3, :cond_18

    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v2
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_3f

    if-ne v2, v4, :cond_18

    .line 232
    monitor-exit p0

    return v4

    .line 235
    .end local p0    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    :cond_18
    :try_start_18
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eq v0, v2, :cond_27

    .line 236
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    move-object v0, v2

    .line 237
    if-eqz v0, :cond_22

    goto :goto_27

    .line 238
    :cond_22
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 243
    :cond_27
    :goto_27
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_38

    .line 244
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    aget-byte v2, v0, v3
    :try_end_34
    .catchall {:try_start_18 .. :try_end_34} :catchall_3f

    and-int/lit16 v2, v2, 0xff

    monitor-exit p0

    return v2

    .line 246
    :cond_38
    monitor-exit p0

    return v4

    .line 226
    :cond_3a
    :try_start_3a
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_3f

    .line 222
    .end local v0    # "localBuf":[B
    .end local v1    # "localIn":Ljava/io/InputStream;
    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .registers 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 267
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_92

    .line 268
    .local v0, "localBuf":[B
    if-eqz v0, :cond_8d

    .line 272
    if-nez p3, :cond_a

    .line 273
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 275
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    .line 276
    .local v1, "localIn":Ljava/io/InputStream;
    if-eqz v1, :cond_88

    .line 281
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    if-ge v2, v3, :cond_32

    .line 283
    sub-int v4, v3, v2

    if-lt v4, p3, :cond_1a

    move v3, p3

    goto :goto_1b

    :cond_1a
    sub-int/2addr v3, v2

    .line 284
    .local v3, "copylength":I
    :goto_1b
    invoke-static {v0, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 286
    if-eq v3, p3, :cond_30

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_92

    if-nez v2, :cond_2c

    goto :goto_30

    .line 289
    :cond_2c
    add-int/2addr p2, v3

    .line 290
    sub-int v2, p3, v3

    .line 291
    .end local v3    # "copylength":I
    .local v2, "required":I
    goto :goto_33

    .line 287
    .end local v2    # "required":I
    .end local p0    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    .restart local v3    # "copylength":I
    :cond_30
    :goto_30
    monitor-exit p0

    return v3

    .line 292
    .end local v3    # "copylength":I
    :cond_32
    move v2, p3

    .line 299
    .restart local v2    # "required":I
    :goto_33
    :try_start_33
    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_48

    array-length v3, v0

    if-lt v2, v3, :cond_48

    .line 300
    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_92

    .line 301
    .local v3, "read":I
    if-ne v3, v4, :cond_77

    .line 302
    if-ne v2, p3, :cond_44

    goto :goto_46

    :cond_44
    sub-int v4, p3, v2

    :goto_46
    monitor-exit p0

    return v4

    .line 305
    .end local v3    # "read":I
    :cond_48
    :try_start_48
    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v3
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_92

    if-ne v3, v4, :cond_55

    .line 306
    if-ne v2, p3, :cond_51

    goto :goto_53

    :cond_51
    sub-int v4, p3, v2

    :goto_53
    monitor-exit p0

    return v4

    .line 309
    :cond_55
    :try_start_55
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eq v0, v3, :cond_64

    .line 310
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    move-object v0, v3

    .line 311
    if-eqz v0, :cond_5f

    goto :goto_64

    .line 312
    :cond_5f
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 316
    :cond_64
    :goto_64
    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int v5, v3, v4

    if-lt v5, v2, :cond_6e

    move v3, v2

    goto :goto_6f

    :cond_6e
    sub-int/2addr v3, v4

    .line 317
    .restart local v3    # "read":I
    :goto_6f
    invoke-static {v0, v4, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_77
    .catchall {:try_start_55 .. :try_end_77} :catchall_92

    .line 320
    :cond_77
    sub-int/2addr v2, v3

    .line 321
    if-nez v2, :cond_7c

    .line 322
    monitor-exit p0

    return p3

    .line 324
    :cond_7c
    :try_start_7c
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v4
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_92

    if-nez v4, :cond_86

    .line 325
    sub-int v4, p3, v2

    monitor-exit p0

    return v4

    .line 327
    :cond_86
    add-int/2addr p2, v3

    .line 328
    .end local v3    # "read":I
    goto :goto_33

    .line 277
    .end local v2    # "required":I
    :cond_88
    :try_start_88
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 269
    .end local v1    # "localIn":Ljava/io/InputStream;
    :cond_8d
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_92
    .catchall {:try_start_88 .. :try_end_92} :catchall_92

    .line 266
    .end local v0    # "localBuf":[B
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "byteCount":I
    :catchall_92
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release()V
    .registers 3

    monitor-enter p0

    .line 109
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eqz v0, :cond_f

    .line 110
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 113
    .end local p0    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    :cond_f
    monitor-exit p0

    return-void

    .line 108
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 340
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eqz v0, :cond_35

    .line 343
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_e

    .line 347
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_3d

    .line 348
    monitor-exit p0

    return-void

    .line 344
    .end local p0    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    :cond_e
    :try_start_e
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mark has been invalidated, pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " markLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_35
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3d
    .catchall {:try_start_e .. :try_end_3d} :catchall_3d

    .line 339
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized skip(J)J
    .registers 13
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 361
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x0

    if-gez v0, :cond_b

    .line 362
    monitor-exit p0

    return-wide v1

    .line 365
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 366
    .local v0, "localBuf":[B
    if-eqz v0, :cond_70

    .line 369
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    .line 370
    .local v3, "localIn":Ljava/io/InputStream;
    if-eqz v3, :cond_6b

    .line 374
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v5, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int v6, v4, v5

    int-to-long v6, v6

    cmp-long v6, v6, p1

    if-ltz v6, :cond_25

    .line 375
    int-to-long v1, v5

    add-long/2addr v1, p1

    long-to-int v1, v1

    iput v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_75

    .line 376
    monitor-exit p0

    return-wide p1

    .line 379
    .end local p0    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    :cond_25
    int-to-long v6, v4

    int-to-long v8, v5

    sub-long/2addr v6, v8

    .line 380
    .local v6, "read":J
    :try_start_28
    iput v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 382
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5b

    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    int-to-long v8, v4

    cmp-long v4, p1, v8

    if-gtz v4, :cond_5b

    .line 383
    invoke-direct {p0, v3, v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v1
    :try_end_3a
    .catchall {:try_start_28 .. :try_end_3a} :catchall_75

    if-ne v1, v5, :cond_3e

    .line 384
    monitor-exit p0

    return-wide v6

    .line 386
    :cond_3e
    :try_start_3e
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int v4, v1, v2

    int-to-long v4, v4

    sub-long v8, p1, v6

    cmp-long v4, v4, v8

    if-ltz v4, :cond_53

    .line 388
    int-to-long v1, v2

    add-long/2addr v1, p1

    sub-long/2addr v1, v6

    long-to-int v1, v1

    iput v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_51
    .catchall {:try_start_3e .. :try_end_51} :catchall_75

    .line 389
    monitor-exit p0

    return-wide p1

    .line 392
    :cond_53
    int-to-long v4, v1

    add-long/2addr v4, v6

    int-to-long v8, v2

    sub-long/2addr v4, v8

    .line 393
    .end local v6    # "read":J
    .local v4, "read":J
    :try_start_57
    iput v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_59
    .catchall {:try_start_57 .. :try_end_59} :catchall_75

    .line 394
    monitor-exit p0

    return-wide v4

    .line 399
    .end local v4    # "read":J
    .restart local v6    # "read":J
    :cond_5b
    sub-long v8, p1, v6

    :try_start_5d
    invoke-virtual {v3, v8, v9}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v8

    .line 400
    .local v8, "skipped":J
    cmp-long v1, v8, v1

    if-lez v1, :cond_67

    .line 401
    iput v5, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I
    :try_end_67
    .catchall {:try_start_5d .. :try_end_67} :catchall_75

    .line 403
    :cond_67
    add-long v1, v6, v8

    monitor-exit p0

    return-wide v1

    .line 371
    .end local v6    # "read":J
    .end local v8    # "skipped":J
    :cond_6b
    :try_start_6b
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 367
    .end local v3    # "localIn":Ljava/io/InputStream;
    :cond_70
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_75
    .catchall {:try_start_6b .. :try_end_75} :catchall_75

    .line 360
    .end local v0    # "localBuf":[B
    .end local p1    # "byteCount":J
    :catchall_75
    move-exception p1

    monitor-exit p0

    throw p1
.end method

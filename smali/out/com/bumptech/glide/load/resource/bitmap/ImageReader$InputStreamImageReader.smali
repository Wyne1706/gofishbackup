.class public final Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;
.super Ljava/lang/Object;
.source "ImageReader.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/ImageReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputStreamImageReader"
.end annotation


# instance fields
.field private final byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final dataRewinder:Lcom/bumptech/glide/load/data/InputStreamRewinder;

.field private final parsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .registers 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p3, "byteArrayPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")V"
        }
    .end annotation

    .line 184
    .local p2, "parsers":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ImageHeaderParser;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    invoke-static {p3}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 186
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->parsers:Ljava/util/List;

    .line 188
    new-instance v0, Lcom/bumptech/glide/load/data/InputStreamRewinder;

    invoke-direct {v0, p1, p3}, Lcom/bumptech/glide/load/data/InputStreamRewinder;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->dataRewinder:Lcom/bumptech/glide/load/data/InputStreamRewinder;

    .line 189
    return-void
.end method


# virtual methods
.method public decodeBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->dataRewinder:Lcom/bumptech/glide/load/data/InputStreamRewinder;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/InputStreamRewinder;->rewindAndGet()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getImageOrientation()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->parsers:Ljava/util/List;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->dataRewinder:Lcom/bumptech/glide/load/data/InputStreamRewinder;

    .line 205
    invoke-virtual {v1}, Lcom/bumptech/glide/load/data/InputStreamRewinder;->rewindAndGet()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 204
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getOrientation(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I

    move-result v0

    return v0
.end method

.method public getImageType()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->parsers:Ljava/util/List;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->dataRewinder:Lcom/bumptech/glide/load/data/InputStreamRewinder;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/data/InputStreamRewinder;->rewindAndGet()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getType(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    return-object v0
.end method

.method public stopGrowingBuffers()V
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->dataRewinder:Lcom/bumptech/glide/load/data/InputStreamRewinder;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/InputStreamRewinder;->fixMarkLimits()V

    .line 211
    return-void
.end method

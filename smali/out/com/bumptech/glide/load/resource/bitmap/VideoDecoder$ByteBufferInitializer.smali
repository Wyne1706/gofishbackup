.class final Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;
.super Ljava/lang/Object;
.source "VideoDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ByteBufferInitializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMediaDataSource(Ljava/nio/ByteBuffer;)Landroid/media/MediaDataSource;
    .registers 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 527
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer$1;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer$1;-><init>(Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;Ljava/nio/ByteBuffer;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic initializeExtractor(Landroid/media/MediaExtractor;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 512
    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;->initializeExtractor(Landroid/media/MediaExtractor;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public initializeExtractor(Landroid/media/MediaExtractor;Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "extractor"    # Landroid/media/MediaExtractor;
    .param p2, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;->getMediaDataSource(Ljava/nio/ByteBuffer;)Landroid/media/MediaDataSource;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 524
    return-void
.end method

.method public bridge synthetic initializeRetriever(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V
    .registers 3

    .line 512
    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;->initializeRetriever(Landroid/media/MediaMetadataRetriever;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public initializeRetriever(Landroid/media/MediaMetadataRetriever;Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "retriever"    # Landroid/media/MediaMetadataRetriever;
    .param p2, "data"    # Ljava/nio/ByteBuffer;

    .line 517
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;->getMediaDataSource(Ljava/nio/ByteBuffer;)Landroid/media/MediaDataSource;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 518
    return-void
.end method

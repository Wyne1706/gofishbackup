.class Lcom/bumptech/glide/load/ImageHeaderParserUtils$6;
.super Ljava/lang/Object;
.source "ImageHeaderParserUtils.java"

# interfaces
.implements Lcom/bumptech/glide/load/ImageHeaderParserUtils$OrientationReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getOrientation(Ljava/util/List;Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field final synthetic val$parcelFileDescriptorRewinder:Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/bumptech/glide/load/ImageHeaderParserUtils$6;->val$parcelFileDescriptorRewinder:Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;

    iput-object p2, p0, Lcom/bumptech/glide/load/ImageHeaderParserUtils$6;->val$byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrientationAndRewind(Lcom/bumptech/glide/load/ImageHeaderParser;)I
    .registers 6
    .param p1, "parser"    # Lcom/bumptech/glide/load/ImageHeaderParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    const/4 v0, 0x0

    .line 205
    .local v0, "is":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    :try_start_1
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/bumptech/glide/load/ImageHeaderParserUtils$6;->val$parcelFileDescriptorRewinder:Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;

    .line 208
    invoke-virtual {v3}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;->rewindAndGet()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object v3, p0, Lcom/bumptech/glide/load/ImageHeaderParserUtils$6;->val$byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    move-object v0, v1

    .line 210
    iget-object v1, p0, Lcom/bumptech/glide/load/ImageHeaderParserUtils$6;->val$byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/load/ImageHeaderParser;->getOrientation(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I

    move-result v1
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_28

    .line 215
    nop

    .line 216
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->release()V

    .line 218
    iget-object v2, p0, Lcom/bumptech/glide/load/ImageHeaderParserUtils$6;->val$parcelFileDescriptorRewinder:Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;->rewindAndGet()Landroid/os/ParcelFileDescriptor;

    .line 210
    return v1

    .line 215
    :catchall_28
    move-exception v1

    if-eqz v0, :cond_2e

    .line 216
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->release()V

    .line 218
    :cond_2e
    iget-object v2, p0, Lcom/bumptech/glide/load/ImageHeaderParserUtils$6;->val$parcelFileDescriptorRewinder:Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;->rewindAndGet()Landroid/os/ParcelFileDescriptor;

    .line 219
    throw v1
.end method

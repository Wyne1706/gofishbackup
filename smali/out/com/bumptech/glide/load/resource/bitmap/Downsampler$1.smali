.class Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;
.super Ljava/lang/Object;
.source "Downsampler.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDecodeComplete(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "downsampled"    # Landroid/graphics/Bitmap;

    .line 127
    return-void
.end method

.method public onObtainBounds()V
    .registers 1

    .line 122
    return-void
.end method

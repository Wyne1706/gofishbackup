.class Landroidx/exifinterface/media/ExifInterfaceUtils$Api23Impl;
.super Ljava/lang/Object;
.source "ExifInterfaceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/exifinterface/media/ExifInterfaceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setDataSource(Landroid/media/MediaMetadataRetriever;Landroid/media/MediaDataSource;)V
    .registers 2
    .param p0, "retriever"    # Landroid/media/MediaMetadataRetriever;
    .param p1, "dataSource"    # Landroid/media/MediaDataSource;

    .line 189
    invoke-virtual {p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 190
    return-void
.end method
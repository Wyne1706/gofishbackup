.class Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;
.super Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
.source "DiskCacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeCachedData()Z
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public decodeCachedResource()Z
    .registers 2

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public isDataCacheable(Lcom/bumptech/glide/load/DataSource;)Z
    .registers 3
    .param p1, "dataSource"    # Lcom/bumptech/glide/load/DataSource;

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public isResourceCacheable(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z
    .registers 5
    .param p1, "isFromAlternateCacheKey"    # Z
    .param p2, "dataSource"    # Lcom/bumptech/glide/load/DataSource;
    .param p3, "encodeStrategy"    # Lcom/bumptech/glide/load/EncodeStrategy;

    .line 49
    const/4 v0, 0x0

    return v0
.end method

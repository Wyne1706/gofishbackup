.class Lcom/bumptech/glide/load/engine/cache/ExternalPreferredCacheDiskCacheFactory$1;
.super Ljava/lang/Object;
.source "ExternalPreferredCacheDiskCacheFactory.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/engine/cache/ExternalPreferredCacheDiskCacheFactory;-><init>(Landroid/content/Context;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$diskCacheName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/ExternalPreferredCacheDiskCacheFactory$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/cache/ExternalPreferredCacheDiskCacheFactory$1;->val$diskCacheName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getInternalCacheDirectory()Ljava/io/File;
    .registers 4

    .line 35
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/ExternalPreferredCacheDiskCacheFactory$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 36
    .local v0, "cacheDirectory":Ljava/io/File;
    if-nez v0, :cond_a

    .line 37
    const/4 v1, 0x0

    return-object v1

    .line 39
    :cond_a
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/ExternalPreferredCacheDiskCacheFactory$1;->val$diskCacheName:Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 40
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/cache/ExternalPreferredCacheDiskCacheFactory$1;->val$diskCacheName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 42
    :cond_16
    return-object v0
.end method


# virtual methods
.method public getCacheDirectory()Ljava/io/File;
    .registers 5

    .line 47
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/ExternalPreferredCacheDiskCacheFactory$1;->getInternalCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 51
    .local v0, "internalCacheDirectory":Ljava/io/File;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 52
    return-object v0

    .line 55
    :cond_d
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/ExternalPreferredCacheDiskCacheFactory$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 58
    .local v1, "cacheDirectory":Ljava/io/File;
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_29

    .line 61
    :cond_1c
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/cache/ExternalPreferredCacheDiskCacheFactory$1;->val$diskCacheName:Ljava/lang/String;

    if-eqz v2, :cond_28

    .line 62
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/cache/ExternalPreferredCacheDiskCacheFactory$1;->val$diskCacheName:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2

    .line 64
    :cond_28
    return-object v1

    .line 59
    :cond_29
    :goto_29
    return-object v0
.end method

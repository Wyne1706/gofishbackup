.class Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;
.super Ljava/lang/Object;
.source "DiskCacheWriteLocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriteLockPool"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa


# instance fields
.field private final pool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    .line 84
    return-void
.end method


# virtual methods
.method obtain()Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    monitor-enter v0

    .line 89
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;

    .line 90
    .local v1, "result":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_15

    .line 91
    if-nez v1, :cond_14

    .line 92
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;-><init>()V

    move-object v1, v0

    .line 94
    :cond_14
    return-object v1

    .line 90
    .end local v1    # "result":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method offer(Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;)V
    .registers 5
    .param p1, "writeLock"    # Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;

    .line 98
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    monitor-enter v0

    .line 99
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_12

    .line 100
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 102
    :cond_12
    monitor-exit v0

    .line 103
    return-void

    .line 102
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

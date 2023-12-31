.class final Lcom/bumptech/glide/load/engine/ActiveResources;
.super Ljava/lang/Object;
.source "ActiveResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;,
        Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;
    }
.end annotation


# instance fields
.field final activeEngineResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;",
            ">;"
        }
    .end annotation
.end field

.field private volatile cb:Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;

.field private final isActiveResourceRetentionAllowed:Z

.field private volatile isShutdown:Z

.field private listener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

.field private final monitorClearedResourcesExecutor:Ljava/util/concurrent/Executor;

.field private final resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Z)V
    .registers 3
    .param p1, "isActiveResourceRetentionAllowed"    # Z

    .line 32
    new-instance v0, Lcom/bumptech/glide/load/engine/ActiveResources$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/ActiveResources$1;-><init>()V

    .line 34
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/engine/ActiveResources;-><init>(ZLjava/util/concurrent/Executor;)V

    .line 49
    return-void
.end method

.method constructor <init>(ZLjava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "isActiveResourceRetentionAllowed"    # Z
    .param p2, "monitorClearedResourcesExecutor"    # Ljava/util/concurrent/Executor;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 54
    iput-boolean p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->isActiveResourceRetentionAllowed:Z

    .line 55
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->monitorClearedResourcesExecutor:Ljava/util/concurrent/Executor;

    .line 57
    new-instance v0, Lcom/bumptech/glide/load/engine/ActiveResources$2;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/ActiveResources$2;-><init>(Lcom/bumptech/glide/load/engine/ActiveResources;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method


# virtual methods
.method declared-synchronized activate(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V
    .registers 6
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;)V"
        }
    .end annotation

    .local p2, "resource":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<*>;"
    monitor-enter p0

    .line 75
    :try_start_1
    new-instance v0, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->isActiveResourceRetentionAllowed:Z

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;Ljava/lang/ref/ReferenceQueue;Z)V

    .line 79
    .local v0, "toPut":Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    .line 80
    .local v1, "removed":Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;
    if-eqz v1, :cond_17

    .line 81
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->reset()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 83
    .end local p0    # "this":Lcom/bumptech/glide/load/engine/ActiveResources;
    :cond_17
    monitor-exit p0

    return-void

    .line 74
    .end local v0    # "toPut":Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;
    .end local v1    # "removed":Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;
    .end local p1    # "key":Lcom/bumptech/glide/load/Key;
    .end local p2    # "resource":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<*>;"
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method cleanReferenceQueue()V
    .registers 3

    .line 130
    nop

    :goto_1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->isShutdown:Z

    if-nez v0, :cond_21

    .line 132
    :try_start_5
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    .line 133
    .local v0, "ref":Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/engine/ActiveResources;->cleanupActiveReference(Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;)V

    .line 136
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->cb:Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;

    .line 137
    .local v1, "current":Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;
    if-eqz v1, :cond_20

    .line 138
    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;->onResourceDequeued()V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_17} :catch_18

    goto :goto_20

    .line 141
    .end local v0    # "ref":Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;
    .end local v1    # "current":Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;
    :catch_18
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 143
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_20
    :goto_20
    goto :goto_1

    .line 145
    :cond_21
    return-void
.end method

.method cleanupActiveReference(Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;)V
    .registers 9
    .param p1, "ref"    # Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    .line 109
    monitor-enter p0

    .line 110
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    iget-object v1, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/bumptech/glide/load/Key;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-boolean v0, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->isCacheable:Z

    if-eqz v0, :cond_28

    iget-object v0, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->resource:Lcom/bumptech/glide/load/engine/Resource;

    if-nez v0, :cond_11

    goto :goto_28

    .line 115
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_2a

    .line 117
    new-instance v0, Lcom/bumptech/glide/load/engine/EngineResource;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->resource:Lcom/bumptech/glide/load/engine/Resource;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/bumptech/glide/load/Key;

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->listener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/EngineResource;-><init>(Lcom/bumptech/glide/load/engine/Resource;ZZLcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)V

    .line 124
    .local v0, "newResource":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<*>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->listener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/bumptech/glide/load/Key;

    invoke-interface {v1, v2, v0}, Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;->onResourceReleased(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V

    .line 125
    return-void

    .line 113
    .end local v0    # "newResource":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<*>;"
    :cond_28
    :goto_28
    :try_start_28
    monitor-exit p0

    return-void

    .line 115
    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method declared-synchronized deactivate(Lcom/bumptech/glide/load/Key;)V
    .registers 3
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;

    monitor-enter p0

    .line 86
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    .line 87
    .local v0, "removed":Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;
    if-eqz v0, :cond_e

    .line 88
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->reset()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 90
    .end local p0    # "this":Lcom/bumptech/glide/load/engine/ActiveResources;
    :cond_e
    monitor-exit p0

    return-void

    .line 85
    .end local v0    # "removed":Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;
    .end local p1    # "key":Lcom/bumptech/glide/load/Key;
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized get(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/EngineResource;
    .registers 4
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1b

    .line 95
    .local v0, "activeRef":Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;
    if-nez v0, :cond_e

    .line 96
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 99
    :cond_e
    :try_start_e
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/EngineResource;

    .line 100
    .local v1, "active":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<*>;"
    if-nez v1, :cond_19

    .line 101
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/engine/ActiveResources;->cleanupActiveReference(Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;)V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1b

    .line 103
    .end local p0    # "this":Lcom/bumptech/glide/load/engine/ActiveResources;
    :cond_19
    monitor-exit p0

    return-object v1

    .line 93
    .end local v0    # "activeRef":Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;
    .end local v1    # "active":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<*>;"
    .end local p1    # "key":Lcom/bumptech/glide/load/Key;
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setDequeuedResourceCallback(Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;)V
    .registers 2
    .param p1, "cb"    # Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;

    .line 149
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->cb:Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;

    .line 150
    return-void
.end method

.method setListener(Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    .line 67
    monitor-enter p1

    .line 68
    :try_start_1
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_a

    .line 69
    :try_start_2
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->listener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    .line 70
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 71
    :try_start_5
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_5 .. :try_end_6} :catchall_a

    .line 72
    return-void

    .line 70
    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    .end local p1    # "listener":Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;
    :try_start_9
    throw v0

    .line 71
    .restart local p1    # "listener":Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;
    :catchall_a
    move-exception v0

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_a

    throw v0
.end method

.method shutdown()V
    .registers 3

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->isShutdown:Z

    .line 160
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->monitorClearedResourcesExecutor:Ljava/util/concurrent/Executor;

    instance-of v1, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_e

    .line 161
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 162
    .local v0, "service":Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/bumptech/glide/util/Executors;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    .line 164
    .end local v0    # "service":Ljava/util/concurrent/ExecutorService;
    :cond_e
    return-void
.end method

.class Lcom/bumptech/glide/load/engine/DecodeJob;
.super Ljava/lang/Object;
.source "DecodeJob.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;,
        Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;,
        Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;,
        Lcom/bumptech/glide/load/engine/DecodeJob$Callback;,
        Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;,
        Lcom/bumptech/glide/load/engine/DecodeJob$Stage;,
        Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/bumptech/glide/load/engine/DecodeJob<",
        "*>;>;",
        "Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DecodeJob"


# instance fields
.field private callback:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob$Callback<",
            "TR;>;"
        }
    .end annotation
.end field

.field private currentAttemptingKey:Lcom/bumptech/glide/load/Key;

.field private currentData:Ljava/lang/Object;

.field private currentDataSource:Lcom/bumptech/glide/load/DataSource;

.field private currentFetcher:Lcom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile currentGenerator:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

.field private currentSourceKey:Lcom/bumptech/glide/load/Key;

.field private currentThread:Ljava/lang/Thread;

.field private final decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeHelper<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final deferredEncodeManager:Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager<",
            "*>;"
        }
    .end annotation
.end field

.field private final diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

.field private diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private glideContext:Lcom/bumptech/glide/GlideContext;

.field private height:I

.field private volatile isCallbackNotified:Z

.field private volatile isCancelled:Z

.field private isLoadingFromAlternateCacheKey:Z

.field private loadKey:Lcom/bumptech/glide/load/engine/EngineKey;

.field private model:Ljava/lang/Object;

.field private onlyRetrieveFromCache:Z

.field private options:Lcom/bumptech/glide/load/Options;

.field private order:I

.field private final pool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;>;"
        }
    .end annotation
.end field

.field private priority:Lcom/bumptech/glide/Priority;

.field private final releaseManager:Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;

.field private runReason:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

.field private signature:Lcom/bumptech/glide/load/Key;

.field private stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

.field private startFetchTime:J

.field private final stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

.field private final throwables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Landroidx/core/util/Pools$Pool;)V
    .registers 4
    .param p1, "diskCacheProvider"    # Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;",
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;>;)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    .local p2, "pool":Landroidx/core/util/Pools$Pool;, "Landroidx/core/util/Pools$Pool<Lcom/bumptech/glide/load/engine/DecodeJob<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/DecodeHelper;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->throwables:Ljava/util/List;

    .line 47
    invoke-static {}, Lcom/bumptech/glide/util/pool/StateVerifier;->newInstance()Lcom/bumptech/glide/util/pool/StateVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    .line 50
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;

    .line 51
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->releaseManager:Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;

    .line 82
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    .line 83
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->pool:Landroidx/core/util/Pools$Pool;

    .line 84
    return-void
.end method

.method private decodeFromData(Lcom/bumptech/glide/load/data/DataFetcher;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 9
    .param p3, "dataSource"    # Lcom/bumptech/glide/load/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "*>;TData;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    .line 485
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    .local p1, "fetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<*>;"
    .local p2, "data":Ljava/lang/Object;, "TData;"
    if-nez p2, :cond_8

    .line 486
    nop

    .line 495
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 486
    const/4 v0, 0x0

    return-object v0

    .line 488
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    .line 489
    .local v0, "startTime":J
    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeFromFetcher(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    .line 490
    .local v2, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TR;>;"
    const-string v3, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decoded result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_34

    .line 493
    :cond_2f
    nop

    .line 495
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 493
    return-object v2

    .line 495
    .end local v0    # "startTime":J
    .end local v2    # "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TR;>;"
    :catchall_34
    move-exception v0

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 496
    throw v0
.end method

.method private decodeFromFetcher(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 5
    .param p2, "dataSource"    # Lcom/bumptech/glide/load/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    .line 502
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    .local p1, "data":Ljava/lang/Object;, "TData;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getLoadPath(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/LoadPath;

    move-result-object v0

    .line 503
    .local v0, "path":Lcom/bumptech/glide/load/engine/LoadPath;, "Lcom/bumptech/glide/load/engine/LoadPath<TData;*TR;>;"
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->runLoadPath(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/engine/LoadPath;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v1

    return-object v1
.end method

.method private decodeFromRetrievedData()V
    .registers 5

    .line 421
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 422
    iget-wide v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->startFetchTime:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentData:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cache key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/bumptech/glide/load/Key;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fetcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Retrieved data"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;JLjava/lang/String;)V

    .line 432
    :cond_3d
    const/4 v0, 0x0

    .line 434
    .local v0, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TR;>;"
    :try_start_3e
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentData:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentDataSource:Lcom/bumptech/glide/load/DataSource;

    invoke-direct {p0, v1, v2, v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeFromData(Lcom/bumptech/glide/load/data/DataFetcher;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v1
    :try_end_48
    .catch Lcom/bumptech/glide/load/engine/GlideException; {:try_start_3e .. :try_end_48} :catch_4a

    move-object v0, v1

    .line 438
    goto :goto_57

    .line 435
    :catch_4a
    move-exception v1

    .line 436
    .local v1, "e":Lcom/bumptech/glide/load/engine/GlideException;
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentAttemptingKey:Lcom/bumptech/glide/load/Key;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentDataSource:Lcom/bumptech/glide/load/DataSource;

    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/load/engine/GlideException;->setLoggingDetails(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/DataSource;)V

    .line 437
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->throwables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    .end local v1    # "e":Lcom/bumptech/glide/load/engine/GlideException;
    :goto_57
    if-eqz v0, :cond_61

    .line 440
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentDataSource:Lcom/bumptech/glide/load/DataSource;

    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isLoadingFromAlternateCacheKey:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->notifyEncodeAndRelease(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;Z)V

    goto :goto_64

    .line 442
    :cond_61
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->runGenerators()V

    .line 444
    :goto_64
    return-void
.end method

.method private getNextGenerator()Lcom/bumptech/glide/load/engine/DataFetcherGenerator;
    .registers 4

    .line 291
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$1;->$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage:[I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    .line 301
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :pswitch_28
    const/4 v0, 0x0

    return-object v0

    .line 297
    :pswitch_2a
    new-instance v0, Lcom/bumptech/glide/load/engine/SourceGenerator;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/SourceGenerator;-><init>(Lcom/bumptech/glide/load/engine/DecodeHelper;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    return-object v0

    .line 295
    :pswitch_32
    new-instance v0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/DataCacheGenerator;-><init>(Lcom/bumptech/glide/load/engine/DecodeHelper;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    return-object v0

    .line 293
    :pswitch_3a
    new-instance v0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;-><init>(Lcom/bumptech/glide/load/engine/DecodeHelper;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    return-object v0

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_32
        :pswitch_2a
        :pswitch_28
    .end packed-switch
.end method

.method private getNextStage(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;
    .registers 5
    .param p1, "current"    # Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 352
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$1;->$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage:[I

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_56

    .line 368
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :pswitch_24
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->decodeCachedResource()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 355
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    goto :goto_35

    .line 356
    :cond_2f
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->getNextStage(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object v0

    .line 354
    :goto_35
    return-object v0

    .line 366
    :pswitch_36
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    return-object v0

    .line 363
    :pswitch_39
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->onlyRetrieveFromCache:Z

    if-eqz v0, :cond_40

    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    goto :goto_42

    :cond_40
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->SOURCE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    :goto_42
    return-object v0

    .line 358
    :pswitch_43
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->decodeCachedData()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 359
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    goto :goto_54

    .line 360
    :cond_4e
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->getNextStage(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object v0

    .line 358
    :goto_54
    return-object v0

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_43
        :pswitch_39
        :pswitch_36
        :pswitch_36
        :pswitch_24
    .end packed-switch
.end method

.method private getOptionsWithHardwareConfig(Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/Options;
    .registers 7
    .param p1, "dataSource"    # Lcom/bumptech/glide/load/DataSource;

    .line 508
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->options:Lcom/bumptech/glide/load/Options;

    .line 509
    .local v0, "options":Lcom/bumptech/glide/load/Options;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_9

    .line 510
    return-object v0

    .line 513
    :cond_9
    sget-object v1, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-eq p1, v1, :cond_18

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 514
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->isScaleOnlyOrNoTransform()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_18

    :cond_16
    const/4 v1, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v1, 0x1

    .line 515
    .local v1, "isHardwareConfigSafe":Z
    :goto_19
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 519
    .local v2, "isHardwareConfigAllowed":Ljava/lang/Boolean;
    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2b

    if-eqz v1, :cond_2c

    .line 520
    :cond_2b
    return-object v0

    .line 525
    :cond_2c
    new-instance v3, Lcom/bumptech/glide/load/Options;

    invoke-direct {v3}, Lcom/bumptech/glide/load/Options;-><init>()V

    move-object v0, v3

    .line 526
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->options:Lcom/bumptech/glide/load/Options;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/load/Options;->putAll(Lcom/bumptech/glide/load/Options;)V

    .line 527
    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/bumptech/glide/load/Options;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/load/Options;

    .line 529
    return-object v0
.end method

.method private getPriority()I
    .registers 2

    .line 208
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->priority:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0}, Lcom/bumptech/glide/Priority;->ordinal()I

    move-result v0

    return v0
.end method

.method private logWithTimeAndKey(Ljava/lang/String;J)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "startTime"    # J

    .line 547
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;JLjava/lang/String;)V

    .line 548
    return-void
.end method

.method private logWithTimeAndKey(Ljava/lang/String;JLjava/lang/String;)V
    .registers 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "extraArgs"    # Ljava/lang/String;

    .line 551
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 555
    invoke-static {p2, p3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", load key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->loadKey:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 558
    if-eqz p4, :cond_39

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    :cond_39
    const-string v1, ""

    :goto_3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 560
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    const-string v1, "DecodeJob"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return-void
.end method

.method private notifyComplete(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;Z)V
    .registers 5
    .param p2, "dataSource"    # Lcom/bumptech/glide/load/DataSource;
    .param p3, "isLoadedFromAlternateCacheKey"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)V"
        }
    .end annotation

    .line 338
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TR;>;"
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->setNotifiedOrThrow()V

    .line 339
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->callback:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;

    invoke-interface {v0, p1, p2, p3}, Lcom/bumptech/glide/load/engine/DecodeJob$Callback;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;Z)V

    .line 340
    return-void
.end method

.method private notifyEncodeAndRelease(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;Z)V
    .registers 9
    .param p2, "dataSource"    # Lcom/bumptech/glide/load/DataSource;
    .param p3, "isLoadedFromAlternateCacheKey"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)V"
        }
    .end annotation

    .line 448
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TR;>;"
    const-string v0, "DecodeJob.notifyEncodeAndRelease"

    invoke-static {v0}, Lcom/bumptech/glide/util/pool/GlideTrace;->beginSection(Ljava/lang/String;)V

    .line 450
    :try_start_5
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/Initializable;

    if-eqz v0, :cond_f

    .line 451
    move-object v0, p1

    check-cast v0, Lcom/bumptech/glide/load/engine/Initializable;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Initializable;->initialize()V

    .line 454
    :cond_f
    move-object v0, p1

    .line 455
    .local v0, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TR;>;"
    const/4 v1, 0x0

    .line 456
    .local v1, "lockedResource":Lcom/bumptech/glide/load/engine/LockedResource;, "Lcom/bumptech/glide/load/engine/LockedResource<TR;>;"
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->hasResourceToEncode()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 457
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/LockedResource;->obtain(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/LockedResource;

    move-result-object v2

    move-object v1, v2

    .line 458
    move-object v0, v1

    .line 461
    :cond_1f
    invoke-direct {p0, v0, p2, p3}, Lcom/bumptech/glide/load/engine/DecodeJob;->notifyComplete(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;Z)V

    .line 463
    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ENCODE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    iput-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_4c

    .line 465
    :try_start_26
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->hasResourceToEncode()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 466
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->options:Lcom/bumptech/glide/load/Options;

    invoke-virtual {v2, v3, v4}, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->encode(Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/bumptech/glide/load/Options;)V
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_44

    .line 469
    :cond_37
    if-eqz v1, :cond_3c

    .line 470
    :try_start_39
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/LockedResource;->unlock()V

    .line 476
    :cond_3c
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->onEncodeComplete()V
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_4c

    .line 478
    .end local v0    # "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TR;>;"
    .end local v1    # "lockedResource":Lcom/bumptech/glide/load/engine/LockedResource;, "Lcom/bumptech/glide/load/engine/LockedResource<TR;>;"
    invoke-static {}, Lcom/bumptech/glide/util/pool/GlideTrace;->endSection()V

    .line 479
    nop

    .line 480
    return-void

    .line 469
    .restart local v0    # "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TR;>;"
    .restart local v1    # "lockedResource":Lcom/bumptech/glide/load/engine/LockedResource;, "Lcom/bumptech/glide/load/engine/LockedResource<TR;>;"
    :catchall_44
    move-exception v2

    if-eqz v1, :cond_4a

    .line 470
    :try_start_47
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/LockedResource;->unlock()V

    .line 472
    :cond_4a
    nop

    .end local p1    # "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TR;>;"
    .end local p2    # "dataSource":Lcom/bumptech/glide/load/DataSource;
    .end local p3    # "isLoadedFromAlternateCacheKey":Z
    throw v2
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_4c

    .line 478
    .end local v0    # "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TR;>;"
    .end local v1    # "lockedResource":Lcom/bumptech/glide/load/engine/LockedResource;, "Lcom/bumptech/glide/load/engine/LockedResource<TR;>;"
    .restart local p1    # "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TR;>;"
    .restart local p2    # "dataSource":Lcom/bumptech/glide/load/DataSource;
    .restart local p3    # "isLoadedFromAlternateCacheKey":Z
    :catchall_4c
    move-exception v0

    invoke-static {}, Lcom/bumptech/glide/util/pool/GlideTrace;->endSection()V

    .line 479
    throw v0
.end method

.method private notifyFailed()V
    .registers 4

    .line 330
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->setNotifiedOrThrow()V

    .line 331
    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->throwables:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "Failed to load resource"

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 332
    .local v0, "e":Lcom/bumptech/glide/load/engine/GlideException;
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->callback:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/DecodeJob$Callback;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;)V

    .line 333
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->onLoadFailed()V

    .line 334
    return-void
.end method

.method private onEncodeComplete()V
    .registers 2

    .line 161
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->releaseManager:Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->onEncodeComplete()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 162
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->releaseInternal()V

    .line 164
    :cond_b
    return-void
.end method

.method private onLoadFailed()V
    .registers 2

    .line 168
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->releaseManager:Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->onFailed()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 169
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->releaseInternal()V

    .line 171
    :cond_b
    return-void
.end method

.method private releaseInternal()V
    .registers 5

    .line 174
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->releaseManager:Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->reset()V

    .line 175
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->clear()V

    .line 176
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeHelper;->clear()V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCallbackNotified:Z

    .line 178
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 179
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->signature:Lcom/bumptech/glide/load/Key;

    .line 180
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->options:Lcom/bumptech/glide/load/Options;

    .line 181
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->priority:Lcom/bumptech/glide/Priority;

    .line 182
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->loadKey:Lcom/bumptech/glide/load/engine/EngineKey;

    .line 183
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->callback:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;

    .line 184
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 185
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentGenerator:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    .line 186
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentThread:Ljava/lang/Thread;

    .line 187
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/bumptech/glide/load/Key;

    .line 188
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentData:Ljava/lang/Object;

    .line 189
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentDataSource:Lcom/bumptech/glide/load/DataSource;

    .line 190
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 191
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->startFetchTime:J

    .line 192
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z

    .line 193
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->model:Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->throwables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 195
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->pool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method

.method private reschedule(Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;)V
    .registers 3
    .param p1, "runReason"    # Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 373
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->runReason:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 374
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->callback:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/engine/DecodeJob$Callback;->reschedule(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    .line 375
    return-void
.end method

.method private runGenerators()V
    .registers 4

    .line 306
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentThread:Ljava/lang/Thread;

    .line 307
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->startFetchTime:J

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "isStarted":Z
    :cond_d
    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z

    if-nez v1, :cond_38

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentGenerator:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentGenerator:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    .line 311
    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator;->startNext()Z

    move-result v1

    move v0, v1

    if-nez v1, :cond_38

    .line 312
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->getNextStage(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 313
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->getNextGenerator()Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentGenerator:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    .line 315
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->SOURCE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-ne v1, v2, :cond_d

    .line 316
    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->reschedule(Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;)V

    .line 317
    return-void

    .line 321
    :cond_38
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-eq v1, v2, :cond_42

    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z

    if-eqz v1, :cond_47

    :cond_42
    if-nez v0, :cond_47

    .line 322
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->notifyFailed()V

    .line 327
    :cond_47
    return-void
.end method

.method private runLoadPath(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/engine/LoadPath;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 12
    .param p2, "dataSource"    # Lcom/bumptech/glide/load/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "ResourceType:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lcom/bumptech/glide/load/engine/LoadPath<",
            "TData;TResourceType;TR;>;)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    .line 535
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    .local p1, "data":Ljava/lang/Object;, "TData;"
    .local p3, "path":Lcom/bumptech/glide/load/engine/LoadPath;, "Lcom/bumptech/glide/load/engine/LoadPath<TData;TResourceType;TR;>;"
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/engine/DecodeJob;->getOptionsWithHardwareConfig(Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/Options;

    move-result-object v6

    .line 536
    .local v6, "options":Lcom/bumptech/glide/load/Options;
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->glideContext:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->getRegistry()Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Registry;->getRewinder(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/DataRewinder;

    move-result-object v7

    .line 539
    .local v7, "rewinder":Lcom/bumptech/glide/load/data/DataRewinder;, "Lcom/bumptech/glide/load/data/DataRewinder<TData;>;"
    :try_start_e
    iget v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->width:I

    iget v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->height:I

    new-instance v5, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;

    invoke-direct {v5, p0, p2}, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/DataSource;)V

    move-object v0, p3

    move-object v1, v7

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/LoadPath;->load(Lcom/bumptech/glide/load/data/DataRewinder;Lcom/bumptech/glide/load/Options;IILcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_22

    .line 542
    invoke-interface {v7}, Lcom/bumptech/glide/load/data/DataRewinder;->cleanup()V

    .line 539
    return-object v0

    .line 542
    :catchall_22
    move-exception v0

    invoke-interface {v7}, Lcom/bumptech/glide/load/data/DataRewinder;->cleanup()V

    .line 543
    throw v0
.end method

.method private runWrapped()V
    .registers 4

    .line 273
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$1;->$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$RunReason:[I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->runReason:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_44

    .line 286
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized run reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->runReason:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :pswitch_28
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeFromRetrievedData()V

    .line 284
    goto :goto_42

    .line 280
    :pswitch_2c
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->runGenerators()V

    .line 281
    goto :goto_42

    .line 275
    :pswitch_30
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->INITIALIZE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->getNextStage(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 276
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->getNextGenerator()Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentGenerator:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    .line 277
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->runGenerators()V

    .line 278
    nop

    .line 288
    :goto_42
    return-void

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2c
        :pswitch_28
    .end packed-switch
.end method

.method private setNotifiedOrThrow()V
    .registers 4

    .line 343
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 344
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCallbackNotified:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    .line 345
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->throwables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    goto :goto_21

    :cond_14
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->throwables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 346
    .local v0, "lastThrown":Ljava/lang/Throwable;
    :goto_21
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already notified"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 348
    .end local v0    # "lastThrown":Ljava/lang/Throwable;
    :cond_29
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCallbackNotified:Z

    .line 349
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 212
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z

    .line 213
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentGenerator:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    .line 214
    .local v0, "local":Lcom/bumptech/glide/load/engine/DataFetcherGenerator;
    if-eqz v0, :cond_a

    .line 215
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator;->cancel()V

    .line 217
    :cond_a
    return-void
.end method

.method public compareTo(Lcom/bumptech/glide/load/engine/DecodeJob;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;)I"
        }
    .end annotation

    .line 200
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    .local p1, "other":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<*>;"
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->getPriority()I

    move-result v0

    invoke-direct {p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    .line 201
    .local v0, "result":I
    if-nez v0, :cond_11

    .line 202
    iget v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->order:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/DecodeJob;->order:I

    sub-int v0, v1, v2

    .line 204
    :cond_11
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 38
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    check-cast p1, Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->compareTo(Lcom/bumptech/glide/load/engine/DecodeJob;)I

    move-result p1

    return p1
.end method

.method public getVerifier()Lcom/bumptech/glide/util/pool/StateVerifier;
    .registers 2

    .line 566
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    return-object v0
.end method

.method init(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/engine/EngineKey;Lcom/bumptech/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZZZLcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/engine/DecodeJob$Callback;I)Lcom/bumptech/glide/load/engine/DecodeJob;
    .registers 34
    .param p1, "glideContext"    # Lcom/bumptech/glide/GlideContext;
    .param p2, "model"    # Ljava/lang/Object;
    .param p3, "loadKey"    # Lcom/bumptech/glide/load/engine/EngineKey;
    .param p4, "signature"    # Lcom/bumptech/glide/load/Key;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p9, "priority"    # Lcom/bumptech/glide/Priority;
    .param p10, "diskCacheStrategy"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .param p12, "isTransformationRequired"    # Z
    .param p13, "isScaleOnlyOrNoTransform"    # Z
    .param p14, "onlyRetrieveFromCache"    # Z
    .param p15, "options"    # Lcom/bumptech/glide/load/Options;
    .param p17, "order"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/engine/EngineKey;",
            "Lcom/bumptech/glide/load/Key;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "*>;>;ZZZ",
            "Lcom/bumptech/glide/load/Options;",
            "Lcom/bumptech/glide/load/engine/DecodeJob$Callback<",
            "TR;>;I)",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "TR;>;"
        }
    .end annotation

    .line 104
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    .local p7, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p8, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    .local p11, "transformations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/bumptech/glide/load/Transformation<*>;>;"
    .local p16, "callback":Lcom/bumptech/glide/load/engine/DecodeJob$Callback;, "Lcom/bumptech/glide/load/engine/DecodeJob$Callback<TR;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    iget-object v15, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p10

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p15

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-virtual/range {v1 .. v15}, Lcom/bumptech/glide/load/engine/DecodeHelper;->init(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/Options;Ljava/util/Map;ZZLcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;)V

    .line 119
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 120
    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->signature:Lcom/bumptech/glide/load/Key;

    .line 121
    move-object/from16 v3, p9

    iput-object v3, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->priority:Lcom/bumptech/glide/Priority;

    .line 122
    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->loadKey:Lcom/bumptech/glide/load/engine/EngineKey;

    .line 123
    iput v5, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->width:I

    .line 124
    iput v6, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->height:I

    .line 125
    iput-object v7, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 126
    move/from16 v8, p14

    iput-boolean v8, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->onlyRetrieveFromCache:Z

    .line 127
    move-object/from16 v9, p15

    iput-object v9, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->options:Lcom/bumptech/glide/load/Options;

    .line 128
    move-object/from16 v10, p16

    iput-object v10, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->callback:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;

    .line 129
    move/from16 v11, p17

    iput v11, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->order:I

    .line 130
    sget-object v12, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->INITIALIZE:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iput-object v12, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->runReason:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 131
    move-object/from16 v12, p2

    iput-object v12, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->model:Ljava/lang/Object;

    .line 132
    return-object v0
.end method

.method public onDataFetcherFailed(Lcom/bumptech/glide/load/Key;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;)V
    .registers 8
    .param p1, "attemptedKey"    # Lcom/bumptech/glide/load/Key;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p4, "dataSource"    # Lcom/bumptech/glide/load/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/Exception;",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .line 409
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    .local p3, "fetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<*>;"
    invoke-interface {p3}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 410
    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 411
    .local v0, "exception":Lcom/bumptech/glide/load/engine/GlideException;
    invoke-interface {p3}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, p4, v1}, Lcom/bumptech/glide/load/engine/GlideException;->setLoggingDetails(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/DataSource;Ljava/lang/Class;)V

    .line 412
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->throwables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentThread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_24

    .line 414
    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->reschedule(Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;)V

    goto :goto_27

    .line 416
    :cond_24
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->runGenerators()V

    .line 418
    :goto_27
    return-void
.end method

.method public onDataFetcherReady(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/Key;)V
    .registers 8
    .param p1, "sourceKey"    # Lcom/bumptech/glide/load/Key;
    .param p2, "data"    # Ljava/lang/Object;
    .param p4, "dataSource"    # Lcom/bumptech/glide/load/DataSource;
    .param p5, "attemptedKey"    # Lcom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lcom/bumptech/glide/load/Key;",
            ")V"
        }
    .end annotation

    .line 387
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    .local p3, "fetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<*>;"
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/bumptech/glide/load/Key;

    .line 388
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentData:Ljava/lang/Object;

    .line 389
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 390
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentDataSource:Lcom/bumptech/glide/load/DataSource;

    .line 391
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentAttemptingKey:Lcom/bumptech/glide/load/Key;

    .line 392
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getCacheKeys()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_18

    const/4 v1, 0x1

    :cond_18
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isLoadingFromAlternateCacheKey:Z

    .line 394
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_28

    .line 395
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->DECODE_DATA:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->reschedule(Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;)V

    goto :goto_34

    .line 397
    :cond_28
    const-string v0, "DecodeJob.decodeFromRetrievedData"

    invoke-static {v0}, Lcom/bumptech/glide/util/pool/GlideTrace;->beginSection(Ljava/lang/String;)V

    .line 399
    :try_start_2d
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeFromRetrievedData()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_35

    .line 401
    invoke-static {}, Lcom/bumptech/glide/util/pool/GlideTrace;->endSection()V

    .line 402
    nop

    .line 404
    :goto_34
    return-void

    .line 401
    :catchall_35
    move-exception v0

    invoke-static {}, Lcom/bumptech/glide/util/pool/GlideTrace;->endSection()V

    .line 402
    throw v0
.end method

.method onResourceDecoded(Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 23
    .param p1, "dataSource"    # Lcom/bumptech/glide/load/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TZ;>;"
        }
    .end annotation

    .line 573
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    .local p2, "decoded":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {p2 .. p2}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 574
    .local v3, "resourceSubClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    const/4 v4, 0x0

    .line 575
    .local v4, "appliedTransformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TZ;>;"
    move-object/from16 v5, p2

    .line 576
    .local v5, "transformed":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
    sget-object v6, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-eq v1, v6, :cond_28

    .line 577
    iget-object v6, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-virtual {v6, v3}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getTransformation(Ljava/lang/Class;)Lcom/bumptech/glide/load/Transformation;

    move-result-object v4

    .line 578
    iget-object v6, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->glideContext:Lcom/bumptech/glide/GlideContext;

    iget v7, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->width:I

    iget v8, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->height:I

    invoke-interface {v4, v6, v2, v7, v8}, Lcom/bumptech/glide/load/Transformation;->transform(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v5

    move-object v13, v4

    move-object v14, v5

    goto :goto_2a

    .line 576
    :cond_28
    move-object v13, v4

    move-object v14, v5

    .line 581
    .end local v4    # "appliedTransformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TZ;>;"
    .end local v5    # "transformed":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
    .local v13, "appliedTransformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TZ;>;"
    .local v14, "transformed":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
    :goto_2a
    invoke-virtual {v2, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 582
    invoke-interface/range {p2 .. p2}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 587
    :cond_33
    iget-object v4, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-virtual {v4, v14}, Lcom/bumptech/glide/load/engine/DecodeHelper;->isResourceEncoderAvailable(Lcom/bumptech/glide/load/engine/Resource;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 588
    iget-object v4, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-virtual {v4, v14}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getResultEncoder(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v4

    .line 589
    .local v4, "encoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<TZ;>;"
    iget-object v5, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->options:Lcom/bumptech/glide/load/Options;

    invoke-interface {v4, v5}, Lcom/bumptech/glide/load/ResourceEncoder;->getEncodeStrategy(Lcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/EncodeStrategy;

    move-result-object v5

    move-object v15, v4

    move-object v12, v5

    .local v5, "encodeStrategy":Lcom/bumptech/glide/load/EncodeStrategy;
    goto :goto_4f

    .line 591
    .end local v4    # "encoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<TZ;>;"
    .end local v5    # "encodeStrategy":Lcom/bumptech/glide/load/EncodeStrategy;
    :cond_4a
    const/4 v4, 0x0

    .line 592
    .restart local v4    # "encoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<TZ;>;"
    sget-object v5, Lcom/bumptech/glide/load/EncodeStrategy;->NONE:Lcom/bumptech/glide/load/EncodeStrategy;

    move-object v15, v4

    move-object v12, v5

    .line 595
    .end local v4    # "encoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<TZ;>;"
    .local v12, "encodeStrategy":Lcom/bumptech/glide/load/EncodeStrategy;
    .local v15, "encoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<TZ;>;"
    :goto_4f
    move-object/from16 v16, v14

    .line 596
    .local v16, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
    iget-object v4, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    iget-object v5, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/bumptech/glide/load/Key;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/load/engine/DecodeHelper;->isSourceKey(Lcom/bumptech/glide/load/Key;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    move v11, v4

    .line 597
    .local v11, "isFromAlternateCacheKey":Z
    iget-object v4, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v4, v11, v1, v12}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->isResourceCacheable(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z

    move-result v4

    if-eqz v4, :cond_d3

    .line 599
    if-eqz v15, :cond_c5

    .line 603
    sget-object v4, Lcom/bumptech/glide/load/engine/DecodeJob$1;->$SwitchMap$com$bumptech$glide$load$EncodeStrategy:[I

    invoke-virtual {v12}, Lcom/bumptech/glide/load/EncodeStrategy;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_d8

    .line 620
    move-object v1, v12

    .end local v12    # "encodeStrategy":Lcom/bumptech/glide/load/EncodeStrategy;
    .local v1, "encodeStrategy":Lcom/bumptech/glide/load/EncodeStrategy;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown strategy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 608
    .end local v1    # "encodeStrategy":Lcom/bumptech/glide/load/EncodeStrategy;
    .restart local v12    # "encodeStrategy":Lcom/bumptech/glide/load/EncodeStrategy;
    :pswitch_8b
    new-instance v17, Lcom/bumptech/glide/load/engine/ResourceCacheKey;

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 610
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getArrayPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    move-result-object v5

    iget-object v6, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/bumptech/glide/load/Key;

    iget-object v7, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->signature:Lcom/bumptech/glide/load/Key;

    iget v8, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->width:I

    iget v9, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->height:I

    iget-object v10, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->options:Lcom/bumptech/glide/load/Options;

    move-object/from16 v4, v17

    move-object/from16 v18, v10

    move-object v10, v13

    move/from16 v19, v11

    .end local v11    # "isFromAlternateCacheKey":Z
    .local v19, "isFromAlternateCacheKey":Z
    move-object v11, v3

    move-object v1, v12

    .end local v12    # "encodeStrategy":Lcom/bumptech/glide/load/EncodeStrategy;
    .restart local v1    # "encodeStrategy":Lcom/bumptech/glide/load/EncodeStrategy;
    move-object/from16 v12, v18

    invoke-direct/range {v4 .. v12}, Lcom/bumptech/glide/load/engine/ResourceCacheKey;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/Transformation;Ljava/lang/Class;Lcom/bumptech/glide/load/Options;)V

    .line 618
    .local v4, "key":Lcom/bumptech/glide/load/Key;
    goto :goto_b9

    .line 605
    .end local v1    # "encodeStrategy":Lcom/bumptech/glide/load/EncodeStrategy;
    .end local v4    # "key":Lcom/bumptech/glide/load/Key;
    .end local v19    # "isFromAlternateCacheKey":Z
    .restart local v11    # "isFromAlternateCacheKey":Z
    .restart local v12    # "encodeStrategy":Lcom/bumptech/glide/load/EncodeStrategy;
    :pswitch_ac
    move/from16 v19, v11

    move-object v1, v12

    .end local v11    # "isFromAlternateCacheKey":Z
    .end local v12    # "encodeStrategy":Lcom/bumptech/glide/load/EncodeStrategy;
    .restart local v1    # "encodeStrategy":Lcom/bumptech/glide/load/EncodeStrategy;
    .restart local v19    # "isFromAlternateCacheKey":Z
    new-instance v4, Lcom/bumptech/glide/load/engine/DataCacheKey;

    iget-object v5, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/bumptech/glide/load/Key;

    iget-object v6, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->signature:Lcom/bumptech/glide/load/Key;

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/load/engine/DataCacheKey;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/Key;)V

    .line 606
    .restart local v4    # "key":Lcom/bumptech/glide/load/Key;
    nop

    .line 623
    :goto_b9
    invoke-static {v14}, Lcom/bumptech/glide/load/engine/LockedResource;->obtain(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/LockedResource;

    move-result-object v5

    .line 624
    .local v5, "lockedResult":Lcom/bumptech/glide/load/engine/LockedResource;, "Lcom/bumptech/glide/load/engine/LockedResource<TZ;>;"
    iget-object v6, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;

    invoke-virtual {v6, v4, v15, v5}, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->init(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/engine/LockedResource;)V

    .line 625
    move-object/from16 v16, v5

    goto :goto_d6

    .line 600
    .end local v1    # "encodeStrategy":Lcom/bumptech/glide/load/EncodeStrategy;
    .end local v4    # "key":Lcom/bumptech/glide/load/Key;
    .end local v5    # "lockedResult":Lcom/bumptech/glide/load/engine/LockedResource;, "Lcom/bumptech/glide/load/engine/LockedResource<TZ;>;"
    .end local v19    # "isFromAlternateCacheKey":Z
    .restart local v11    # "isFromAlternateCacheKey":Z
    .restart local v12    # "encodeStrategy":Lcom/bumptech/glide/load/EncodeStrategy;
    :cond_c5
    new-instance v4, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;

    invoke-interface {v14}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw v4

    .line 597
    :cond_d3
    move/from16 v19, v11

    move-object v1, v12

    .line 627
    .end local v11    # "isFromAlternateCacheKey":Z
    .end local v12    # "encodeStrategy":Lcom/bumptech/glide/load/EncodeStrategy;
    .restart local v1    # "encodeStrategy":Lcom/bumptech/glide/load/EncodeStrategy;
    .restart local v19    # "isFromAlternateCacheKey":Z
    :goto_d6
    return-object v16

    nop

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_ac
        :pswitch_8b
    .end packed-switch
.end method

.method release(Z)V
    .registers 3
    .param p1, "isRemovedFromQueue"    # Z

    .line 151
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->releaseManager:Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->release(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 152
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->releaseInternal()V

    .line 154
    :cond_b
    return-void
.end method

.method public reschedule()V
    .registers 2

    .line 381
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->reschedule(Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;)V

    .line 382
    return-void
.end method

.method public run()V
    .registers 6

    .line 226
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    const-string v0, "DecodeJob"

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->runReason:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->model:Ljava/lang/Object;

    const-string v3, "DecodeJob#run(reason=%s, model=%s)"

    invoke-static {v3, v1, v2}, Lcom/bumptech/glide/util/pool/GlideTrace;->beginSectionFormat(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 231
    .local v1, "localFetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<*>;"
    :try_start_d
    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z

    if-eqz v2, :cond_1d

    .line 232
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->notifyFailed()V
    :try_end_14
    .catch Lcom/bumptech/glide/load/engine/CallbackException; {:try_start_d .. :try_end_14} :catch_6c
    .catchall {:try_start_d .. :try_end_14} :catchall_2a

    .line 265
    if-eqz v1, :cond_19

    .line 266
    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 268
    :cond_19
    invoke-static {}, Lcom/bumptech/glide/util/pool/GlideTrace;->endSection()V

    .line 233
    return-void

    .line 235
    :cond_1d
    :try_start_1d
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->runWrapped()V
    :try_end_20
    .catch Lcom/bumptech/glide/load/engine/CallbackException; {:try_start_1d .. :try_end_20} :catch_6c
    .catchall {:try_start_1d .. :try_end_20} :catchall_2a

    .line 265
    if-eqz v1, :cond_25

    .line 266
    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 268
    :cond_25
    invoke-static {}, Lcom/bumptech/glide/util/pool/GlideTrace;->endSection()V

    .line 269
    nop

    .line 270
    return-void

    .line 240
    :catchall_2a
    move-exception v2

    .line 247
    .local v2, "t":Ljava/lang/Throwable;
    const/4 v3, 0x3

    :try_start_2c
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", stage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    :cond_56
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    sget-object v3, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ENCODE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-eq v0, v3, :cond_64

    .line 255
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->throwables:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->notifyFailed()V

    .line 258
    :cond_64
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z

    if-nez v0, :cond_6a

    .line 259
    nop

    .end local v1    # "localFetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<*>;"
    throw v2

    .line 261
    .restart local v1    # "localFetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<*>;"
    :cond_6a
    nop

    .end local v1    # "localFetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<*>;"
    throw v2

    .line 236
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v1    # "localFetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<*>;"
    :catch_6c
    move-exception v0

    .line 239
    .local v0, "e":Lcom/bumptech/glide/load/engine/CallbackException;
    nop

    .end local v1    # "localFetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<*>;"
    throw v0
    :try_end_6f
    .catchall {:try_start_2c .. :try_end_6f} :catchall_6f

    .line 265
    .end local v0    # "e":Lcom/bumptech/glide/load/engine/CallbackException;
    .restart local v1    # "localFetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<*>;"
    :catchall_6f
    move-exception v0

    if-eqz v1, :cond_75

    .line 266
    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 268
    :cond_75
    invoke-static {}, Lcom/bumptech/glide/util/pool/GlideTrace;->endSection()V

    .line 269
    throw v0
.end method

.method willDecodeFromCache()Z
    .registers 3

    .line 140
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->INITIALIZE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->getNextStage(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object v0

    .line 141
    .local v0, "firstStage":Lcom/bumptech/glide/load/engine/DecodeJob$Stage;
    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-eq v0, v1, :cond_11

    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    return v1
.end method

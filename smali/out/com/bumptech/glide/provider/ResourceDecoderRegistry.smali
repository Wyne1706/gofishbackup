.class public Lcom/bumptech/glide/provider/ResourceDecoderRegistry;
.super Ljava/lang/Object;
.source "ResourceDecoderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;
    }
.end annotation


# instance fields
.field private final bucketPriorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final decoders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<",
            "**>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->bucketPriorityList:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->decoders:Ljava/util/Map;

    return-void
.end method

.method private declared-synchronized getOrAddEntryList(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "bucket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<",
            "**>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 96
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->bucketPriorityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 98
    iget-object v0, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->bucketPriorityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .end local p0    # "this":Lcom/bumptech/glide/provider/ResourceDecoderRegistry;
    :cond_e
    iget-object v0, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->decoders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 101
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;>;"
    if-nez v0, :cond_23

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 103
    iget-object v1, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->decoders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 105
    :cond_23
    monitor-exit p0

    return-object v0

    .line 95
    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;>;"
    .end local p1    # "bucket":Ljava/lang/String;
    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized append(Ljava/lang/String;Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 7
    .param p1, "bucket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "TT;TR;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TR;>;)V"
        }
    .end annotation

    .local p2, "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<TT;TR;>;"
    .local p3, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    monitor-enter p0

    .line 83
    :try_start_1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->getOrAddEntryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;

    invoke-direct {v1, p3, p4, p2}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 84
    monitor-exit p0

    return-void

    .line 82
    .end local p0    # "this":Lcom/bumptech/glide/provider/ResourceDecoderRegistry;
    .end local p1    # "bucket":Ljava/lang/String;
    .end local p2    # "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<TT;TR;>;"
    .end local p3    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p4    # "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDecoders(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "TT;TR;>;>;"
        }
    .end annotation

    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    monitor-enter p0

    .line 41
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ResourceDecoder<TT;TR;>;>;"
    iget-object v1, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->bucketPriorityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 43
    .local v2, "bucket":Ljava/lang/String;
    iget-object v3, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->decoders:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 44
    .local v3, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;>;"
    if-nez v3, :cond_23

    .line 45
    goto :goto_c

    .line 47
    :cond_23
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;

    .line 48
    .local v5, "entry":Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;, "Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;"
    invoke-virtual {v5, p1, p2}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;->handles(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 49
    iget-object v6, v5, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_42

    .line 51
    .end local v5    # "entry":Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;, "Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;"
    .end local p0    # "this":Lcom/bumptech/glide/provider/ResourceDecoderRegistry;
    :cond_3e
    goto :goto_27

    .line 52
    .end local v2    # "bucket":Ljava/lang/String;
    .end local v3    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;>;"
    :cond_3f
    goto :goto_c

    .line 55
    :cond_40
    monitor-exit p0

    return-object v0

    .line 40
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ResourceDecoder<TT;TR;>;>;"
    .end local p1    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p2    # "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    :catchall_42
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getResourceClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "TR;>;>;"
        }
    .end annotation

    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    monitor-enter p0

    .line 62
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<TR;>;>;"
    iget-object v1, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->bucketPriorityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 64
    .local v2, "bucket":Ljava/lang/String;
    iget-object v3, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->decoders:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 65
    .local v3, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;>;"
    if-nez v3, :cond_23

    .line 66
    goto :goto_c

    .line 68
    :cond_23
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;

    .line 69
    .local v5, "entry":Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;, "Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;"
    invoke-virtual {v5, p1, p2}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;->handles(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_46

    iget-object v6, v5, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;->resourceClass:Ljava/lang/Class;

    .line 70
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_46

    .line 71
    iget-object v6, v5, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;->resourceClass:Ljava/lang/Class;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_4a

    .line 73
    .end local v5    # "entry":Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;, "Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;"
    .end local p0    # "this":Lcom/bumptech/glide/provider/ResourceDecoderRegistry;
    :cond_46
    goto :goto_27

    .line 74
    .end local v2    # "bucket":Ljava/lang/String;
    .end local v3    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;>;"
    :cond_47
    goto :goto_c

    .line 75
    :cond_48
    monitor-exit p0

    return-object v0

    .line 61
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<TR;>;>;"
    .end local p1    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p2    # "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    :catchall_4a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized prepend(Ljava/lang/String;Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 8
    .param p1, "bucket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "TT;TR;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TR;>;)V"
        }
    .end annotation

    .local p2, "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<TT;TR;>;"
    .local p3, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    monitor-enter p0

    .line 91
    :try_start_1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->getOrAddEntryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;

    invoke-direct {v1, p3, p4, p2}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 92
    monitor-exit p0

    return-void

    .line 90
    .end local p0    # "this":Lcom/bumptech/glide/provider/ResourceDecoderRegistry;
    .end local p1    # "bucket":Ljava/lang/String;
    .end local p2    # "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<TT;TR;>;"
    .end local p3    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p4    # "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setBucketPriorityList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p1, "buckets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 21
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->bucketPriorityList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    .local v0, "previousBuckets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->bucketPriorityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 25
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 26
    .local v2, "bucket":Ljava/lang/String;
    iget-object v3, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->bucketPriorityList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    nop

    .end local v2    # "bucket":Ljava/lang/String;
    goto :goto_11

    .line 28
    .end local p0    # "this":Lcom/bumptech/glide/provider/ResourceDecoderRegistry;
    :cond_24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 29
    .local v2, "previousBucket":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 32
    iget-object v3, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->bucketPriorityList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_42

    .line 34
    .end local v2    # "previousBucket":Ljava/lang/String;
    :cond_3f
    goto :goto_28

    .line 35
    :cond_40
    monitor-exit p0

    return-void

    .line 20
    .end local v0    # "previousBuckets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p1    # "buckets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_42
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.class public Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;
.super Ljava/lang/Object;
.source "TranscoderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;
    }
.end annotation


# instance fields
.field private final transcoders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->transcoders:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "TZ;TR;>;"
        }
    .end annotation

    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    .local p2, "transcodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    monitor-enter p0

    .line 49
    :try_start_1
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 50
    invoke-static {}, Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;->get()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_4d

    monitor-exit p0

    return-object v0

    .line 52
    .end local p0    # "this":Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->transcoders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;

    .line 53
    .local v1, "entry":Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;, "Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry<**>;"
    invoke-virtual {v1, p1, p2}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;->handles(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 54
    iget-object v0, v1, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_4d

    monitor-exit p0

    return-object v0

    .line 56
    .end local v1    # "entry":Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;, "Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry<**>;"
    :cond_29
    goto :goto_13

    .line 58
    :cond_2a
    :try_start_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No transcoder registered to transcode from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4d
    .catchall {:try_start_2a .. :try_end_4d} :catchall_4d

    .line 48
    .end local p1    # "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    .end local p2    # "transcodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTranscodeClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "TR;>;>;"
        }
    .end annotation

    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    .local p2, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    monitor-enter p0

    .line 66
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, "transcodeClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<TR;>;>;"
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 69
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_39

    .line 70
    monitor-exit p0

    return-object v0

    .line 73
    .end local p0    # "this":Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->transcoders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;

    .line 74
    .local v2, "entry":Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;, "Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry<**>;"
    invoke-virtual {v2, p1, p2}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;->handles(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, v2, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;->toClass:Ljava/lang/Class;

    .line 75
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 76
    iget-object v3, v2, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;->toClass:Ljava/lang/Class;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catchall {:try_start_11 .. :try_end_36} :catchall_39

    .line 78
    .end local v2    # "entry":Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;, "Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry<**>;"
    :cond_36
    goto :goto_17

    .line 80
    :cond_37
    monitor-exit p0

    return-object v0

    .line 65
    .end local v0    # "transcodeClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<TR;>;>;"
    .end local p1    # "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    .end local p2    # "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "TZ;TR;>;)V"
        }
    .end annotation

    .local p1, "decodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    .local p2, "transcodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    .local p3, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;"
    monitor-enter p0

    .line 29
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->transcoders:Ljava/util/List;

    new-instance v1, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;

    invoke-direct {v1, p1, p2, p3}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 30
    monitor-exit p0

    return-void

    .line 28
    .end local p0    # "this":Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;
    .end local p1    # "decodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    .end local p2    # "transcodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    .end local p3    # "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;"
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

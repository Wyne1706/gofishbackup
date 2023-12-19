.class public Lcom/bumptech/glide/provider/EncoderRegistry;
.super Ljava/lang/Object;
.source "EncoderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/provider/EncoderRegistry$Entry;
    }
.end annotation


# instance fields
.field private final encoders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/provider/EncoderRegistry$Entry<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/provider/EncoderRegistry;->encoders:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized append(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/Encoder<",
            "TT;>;)V"
        }
    .end annotation

    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "encoder":Lcom/bumptech/glide/load/Encoder;, "Lcom/bumptech/glide/load/Encoder<TT;>;"
    monitor-enter p0

    .line 27
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/provider/EncoderRegistry;->encoders:Ljava/util/List;

    new-instance v1, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;

    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 28
    monitor-exit p0

    return-void

    .line 26
    .end local p0    # "this":Lcom/bumptech/glide/provider/EncoderRegistry;
    .end local p1    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p2    # "encoder":Lcom/bumptech/glide/load/Encoder;, "Lcom/bumptech/glide/load/Encoder<TT;>;"
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getEncoder(Ljava/lang/Class;)Lcom/bumptech/glide/load/Encoder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bumptech/glide/load/Encoder<",
            "TT;>;"
        }
    .end annotation

    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 18
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/provider/EncoderRegistry;->encoders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;

    .line 19
    .local v1, "entry":Lcom/bumptech/glide/provider/EncoderRegistry$Entry;, "Lcom/bumptech/glide/provider/EncoderRegistry$Entry<*>;"
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;->handles(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 20
    iget-object v0, v1, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;->encoder:Lcom/bumptech/glide/load/Encoder;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_21

    monitor-exit p0

    return-object v0

    .line 22
    .end local v1    # "entry":Lcom/bumptech/glide/provider/EncoderRegistry$Entry;, "Lcom/bumptech/glide/provider/EncoderRegistry$Entry<*>;"
    .end local p0    # "this":Lcom/bumptech/glide/provider/EncoderRegistry;
    :cond_1d
    goto :goto_7

    .line 23
    :cond_1e
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 17
    .end local p1    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized prepend(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/Encoder<",
            "TT;>;)V"
        }
    .end annotation

    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "encoder":Lcom/bumptech/glide/load/Encoder;, "Lcom/bumptech/glide/load/Encoder<TT;>;"
    monitor-enter p0

    .line 31
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/provider/EncoderRegistry;->encoders:Ljava/util/List;

    new-instance v1, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;

    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 32
    monitor-exit p0

    return-void

    .line 30
    .end local p0    # "this":Lcom/bumptech/glide/provider/EncoderRegistry;
    .end local p1    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p2    # "encoder":Lcom/bumptech/glide/load/Encoder;, "Lcom/bumptech/glide/load/Encoder<TT;>;"
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

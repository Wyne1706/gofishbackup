.class public Lcom/bumptech/glide/provider/ResourceEncoderRegistry;
.super Ljava/lang/Object;
.source "ResourceEncoderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/provider/ResourceEncoderRegistry$Entry;
    }
.end annotation


# instance fields
.field private final encoders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/provider/ResourceEncoderRegistry$Entry<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/provider/ResourceEncoderRegistry;->encoders:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized append(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Lcom/bumptech/glide/load/ResourceEncoder<",
            "TZ;>;)V"
        }
    .end annotation

    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    .local p2, "encoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<TZ;>;"
    monitor-enter p0

    .line 20
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/provider/ResourceEncoderRegistry;->encoders:Ljava/util/List;

    new-instance v1, Lcom/bumptech/glide/provider/ResourceEncoderRegistry$Entry;

    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/provider/ResourceEncoderRegistry$Entry;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 21
    monitor-exit p0

    return-void

    .line 19
    .end local p0    # "this":Lcom/bumptech/glide/provider/ResourceEncoderRegistry;
    .end local p1    # "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    .end local p2    # "encoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<TZ;>;"
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/Class;)Lcom/bumptech/glide/load/ResourceEncoder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/ResourceEncoder<",
            "TZ;>;"
        }
    .end annotation

    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    monitor-enter p0

    .line 32
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_2
    iget-object v1, p0, Lcom/bumptech/glide/provider/ResourceEncoderRegistry;->encoders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_8
    if-ge v0, v1, :cond_1f

    .line 33
    iget-object v2, p0, Lcom/bumptech/glide/provider/ResourceEncoderRegistry;->encoders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/provider/ResourceEncoderRegistry$Entry;

    .line 34
    .local v2, "entry":Lcom/bumptech/glide/provider/ResourceEncoderRegistry$Entry;, "Lcom/bumptech/glide/provider/ResourceEncoderRegistry$Entry<*>;"
    invoke-virtual {v2, p1}, Lcom/bumptech/glide/provider/ResourceEncoderRegistry$Entry;->handles(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 35
    iget-object v3, v2, Lcom/bumptech/glide/provider/ResourceEncoderRegistry$Entry;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_22

    monitor-exit p0

    return-object v3

    .line 32
    .end local v2    # "entry":Lcom/bumptech/glide/provider/ResourceEncoderRegistry$Entry;, "Lcom/bumptech/glide/provider/ResourceEncoderRegistry$Entry<*>;"
    .end local p0    # "this":Lcom/bumptech/glide/provider/ResourceEncoderRegistry;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 39
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1f
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 31
    .end local p1    # "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized prepend(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Lcom/bumptech/glide/load/ResourceEncoder<",
            "TZ;>;)V"
        }
    .end annotation

    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    .local p2, "encoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<TZ;>;"
    monitor-enter p0

    .line 25
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/provider/ResourceEncoderRegistry;->encoders:Ljava/util/List;

    new-instance v1, Lcom/bumptech/glide/provider/ResourceEncoderRegistry$Entry;

    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/provider/ResourceEncoderRegistry$Entry;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 26
    monitor-exit p0

    return-void

    .line 24
    .end local p0    # "this":Lcom/bumptech/glide/provider/ResourceEncoderRegistry;
    .end local p1    # "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    .end local p2    # "encoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<TZ;>;"
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

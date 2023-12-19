.class public Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;
.super Ljava/lang/Object;
.source "MultiModelLoaderFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;,
        Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;,
        Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$EmptyModelLoader;
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;

.field private static final EMPTY_MODEL_LOADER:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final alreadyUsedEntries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final factory:Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;

.field private final throwableListPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;

    .line 25
    new-instance v0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$EmptyModelLoader;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$EmptyModelLoader;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->EMPTY_MODEL_LOADER:Lcom/bumptech/glide/load/model/ModelLoader;

    return-void
.end method

.method public constructor <init>(Landroidx/core/util/Pools$Pool;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 32
    .local p1, "throwableListPool":Landroidx/core/util/Pools$Pool;, "Landroidx/core/util/Pools$Pool<Ljava/util/List<Ljava/lang/Throwable;>;>;"
    sget-object v0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;-><init>(Landroidx/core/util/Pools$Pool;Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;)V

    .line 33
    return-void
.end method

.method constructor <init>(Landroidx/core/util/Pools$Pool;Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;)V
    .registers 4
    .param p2, "factory"    # Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;",
            ")V"
        }
    .end annotation

    .line 37
    .local p1, "throwableListPool":Landroidx/core/util/Pools$Pool;, "Landroidx/core/util/Pools$Pool<Ljava/util/List<Ljava/lang/Throwable;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->entries:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->alreadyUsedEntries:Ljava/util/Set;

    .line 38
    iput-object p1, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->throwableListPool:Landroidx/core/util/Pools$Pool;

    .line 39
    iput-object p2, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->factory:Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;

    .line 40
    return-void
.end method

.method private add(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;Z)V
    .registers 8
    .param p4, "append"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
            "+TModel;+TData;>;Z)V"
        }
    .end annotation

    .line 61
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p3, "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<+TModel;+TData;>;"
    new-instance v0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;

    invoke-direct {v0, p1, p2, p3}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 62
    .local v0, "entry":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;, "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<TModel;TData;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->entries:Ljava/util/List;

    if-eqz p4, :cond_e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 63
    return-void
.end method

.method private build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<",
            "**>;)",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TModel;TData;>;"
        }
    .end annotation

    .line 178
    .local p1, "entry":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;, "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<**>;"
    iget-object v0, p1, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->factory:Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/model/ModelLoaderFactory;->build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoader;

    return-object v0
.end method

.method private static emptyModelLoader()Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TModel;TData;>;"
        }
    .end annotation

    .line 184
    sget-object v0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->EMPTY_MODEL_LOADER:Lcom/bumptech/glide/load/model/ModelLoader;

    return-object v0
.end method

.method private getFactory(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<",
            "**>;)",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
            "TModel;TData;>;"
        }
    .end annotation

    .line 172
    .local p1, "entry":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;, "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<**>;"
    iget-object v0, p1, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->factory:Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    return-object v0
.end method


# virtual methods
.method declared-synchronized append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
            "+TModel;+TData;>;)V"
        }
    .end annotation

    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p3, "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<+TModel;+TData;>;"
    monitor-enter p0

    .line 46
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->add(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 47
    monitor-exit p0

    return-void

    .line 45
    .end local p0    # "this":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;
    .end local p1    # "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .end local p2    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .end local p3    # "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<+TModel;+TData;>;"
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized build(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TModel;TData;>;"
        }
    .end annotation

    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    monitor-enter p0

    .line 131
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v0, "loaders":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoader<TModel;TData;>;>;"
    const/4 v1, 0x0

    .line 133
    .local v1, "ignoredAnyEntries":Z
    iget-object v2, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;

    .line 139
    .local v3, "entry":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;, "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<**>;"
    iget-object v4, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->alreadyUsedEntries:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 140
    const/4 v1, 0x1

    .line 141
    goto :goto_d

    .line 143
    :cond_23
    invoke-virtual {v3, p1, p2}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->handles(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 144
    iget-object v4, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->alreadyUsedEntries:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v4, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->alreadyUsedEntries:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 148
    .end local v3    # "entry":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;, "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<**>;"
    :cond_3a
    goto :goto_d

    .line 149
    :cond_3b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4c

    .line 150
    iget-object v2, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->factory:Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;

    iget-object v3, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->throwableListPool:Landroidx/core/util/Pools$Pool;

    invoke-virtual {v2, v0, v3}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;->build(Ljava/util/List;Landroidx/core/util/Pools$Pool;)Lcom/bumptech/glide/load/model/MultiModelLoader;

    move-result-object v2
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_69

    monitor-exit p0

    return-object v2

    .line 151
    :cond_4c
    :try_start_4c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_5b

    .line 152
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/model/ModelLoader;
    :try_end_59
    .catchall {:try_start_4c .. :try_end_59} :catchall_69

    monitor-exit p0

    return-object v2

    .line 157
    :cond_5b
    if-eqz v1, :cond_63

    .line 158
    :try_start_5d
    invoke-static {}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->emptyModelLoader()Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v2
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_69

    monitor-exit p0

    return-object v2

    .line 160
    :cond_63
    :try_start_63
    new-instance v2, Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;

    invoke-direct {v2, p1, p2}, Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .end local p1    # "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .end local p2    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    throw v2
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_69

    .line 163
    .end local v0    # "loaders":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoader<TModel;TData;>;>;"
    .end local v1    # "ignoredAnyEntries":Z
    .restart local p1    # "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .restart local p2    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    :catchall_69
    move-exception v0

    .line 164
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_6a
    iget-object v1, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->alreadyUsedEntries:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 165
    throw v0
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_70

    .line 130
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local p0    # "this":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;
    .end local p1    # "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .end local p2    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    :catchall_70
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized build(Ljava/lang/Class;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TModel;*>;>;"
        }
    .end annotation

    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    monitor-enter p0

    .line 93
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, "loaders":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoader<TModel;*>;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;

    .line 100
    .local v2, "entry":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;, "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<**>;"
    iget-object v3, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->alreadyUsedEntries:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 101
    goto :goto_c

    .line 103
    :cond_21
    invoke-virtual {v2, p1}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->handles(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 104
    iget-object v3, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->alreadyUsedEntries:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v3, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->alreadyUsedEntries:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3b

    .line 108
    .end local v2    # "entry":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;, "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<**>;"
    :cond_38
    goto :goto_c

    .line 109
    :cond_39
    monitor-exit p0

    return-object v0

    .line 110
    .end local v0    # "loaders":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoader<TModel;*>;>;"
    :catchall_3b
    move-exception v0

    .line 111
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_3c
    iget-object v1, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->alreadyUsedEntries:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 112
    throw v0
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_42

    .line 92
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local p0    # "this":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;
    .end local p1    # "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    :catchall_42
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getDataClasses(Ljava/lang/Class;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    .line 118
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;

    .line 120
    .local v2, "entry":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;, "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<**>;"
    iget-object v3, v2, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->dataClass:Ljava/lang/Class;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->handles(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 121
    iget-object v3, v2, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->dataClass:Ljava/lang/Class;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2e

    .line 123
    .end local v2    # "entry":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;, "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<**>;"
    .end local p0    # "this":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;
    :cond_2b
    goto :goto_c

    .line 124
    :cond_2c
    monitor-exit p0

    return-object v0

    .line 117
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local p1    # "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
            "+TModel;+TData;>;)V"
        }
    .end annotation

    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p3, "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<+TModel;+TData;>;"
    monitor-enter p0

    .line 53
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->add(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 54
    monitor-exit p0

    return-void

    .line 52
    .end local p0    # "this":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;
    .end local p1    # "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .end local p2    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .end local p3    # "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<+TModel;+TData;>;"
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized remove(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
            "+TModel;+TData;>;>;"
        }
    .end annotation

    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    monitor-enter p0

    .line 79
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v0, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoaderFactory<+TModel;+TData;>;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<**>;>;"
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;

    .line 82
    .local v2, "entry":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;, "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<**>;"
    invoke-virtual {v2, p1, p2}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->handles(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 84
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->getFactory(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2b

    .line 86
    .end local v2    # "entry":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;, "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<**>;"
    .end local p0    # "this":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;
    :cond_28
    goto :goto_c

    .line 87
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<**>;>;"
    :cond_29
    monitor-exit p0

    return-object v0

    .line 78
    .end local v0    # "factories":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoaderFactory<+TModel;+TData;>;>;"
    .end local p1    # "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .end local p2    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized replace(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
            "+TModel;+TData;>;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
            "+TModel;+TData;>;>;"
        }
    .end annotation

    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p3, "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<+TModel;+TData;>;"
    monitor-enter p0

    .line 70
    nop

    .line 71
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->remove(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 72
    .local v0, "removed":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoaderFactory<+TModel;+TData;>;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 73
    monitor-exit p0

    return-object v0

    .line 69
    .end local v0    # "removed":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoaderFactory<+TModel;+TData;>;>;"
    .end local p0    # "this":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;
    .end local p1    # "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .end local p2    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .end local p3    # "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<+TModel;+TData;>;"
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

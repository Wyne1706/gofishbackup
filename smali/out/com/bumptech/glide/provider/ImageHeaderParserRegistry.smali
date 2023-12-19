.class public final Lcom/bumptech/glide/provider/ImageHeaderParserRegistry;
.super Ljava/lang/Object;
.source "ImageHeaderParserRegistry.java"


# instance fields
.field private final parsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/provider/ImageHeaderParserRegistry;->parsers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lcom/bumptech/glide/load/ImageHeaderParser;)V
    .registers 3
    .param p1, "parser"    # Lcom/bumptech/glide/load/ImageHeaderParser;

    monitor-enter p0

    .line 18
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/provider/ImageHeaderParserRegistry;->parsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 19
    monitor-exit p0

    return-void

    .line 17
    .end local p0    # "this":Lcom/bumptech/glide/provider/ImageHeaderParserRegistry;
    .end local p1    # "parser":Lcom/bumptech/glide/load/ImageHeaderParser;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getParsers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 14
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/provider/ImageHeaderParserRegistry;->parsers:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 14
    .end local p0    # "this":Lcom/bumptech/glide/provider/ImageHeaderParserRegistry;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher;
.super Ljava/lang/Object;
.source "UnitModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/UnitModelLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnitFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "TModel;>;"
    }
.end annotation


# instance fields
.field private final resource:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModel;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher;, "Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher<TModel;>;"
    .local p1, "resource":Ljava/lang/Object;, "TModel;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher;->resource:Ljava/lang/Object;

    .line 52
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    .line 68
    .local p0, "this":Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher;, "Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher<TModel;>;"
    return-void
.end method

.method public cleanup()V
    .registers 1

    .line 63
    .local p0, "this":Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher;, "Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher<TModel;>;"
    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TModel;>;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher;, "Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher<TModel;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher;->resource:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .registers 2

    .line 80
    .local p0, "this":Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher;, "Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher<TModel;>;"
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .registers 4
    .param p1, "priority"    # Lcom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-TModel;>;)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher;, "Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher<TModel;>;"
    .local p2, "callback":Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;, "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<-TModel;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher;->resource:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

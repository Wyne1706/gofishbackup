.class final Lcom/bumptech/glide/load/model/DirectResourceLoader$AssetFileDescriptorFactory;
.super Ljava/lang/Object;
.source "DirectResourceLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;
.implements Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/DirectResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AssetFileDescriptorFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Ljava/lang/Integer;",
        "Landroid/content/res/AssetFileDescriptor;",
        ">;",
        "Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener<",
        "Landroid/content/res/AssetFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader$AssetFileDescriptorFactory;->context:Landroid/content/Context;

    .line 100
    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 4
    .param p1, "multiFactory"    # Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Ljava/lang/Integer;",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/bumptech/glide/load/model/DirectResourceLoader;

    iget-object v1, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader$AssetFileDescriptorFactory;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/model/DirectResourceLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;)V

    return-object v0
.end method

.method public close(Landroid/content/res/AssetFileDescriptor;)V
    .registers 2
    .param p1, "data"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 110
    return-void
.end method

.method public bridge synthetic close(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    check-cast p1, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/model/DirectResourceLoader$AssetFileDescriptorFactory;->close(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 114
    const-class v0, Landroid/content/res/AssetFileDescriptor;

    return-object v0
.end method

.method public open(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)Landroid/content/res/AssetFileDescriptor;
    .registers 5
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "resourceId"    # I

    .line 104
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic open(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)Ljava/lang/Object;
    .registers 4

    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/model/DirectResourceLoader$AssetFileDescriptorFactory;->open(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public teardown()V
    .registers 1

    .line 125
    return-void
.end method

.class Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener$1;
.super Ljava/lang/Object;
.source "DefaultOnHeaderDecodedListener.java"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnPartialImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;->onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;

    .line 75
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener$1;->this$0:Lcom/bumptech/glide/load/resource/DefaultOnHeaderDecodedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPartialImage(Landroid/graphics/ImageDecoder$DecodeException;)Z
    .registers 3
    .param p1, "e"    # Landroid/graphics/ImageDecoder$DecodeException;

    .line 79
    const/4 v0, 0x0

    return v0
.end method

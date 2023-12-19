.class public abstract Lcom/bumptech/glide/request/target/CustomTarget;
.super Ljava/lang/Object;
.source "CustomTarget.java"

# interfaces
.implements Lcom/bumptech/glide/request/target/Target;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/target/Target<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final height:I

.field private request:Lcom/bumptech/glide/request/Request;

.field private final width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 54
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomTarget;, "Lcom/bumptech/glide/request/target/CustomTarget<TT;>;"
    const/high16 v0, -0x80000000

    invoke-direct {p0, v0, v0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>(II)V

    .line 55
    return-void
.end method

.method public constructor <init>(II)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 67
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomTarget;, "Lcom/bumptech/glide/request/target/CustomTarget<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1, p2}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 77
    iput p1, p0, Lcom/bumptech/glide/request/target/CustomTarget;->width:I

    .line 78
    iput p2, p0, Lcom/bumptech/glide/request/target/CustomTarget;->height:I

    .line 79
    return-void

    .line 69
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getRequest()Lcom/bumptech/glide/request/Request;
    .registers 2

    .line 124
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomTarget;, "Lcom/bumptech/glide/request/target/CustomTarget<TT;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomTarget;->request:Lcom/bumptech/glide/request/Request;

    return-object v0
.end method

.method public final getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 4
    .param p1, "cb"    # Lcom/bumptech/glide/request/target/SizeReadyCallback;

    .line 108
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomTarget;, "Lcom/bumptech/glide/request/target/CustomTarget<TT;>;"
    iget v0, p0, Lcom/bumptech/glide/request/target/CustomTarget;->width:I

    iget v1, p0, Lcom/bumptech/glide/request/target/CustomTarget;->height:I

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    .line 109
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 94
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomTarget;, "Lcom/bumptech/glide/request/target/CustomTarget<TT;>;"
    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 104
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomTarget;, "Lcom/bumptech/glide/request/target/CustomTarget<TT;>;"
    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;

    .line 99
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomTarget;, "Lcom/bumptech/glide/request/target/CustomTarget<TT;>;"
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 84
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomTarget;, "Lcom/bumptech/glide/request/target/CustomTarget<TT;>;"
    return-void
.end method

.method public onStop()V
    .registers 1

    .line 89
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomTarget;, "Lcom/bumptech/glide/request/target/CustomTarget<TT;>;"
    return-void
.end method

.method public final removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 2
    .param p1, "cb"    # Lcom/bumptech/glide/request/target/SizeReadyCallback;

    .line 114
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomTarget;, "Lcom/bumptech/glide/request/target/CustomTarget<TT;>;"
    return-void
.end method

.method public final setRequest(Lcom/bumptech/glide/request/Request;)V
    .registers 2
    .param p1, "request"    # Lcom/bumptech/glide/request/Request;

    .line 118
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomTarget;, "Lcom/bumptech/glide/request/target/CustomTarget<TT;>;"
    iput-object p1, p0, Lcom/bumptech/glide/request/target/CustomTarget;->request:Lcom/bumptech/glide/request/Request;

    .line 119
    return-void
.end method

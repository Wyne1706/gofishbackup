.class public abstract Lcom/bumptech/glide/request/target/ThumbnailImageViewTarget;
.super Lcom/bumptech/glide/request/target/ImageViewTarget;
.source "ThumbnailImageViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/target/ImageViewTarget<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 2
    .param p1, "view"    # Landroid/widget/ImageView;

    .line 27
    .local p0, "this":Lcom/bumptech/glide/request/target/ThumbnailImageViewTarget;, "Lcom/bumptech/glide/request/target/ThumbnailImageViewTarget<TT;>;"
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .registers 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "waitForLayout"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    .local p0, "this":Lcom/bumptech/glide/request/target/ThumbnailImageViewTarget;, "Lcom/bumptech/glide/request/target/ThumbnailImageViewTarget<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/request/target/ImageViewTarget;-><init>(Landroid/widget/ImageView;Z)V

    .line 37
    return-void
.end method


# virtual methods
.method protected abstract getDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation
.end method

.method protected setResource(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/bumptech/glide/request/target/ThumbnailImageViewTarget;, "Lcom/bumptech/glide/request/target/ThumbnailImageViewTarget<TT;>;"
    .local p1, "resource":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ThumbnailImageViewTarget;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 42
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/target/ThumbnailImageViewTarget;->getDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 43
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_20

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v2, :cond_20

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_20

    .line 44
    new-instance v2, Lcom/bumptech/glide/request/target/FixedSizeDrawable;

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v2, v1, v3, v4}, Lcom/bumptech/glide/request/target/FixedSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v1, v2

    .line 47
    :cond_20
    iget-object v2, p0, Lcom/bumptech/glide/request/target/ThumbnailImageViewTarget;->view:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    return-void
.end method

.class public Lcom/bumptech/glide/request/transition/BitmapTransitionFactory;
.super Lcom/bumptech/glide/request/transition/BitmapContainerTransitionFactory;
.source "BitmapTransitionFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/transition/BitmapContainerTransitionFactory<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/transition/TransitionFactory;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/transition/TransitionFactory<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 15
    .local p1, "realFactory":Lcom/bumptech/glide/request/transition/TransitionFactory;, "Lcom/bumptech/glide/request/transition/TransitionFactory<Landroid/graphics/drawable/Drawable;>;"
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/transition/BitmapContainerTransitionFactory;-><init>(Lcom/bumptech/glide/request/transition/TransitionFactory;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p1, "current"    # Landroid/graphics/Bitmap;

    .line 21
    return-object p1
.end method

.method protected bridge synthetic getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 2

    .line 13
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/transition/BitmapTransitionFactory;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

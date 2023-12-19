.class public final synthetic Lcom/google/android/material/carousel/MaskableFrameLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/material/canvas/CanvasCompat$CanvasOperation;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/carousel/MaskableFrameLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/carousel/MaskableFrameLayout;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/carousel/MaskableFrameLayout$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/carousel/MaskableFrameLayout;

    return-void
.end method


# virtual methods
.method public final run(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/carousel/MaskableFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/carousel/MaskableFrameLayout;->lambda$dispatchDraw$1$com-google-android-material-carousel-MaskableFrameLayout(Landroid/graphics/Canvas;)V

    return-void
.end method

.class Lcom/google/android/material/imageview/ShapeableImageView$OutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "ShapeableImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/imageview/ShapeableImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OutlineProvider"
.end annotation


# instance fields
.field private final rect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/google/android/material/imageview/ShapeableImageView;


# direct methods
.method constructor <init>(Lcom/google/android/material/imageview/ShapeableImageView;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/android/material/imageview/ShapeableImageView;

    .line 568
    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView$OutlineProvider;->this$0:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 570
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView$OutlineProvider;->rect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 574
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView$OutlineProvider;->this$0:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0}, Lcom/google/android/material/imageview/ShapeableImageView;->access$000(Lcom/google/android/material/imageview/ShapeableImageView;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    if-nez v0, :cond_9

    .line 575
    return-void

    .line 578
    :cond_9
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView$OutlineProvider;->this$0:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0}, Lcom/google/android/material/imageview/ShapeableImageView;->access$100(Lcom/google/android/material/imageview/ShapeableImageView;)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-nez v0, :cond_21

    .line 579
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView$OutlineProvider;->this$0:Lcom/google/android/material/imageview/ShapeableImageView;

    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView$OutlineProvider;->this$0:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v2}, Lcom/google/android/material/imageview/ShapeableImageView;->access$000(Lcom/google/android/material/imageview/ShapeableImageView;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    invoke-static {v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;->access$102(Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/shape/MaterialShapeDrawable;)Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 582
    :cond_21
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView$OutlineProvider;->this$0:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0}, Lcom/google/android/material/imageview/ShapeableImageView;->access$200(Lcom/google/android/material/imageview/ShapeableImageView;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView$OutlineProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 583
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView$OutlineProvider;->this$0:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0}, Lcom/google/android/material/imageview/ShapeableImageView;->access$100(Lcom/google/android/material/imageview/ShapeableImageView;)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView$OutlineProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 584
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView$OutlineProvider;->this$0:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0}, Lcom/google/android/material/imageview/ShapeableImageView;->access$100(Lcom/google/android/material/imageview/ShapeableImageView;)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getOutline(Landroid/graphics/Outline;)V

    .line 585
    return-void
.end method

.class Lcom/google/android/material/shape/ShapePath$1;
.super Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/shape/ShapePath;->createShadowCompatOperation(Landroid/graphics/Matrix;)Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/shape/ShapePath;

.field final synthetic val$operations:Ljava/util/List;

.field final synthetic val$transformCopy:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Lcom/google/android/material/shape/ShapePath;Ljava/util/List;Landroid/graphics/Matrix;)V
    .registers 4
    .param p1, "this$0"    # Lcom/google/android/material/shape/ShapePath;

    .line 300
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePath$1;->this$0:Lcom/google/android/material/shape/ShapePath;

    iput-object p2, p0, Lcom/google/android/material/shape/ShapePath$1;->val$operations:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/material/shape/ShapePath$1;->val$transformCopy:Landroid/graphics/Matrix;

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Matrix;Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V
    .registers 8
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "shadowRenderer"    # Lcom/google/android/material/shadow/ShadowRenderer;
    .param p3, "shadowElevation"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .line 304
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$1;->val$operations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    .line 305
    .local v1, "op":Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
    iget-object v2, p0, Lcom/google/android/material/shape/ShapePath$1;->val$transformCopy:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, p2, p3, p4}, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;->draw(Landroid/graphics/Matrix;Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V

    .line 306
    .end local v1    # "op":Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
    goto :goto_6

    .line 307
    :cond_18
    return-void
.end method

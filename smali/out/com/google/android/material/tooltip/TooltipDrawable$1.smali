.class Lcom/google/android/material/tooltip/TooltipDrawable$1;
.super Ljava/lang/Object;
.source "TooltipDrawable.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tooltip/TooltipDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/tooltip/TooltipDrawable;


# direct methods
.method constructor <init>(Lcom/google/android/material/tooltip/TooltipDrawable;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 82
    iput-object p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable$1;->this$0:Lcom/google/android/material/tooltip/TooltipDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 94
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable$1;->this$0:Lcom/google/android/material/tooltip/TooltipDrawable;

    invoke-static {v0, p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->access$000(Lcom/google/android/material/tooltip/TooltipDrawable;Landroid/view/View;)V

    .line 95
    return-void
.end method

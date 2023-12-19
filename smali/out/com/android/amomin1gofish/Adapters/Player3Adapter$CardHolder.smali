.class Lcom/android/amomin1gofish/Adapters/Player3Adapter$CardHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "Player3Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/amomin1gofish/Adapters/Player3Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CardHolder"
.end annotation


# instance fields
.field imgCard:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/amomin1gofish/Adapters/Player3Adapter;


# direct methods
.method public constructor <init>(Lcom/android/amomin1gofish/Adapters/Player3Adapter;Landroid/view/View;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/amomin1gofish/Adapters/Player3Adapter;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "i"    # I

    .line 114
    iput-object p1, p0, Lcom/android/amomin1gofish/Adapters/Player3Adapter$CardHolder;->this$0:Lcom/android/amomin1gofish/Adapters/Player3Adapter;

    .line 115
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 116
    sget v0, Lcom/android/amomin1gofish/R$id;->imgCard:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/amomin1gofish/Adapters/Player3Adapter$CardHolder;->imgCard:Landroid/widget/ImageView;

    .line 120
    return-void
.end method

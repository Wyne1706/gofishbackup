.class public Lcom/android/amomin1gofish/Adapters/Player2Adapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "Player2Adapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/amomin1gofish/Adapters/Player2Adapter$CardHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/amomin1gofish/Adapters/Player2Adapter$CardHolder;",
        ">;"
    }
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field cardModelArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/amomin1gofish/Models/CardModel;",
            ">;"
        }
    .end annotation
.end field

.field layoutInflater:Landroid/view/LayoutInflater;

.field private showCards:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/android/amomin1gofish/Models/CardModel;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p2, "cardModelArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/amomin1gofish/Models/CardModel;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/amomin1gofish/Adapters/Player2Adapter;->showCards:Z

    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/amomin1gofish/Adapters/Player2Adapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 69
    iput-object p1, p0, Lcom/android/amomin1gofish/Adapters/Player2Adapter;->activity:Landroid/app/Activity;

    .line 71
    iput-object p2, p0, Lcom/android/amomin1gofish/Adapters/Player2Adapter;->cardModelArrayList:Ljava/util/ArrayList;

    .line 72
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/amomin1gofish/Adapters/Player2Adapter;->cardModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 86
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 2
    .param p1, "position"    # I

    .line 91
    return p1
.end method

.method public groupAndRemoveCards(Ljava/util/ArrayList;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/amomin1gofish/Models/CardModel;",
            ">;)I"
        }
    .end annotation

    .line 43
    .local p1, "cardModelArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/amomin1gofish/Models/CardModel;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/amomin1gofish/Models/CardModel;>;>;"
    const/4 v1, 0x0

    .line 46
    .local v1, "totalSeries":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/amomin1gofish/Models/CardModel;

    .line 47
    .local v3, "card":Lcom/android/amomin1gofish/Models/CardModel;
    invoke-virtual {v3}, Lcom/android/amomin1gofish/Models/CardModel;->getShortName()Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 49
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 51
    :cond_2a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/amomin1gofish/Models/CardModel;>;"
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .end local v3    # "card":Lcom/android/amomin1gofish/Models/CardModel;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/amomin1gofish/Models/CardModel;>;"
    :goto_35
    goto :goto_a

    .line 57
    :cond_36
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 58
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/amomin1gofish/Models/CardModel;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_62

    .line 59
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 62
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/amomin1gofish/Models/CardModel;>;>;"
    :cond_62
    goto :goto_3e

    .line 63
    :cond_63
    invoke-virtual {p0}, Lcom/android/amomin1gofish/Adapters/Player2Adapter;->notifyDataSetChanged()V

    .line 64
    return v1
.end method

.method public itemAdded(Lcom/android/amomin1gofish/Models/CardModel;)V
    .registers 3
    .param p1, "cardModel"    # Lcom/android/amomin1gofish/Models/CardModel;

    .line 34
    iget-object v0, p0, Lcom/android/amomin1gofish/Adapters/Player2Adapter;->cardModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/android/amomin1gofish/Adapters/Player2Adapter;->cardModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/amomin1gofish/Adapters/Player2Adapter;->notifyItemInserted(I)V

    .line 36
    return-void
.end method

.method public itemRemoved(I)V
    .registers 3
    .param p1, "index"    # I

    .line 38
    iget-object v0, p0, Lcom/android/amomin1gofish/Adapters/Player2Adapter;->cardModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/amomin1gofish/Adapters/Player2Adapter;->notifyItemRemoved(I)V

    .line 41
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 22
    check-cast p1, Lcom/android/amomin1gofish/Adapters/Player2Adapter$CardHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/amomin1gofish/Adapters/Player2Adapter;->onBindViewHolder(Lcom/android/amomin1gofish/Adapters/Player2Adapter$CardHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/amomin1gofish/Adapters/Player2Adapter$CardHolder;I)V
    .registers 7
    .param p1, "cardHolder"    # Lcom/android/amomin1gofish/Adapters/Player2Adapter$CardHolder;
    .param p2, "i"    # I

    .line 98
    iget-boolean v0, p0, Lcom/android/amomin1gofish/Adapters/Player2Adapter;->showCards:Z

    const/high16 v1, 0x42b40000    # 90.0f

    if-eqz v0, :cond_40

    .line 99
    iget-object v0, p0, Lcom/android/amomin1gofish/Adapters/Player2Adapter;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:///android_asset/images/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/amomin1gofish/Adapters/Player2Adapter;->cardModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/amomin1gofish/Models/CardModel;

    invoke-virtual {v3}, Lcom/android/amomin1gofish/Models/CardModel;->getImagePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v2, Lcom/android/amomin1gofish/Utilities/RotateTransformation;

    invoke-direct {v2, v1}, Lcom/android/amomin1gofish/Utilities/RotateTransformation;-><init>(F)V

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p1, Lcom/android/amomin1gofish/Adapters/Player2Adapter$CardHolder;->imgCard:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_60

    .line 101
    :cond_40
    iget-object v0, p0, Lcom/android/amomin1gofish/Adapters/Player2Adapter;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget v2, Lcom/android/amomin1gofish/R$drawable;->cardbg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v2, Lcom/android/amomin1gofish/Utilities/RotateTransformation;

    invoke-direct {v2, v1}, Lcom/android/amomin1gofish/Utilities/RotateTransformation;-><init>(F)V

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p1, Lcom/android/amomin1gofish/Adapters/Player2Adapter$CardHolder;->imgCard:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 105
    :goto_60
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/android/amomin1gofish/Adapters/Player2Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/amomin1gofish/Adapters/Player2Adapter$CardHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/amomin1gofish/Adapters/Player2Adapter$CardHolder;
    .registers 6
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .line 77
    iget-object v0, p0, Lcom/android/amomin1gofish/Adapters/Player2Adapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/amomin1gofish/R$layout;->layout_recyclerview_rotate:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/amomin1gofish/Adapters/Player2Adapter$CardHolder;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/amomin1gofish/Adapters/Player2Adapter$CardHolder;-><init>(Lcom/android/amomin1gofish/Adapters/Player2Adapter;Landroid/view/View;I)V

    .line 80
    .local v1, "cardHolder":Lcom/android/amomin1gofish/Adapters/Player2Adapter$CardHolder;
    return-object v1
.end method

.method public toggleCards()V
    .registers 2

    .line 30
    iget-boolean v0, p0, Lcom/android/amomin1gofish/Adapters/Player2Adapter;->showCards:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/amomin1gofish/Adapters/Player2Adapter;->showCards:Z

    .line 31
    invoke-virtual {p0}, Lcom/android/amomin1gofish/Adapters/Player2Adapter;->notifyDataSetChanged()V

    .line 32
    return-void
.end method

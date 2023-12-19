.class Lcom/android/amomin1gofish/GameActivity$9;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/amomin1gofish/GameActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/amomin1gofish/GameActivity;


# direct methods
.method constructor <init>(Lcom/android/amomin1gofish/GameActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/amomin1gofish/GameActivity;

    .line 659
    iput-object p1, p0, Lcom/android/amomin1gofish/GameActivity$9;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 662
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$9;->this$0:Lcom/android/amomin1gofish/GameActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/amomin1gofish/GameActivity;->isHost:Z

    .line 663
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$9;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-static {v0}, Lcom/android/amomin1gofish/GameActivity;->access$1000(Lcom/android/amomin1gofish/GameActivity;)V

    .line 665
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$9;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/amomin1gofish/GameActivity;->access$1100(Lcom/android/amomin1gofish/GameActivity;Landroid/bluetooth/BluetoothAdapter;)V

    .line 666
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$9;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-static {v0}, Lcom/android/amomin1gofish/GameActivity;->access$1200(Lcom/android/amomin1gofish/GameActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "You Are The Host"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 667
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$9;->this$0:Lcom/android/amomin1gofish/GameActivity;

    const-string v1, "data.json"

    invoke-static {v0, v1}, Lcom/android/amomin1gofish/Utilities/JsonReader;->readCardsFromJson(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    .line 668
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$9;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v0, v0, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 669
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_30
    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity$9;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v1, v1, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_50

    .line 670
    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity$9;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v1, v1, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/amomin1gofish/Models/CardModel;

    invoke-virtual {v1}, Lcom/android/amomin1gofish/Models/CardModel;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GOFISHGAME"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 672
    .end local v0    # "i":I
    :cond_50
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$9;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-static {v0}, Lcom/android/amomin1gofish/GameActivity;->access$1300(Lcom/android/amomin1gofish/GameActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 673
    return-void
.end method

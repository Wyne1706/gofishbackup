.class Lcom/android/amomin1gofish/GameActivity$4$1;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/amomin1gofish/GameActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/amomin1gofish/GameActivity$4;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/amomin1gofish/GameActivity$4;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/amomin1gofish/GameActivity$4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iput-object p2, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 196
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v0, v0, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-virtual {v0}, Lcom/android/amomin1gofish/GameActivity;->gameOverChecker()V

    .line 197
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->val$data:Ljava/lang/String;

    const-string v1, "GOFISHGAME"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "message":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DATA type is NOT JSON***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AMOMIN"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v3, "SELECTCARDDIALOG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "&"

    const/4 v8, 0x1

    if-eqz v3, :cond_a0

    .line 203
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "parts":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 205
    .local v3, "splitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v7, v7, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-boolean v7, v7, Lcom/android/amomin1gofish/GameActivity;->isHost:Z

    if-eqz v7, :cond_9e

    .line 206
    const-string v7, "Data come for HOST"

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity;->myBluetoothName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_92

    .line 208
    iget-object v7, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v7, v7, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity;->NEWplayersArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/amomin1gofish/Models/UserModel;

    invoke-virtual {v6}, Lcom/android/amomin1gofish/Models/UserModel;->getCardModelArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 209
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 210
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 208
    invoke-virtual {v7, v6, v5, v4, v8}, Lcom/android/amomin1gofish/GameActivity;->answerCardDialog(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v4, "Question asked to HOST"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    .line 213
    :cond_92
    const-string v4, "Question is not for HOST. Data send to USERS"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v1, v1, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-static {v1, v0}, Lcom/android/amomin1gofish/GameActivity;->access$400(Lcom/android/amomin1gofish/GameActivity;Ljava/lang/Object;)V

    .line 218
    .end local v2    # "parts":[Ljava/lang/String;
    .end local v3    # "splitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9e
    :goto_9e
    goto/16 :goto_418

    .line 219
    :cond_a0
    const-string v3, "ANSWERCARDDIALOG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13b

    .line 220
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "parts":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 224
    .local v2, "splitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v3, v3, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-boolean v3, v3, Lcom/android/amomin1gofish/GameActivity;->isHost:Z

    if-eqz v3, :cond_139

    .line 225
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity;->myBluetoothName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_132

    .line 226
    new-instance v7, Lcom/android/amomin1gofish/Models/CardModel;

    invoke-direct {v7}, Lcom/android/amomin1gofish/Models/CardModel;-><init>()V

    .line 227
    .local v7, "cardModel":Lcom/android/amomin1gofish/Models/CardModel;
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/amomin1gofish/Models/CardModel;->setName(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/android/amomin1gofish/Models/CardModel;->setShortName(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Lcom/android/amomin1gofish/Models/CardModel;->setImagePath(Ljava/lang/String;)V

    .line 230
    iget-object v4, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v4, v4, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v4, v4, Lcom/android/amomin1gofish/GameActivity;->player1Adapter:Lcom/android/amomin1gofish/Adapters/Player1Adapter;

    invoke-virtual {v4, v7}, Lcom/android/amomin1gofish/Adapters/Player1Adapter;->itemAdded(Lcom/android/amomin1gofish/Models/CardModel;)V

    .line 231
    iget-object v4, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v4, v4, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "You received the "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 232
    invoke-virtual {v7}, Lcom/android/amomin1gofish/Models/CardModel;->getShortName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " card from "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 233
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Player"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-static {v4, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 235
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 236
    .end local v7    # "cardModel":Lcom/android/amomin1gofish/Models/CardModel;
    goto :goto_139

    .line 237
    :cond_132
    iget-object v3, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v3, v3, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-static {v3, v0}, Lcom/android/amomin1gofish/GameActivity;->access$400(Lcom/android/amomin1gofish/GameActivity;Ljava/lang/Object;)V

    .line 240
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v2    # "splitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_139
    :goto_139
    goto/16 :goto_418

    .line 241
    :cond_13b
    const-string v3, "GOFISH"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "CARDCOUNT&"

    if-eqz v3, :cond_20f

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GOFISH DATA"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 244
    .restart local v1    # "parts":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 246
    .restart local v3    # "splitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v7, v7, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v7, v7, Lcom/android/amomin1gofish/GameActivity;->myBluetoothName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_206

    .line 247
    iget-object v5, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v5, v5, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v5, v5, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v7, v7, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v7, v7, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    .line 248
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/amomin1gofish/Models/CardModel;

    .line 249
    .local v5, "cardModel":Lcom/android/amomin1gofish/Models/CardModel;
    iget-object v7, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v7, v7, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v7, v7, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v8

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 250
    iget-object v7, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v7, v7, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v7, v7, Lcom/android/amomin1gofish/GameActivity;->player1Adapter:Lcom/android/amomin1gofish/Adapters/Player1Adapter;

    invoke-virtual {v7, v5}, Lcom/android/amomin1gofish/Adapters/Player1Adapter;->itemAdded(Lcom/android/amomin1gofish/Models/CardModel;)V

    .line 251
    iget-object v7, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v7, v7, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v8, v8, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v8, v8, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/amomin1gofish/GameActivity;->access$400(Lcom/android/amomin1gofish/GameActivity;Ljava/lang/Object;)V

    .line 252
    iget-object v4, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v4, v4, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v4, v4, Lcom/android/amomin1gofish/GameActivity;->tvCardCount:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v8, v8, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v8, v8, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v2, v2, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    const-string v4, "You drew a card from the deck!"

    invoke-static {v2, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 254
    .end local v5    # "cardModel":Lcom/android/amomin1gofish/Models/CardModel;
    goto :goto_20d

    .line 255
    :cond_206
    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v2, v2, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-static {v2, v0}, Lcom/android/amomin1gofish/GameActivity;->access$400(Lcom/android/amomin1gofish/GameActivity;Ljava/lang/Object;)V

    .line 258
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v3    # "splitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_20d
    goto/16 :goto_418

    .line 259
    :cond_20f
    const-string v1, "CARDCOUNT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, " Cards Left"

    if-eqz v1, :cond_268

    .line 260
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 261
    .restart local v1    # "parts":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 262
    .restart local v3    # "splitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v5, v5, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v5, v5, Lcom/android/amomin1gofish/GameActivity;->tvCardCount:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v2, v2, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/amomin1gofish/GameActivity;->access$400(Lcom/android/amomin1gofish/GameActivity;Ljava/lang/Object;)V

    .line 265
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v3    # "splitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_418

    .line 266
    :cond_268
    const-string v1, "GIVEMECARDS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_388

    .line 267
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 268
    .restart local v1    # "parts":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 269
    .restart local v3    # "splitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GOFISH&"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 270
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v10, v10, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v10, v10, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v8

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/amomin1gofish/Models/CardModel;

    invoke-virtual {v9}, Lcom/android/amomin1gofish/Models/CardModel;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v10, v10, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v10, v10, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v8

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/amomin1gofish/Models/CardModel;

    invoke-virtual {v9}, Lcom/android/amomin1gofish/Models/CardModel;->getShortName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v7, v7, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v7, v7, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v8

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/amomin1gofish/Models/CardModel;

    invoke-virtual {v7}, Lcom/android/amomin1gofish/Models/CardModel;->getImagePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 271
    .local v5, "isHostData":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v7, v7, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v7, v7, Lcom/android/amomin1gofish/GameActivity;->player1Adapter:Lcom/android/amomin1gofish/Adapters/Player1Adapter;

    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v10, v10, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v10, v10, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v8

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/amomin1gofish/Models/CardModel;

    invoke-virtual {v7, v9}, Lcom/android/amomin1gofish/Adapters/Player1Adapter;->itemAdded(Lcom/android/amomin1gofish/Models/CardModel;)V

    .line 272
    iget-object v7, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v7, v7, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v7, v7, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v8

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 273
    iget-object v7, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v7, v7, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v7, v7, Lcom/android/amomin1gofish/GameActivity;->tvCardCount:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v2, v2, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    const-string v7, "Card gived!"

    invoke-static {v2, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 275
    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v2, v2, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v6, v6, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v6, v6, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    .line 276
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 275
    invoke-static {v2, v4}, Lcom/android/amomin1gofish/GameActivity;->access$400(Lcom/android/amomin1gofish/GameActivity;Ljava/lang/Object;)V

    .line 277
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v3    # "splitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "isHostData":Ljava/lang/String;
    goto/16 :goto_418

    .line 278
    :cond_388
    const-string v1, "GIVEMESCORE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_418

    .line 279
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 280
    .restart local v1    # "parts":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 281
    .restart local v2    # "splitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, ""

    .line 282
    .local v3, "score":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3a0
    iget-object v5, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v5, v5, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v5, v5, Lcom/android/amomin1gofish/GameActivity;->scoreModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3f0

    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v6, v6, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v6, v6, Lcom/android/amomin1gofish/GameActivity;->scoreModelArrayList:Ljava/util/ArrayList;

    .line 284
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/amomin1gofish/Models/ScoreModel;

    invoke-virtual {v6}, Lcom/android/amomin1gofish/Models/ScoreModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v6, v6, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v6, v6, Lcom/android/amomin1gofish/GameActivity;->scoreModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/amomin1gofish/Models/ScoreModel;

    invoke-virtual {v6}, Lcom/android/amomin1gofish/Models/ScoreModel;->getScore()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 282
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a0

    .line 286
    .end local v4    # "i":I
    :cond_3f0
    iget-object v4, p0, Lcom/android/amomin1gofish/GameActivity$4$1;->this$1:Lcom/android/amomin1gofish/GameActivity$4;

    iget-object v4, v4, Lcom/android/amomin1gofish/GameActivity$4;->this$0:Lcom/android/amomin1gofish/GameActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TAKESCORE&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/amomin1gofish/GameActivity;->access$400(Lcom/android/amomin1gofish/GameActivity;Ljava/lang/Object;)V

    .line 288
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v2    # "splitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "score":Ljava/lang/String;
    :cond_418
    :goto_418
    return-void
.end method

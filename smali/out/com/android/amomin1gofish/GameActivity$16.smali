.class Lcom/android/amomin1gofish/GameActivity$16;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/amomin1gofish/GameActivity;->answerCardDialog(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/amomin1gofish/GameActivity;

.field final synthetic val$alertDialog:Landroidx/appcompat/app/AlertDialog;

.field final synthetic val$cardModelArrayList:Ljava/util/ArrayList;

.field final synthetic val$selectedCard:Ljava/lang/String;

.field final synthetic val$textView:Landroid/widget/TextView;

.field final synthetic val$whoAskedQuestion:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/amomin1gofish/GameActivity;Landroid/widget/TextView;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Landroidx/appcompat/app/AlertDialog;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/amomin1gofish/GameActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1016
    iput-object p1, p0, Lcom/android/amomin1gofish/GameActivity$16;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iput-object p2, p0, Lcom/android/amomin1gofish/GameActivity$16;->val$textView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/amomin1gofish/GameActivity$16;->val$selectedCard:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/amomin1gofish/GameActivity$16;->val$cardModelArrayList:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/amomin1gofish/GameActivity$16;->val$whoAskedQuestion:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/amomin1gofish/GameActivity$16;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 1020
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$16;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity$16;->val$selectedCard:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 1021
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$16;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity$16;->val$cardModelArrayList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$16;->val$textView:Landroid/widget/TextView;

    .line 1022
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/amomin1gofish/GameActivity;->findIndexOfCardWithShortName(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v0

    .line 1023
    .local v0, "index":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANSWERCARDDIALOG&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$16;->val$selectedCard:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$16;->val$cardModelArrayList:Ljava/util/ArrayList;

    .line 1024
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/amomin1gofish/Models/CardModel;

    invoke-virtual {v2}, Lcom/android/amomin1gofish/Models/CardModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/amomin1gofish/GameActivity$16;->val$cardModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/amomin1gofish/Models/CardModel;

    invoke-virtual {v3}, Lcom/android/amomin1gofish/Models/CardModel;->getShortName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/amomin1gofish/GameActivity$16;->val$cardModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/amomin1gofish/Models/CardModel;

    invoke-virtual {v3}, Lcom/android/amomin1gofish/Models/CardModel;->getImagePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$16;->val$whoAskedQuestion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1025
    .local v1, "data":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$16;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v2, v2, Lcom/android/amomin1gofish/GameActivity;->player1Adapter:Lcom/android/amomin1gofish/Adapters/Player1Adapter;

    invoke-virtual {v2, v0}, Lcom/android/amomin1gofish/Adapters/Player1Adapter;->itemRemoved(I)V

    .line 1028
    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$16;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-boolean v2, v2, Lcom/android/amomin1gofish/GameActivity;->isHost:Z

    if-eqz v2, :cond_90

    .line 1029
    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$16;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-static {v2, v1}, Lcom/android/amomin1gofish/GameActivity;->access$400(Lcom/android/amomin1gofish/GameActivity;Ljava/lang/Object;)V

    goto :goto_95

    .line 1031
    :cond_90
    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$16;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-static {v2, v1}, Lcom/android/amomin1gofish/GameActivity;->access$900(Lcom/android/amomin1gofish/GameActivity;Ljava/lang/String;)V

    .line 1034
    :goto_95
    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$16;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 1037
    .end local v0    # "index":I
    .end local v1    # "data":Ljava/lang/String;
    goto :goto_a7

    .line 1038
    :cond_9b
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$16;->this$0:Lcom/android/amomin1gofish/GameActivity;

    const-string v1, "You do not have the card the user requested or you selected the wrong card."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1041
    :goto_a7
    return-void
.end method

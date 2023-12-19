.class Lcom/android/amomin1gofish/GameActivity$17;
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

.field final synthetic val$whoAskedQuestion:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/amomin1gofish/GameActivity;Landroidx/appcompat/app/AlertDialog;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/amomin1gofish/GameActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1045
    iput-object p1, p0, Lcom/android/amomin1gofish/GameActivity$17;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iput-object p2, p0, Lcom/android/amomin1gofish/GameActivity$17;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    iput-object p3, p0, Lcom/android/amomin1gofish/GameActivity$17;->val$whoAskedQuestion:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .line 1048
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$17;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GIVEMECARDS&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity$17;->val$whoAskedQuestion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1052
    .local v0, "isUserData":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity$17;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-boolean v1, v1, Lcom/android/amomin1gofish/GameActivity;->isHost:Z

    if-eqz v1, :cond_ae

    .line 1053
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GOFISH&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$17;->val$whoAskedQuestion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/amomin1gofish/GameActivity$17;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v3, v3, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/amomin1gofish/GameActivity$17;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v4, v4, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    .line 1054
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/amomin1gofish/Models/CardModel;

    invoke-virtual {v3}, Lcom/android/amomin1gofish/Models/CardModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/amomin1gofish/GameActivity$17;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v3, v3, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/amomin1gofish/GameActivity$17;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v4, v4, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/amomin1gofish/Models/CardModel;

    invoke-virtual {v3}, Lcom/android/amomin1gofish/Models/CardModel;->getShortName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$17;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v2, v2, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/amomin1gofish/GameActivity$17;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v3, v3, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/amomin1gofish/Models/CardModel;

    invoke-virtual {v2}, Lcom/android/amomin1gofish/Models/CardModel;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1055
    .local v1, "isHostData":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$17;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v2, v2, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/amomin1gofish/GameActivity$17;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v3, v3, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1056
    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$17;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-static {v2, v1}, Lcom/android/amomin1gofish/GameActivity;->access$400(Lcom/android/amomin1gofish/GameActivity;Ljava/lang/Object;)V

    .line 1057
    .end local v1    # "isHostData":Ljava/lang/String;
    goto :goto_b3

    :cond_ae
    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity$17;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-static {v1, v0}, Lcom/android/amomin1gofish/GameActivity;->access$900(Lcom/android/amomin1gofish/GameActivity;Ljava/lang/String;)V

    .line 1058
    :goto_b3
    return-void
.end method

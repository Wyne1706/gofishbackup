.class Lcom/android/amomin1gofish/GameActivity$12;
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

    .line 702
    iput-object p1, p0, Lcom/android/amomin1gofish/GameActivity$12;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 705
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$12;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-boolean v0, v0, Lcom/android/amomin1gofish/GameActivity;->isHost:Z

    if-eqz v0, :cond_6c

    .line 706
    const-string v0, ""

    .line 707
    .local v0, "message":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$12;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v2, v2, Lcom/android/amomin1gofish/GameActivity;->scoreModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_53

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/amomin1gofish/GameActivity$12;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v3, v3, Lcom/android/amomin1gofish/GameActivity;->scoreModelArrayList:Ljava/util/ArrayList;

    .line 709
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/amomin1gofish/Models/ScoreModel;

    invoke-virtual {v3}, Lcom/android/amomin1gofish/Models/ScoreModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/amomin1gofish/GameActivity$12;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v3, v3, Lcom/android/amomin1gofish/GameActivity;->scoreModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/amomin1gofish/Models/ScoreModel;

    invoke-virtual {v3}, Lcom/android/amomin1gofish/Models/ScoreModel;->getScore()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 707
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 711
    .end local v1    # "i":I
    :cond_53
    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity$12;->this$0:Lcom/android/amomin1gofish/GameActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scores\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/amomin1gofish/GameActivity;->infoDialog(Ljava/lang/String;)V

    .line 712
    .end local v0    # "message":Ljava/lang/String;
    goto :goto_88

    .line 713
    :cond_6c
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$12;->this$0:Lcom/android/amomin1gofish/GameActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GIVEMESCORE&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$12;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v2, v2, Lcom/android/amomin1gofish/GameActivity;->myBluetoothName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/amomin1gofish/GameActivity;->access$900(Lcom/android/amomin1gofish/GameActivity;Ljava/lang/String;)V

    .line 716
    :goto_88
    return-void
.end method

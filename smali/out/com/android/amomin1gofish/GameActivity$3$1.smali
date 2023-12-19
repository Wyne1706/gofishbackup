.class Lcom/android/amomin1gofish/GameActivity$3$1;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/amomin1gofish/GameActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/amomin1gofish/GameActivity$3;

.field final synthetic val$adress:Ljava/lang/String;

.field final synthetic val$deviceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/amomin1gofish/GameActivity$3;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/amomin1gofish/GameActivity$3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/android/amomin1gofish/GameActivity$3$1;->this$1:Lcom/android/amomin1gofish/GameActivity$3;

    iput-object p2, p0, Lcom/android/amomin1gofish/GameActivity$3$1;->val$deviceName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/amomin1gofish/GameActivity$3$1;->val$adress:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 161
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$3$1;->this$1:Lcom/android/amomin1gofish/GameActivity$3;

    iget-object v0, v0, Lcom/android/amomin1gofish/GameActivity$3;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v0, v0, Lcom/android/amomin1gofish/GameActivity;->userBluetoothInfoList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/amomin1gofish/Models/BluetoothModel;

    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$3$1;->val$deviceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/amomin1gofish/GameActivity$3$1;->val$adress:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/android/amomin1gofish/Models/BluetoothModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$3$1;->this$1:Lcom/android/amomin1gofish/GameActivity$3;

    iget-object v0, v0, Lcom/android/amomin1gofish/GameActivity$3;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v0, v0, Lcom/android/amomin1gofish/GameActivity;->scoreModelArrayList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/amomin1gofish/Models/ScoreModel;

    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$3$1;->val$deviceName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/amomin1gofish/Models/ScoreModel;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$3$1;->this$1:Lcom/android/amomin1gofish/GameActivity$3;

    iget-object v0, v0, Lcom/android/amomin1gofish/GameActivity$3;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-static {v0}, Lcom/android/amomin1gofish/GameActivity;->access$200(Lcom/android/amomin1gofish/GameActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Player "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$3$1;->val$deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$3$1;->this$1:Lcom/android/amomin1gofish/GameActivity$3;

    iget-object v0, v0, Lcom/android/amomin1gofish/GameActivity$3;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-static {v0}, Lcom/android/amomin1gofish/GameActivity;->access$300(Lcom/android/amomin1gofish/GameActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 165
    return-void
.end method

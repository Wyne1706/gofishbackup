.class Lcom/android/amomin1gofish/GameActivity$15;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/amomin1gofish/GameActivity;->askCardDialog(Ljava/util/ArrayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/amomin1gofish/GameActivity;

.field final synthetic val$alertDialog:Landroidx/appcompat/app/AlertDialog;

.field final synthetic val$textView:Landroid/widget/TextView;

.field final synthetic val$whoAskedQuestion:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/amomin1gofish/GameActivity;Landroid/widget/TextView;Ljava/lang/String;Landroidx/appcompat/app/AlertDialog;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/amomin1gofish/GameActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 950
    iput-object p1, p0, Lcom/android/amomin1gofish/GameActivity$15;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iput-object p2, p0, Lcom/android/amomin1gofish/GameActivity$15;->val$textView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/amomin1gofish/GameActivity$15;->val$whoAskedQuestion:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/amomin1gofish/GameActivity$15;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECTCARDDIALOG&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity$15;->val$textView:Landroid/widget/TextView;

    .line 954
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$15;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v2, v2, Lcom/android/amomin1gofish/GameActivity;->selectedPlayer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity$15;->val$whoAskedQuestion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 957
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity$15;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-boolean v1, v1, Lcom/android/amomin1gofish/GameActivity;->isHost:Z

    if-eqz v1, :cond_41

    .line 958
    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity$15;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-static {v1, v0}, Lcom/android/amomin1gofish/GameActivity;->access$400(Lcom/android/amomin1gofish/GameActivity;Ljava/lang/Object;)V

    goto :goto_46

    .line 960
    :cond_41
    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity$15;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-static {v1, v0}, Lcom/android/amomin1gofish/GameActivity;->access$900(Lcom/android/amomin1gofish/GameActivity;Ljava/lang/String;)V

    .line 963
    :goto_46
    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity$15;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 964
    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity$15;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-virtual {v1}, Lcom/android/amomin1gofish/GameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$15;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 965
    return-void
.end method

.class Lcom/android/amomin1gofish/GameActivity$7$2;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/amomin1gofish/GameActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/amomin1gofish/GameActivity$7;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/android/amomin1gofish/GameActivity$7;Ljava/io/IOException;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/amomin1gofish/GameActivity$7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 407
    iput-object p1, p0, Lcom/android/amomin1gofish/GameActivity$7$2;->this$1:Lcom/android/amomin1gofish/GameActivity$7;

    iput-object p2, p0, Lcom/android/amomin1gofish/GameActivity$7$2;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 410
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$7$2;->this$1:Lcom/android/amomin1gofish/GameActivity$7;

    iget-object v0, v0, Lcom/android/amomin1gofish/GameActivity$7;->this$0:Lcom/android/amomin1gofish/GameActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection Error. Try again! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$7$2;->val$e:Ljava/io/IOException;

    .line 411
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 410
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 413
    return-void
.end method

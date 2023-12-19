.class Lcom/android/amomin1gofish/GameActivity$7$1;
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


# direct methods
.method constructor <init>(Lcom/android/amomin1gofish/GameActivity$7;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/amomin1gofish/GameActivity$7;

    .line 397
    iput-object p1, p0, Lcom/android/amomin1gofish/GameActivity$7$1;->this$1:Lcom/android/amomin1gofish/GameActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 400
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$7$1;->this$1:Lcom/android/amomin1gofish/GameActivity$7;

    iget-object v0, v0, Lcom/android/amomin1gofish/GameActivity$7;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-static {v0}, Lcom/android/amomin1gofish/GameActivity;->access$200(Lcom/android/amomin1gofish/GameActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Connected Successfully!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    return-void
.end method

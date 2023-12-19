.class Lcom/android/amomin1gofish/GameActivity$10;
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

    .line 676
    iput-object p1, p0, Lcom/android/amomin1gofish/GameActivity$10;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 679
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$10;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-static {v0}, Lcom/android/amomin1gofish/GameActivity;->access$1400(Lcom/android/amomin1gofish/GameActivity;)V

    .line 680
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$10;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-static {v0}, Lcom/android/amomin1gofish/GameActivity;->access$1500(Lcom/android/amomin1gofish/GameActivity;)V

    .line 681
    return-void
.end method

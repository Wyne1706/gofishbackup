.class Lcom/android/amomin1gofish/GameActivity$1;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/amomin1gofish/GameActivity;->onBackPressed()V
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

    .line 104
    iput-object p1, p0, Lcom/android/amomin1gofish/GameActivity$1;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 107
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$1;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-virtual {v0}, Lcom/android/amomin1gofish/GameActivity;->finishAffinity()V

    .line 108
    return-void
.end method

.class Lcom/android/amomin1gofish/GameActivity$11;
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

    .line 684
    iput-object p1, p0, Lcom/android/amomin1gofish/GameActivity$11;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 688
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$11;->this$0:Lcom/android/amomin1gofish/GameActivity;

    sget v1, Lcom/android/amomin1gofish/R$id;->settingsLayout:I

    invoke-virtual {v0, v1}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$11;->this$0:Lcom/android/amomin1gofish/GameActivity;

    sget v1, Lcom/android/amomin1gofish/R$id;->gameLayout:I

    invoke-virtual {v0, v1}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 690
    return-void
.end method

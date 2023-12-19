.class Lcom/android/amomin1gofish/GameActivity$18;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/amomin1gofish/GameActivity;->infoDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/amomin1gofish/GameActivity;

.field final synthetic val$alertDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/amomin1gofish/GameActivity;Landroidx/appcompat/app/AlertDialog;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/amomin1gofish/GameActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1081
    iput-object p1, p0, Lcom/android/amomin1gofish/GameActivity$18;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iput-object p2, p0, Lcom/android/amomin1gofish/GameActivity$18;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 1084
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$18;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 1085
    return-void
.end method

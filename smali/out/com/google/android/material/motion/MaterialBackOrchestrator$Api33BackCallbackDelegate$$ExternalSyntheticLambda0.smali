.class public final synthetic Lcom/google/android/material/motion/MaterialBackOrchestrator$Api33BackCallbackDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/motion/MaterialBackHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/motion/MaterialBackHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator$Api33BackCallbackDelegate$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/motion/MaterialBackHandler;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator$Api33BackCallbackDelegate$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/motion/MaterialBackHandler;

    invoke-interface {v0}, Lcom/google/android/material/motion/MaterialBackHandler;->handleBackInvoked()V

    return-void
.end method

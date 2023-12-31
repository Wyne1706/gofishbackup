.class Lcom/google/android/material/motion/MaterialBackOrchestrator$Api33BackCallbackDelegate;
.super Ljava/lang/Object;
.source "MaterialBackOrchestrator.java"

# interfaces
.implements Lcom/google/android/material/motion/MaterialBackOrchestrator$BackCallbackDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/motion/MaterialBackOrchestrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api33BackCallbackDelegate"
.end annotation


# instance fields
.field private onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/motion/MaterialBackOrchestrator$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/android/material/motion/MaterialBackOrchestrator$1;

    .line 157
    invoke-direct {p0}, Lcom/google/android/material/motion/MaterialBackOrchestrator$Api33BackCallbackDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method createOnBackInvokedCallback(Lcom/google/android/material/motion/MaterialBackHandler;)Landroid/window/OnBackInvokedCallback;
    .registers 3
    .param p1, "backHandler"    # Lcom/google/android/material/motion/MaterialBackHandler;

    .line 198
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/material/motion/MaterialBackOrchestrator$Api33BackCallbackDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/google/android/material/motion/MaterialBackOrchestrator$Api33BackCallbackDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/motion/MaterialBackHandler;)V

    return-object v0
.end method

.method isListeningForBackCallbacks()Z
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator$Api33BackCallbackDelegate;->onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public startListeningForBackCallbacks(Lcom/google/android/material/motion/MaterialBackHandler;Landroid/view/View;Z)V
    .registers 7
    .param p1, "backHandler"    # Lcom/google/android/material/motion/MaterialBackHandler;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "priorityOverlay"    # Z

    .line 169
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator$Api33BackCallbackDelegate;->onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_5

    .line 170
    return-void

    .line 173
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    .line 174
    .local v0, "onBackInvokedDispatcher":Landroid/window/OnBackInvokedDispatcher;
    if-nez v0, :cond_c

    .line 175
    return-void

    .line 178
    :cond_c
    invoke-virtual {p0, p1}, Lcom/google/android/material/motion/MaterialBackOrchestrator$Api33BackCallbackDelegate;->createOnBackInvokedCallback(Lcom/google/android/material/motion/MaterialBackHandler;)Landroid/window/OnBackInvokedCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator$Api33BackCallbackDelegate;->onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    .line 180
    if-eqz p3, :cond_18

    .line 181
    const v2, 0xf4240

    goto :goto_19

    .line 182
    :cond_18
    const/4 v2, 0x0

    :goto_19
    nop

    .line 183
    .local v2, "priority":I
    invoke-interface {v0, v2, v1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 184
    return-void
.end method

.method public stopListeningForBackCallbacks(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    .line 190
    .local v0, "onBackInvokedDispatcher":Landroid/window/OnBackInvokedDispatcher;
    if-nez v0, :cond_7

    .line 191
    return-void

    .line 193
    :cond_7
    iget-object v1, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator$Api33BackCallbackDelegate;->onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 194
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator$Api33BackCallbackDelegate;->onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    .line 195
    return-void
.end method

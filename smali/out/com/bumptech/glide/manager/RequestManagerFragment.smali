.class public Lcom/bumptech/glide/manager/RequestManagerFragment;
.super Landroid/app/Fragment;
.source "RequestManagerFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestManager()Lcom/bumptech/glide/RequestManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestManagerTreeNode()Lcom/bumptech/glide/manager/RequestManagerTreeNode;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    new-instance v0, Lcom/bumptech/glide/manager/RequestManagerFragment$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerFragment$1;-><init>(Lcom/bumptech/glide/manager/RequestManagerFragment;)V

    return-object v0
.end method

.method public setRequestManager(Lcom/bumptech/glide/RequestManager;)V
    .registers 2
    .param p1, "requestManager"    # Lcom/bumptech/glide/RequestManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 21
    return-void
.end method

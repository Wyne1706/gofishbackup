.class Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory$1;
.super Ljava/lang/Thread;
.source "GlideExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "this$0"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory;
    .param p2, "arg0"    # Ljava/lang/Runnable;

    .line 378
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory$1;->this$0:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 382
    const/16 v0, 0x9

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 383
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 384
    return-void
.end method

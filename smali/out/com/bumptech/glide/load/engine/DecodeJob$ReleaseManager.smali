.class Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;
.super Ljava/lang/Object;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReleaseManager"
.end annotation


# instance fields
.field private isEncodeComplete:Z

.field private isFailed:Z

.field private isReleased:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isComplete(Z)Z
    .registers 3
    .param p1, "isRemovedFromQueue"    # Z

    .line 679
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->isFailed:Z

    if-nez v0, :cond_a

    if-nez p1, :cond_a

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->isEncodeComplete:Z

    if-eqz v0, :cond_10

    :cond_a
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->isReleased:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method


# virtual methods
.method declared-synchronized onEncodeComplete()Z
    .registers 2

    monitor-enter p0

    .line 663
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->isEncodeComplete:Z

    .line 664
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->isComplete(Z)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v0

    .line 662
    .end local p0    # "this":Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onFailed()Z
    .registers 2

    monitor-enter p0

    .line 668
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->isFailed:Z

    .line 669
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->isComplete(Z)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v0

    .line 667
    .end local p0    # "this":Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized release(Z)Z
    .registers 3
    .param p1, "isRemovedFromQueue"    # Z

    monitor-enter p0

    .line 658
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->isReleased:Z

    .line 659
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->isComplete(Z)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    monitor-exit p0

    return v0

    .line 657
    .end local p0    # "this":Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;
    .end local p1    # "isRemovedFromQueue":Z
    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    .line 673
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->isEncodeComplete:Z

    .line 674
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->isReleased:Z

    .line 675
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->isFailed:Z
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    .line 676
    monitor-exit p0

    return-void

    .line 672
    .end local p0    # "this":Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

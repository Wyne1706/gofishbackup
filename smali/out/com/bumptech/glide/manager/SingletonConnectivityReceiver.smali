.class final Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;
.super Ljava/lang/Object;
.source "SingletonConnectivityReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;,
        Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;,
        Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConnectivityMonitor"

.field private static volatile instance:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;


# instance fields
.field private final frameworkConnectivityMonitor:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;

.field private isRegistered:Z

.field final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->listeners:Ljava/util/Set;

    .line 62
    new-instance v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$1;-><init>(Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;Landroid/content/Context;)V

    .line 63
    invoke-static {v0}, Lcom/bumptech/glide/util/GlideSuppliers;->memorize(Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;)Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;

    move-result-object v0

    .line 70
    .local v0, "connectivityManager":Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;, "Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier<Landroid/net/ConnectivityManager;>;"
    new-instance v1, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$2;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$2;-><init>(Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;)V

    .line 85
    .local v1, "connectivityListener":Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;
    nop

    .line 86
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_25

    .line 87
    new-instance v2, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;

    invoke-direct {v2, v0, v1}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;-><init>(Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V

    goto :goto_2a

    .line 88
    :cond_25
    new-instance v2, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    invoke-direct {v2, p1, v0, v1}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;-><init>(Landroid/content/Context;Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V

    :goto_2a
    iput-object v2, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->frameworkConnectivityMonitor:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;

    .line 90
    return-void
.end method

.method static get(Landroid/content/Context;)Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 46
    sget-object v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->instance:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    if-nez v0, :cond_1b

    .line 47
    const-class v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    monitor-enter v0

    .line 48
    :try_start_7
    sget-object v1, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->instance:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    if-nez v1, :cond_16

    .line 49
    new-instance v1, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->instance:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    .line 51
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1

    .line 53
    :cond_1b
    :goto_1b
    sget-object v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->instance:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    return-object v0
.end method

.method private maybeRegisterReceiver()V
    .registers 2

    .line 110
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->isRegistered:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_16

    .line 113
    :cond_d
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->frameworkConnectivityMonitor:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;

    invoke-interface {v0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;->register()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->isRegistered:Z

    .line 114
    return-void

    .line 111
    :cond_16
    :goto_16
    return-void
.end method

.method private maybeUnregisterReceiver()V
    .registers 2

    .line 118
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->isRegistered:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_16

    .line 122
    :cond_d
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->frameworkConnectivityMonitor:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;

    invoke-interface {v0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;->unregister()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->isRegistered:Z

    .line 124
    return-void

    .line 119
    :cond_16
    :goto_16
    return-void
.end method

.method static reset()V
    .registers 1

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->instance:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    .line 59
    return-void
.end method


# virtual methods
.method declared-synchronized register(Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;

    monitor-enter p0

    .line 93
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-direct {p0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->maybeRegisterReceiver()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 95
    monitor-exit p0

    return-void

    .line 92
    .end local p0    # "this":Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;
    .end local p1    # "listener":Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized unregister(Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;

    monitor-enter p0

    .line 104
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 105
    invoke-direct {p0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->maybeUnregisterReceiver()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 106
    monitor-exit p0

    return-void

    .line 103
    .end local p0    # "this":Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;
    .end local p1    # "listener":Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

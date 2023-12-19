.class final Lcom/bumptech/glide/load/engine/executor/RuntimeCompat;
.super Ljava/lang/Object;
.source "RuntimeCompat.java"


# static fields
.field private static final CPU_LOCATION:Ljava/lang/String; = "/sys/devices/system/cpu/"

.field private static final CPU_NAME_REGEX:Ljava/lang/String; = "cpu[0-9]+"

.field private static final TAG:Ljava/lang/String; = "GlideRuntimeCompat"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method static availableProcessors()I
    .registers 1

    .line 23
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 24
    .local v0, "cpus":I
    nop

    .line 27
    return v0
.end method

.method private static getCoreCountPre17()I
    .registers 6

    .line 44
    const-string v0, "GlideRuntimeCompat"

    const/4 v1, 0x0

    .line 45
    .local v1, "cpus":[Ljava/io/File;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 47
    .local v2, "originalPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_7
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/devices/system/cpu/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v3, "cpuInfo":Ljava/io/File;
    const-string v4, "cpu[0-9]+"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 49
    .local v4, "cpuNamePattern":Ljava/util/regex/Pattern;
    new-instance v5, Lcom/bumptech/glide/load/engine/executor/RuntimeCompat$1;

    invoke-direct {v5, v4}, Lcom/bumptech/glide/load/engine/executor/RuntimeCompat$1;-><init>(Ljava/util/regex/Pattern;)V

    .line 50
    invoke-virtual {v3, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1f

    move-object v1, v0

    .end local v3    # "cpuInfo":Ljava/io/File;
    .end local v4    # "cpuNamePattern":Ljava/util/regex/Pattern;
    goto :goto_2c

    .line 57
    :catchall_1f
    move-exception v3

    .line 58
    .local v3, "t":Ljava/lang/Throwable;
    const/4 v4, 0x6

    :try_start_21
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 59
    const-string v4, "Failed to calculate accurate cpu count"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_3b

    .line 62
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_2c
    :goto_2c
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 63
    nop

    .line 64
    if-eqz v1, :cond_34

    array-length v0, v1

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    const/4 v3, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 62
    :catchall_3b
    move-exception v0

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 63
    throw v0
.end method

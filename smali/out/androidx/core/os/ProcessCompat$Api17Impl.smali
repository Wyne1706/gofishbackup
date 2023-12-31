.class Landroidx/core/os/ProcessCompat$Api17Impl;
.super Ljava/lang/Object;
.source "ProcessCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/ProcessCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api17Impl"
.end annotation


# static fields
.field private static sMethodUserHandleIsAppMethod:Ljava/lang/reflect/Method;

.field private static sResolved:Z

.field private static final sResolvedLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/os/ProcessCompat$Api17Impl;->sResolvedLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method static isApplicationUid(I)Z
    .registers 8
    .param p0, "uid"    # I

    .line 96
    const/4 v0, 0x1

    :try_start_1
    sget-object v1, Landroidx/core/os/ProcessCompat$Api17Impl;->sResolvedLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_40

    .line 97
    :try_start_4
    sget-boolean v2, Landroidx/core/os/ProcessCompat$Api17Impl;->sResolved:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1b

    .line 98
    sput-boolean v0, Landroidx/core/os/ProcessCompat$Api17Impl;->sResolved:Z

    .line 99
    const-class v2, Landroid/os/UserHandle;

    const-string v4, "isApp"

    new-array v5, v0, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/core/os/ProcessCompat$Api17Impl;->sMethodUserHandleIsAppMethod:Ljava/lang/reflect/Method;

    .line 102
    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_3d

    .line 103
    :try_start_1c
    sget-object v1, Landroidx/core/os/ProcessCompat$Api17Impl;->sMethodUserHandleIsAppMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3c

    .line 104
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 105
    .local v1, "result":Ljava/lang/Boolean;
    if-eqz v1, :cond_36

    .line 109
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 107
    :cond_36
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    .end local p0    # "uid":I
    throw v2
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3c} :catch_40

    .line 113
    .end local v1    # "result":Ljava/lang/Boolean;
    .restart local p0    # "uid":I
    :cond_3c
    goto :goto_44

    .line 102
    :catchall_3d
    move-exception v2

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    .end local p0    # "uid":I
    :try_start_3f
    throw v2
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_40} :catch_40

    .line 111
    .restart local p0    # "uid":I
    :catch_40
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_44
    return v0
.end method

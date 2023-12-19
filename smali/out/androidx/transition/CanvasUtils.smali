.class Landroidx/transition/CanvasUtils;
.super Ljava/lang/Object;
.source "CanvasUtils.java"


# static fields
.field private static sInorderBarrierMethod:Ljava/lang/reflect/Method;

.field private static sOrderMethodsFetched:Z

.field private static sReorderBarrierMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method static enableZ(Landroid/graphics/Canvas;Z)V
    .registers 7
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "enable"    # Z

    .line 41
    nop

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_11

    .line 44
    if-eqz p1, :cond_d

    .line 45
    invoke-virtual {p0}, Landroid/graphics/Canvas;->enableZ()V

    goto :goto_66

    .line 47
    :cond_d
    invoke-virtual {p0}, Landroid/graphics/Canvas;->disableZ()V

    goto :goto_66

    .line 49
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_67

    .line 53
    sget-boolean v0, Landroidx/transition/CanvasUtils;->sOrderMethodsFetched:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3f

    .line 55
    const/4 v0, 0x1

    :try_start_1d
    const-class v2, Landroid/graphics/Canvas;

    const-string v3, "insertReorderBarrier"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/transition/CanvasUtils;->sReorderBarrierMethod:Ljava/lang/reflect/Method;

    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 58
    const-class v2, Landroid/graphics/Canvas;

    const-string v3, "insertInorderBarrier"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/transition/CanvasUtils;->sInorderBarrierMethod:Ljava/lang/reflect/Method;

    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_3b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1d .. :try_end_3b} :catch_3c

    .line 63
    goto :goto_3d

    .line 61
    :catch_3c
    move-exception v2

    .line 64
    :goto_3d
    sput-boolean v0, Landroidx/transition/CanvasUtils;->sOrderMethodsFetched:Z

    .line 67
    :cond_3f
    if-eqz p1, :cond_4f

    :try_start_41
    sget-object v0, Landroidx/transition/CanvasUtils;->sReorderBarrierMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4f

    .line 68
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    .line 75
    :catch_4b
    move-exception v0

    goto :goto_5b

    .line 73
    :catch_4d
    move-exception v0

    goto :goto_65

    .line 70
    :cond_4f
    :goto_4f
    if-nez p1, :cond_65

    sget-object v0, Landroidx/transition/CanvasUtils;->sInorderBarrierMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_65

    .line 71
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5a
    .catch Ljava/lang/IllegalAccessException; {:try_start_41 .. :try_end_5a} :catch_4d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_41 .. :try_end_5a} :catch_4b

    goto :goto_65

    .line 76
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_5b
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 77
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_65
    :goto_65
    nop

    .line 79
    :goto_66
    return-void

    .line 51
    :cond_67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method doesn\'t work on Pie!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

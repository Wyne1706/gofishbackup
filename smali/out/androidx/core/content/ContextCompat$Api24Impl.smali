.class Landroidx/core/content/ContextCompat$Api24Impl;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/ContextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1052
    return-void
.end method

.method static createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .param p0, "obj"    # Landroid/content/Context;

    .line 1061
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static getDataDir(Landroid/content/Context;)Ljava/io/File;
    .registers 2
    .param p0, "obj"    # Landroid/content/Context;

    .line 1056
    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static isDeviceProtectedStorage(Landroid/content/Context;)Z
    .registers 2
    .param p0, "obj"    # Landroid/content/Context;

    .line 1066
    invoke-virtual {p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v0

    return v0
.end method

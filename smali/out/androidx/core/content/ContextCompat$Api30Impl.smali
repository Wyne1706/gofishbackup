.class Landroidx/core/content/ContextCompat$Api30Impl;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/ContextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api30Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1111
    return-void
.end method

.method static getAttributionTag(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "obj"    # Landroid/content/Context;

    .line 1115
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

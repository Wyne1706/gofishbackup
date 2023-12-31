.class public final Lcom/bumptech/glide/module/ManifestParser;
.super Ljava/lang/Object;
.source "ManifestParser.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final GLIDE_MODULE_VALUE:Ljava/lang/String; = "GlideModule"

.field private static final TAG:Ljava/lang/String; = "ManifestParser"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/module/ManifestParser;->context:Landroid/content/Context;

    .line 27
    return-void
.end method

.method private getOurApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/bumptech/glide/module/ManifestParser;->context:Landroid/content/Context;

    .line 34
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/module/ManifestParser;->context:Landroid/content/Context;

    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 33
    return-object v0
.end method

.method private static parseModule(Ljava/lang/String;)Lcom/bumptech/glide/module/GlideModule;
    .registers 6
    .param p0, "className"    # Ljava/lang/String;

    .line 79
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_4a

    .line 82
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 84
    const/4 v1, 0x0

    .line 86
    .local v1, "module":Ljava/lang/Object;
    const/4 v2, 0x0

    :try_start_7
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_13
    .catch Ljava/lang/InstantiationException; {:try_start_7 .. :try_end_13} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_13} :catch_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_13} :catch_1a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_13} :catch_15

    move-object v1, v2

    .line 96
    :goto_14
    goto :goto_29

    .line 94
    :catch_15
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v0, v2}, Lcom/bumptech/glide/module/ManifestParser;->throwInstantiateGlideModuleException(Ljava/lang/Class;Ljava/lang/Exception;)V

    goto :goto_29

    .line 92
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1a
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v0, v2}, Lcom/bumptech/glide/module/ManifestParser;->throwInstantiateGlideModuleException(Ljava/lang/Class;Ljava/lang/Exception;)V

    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_14

    .line 90
    :catch_1f
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0, v2}, Lcom/bumptech/glide/module/ManifestParser;->throwInstantiateGlideModuleException(Ljava/lang/Class;Ljava/lang/Exception;)V

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_14

    .line 88
    :catch_24
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-static {v0, v2}, Lcom/bumptech/glide/module/ManifestParser;->throwInstantiateGlideModuleException(Ljava/lang/Class;Ljava/lang/Exception;)V

    .end local v2    # "e":Ljava/lang/InstantiationException;
    goto :goto_14

    .line 98
    :goto_29
    instance-of v2, v1, Lcom/bumptech/glide/module/GlideModule;

    if-eqz v2, :cond_31

    .line 101
    move-object v2, v1

    check-cast v2, Lcom/bumptech/glide/module/GlideModule;

    return-object v2

    .line 99
    :cond_31
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected instanceof GlideModule, but found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "module":Ljava/lang/Object;
    :catch_4a
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to find GlideModule implementation"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static throwInstantiateGlideModuleException(Ljava/lang/Class;Ljava/lang/Exception;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 105
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to instantiate GlideModule implementation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public parse()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/module/GlideModule;",
            ">;"
        }
    .end annotation

    .line 40
    const-string v0, "ManifestParser"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 41
    const-string v2, "Loading Glide modules"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v2, "modules":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/module/GlideModule;>;"
    :try_start_13
    invoke-direct {p0}, Lcom/bumptech/glide/module/ManifestParser;->getOurApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 46
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_91

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_1e

    goto :goto_91

    .line 52
    :cond_1e
    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got app info metadata: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_3d
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_47
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_85

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 56
    .local v5, "key":Ljava/lang/String;
    const-string v6, "GlideModule"

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 57
    invoke-static {v5}, Lcom/bumptech/glide/module/ManifestParser;->parseModule(Ljava/lang/String;)Lcom/bumptech/glide/module/GlideModule;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loaded Glide module: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .end local v5    # "key":Ljava/lang/String;
    :cond_84
    goto :goto_47

    .line 63
    :cond_85
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 64
    const-string v1, "Finished loading Glide modules"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_90
    goto :goto_aa

    .line 47
    .restart local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_91
    :goto_91
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 48
    const-string v1, "Got null app info metadata"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_9c} :catch_9d

    .line 50
    :cond_9c
    return-object v2

    .line 66
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_9d
    move-exception v1

    .line 67
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x6

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 68
    const-string v3, "Failed to parse glide modules"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_aa
    :goto_aa
    return-object v2
.end method

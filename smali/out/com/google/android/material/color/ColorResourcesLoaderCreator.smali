.class final Lcom/google/android/material/color/ColorResourcesLoaderCreator;
.super Ljava/lang/Object;
.source "ColorResourcesLoaderCreator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorResLoaderCreator"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Landroid/content/Context;Ljava/util/Map;)Landroid/content/res/loader/ResourcesLoader;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/content/res/loader/ResourcesLoader;"
        }
    .end annotation

    .line 46
    .local p1, "colorMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-string v0, "ColorResLoaderCreator"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {p0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->create(Landroid/content/Context;Ljava/util/Map;)[B

    move-result-object v2

    .line 47
    .local v2, "contentBytes":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Table created, length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    array-length v3, v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1f} :catch_80

    if-nez v3, :cond_22

    .line 49
    return-object v1

    .line 51
    :cond_22
    const/4 v3, 0x0

    .line 53
    .local v3, "arscFile":Ljava/io/FileDescriptor;
    :try_start_23
    const-string/jumbo v4, "temp.arsc"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/system/Os;->memfd_create(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v3, v4

    .line 54
    if-nez v3, :cond_3a

    .line 56
    const-string v4, "Cannot create memory file descriptor."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_23 .. :try_end_33} :catchall_78

    .line 57
    nop

    .line 71
    if-eqz v3, :cond_39

    .line 72
    :try_start_36
    invoke-static {v3}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_80

    .line 57
    :cond_39
    return-object v1

    .line 60
    :cond_3a
    :try_start_3a
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_78

    .line 61
    .local v4, "pipeWriter":Ljava/io/OutputStream;
    :try_start_3f
    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V

    .line 63
    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_6e

    .line 64
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_46
    new-instance v6, Landroid/content/res/loader/ResourcesLoader;

    invoke-direct {v6}, Landroid/content/res/loader/ResourcesLoader;-><init>()V

    .line 65
    .local v6, "colorsLoader":Landroid/content/res/loader/ResourcesLoader;
    nop

    .line 66
    invoke-static {v5, v1}, Landroid/content/res/loader/ResourcesProvider;->loadFromTable(Landroid/os/ParcelFileDescriptor;Landroid/content/res/loader/AssetsProvider;)Landroid/content/res/loader/ResourcesProvider;

    move-result-object v7

    .line 65
    invoke-virtual {v6, v7}, Landroid/content/res/loader/ResourcesLoader;->addProvider(Landroid/content/res/loader/ResourcesProvider;)V
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_62

    .line 67
    nop

    .line 68
    if-eqz v5, :cond_59

    :try_start_56
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_6e

    .line 69
    :cond_59
    :try_start_59
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_78

    .line 71
    if-eqz v3, :cond_61

    .line 72
    :try_start_5e
    invoke-static {v3}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_80

    .line 67
    :cond_61
    return-object v6

    .line 63
    .end local v6    # "colorsLoader":Landroid/content/res/loader/ResourcesLoader;
    :catchall_62
    move-exception v6

    if-eqz v5, :cond_6d

    :try_start_65
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    goto :goto_6d

    :catchall_69
    move-exception v7

    :try_start_6a
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "contentBytes":[B
    .end local v3    # "arscFile":Ljava/io/FileDescriptor;
    .end local v4    # "pipeWriter":Ljava/io/OutputStream;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "colorMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6d
    :goto_6d
    throw v6
    :try_end_6e
    .catchall {:try_start_6a .. :try_end_6e} :catchall_6e

    .line 60
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "contentBytes":[B
    .restart local v3    # "arscFile":Ljava/io/FileDescriptor;
    .restart local v4    # "pipeWriter":Ljava/io/OutputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "colorMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_6e
    move-exception v5

    :try_start_6f
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    goto :goto_77

    :catchall_73
    move-exception v6

    :try_start_74
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "contentBytes":[B
    .end local v3    # "arscFile":Ljava/io/FileDescriptor;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "colorMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_77
    throw v5
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_78

    .line 71
    .end local v4    # "pipeWriter":Ljava/io/OutputStream;
    .restart local v2    # "contentBytes":[B
    .restart local v3    # "arscFile":Ljava/io/FileDescriptor;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "colorMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_78
    move-exception v4

    if-eqz v3, :cond_7e

    .line 72
    :try_start_7b
    invoke-static {v3}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 74
    :cond_7e
    nop

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "colorMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    throw v4
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_80} :catch_80

    .line 75
    .end local v2    # "contentBytes":[B
    .end local v3    # "arscFile":Ljava/io/FileDescriptor;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "colorMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catch_80
    move-exception v2

    .line 76
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Failed to create the ColorResourcesTableCreator."

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .end local v2    # "e":Ljava/lang/Exception;
    return-object v1
.end method

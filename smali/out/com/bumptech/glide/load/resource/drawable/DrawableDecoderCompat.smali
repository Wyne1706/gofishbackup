.class public final Lcom/bumptech/glide/load/resource/drawable/DrawableDecoderCompat;
.super Ljava/lang/Object;
.source "DrawableDecoderCompat.java"


# static fields
.field private static volatile shouldCallAppCompatResources:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bumptech/glide/load/resource/drawable/DrawableDecoderCompat;->shouldCallAppCompatResources:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getDrawable(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p0, "ourContext"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .line 42
    invoke-static {p0, p0, p1, p2}, Lcom/bumptech/glide/load/resource/drawable/DrawableDecoderCompat;->getDrawable(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawable(Landroid/content/Context;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p0, "ourContext"    # Landroid/content/Context;
    .param p1, "targetContext"    # Landroid/content/Context;
    .param p2, "id"    # I

    .line 30
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableDecoderCompat;->getDrawable(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static getDrawable(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p0, "ourContext"    # Landroid/content/Context;
    .param p1, "targetContext"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .line 50
    :try_start_0
    sget-boolean v0, Lcom/bumptech/glide/load/resource/drawable/DrawableDecoderCompat;->shouldCallAppCompatResources:Z

    if-eqz v0, :cond_24

    .line 51
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/resource/drawable/DrawableDecoderCompat;->loadDrawableV7(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_8} :catch_20
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_8} :catch_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 60
    :catch_9
    move-exception v0

    goto :goto_25

    .line 55
    :catch_b
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 59
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 57
    :cond_1f
    throw v0

    .line 53
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_20
    move-exception v0

    .line 54
    .local v0, "error":Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/bumptech/glide/load/resource/drawable/DrawableDecoderCompat;->shouldCallAppCompatResources:Z

    .line 63
    .end local v0    # "error":Ljava/lang/NoClassDefFoundError;
    :cond_24
    nop

    .line 65
    :goto_25
    if-eqz p3, :cond_29

    move-object v0, p3

    goto :goto_2d

    :cond_29
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_2d
    invoke-static {p1, p2, v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableDecoderCompat;->loadDrawableV4(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static loadDrawableV4(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static loadDrawableV7(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .line 71
    if-eqz p2, :cond_14

    .line 72
    new-instance v0, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p2}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 73
    .local v0, "contextThemeWrapper":Landroidx/appcompat/view/ContextThemeWrapper;
    invoke-virtual {p2}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 74
    nop

    .line 75
    .local v0, "resourceContext":Landroid/content/Context;
    goto :goto_15

    .line 76
    .end local v0    # "resourceContext":Landroid/content/Context;
    :cond_14
    move-object v0, p0

    .line 78
    .restart local v0    # "resourceContext":Landroid/content/Context;
    :goto_15
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.class public Lcom/google/android/material/internal/EdgeToEdgeUtils;
.super Ljava/lang/Object;
.source "EdgeToEdgeUtils.java"


# static fields
.field private static final EDGE_TO_EDGE_BAR_ALPHA:I = 0x80


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyEdgeToEdge(Landroid/view/Window;Z)V
    .registers 3
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "edgeToEdgeEnabled"    # Z

    .line 56
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->applyEdgeToEdge(Landroid/view/Window;ZLjava/lang/Integer;Ljava/lang/Integer;)V

    .line 57
    return-void
.end method

.method public static applyEdgeToEdge(Landroid/view/Window;ZLjava/lang/Integer;Ljava/lang/Integer;)V
    .registers 9
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "edgeToEdgeEnabled"    # Z
    .param p2, "statusBarOverlapBackgroundColor"    # Ljava/lang/Integer;
    .param p3, "navigationBarOverlapBackgroundColor"    # Ljava/lang/Integer;

    .line 77
    nop

    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_e

    .line 83
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_c

    goto :goto_e

    :cond_c
    move v2, v0

    goto :goto_f

    :cond_e
    :goto_e
    move v2, v1

    .line 84
    .local v2, "useDefaultBackgroundColorForStatusBar":Z
    :goto_f
    if-eqz p3, :cond_17

    .line 85
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_18

    :cond_17
    move v0, v1

    .line 86
    .local v0, "useDefaultBackgroundColorForNavigationBar":Z
    :cond_18
    if-nez v2, :cond_1c

    if-eqz v0, :cond_36

    .line 87
    :cond_1c
    nop

    .line 88
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x1010031

    const/high16 v4, -0x1000000

    invoke-static {v1, v3, v4}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result v1

    .line 89
    .local v1, "defaultBackgroundColor":I
    if-eqz v2, :cond_30

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 92
    :cond_30
    if-eqz v0, :cond_36

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 97
    .end local v1    # "defaultBackgroundColor":I
    :cond_36
    xor-int/lit8 v1, p1, 0x1

    invoke-static {p0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 99
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->getStatusBarColor(Landroid/content/Context;Z)I

    move-result v1

    .line 100
    .local v1, "statusBarColor":I
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->getNavigationBarColor(Landroid/content/Context;Z)I

    move-result v3

    .line 102
    .local v3, "navigationBarColor":I
    invoke-virtual {p0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 103
    invoke-virtual {p0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 105
    nop

    .line 107
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/material/color/MaterialColors;->isColorLight(I)Z

    move-result v4

    invoke-static {v1, v4}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->isUsingLightSystemBar(IZ)Z

    move-result v4

    .line 105
    invoke-static {p0, v4}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->setLightStatusBar(Landroid/view/Window;Z)V

    .line 108
    nop

    .line 111
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/material/color/MaterialColors;->isColorLight(I)Z

    move-result v4

    .line 110
    invoke-static {v3, v4}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->isUsingLightSystemBar(IZ)Z

    move-result v4

    .line 108
    invoke-static {p0, v4}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->setLightNavigationBar(Landroid/view/Window;Z)V

    .line 112
    return-void
.end method

.method private static getNavigationBarColor(Landroid/content/Context;Z)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isEdgeToEdgeEnabled"    # Z

    .line 159
    const/high16 v0, -0x1000000

    const v1, 0x1010452

    if-eqz p1, :cond_19

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-ge v2, v3, :cond_19

    .line 160
    nop

    .line 161
    invoke-static {p0, v1, v0}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result v0

    .line 162
    .local v0, "opaqueNavBarColor":I
    const/16 v1, 0x80

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    return v1

    .line 164
    .end local v0    # "opaqueNavBarColor":I
    :cond_19
    if-eqz p1, :cond_1d

    .line 165
    const/4 v0, 0x0

    return v0

    .line 167
    :cond_1d
    invoke-static {p0, v1, v0}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method private static getStatusBarColor(Landroid/content/Context;Z)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isEdgeToEdgeEnabled"    # Z

    .line 142
    nop

    .line 149
    if-eqz p1, :cond_5

    .line 150
    const/4 v0, 0x0

    return v0

    .line 152
    :cond_5
    const v0, 0x1010451

    const/high16 v1, -0x1000000

    invoke-static {p0, v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method private static isUsingLightSystemBar(IZ)Z
    .registers 3
    .param p0, "systemBarColor"    # I
    .param p1, "isLightBackground"    # Z

    .line 171
    invoke-static {p0}, Lcom/google/android/material/color/MaterialColors;->isColorLight(I)Z

    move-result v0

    if-nez v0, :cond_d

    if-nez p0, :cond_b

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public static setLightNavigationBar(Landroid/view/Window;Z)V
    .registers 3
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "isLight"    # Z

    .line 135
    nop

    .line 136
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    .line 137
    .local v0, "insetsController":Landroidx/core/view/WindowInsetsControllerCompat;
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightNavigationBars(Z)V

    .line 138
    return-void
.end method

.method public static setLightStatusBar(Landroid/view/Window;Z)V
    .registers 3
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "isLight"    # Z

    .line 122
    nop

    .line 123
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    .line 124
    .local v0, "insetsController":Landroidx/core/view/WindowInsetsControllerCompat;
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    .line 125
    return-void
.end method

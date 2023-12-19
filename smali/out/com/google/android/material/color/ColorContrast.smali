.class public Lcom/google/android/material/color/ColorContrast;
.super Ljava/lang/Object;
.source "ColorContrast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;
    }
.end annotation


# static fields
.field private static final HIGH_CONTRAST_THRESHOLD:F = 0.6666667f

.field private static final MEDIUM_CONTRAST_THRESHOLD:F = 0.33333334f


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyToActivitiesIfAvailable(Landroid/app/Application;Lcom/google/android/material/color/ColorContrastOptions;)V
    .registers 3
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "colorContrastOptions"    # Lcom/google/android/material/color/ColorContrastOptions;

    .line 77
    invoke-static {}, Lcom/google/android/material/color/ColorContrast;->isContrastAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 78
    return-void

    .line 81
    :cond_7
    new-instance v0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;

    invoke-direct {v0, p1}, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;-><init>(Lcom/google/android/material/color/ColorContrastOptions;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 83
    return-void
.end method

.method public static applyToActivityIfAvailable(Landroid/app/Activity;Lcom/google/android/material/color/ColorContrastOptions;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "colorContrastOptions"    # Lcom/google/android/material/color/ColorContrastOptions;

    .line 98
    invoke-static {}, Lcom/google/android/material/color/ColorContrast;->isContrastAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 99
    return-void

    .line 102
    :cond_7
    invoke-static {p0, p1}, Lcom/google/android/material/color/ColorContrast;->getContrastThemeOverlayResourceId(Landroid/content/Context;Lcom/google/android/material/color/ColorContrastOptions;)I

    move-result v0

    .line 103
    .local v0, "themeOverlayResourcesId":I
    if-eqz v0, :cond_10

    .line 104
    invoke-static {p0, v0}, Lcom/google/android/material/color/ThemeUtils;->applyThemeOverlay(Landroid/content/Context;I)V

    .line 106
    :cond_10
    return-void
.end method

.method private static getContrastThemeOverlayResourceId(Landroid/content/Context;Lcom/google/android/material/color/ColorContrastOptions;)I
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorContrastOptions"    # Lcom/google/android/material/color/ColorContrastOptions;

    .line 142
    const-string/jumbo v0, "uimode"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 143
    .local v0, "uiModeManager":Landroid/app/UiModeManager;
    invoke-static {}, Lcom/google/android/material/color/ColorContrast;->isContrastAvailable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3a

    if-nez v0, :cond_13

    goto :goto_3a

    .line 147
    :cond_13
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getContrast()F

    move-result v1

    .line 148
    .local v1, "currentContrast":F
    invoke-virtual {p1}, Lcom/google/android/material/color/ColorContrastOptions;->getMediumContrastThemeOverlay()I

    move-result v3

    .line 149
    .local v3, "mediumContrastThemeOverlay":I
    invoke-virtual {p1}, Lcom/google/android/material/color/ColorContrastOptions;->getHighContrastThemeOverlay()I

    move-result v4

    .line 150
    .local v4, "highContrastThemeOverlay":I
    const v5, 0x3f2aaaab

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_2c

    .line 153
    if-nez v4, :cond_2a

    move v2, v3

    goto :goto_2b

    :cond_2a
    move v2, v4

    :goto_2b
    return v2

    .line 154
    :cond_2c
    const v5, 0x3eaaaaab

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_39

    .line 157
    if-nez v3, :cond_37

    .line 158
    move v2, v4

    goto :goto_38

    .line 159
    :cond_37
    move v2, v3

    .line 157
    :goto_38
    return v2

    .line 161
    :cond_39
    return v2

    .line 144
    .end local v1    # "currentContrast":F
    .end local v3    # "mediumContrastThemeOverlay":I
    .end local v4    # "highContrastThemeOverlay":I
    :cond_3a
    :goto_3a
    return v2
.end method

.method public static isContrastAvailable()Z
    .registers 2

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static wrapContextIfAvailable(Landroid/content/Context;Lcom/google/android/material/color/ColorContrastOptions;)Landroid/content/Context;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorContrastOptions"    # Lcom/google/android/material/color/ColorContrastOptions;

    .line 123
    invoke-static {}, Lcom/google/android/material/color/ColorContrast;->isContrastAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 124
    return-object p0

    .line 127
    :cond_7
    invoke-static {p0, p1}, Lcom/google/android/material/color/ColorContrast;->getContrastThemeOverlayResourceId(Landroid/content/Context;Lcom/google/android/material/color/ColorContrastOptions;)I

    move-result v0

    .line 128
    .local v0, "themeOverlayResourcesId":I
    if-nez v0, :cond_e

    .line 129
    return-object p0

    .line 131
    :cond_e
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v1
.end method

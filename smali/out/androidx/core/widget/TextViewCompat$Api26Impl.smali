.class Landroidx/core/widget/TextViewCompat$Api26Impl;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1156
    return-void
.end method

.method static getAutoSizeMaxTextSize(Landroid/widget/TextView;)I
    .registers 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 1194
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0
.end method

.method static getAutoSizeMinTextSize(Landroid/widget/TextView;)I
    .registers 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 1189
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    move-result v0

    return v0
.end method

.method static getAutoSizeStepGranularity(Landroid/widget/TextView;)I
    .registers 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 1184
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v0

    return v0
.end method

.method static getAutoSizeTextAvailableSizes(Landroid/widget/TextView;)[I
    .registers 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 1199
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0
.end method

.method static getAutoSizeTextType(Landroid/widget/TextView;)I
    .registers 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 1179
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result v0

    return v0
.end method

.method static setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V
    .registers 5
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "autoSizeMinTextSize"    # I
    .param p2, "autoSizeMaxTextSize"    # I
    .param p3, "autoSizeStepGranularity"    # I
    .param p4, "unit"    # I

    .line 1167
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 1169
    return-void
.end method

.method static setAutoSizeTextTypeUniformWithPresetSizes(Landroid/widget/TextView;[II)V
    .registers 3
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "presetSizes"    # [I
    .param p2, "unit"    # I

    .line 1174
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 1175
    return-void
.end method

.method static setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V
    .registers 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "autoSizeTextType"    # I

    .line 1160
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    .line 1161
    return-void
.end method

.class Landroidx/core/content/pm/PackageInfoCompat$Api28Impl;
.super Ljava/lang/Object;
.source "PackageInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/pm/PackageInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    return-void
.end method

.method static getApkContentsSigners(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;
    .registers 2
    .param p0, "signingInfo"    # Landroid/content/pm/SigningInfo;

    .line 286
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v0

    return-object v0
.end method

.method static getLongVersionCode(Landroid/content/pm/PackageInfo;)J
    .registers 3
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 297
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    return-wide v0
.end method

.method static getSigningCertificateHistory(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;
    .registers 2
    .param p0, "signingInfo"    # Landroid/content/pm/SigningInfo;

    .line 292
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object v0

    return-object v0
.end method

.method static hasMultipleSigners(Landroid/content/pm/SigningInfo;)Z
    .registers 2
    .param p0, "signingInfo"    # Landroid/content/pm/SigningInfo;

    .line 280
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v0

    return v0
.end method

.method static hasSigningCertificate(Landroid/content/pm/PackageManager;Ljava/lang/String;[BI)Z
    .registers 5
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "type"    # I

    .line 275
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result v0

    return v0
.end method

.class public Landroidx/core/telephony/TelephonyManagerCompat;
.super Ljava/lang/Object;
.source "TelephonyManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/telephony/TelephonyManagerCompat$Api23Impl;,
        Landroidx/core/telephony/TelephonyManagerCompat$Api26Impl;,
        Landroidx/core/telephony/TelephonyManagerCompat$Api30Impl;
    }
.end annotation


# static fields
.field private static sGetDeviceIdMethod:Ljava/lang/reflect/Method;

.field private static sGetSubIdMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImei(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 4
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 71
    invoke-static {p0}, Landroidx/core/telephony/TelephonyManagerCompat$Api26Impl;->getImei(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72
    :cond_b
    nop

    .line 77
    invoke-static {p0}, Landroidx/core/telephony/TelephonyManagerCompat;->getSubscriptionId(Landroid/telephony/TelephonyManager;)I

    move-result v0

    .line 78
    .local v0, "subId":I
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_22

    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    .line 79
    invoke-static {v0}, Landroidx/core/telephony/SubscriptionManagerCompat;->getSlotIndex(I)I

    move-result v1

    .line 80
    .local v1, "slotIndex":I
    nop

    .line 81
    invoke-static {p0, v1}, Landroidx/core/telephony/TelephonyManagerCompat$Api23Impl;->getDeviceId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 102
    .end local v0    # "subId":I
    .end local v1    # "slotIndex":I
    :cond_22
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSubscriptionId(Landroid/telephony/TelephonyManager;)I
    .registers 5
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_b

    .line 113
    invoke-static {p0}, Landroidx/core/telephony/TelephonyManagerCompat$Api30Impl;->getSubscriptionId(Landroid/telephony/TelephonyManager;)I

    move-result v0

    return v0

    .line 114
    :cond_b
    nop

    .line 116
    :try_start_c
    sget-object v0, Landroidx/core/telephony/TelephonyManagerCompat;->sGetSubIdMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_21

    .line 117
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v2, "getSubId"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/telephony/TelephonyManagerCompat;->sGetSubIdMethod:Ljava/lang/reflect/Method;

    .line 118
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 121
    :cond_21
    sget-object v0, Landroidx/core/telephony/TelephonyManagerCompat;->sGetSubIdMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 122
    .local v0, "subId":Ljava/lang/Integer;
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3e

    .line 123
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_38} :catch_3d
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_38} :catch_3b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_38} :catch_39

    return v1

    .line 127
    .end local v0    # "subId":Ljava/lang/Integer;
    :catch_39
    move-exception v0

    goto :goto_3f

    .line 126
    :catch_3b
    move-exception v0

    goto :goto_3e

    .line 125
    :catch_3d
    move-exception v0

    .line 128
    :cond_3e
    :goto_3e
    nop

    .line 131
    :goto_3f
    const v0, 0x7fffffff

    return v0
.end method

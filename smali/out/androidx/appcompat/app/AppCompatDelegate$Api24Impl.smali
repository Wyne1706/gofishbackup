.class Landroidx/appcompat/app/AppCompatDelegate$Api24Impl;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1050
    return-void
.end method

.method static localeListForLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;
    .registers 2
    .param p0, "list"    # Ljava/lang/String;

    .line 1054
    invoke-static {p0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.class Landroidx/appcompat/widget/DropDownListView$PreApi33Impl;
.super Ljava/lang/Object;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/DropDownListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreApi33Impl"
.end annotation


# static fields
.field private static final sIsChildViewEnabled:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 820
    const/4 v0, 0x0

    .line 823
    .local v0, "isChildViewEnabled":Ljava/lang/reflect/Field;
    :try_start_1
    const-class v1, Landroid/widget/AbsListView;

    const-string v2, "mIsChildViewEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v0, v1

    .line 824
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_e} :catch_f

    .line 827
    goto :goto_13

    .line 825
    :catch_f
    move-exception v1

    .line 826
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 829
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :goto_13
    sput-object v0, Landroidx/appcompat/widget/DropDownListView$PreApi33Impl;->sIsChildViewEnabled:Ljava/lang/reflect/Field;

    .line 830
    .end local v0    # "isChildViewEnabled":Ljava/lang/reflect/Field;
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 834
    return-void
.end method

.method static isSelectedChildViewEnabled(Landroid/widget/AbsListView;)Z
    .registers 2
    .param p0, "view"    # Landroid/widget/AbsListView;

    .line 837
    sget-object v0, Landroidx/appcompat/widget/DropDownListView$PreApi33Impl;->sIsChildViewEnabled:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_d

    .line 839
    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 840
    :catch_9
    move-exception v0

    .line 841
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 845
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method static setSelectedChildViewEnabled(Landroid/widget/AbsListView;Z)V
    .registers 4
    .param p0, "view"    # Landroid/widget/AbsListView;
    .param p1, "enabled"    # Z

    .line 849
    sget-object v0, Landroidx/appcompat/widget/DropDownListView$PreApi33Impl;->sIsChildViewEnabled:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_10

    .line 851
    :try_start_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_b} :catch_c

    .line 854
    goto :goto_10

    .line 852
    :catch_c
    move-exception v0

    .line 853
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 856
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_10
    :goto_10
    return-void
.end method

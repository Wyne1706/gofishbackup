.class public final Landroidx/core/view/WindowInsetsCompat$Type;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsCompat$Type$InsetsType;
    }
.end annotation


# static fields
.field static final CAPTION_BAR:I = 0x4

.field static final DISPLAY_CUTOUT:I = 0x80

.field static final FIRST:I = 0x1

.field static final IME:I = 0x8

.field static final LAST:I = 0x100

.field static final MANDATORY_SYSTEM_GESTURES:I = 0x20

.field static final NAVIGATION_BARS:I = 0x2

.field static final SIZE:I = 0x9

.field static final STATUS_BARS:I = 0x1

.field static final SYSTEM_GESTURES:I = 0x10

.field static final TAPPABLE_ELEMENT:I = 0x40

.field static final WINDOW_DECOR:I = 0x100


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static all()I
    .registers 1

    .line 2022
    const/4 v0, -0x1

    return v0
.end method

.method public static captionBar()I
    .registers 1

    .line 1941
    const/4 v0, 0x4

    return v0
.end method

.method public static displayCutout()I
    .registers 1

    .line 2002
    const/16 v0, 0x80

    return v0
.end method

.method public static ime()I
    .registers 1

    .line 1949
    const/16 v0, 0x8

    return v0
.end method

.method static indexOf(I)I
    .registers 4
    .param p0, "type"    # I

    .line 2026
    sparse-switch p0, :sswitch_data_30

    .line 2046
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type needs to be >= FIRST and <= LAST, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2044
    :sswitch_1d
    const/16 v0, 0x8

    return v0

    .line 2042
    :sswitch_20
    const/4 v0, 0x7

    return v0

    .line 2040
    :sswitch_22
    const/4 v0, 0x6

    return v0

    .line 2038
    :sswitch_24
    const/4 v0, 0x5

    return v0

    .line 2036
    :sswitch_26
    const/4 v0, 0x4

    return v0

    .line 2034
    :sswitch_28
    const/4 v0, 0x3

    return v0

    .line 2032
    :sswitch_2a
    const/4 v0, 0x2

    return v0

    .line 2030
    :sswitch_2c
    const/4 v0, 0x1

    return v0

    .line 2028
    :sswitch_2e
    const/4 v0, 0x0

    return v0

    :sswitch_data_30
    .sparse-switch
        0x1 -> :sswitch_2e
        0x2 -> :sswitch_2c
        0x4 -> :sswitch_2a
        0x8 -> :sswitch_28
        0x10 -> :sswitch_26
        0x20 -> :sswitch_24
        0x40 -> :sswitch_22
        0x80 -> :sswitch_20
        0x100 -> :sswitch_1d
    .end sparse-switch
.end method

.method public static mandatorySystemGestures()I
    .registers 1

    .line 1979
    const/16 v0, 0x20

    return v0
.end method

.method public static navigationBars()I
    .registers 1

    .line 1933
    const/4 v0, 0x2

    return v0
.end method

.method public static statusBars()I
    .registers 1

    .line 1925
    const/4 v0, 0x1

    return v0
.end method

.method public static systemBars()I
    .registers 1

    .line 2011
    const/4 v0, 0x7

    return v0
.end method

.method public static systemGestures()I
    .registers 1

    .line 1971
    const/16 v0, 0x10

    return v0
.end method

.method public static tappableElement()I
    .registers 1

    .line 1987
    const/16 v0, 0x40

    return v0
.end method

.class public final Landroidx/lifecycle/Lifecycle$Event$Companion;
.super Ljava/lang/Object;
.source "Lifecycle.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/Lifecycle$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/Lifecycle$Event$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\t\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/lifecycle/Lifecycle$Event$Companion;",
        "",
        "()V",
        "downFrom",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "state",
        "Landroidx/lifecycle/Lifecycle$State;",
        "downTo",
        "upFrom",
        "upTo",
        "lifecycle-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Landroidx/lifecycle/Lifecycle$Event$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final downFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
    .registers 4
    .param p1, "state"    # Landroidx/lifecycle/Lifecycle$State;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 166
    const/4 v0, 0x0

    goto :goto_1b

    .line 165
    :pswitch_13
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    goto :goto_1b

    .line 164
    :pswitch_16
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    goto :goto_1b

    .line 163
    :pswitch_19
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 162
    :goto_1b
    return-object v0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_19
        :pswitch_16
        :pswitch_13
    .end packed-switch
.end method

.method public final downTo(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
    .registers 4
    .param p1, "state"    # Landroidx/lifecycle/Lifecycle$State;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 184
    :pswitch_11
    const/4 v0, 0x0

    goto :goto_1b

    .line 181
    :pswitch_13
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    goto :goto_1b

    .line 183
    :pswitch_16
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    goto :goto_1b

    .line 182
    :pswitch_19
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 180
    :goto_1b
    return-object v0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_19
        :pswitch_16
        :pswitch_11
        :pswitch_13
    .end packed-switch
.end method

.method public final upFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
    .registers 4
    .param p1, "state"    # Landroidx/lifecycle/Lifecycle$State;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 202
    :pswitch_11
    const/4 v0, 0x0

    goto :goto_1b

    .line 199
    :pswitch_13
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    goto :goto_1b

    .line 201
    :pswitch_16
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    goto :goto_1b

    .line 200
    :pswitch_19
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 198
    :goto_1b
    return-object v0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_19
        :pswitch_16
        :pswitch_11
        :pswitch_11
        :pswitch_13
    .end packed-switch
.end method

.method public final upTo(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
    .registers 4
    .param p1, "state"    # Landroidx/lifecycle/Lifecycle$State;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 220
    const/4 v0, 0x0

    goto :goto_1b

    .line 219
    :pswitch_13
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    goto :goto_1b

    .line 218
    :pswitch_16
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    goto :goto_1b

    .line 217
    :pswitch_19
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 216
    :goto_1b
    return-object v0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_19
        :pswitch_16
        :pswitch_13
    .end packed-switch
.end method

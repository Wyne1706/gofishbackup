.class public Lcom/bumptech/glide/request/transition/NoTransition;
.super Ljava/lang/Object;
.source "NoTransition.java"

# interfaces
.implements Lcom/bumptech/glide/request/transition/Transition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/transition/NoTransition$NoAnimationFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/transition/Transition<",
        "TR;>;"
    }
.end annotation


# static fields
.field static final NO_ANIMATION:Lcom/bumptech/glide/request/transition/NoTransition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/transition/NoTransition<",
            "*>;"
        }
    .end annotation
.end field

.field private static final NO_ANIMATION_FACTORY:Lcom/bumptech/glide/request/transition/TransitionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/transition/TransitionFactory<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Lcom/bumptech/glide/request/transition/NoTransition;

    invoke-direct {v0}, Lcom/bumptech/glide/request/transition/NoTransition;-><init>()V

    sput-object v0, Lcom/bumptech/glide/request/transition/NoTransition;->NO_ANIMATION:Lcom/bumptech/glide/request/transition/NoTransition;

    .line 16
    new-instance v0, Lcom/bumptech/glide/request/transition/NoTransition$NoAnimationFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/request/transition/NoTransition$NoAnimationFactory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/request/transition/NoTransition;->NO_ANIMATION_FACTORY:Lcom/bumptech/glide/request/transition/TransitionFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    .local p0, "this":Lcom/bumptech/glide/request/transition/NoTransition;, "Lcom/bumptech/glide/request/transition/NoTransition<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/bumptech/glide/request/transition/Transition;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "TR;>;"
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/bumptech/glide/request/transition/NoTransition;->NO_ANIMATION:Lcom/bumptech/glide/request/transition/NoTransition;

    return-object v0
.end method

.method public static getFactory()Lcom/bumptech/glide/request/transition/TransitionFactory;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/request/transition/TransitionFactory<",
            "TR;>;"
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/bumptech/glide/request/transition/NoTransition;->NO_ANIMATION_FACTORY:Lcom/bumptech/glide/request/transition/TransitionFactory;

    return-object v0
.end method


# virtual methods
.method public transition(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;)Z
    .registers 4
    .param p1, "current"    # Ljava/lang/Object;
    .param p2, "adapter"    # Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;

    .line 47
    .local p0, "this":Lcom/bumptech/glide/request/transition/NoTransition;, "Lcom/bumptech/glide/request/transition/NoTransition<TR;>;"
    const/4 v0, 0x0

    return v0
.end method

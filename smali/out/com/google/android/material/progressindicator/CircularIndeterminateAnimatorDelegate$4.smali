.class Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$4;
.super Landroid/util/Property;
.source "CircularIndeterminateAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .param p2, "name"    # Ljava/lang/String;

    .line 254
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Float;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)Ljava/lang/Float;
    .registers 3
    .param p1, "delegate"    # Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    .line 257
    invoke-static {p1}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->access$300(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 254
    check-cast p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$4;->get(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;Ljava/lang/Float;)V
    .registers 4
    .param p1, "delegate"    # Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;
    .param p2, "value"    # Ljava/lang/Float;

    .line 262
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->access$400(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;F)V

    .line 263
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 254
    check-cast p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$4;->set(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;Ljava/lang/Float;)V

    return-void
.end method

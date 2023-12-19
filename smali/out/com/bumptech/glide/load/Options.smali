.class public final Lcom/bumptech/glide/load/Options;
.super Ljava/lang/Object;
.source "Options.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# instance fields
.field private final values:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Lcom/bumptech/glide/load/Option<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-direct {v0}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroidx/collection/ArrayMap;

    return-void
.end method

.method private static updateDiskCacheKey(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;Ljava/security/MessageDigest;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "md"    # Ljava/security/MessageDigest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Ljava/security/MessageDigest;",
            ")V"
        }
    .end annotation

    .line 68
    .local p0, "option":Lcom/bumptech/glide/load/Option;, "Lcom/bumptech/glide/load/Option<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/Option;->update(Ljava/lang/Object;Ljava/security/MessageDigest;)V

    .line 69
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 39
    instance-of v0, p1, Lcom/bumptech/glide/load/Options;

    if-eqz v0, :cond_10

    .line 40
    move-object v0, p1

    check-cast v0, Lcom/bumptech/glide/load/Options;

    .line 41
    .local v0, "other":Lcom/bumptech/glide/load/Options;
    iget-object v1, p0, Lcom/bumptech/glide/load/Options;->values:Landroidx/collection/ArrayMap;

    iget-object v2, v0, Lcom/bumptech/glide/load/Options;->values:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, v2}, Landroidx/collection/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 43
    .end local v0    # "other":Lcom/bumptech/glide/load/Options;
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 34
    .local p1, "option":Lcom/bumptech/glide/load/Option;, "Lcom/bumptech/glide/load/Option<TT;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_13

    :cond_f
    invoke-virtual {p1}, Lcom/bumptech/glide/load/Option;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    :goto_13
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public putAll(Lcom/bumptech/glide/load/Options;)V
    .registers 4
    .param p1, "other"    # Lcom/bumptech/glide/load/Options;

    .line 15
    iget-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroidx/collection/ArrayMap;

    iget-object v1, p1, Lcom/bumptech/glide/load/Options;->values:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->putAll(Landroidx/collection/SimpleArrayMap;)V

    .line 16
    return-void
.end method

.method public remove(Lcom/bumptech/glide/load/Option;)Lcom/bumptech/glide/load/Options;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Option<",
            "*>;)",
            "Lcom/bumptech/glide/load/Options;"
        }
    .end annotation

    .line 27
    .local p1, "option":Lcom/bumptech/glide/load/Option;, "Lcom/bumptech/glide/load/Option<*>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-object p0
.end method

.method public set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/load/Options;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TT;>;TT;)",
            "Lcom/bumptech/glide/load/Options;"
        }
    .end annotation

    .line 20
    .local p1, "option":Lcom/bumptech/glide/load/Option;, "Lcom/bumptech/glide/load/Option<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Options{values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/Options;->values:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 5
    .param p1, "messageDigest"    # Ljava/security/MessageDigest;

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/load/Options;->values:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 54
    iget-object v1, p0, Lcom/bumptech/glide/load/Options;->values:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/Option;

    .line 55
    .local v1, "key":Lcom/bumptech/glide/load/Option;, "Lcom/bumptech/glide/load/Option<*>;"
    iget-object v2, p0, Lcom/bumptech/glide/load/Options;->values:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 56
    .local v2, "value":Ljava/lang/Object;
    invoke-static {v1, v2, p1}, Lcom/bumptech/glide/load/Options;->updateDiskCacheKey(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;Ljava/security/MessageDigest;)V

    .line 53
    .end local v1    # "key":Lcom/bumptech/glide/load/Option;, "Lcom/bumptech/glide/load/Option<*>;"
    .end local v2    # "value":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method

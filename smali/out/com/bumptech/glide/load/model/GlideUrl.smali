.class public Lcom/bumptech/glide/load/model/GlideUrl;
.super Ljava/lang/Object;
.source "GlideUrl.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# static fields
.field private static final ALLOWED_URI_CHARS:Ljava/lang/String; = "@#&=*+-_.,:!?()/~\'%;$"


# instance fields
.field private volatile cacheKeyBytes:[B

.field private hashCode:I

.field private final headers:Lcom/bumptech/glide/load/model/Headers;

.field private safeStringUrl:Ljava/lang/String;

.field private safeUrl:Ljava/net/URL;

.field private final stringUrl:Ljava/lang/String;

.field private final url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/bumptech/glide/load/model/Headers;->DEFAULT:Lcom/bumptech/glide/load/model/Headers;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "headers"    # Lcom/bumptech/glide/load/model/Headers;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->url:Ljava/net/URL;

    .line 56
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->stringUrl:Ljava/lang/String;

    .line 57
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/Headers;

    iput-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->headers:Lcom/bumptech/glide/load/model/Headers;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .registers 3
    .param p1, "url"    # Ljava/net/URL;

    .line 41
    sget-object v0, Lcom/bumptech/glide/load/model/Headers;->DEFAULT:Lcom/bumptech/glide/load/model/Headers;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/net/URL;Lcom/bumptech/glide/load/model/Headers;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/bumptech/glide/load/model/Headers;)V
    .registers 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "headers"    # Lcom/bumptech/glide/load/model/Headers;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    iput-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->url:Ljava/net/URL;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->stringUrl:Ljava/lang/String;

    .line 51
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/Headers;

    iput-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->headers:Lcom/bumptech/glide/load/model/Headers;

    .line 52
    return-void
.end method

.method private getCacheKeyBytes()[B
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->cacheKeyBytes:[B

    if-nez v0, :cond_10

    .line 126
    invoke-virtual {p0}, Lcom/bumptech/glide/load/model/GlideUrl;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/model/GlideUrl;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->cacheKeyBytes:[B

    .line 128
    :cond_10
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->cacheKeyBytes:[B

    return-object v0
.end method

.method private getSafeStringUrl()Ljava/lang/String;
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->safeStringUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 87
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->stringUrl:Ljava/lang/String;

    .line 88
    .local v0, "unsafeStringUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 89
    iget-object v1, p0, Lcom/bumptech/glide/load/model/GlideUrl;->url:Ljava/net/URL;

    invoke-static {v1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_1c
    const-string v1, "@#&=*+-_.,:!?()/~\'%;$"

    invoke-static {v0, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/model/GlideUrl;->safeStringUrl:Ljava/lang/String;

    .line 93
    .end local v0    # "unsafeStringUrl":Ljava/lang/String;
    :cond_24
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->safeStringUrl:Ljava/lang/String;

    return-object v0
.end method

.method private getSafeUrl()Ljava/net/URL;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->safeUrl:Ljava/net/URL;

    if-nez v0, :cond_f

    .line 70
    new-instance v0, Ljava/net/URL;

    invoke-direct {p0}, Lcom/bumptech/glide/load/model/GlideUrl;->getSafeStringUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->safeUrl:Ljava/net/URL;

    .line 72
    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->safeUrl:Ljava/net/URL;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 133
    instance-of v0, p1, Lcom/bumptech/glide/load/model/GlideUrl;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 134
    move-object v0, p1

    check-cast v0, Lcom/bumptech/glide/load/model/GlideUrl;

    .line 135
    .local v0, "other":Lcom/bumptech/glide/load/model/GlideUrl;
    invoke-virtual {p0}, Lcom/bumptech/glide/load/model/GlideUrl;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bumptech/glide/load/model/GlideUrl;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/bumptech/glide/load/model/GlideUrl;->headers:Lcom/bumptech/glide/load/model/Headers;

    iget-object v3, v0, Lcom/bumptech/glide/load/model/GlideUrl;->headers:Lcom/bumptech/glide/load/model/Headers;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1

    .line 137
    .end local v0    # "other":Lcom/bumptech/glide/load/model/GlideUrl;
    :cond_22
    return v1
.end method

.method public getCacheKey()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->stringUrl:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_11

    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->url:Ljava/net/URL;

    invoke-static {v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->headers:Lcom/bumptech/glide/load/model/Headers;

    invoke-interface {v0}, Lcom/bumptech/glide/load/model/Headers;->getHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 142
    iget v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->hashCode:I

    if-nez v0, :cond_19

    .line 143
    invoke-virtual {p0}, Lcom/bumptech/glide/load/model/GlideUrl;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->hashCode:I

    .line 144
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/model/GlideUrl;->headers:Lcom/bumptech/glide/load/model/Headers;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->hashCode:I

    .line 146
    :cond_19
    iget v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 116
    invoke-virtual {p0}, Lcom/bumptech/glide/load/model/GlideUrl;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringUrl()Ljava/lang/String;
    .registers 2

    .line 82
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/GlideUrl;->getSafeStringUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/GlideUrl;->getSafeUrl()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 3
    .param p1, "messageDigest"    # Ljava/security/MessageDigest;

    .line 121
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/GlideUrl;->getCacheKeyBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 122
    return-void
.end method

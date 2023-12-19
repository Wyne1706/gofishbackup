.class public final Lcom/bumptech/glide/util/pool/GlideTrace;
.super Ljava/lang/Object;
.source "GlideTrace.java"


# static fields
.field private static final COOKIE_CREATOR:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final MAX_LENGTH:I = 0x7f

.field private static final TRACING_ENABLED:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/bumptech/glide/util/pool/GlideTrace;->COOKIE_CREATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .registers 1
    .param p0, "tag"    # Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static beginSectionAsync(Ljava/lang/String;)I
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;

    .line 57
    const/4 v0, -0x1

    return v0
.end method

.method public static beginSectionFormat(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public static beginSectionFormat(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public static beginSectionFormat(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public static endSection()V
    .registers 0

    .line 70
    return-void
.end method

.method public static endSectionAsync(Ljava/lang/String;I)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "cookie"    # I

    .line 64
    return-void
.end method

.method private static truncateTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-le v0, v1, :cond_10

    .line 22
    const/4 v0, 0x0

    const/16 v1, 0x7e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 24
    :cond_10
    return-object p0
.end method

.class final Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;
.super Ljava/lang/Object;
.source "ByteBufferUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/util/ByteBufferUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SafeArray"
.end annotation


# instance fields
.field final data:[B

.field final limit:I

.field final offset:I


# direct methods
.method constructor <init>([BII)V
    .registers 4
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->data:[B

    .line 177
    iput p2, p0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->offset:I

    .line 178
    iput p3, p0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->limit:I

    .line 179
    return-void
.end method

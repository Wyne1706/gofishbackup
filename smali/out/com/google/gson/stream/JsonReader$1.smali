.class Lcom/google/gson/stream/JsonReader$1;
.super Lcom/google/gson/internal/JsonReaderInternalAccess;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/stream/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1588
    invoke-direct {p0}, Lcom/google/gson/internal/JsonReaderInternalAccess;-><init>()V

    return-void
.end method


# virtual methods
.method public promoteNameToValue(Lcom/google/gson/stream/JsonReader;)V
    .registers 6
    .param p1, "reader"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1590
    instance-of v0, p1, Lcom/google/gson/internal/bind/JsonTreeReader;

    if-eqz v0, :cond_b

    .line 1591
    move-object v0, p1

    check-cast v0, Lcom/google/gson/internal/bind/JsonTreeReader;

    invoke-virtual {v0}, Lcom/google/gson/internal/bind/JsonTreeReader;->promoteNameToValue()V

    .line 1592
    return-void

    .line 1594
    :cond_b
    iget v0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1595
    .local v0, "p":I
    if-nez v0, :cond_13

    .line 1596
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 1598
    :cond_13
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1c

    .line 1599
    const/16 v1, 0x9

    iput v1, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_2d

    .line 1600
    :cond_1c
    const/16 v1, 0xc

    if-ne v0, v1, :cond_25

    .line 1601
    const/16 v1, 0x8

    iput v1, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_2d

    .line 1602
    :cond_25
    const/16 v1, 0xe

    if-ne v0, v1, :cond_2e

    .line 1603
    const/16 v1, 0xa

    iput v1, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1608
    :goto_2d
    return-void

    .line 1605
    :cond_2e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1606
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.class public Lcom/google/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final MIN_INCOMPLETE_INTEGER:J = -0xcccccccccccccccL

.field private static final NUMBER_CHAR_DECIMAL:I = 0x3

.field private static final NUMBER_CHAR_DIGIT:I = 0x2

.field private static final NUMBER_CHAR_EXP_DIGIT:I = 0x7

.field private static final NUMBER_CHAR_EXP_E:I = 0x5

.field private static final NUMBER_CHAR_EXP_SIGN:I = 0x6

.field private static final NUMBER_CHAR_FRACTION_DIGIT:I = 0x4

.field private static final NUMBER_CHAR_NONE:I = 0x0

.field private static final NUMBER_CHAR_SIGN:I = 0x1

.field private static final PEEKED_BEGIN_ARRAY:I = 0x3

.field private static final PEEKED_BEGIN_OBJECT:I = 0x1

.field private static final PEEKED_BUFFERED:I = 0xb

.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9

.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd

.field private static final PEEKED_END_ARRAY:I = 0x4

.field private static final PEEKED_END_OBJECT:I = 0x2

.field private static final PEEKED_EOF:I = 0x11

.field private static final PEEKED_FALSE:I = 0x6

.field private static final PEEKED_LONG:I = 0xf

.field private static final PEEKED_NONE:I = 0x0

.field private static final PEEKED_NULL:I = 0x7

.field private static final PEEKED_NUMBER:I = 0x10

.field private static final PEEKED_SINGLE_QUOTED:I = 0x8

.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc

.field private static final PEEKED_TRUE:I = 0x5

.field private static final PEEKED_UNQUOTED:I = 0xa

.field private static final PEEKED_UNQUOTED_NAME:I = 0xe


# instance fields
.field private final buffer:[C

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private lineNumber:I

.field private lineStart:I

.field private pathIndices:[I

.field private pathNames:[Ljava/lang/String;

.field peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private pos:I

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1588
    new-instance v0, Lcom/google/gson/stream/JsonReader$1;

    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/google/gson/internal/JsonReaderInternalAccess;

    .line 1610
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 6
    .param p1, "in"    # Ljava/io/Reader;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 237
    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 238
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 239
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 241
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 242
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 244
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 268
    const/16 v1, 0x20

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 269
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 271
    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    const/4 v3, 0x6

    aput v3, v2, v0

    .line 282
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 283
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 289
    if-eqz p1, :cond_32

    .line 292
    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 293
    return-void

    .line 290
    :cond_32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkLenient()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1402
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v0, :cond_5

    .line 1405
    return-void

    .line 1403
    :cond_5
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private consumeNonExecutePrefix()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1570
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 1571
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1573
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1574
    .local v0, "p":I
    add-int/lit8 v1, v0, 0x5

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    const/4 v3, 0x5

    if-le v1, v2, :cond_19

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_19

    .line 1575
    return-void

    .line 1578
    :cond_19
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1579
    .local v1, "buf":[C
    aget-char v2, v1, v0

    const/16 v4, 0x29

    if-ne v2, v4, :cond_48

    add-int/lit8 v2, v0, 0x1

    aget-char v2, v1, v2

    const/16 v4, 0x5d

    if-ne v2, v4, :cond_48

    add-int/lit8 v2, v0, 0x2

    aget-char v2, v1, v2

    const/16 v4, 0x7d

    if-ne v2, v4, :cond_48

    add-int/lit8 v2, v0, 0x3

    aget-char v2, v1, v2

    const/16 v4, 0x27

    if-ne v2, v4, :cond_48

    add-int/lit8 v2, v0, 0x4

    aget-char v2, v1, v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_42

    goto :goto_48

    .line 1584
    :cond_42
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1585
    return-void

    .line 1580
    :cond_48
    :goto_48
    return-void
.end method

.method private fillBuffer(I)Z
    .registers 10
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1278
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1279
    .local v0, "buffer":[C
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1280
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_15

    .line 1281
    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1282
    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_17

    .line 1284
    :cond_15
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1287
    :goto_17
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1289
    :cond_19
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    move v2, v1

    .local v2, "total":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_4c

    .line 1290
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1293
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    const/4 v5, 0x1

    if-nez v4, :cond_49

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    if-nez v4, :cond_49

    if-lez v1, :cond_49

    aget-char v6, v0, v3

    const v7, 0xfeff

    if-ne v6, v7, :cond_49

    .line 1294
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1295
    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1296
    add-int/lit8 p1, p1, 0x1

    .line 1299
    :cond_49
    if-lt v1, p1, :cond_19

    .line 1300
    return v5

    .line 1303
    :cond_4c
    return v3
.end method

.method private isLiteral(C)Z
    .registers 3
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 744
    sparse-switch p1, :sswitch_data_a

    .line 764
    const/4 v0, 0x1

    return v0

    .line 750
    :sswitch_5
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 762
    :sswitch_8
    const/4 v0, 0x0

    return v0

    :sswitch_data_a
    .sparse-switch
        0x9 -> :sswitch_8
        0xa -> :sswitch_8
        0xc -> :sswitch_8
        0xd -> :sswitch_8
        0x20 -> :sswitch_8
        0x23 -> :sswitch_5
        0x2c -> :sswitch_8
        0x2f -> :sswitch_5
        0x3a -> :sswitch_8
        0x3b -> :sswitch_5
        0x3d -> :sswitch_5
        0x5b -> :sswitch_8
        0x5c -> :sswitch_5
        0x5d -> :sswitch_8
        0x7b -> :sswitch_8
        0x7d -> :sswitch_8
    .end sparse-switch
.end method

.method private nextNonWhitespace(Z)I
    .registers 10
    .param p1, "throwOnEof"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1321
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1322
    .local v0, "buffer":[C
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1323
    .local v1, "p":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1325
    .local v2, "l":I
    :goto_6
    const/4 v3, 0x1

    if-ne v1, v2, :cond_37

    .line 1326
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1327
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v4

    if-nez v4, :cond_33

    .line 1328
    nop

    .line 1394
    if-nez p1, :cond_16

    .line 1397
    const/4 v3, -0x1

    return v3

    .line 1395
    :cond_16
    new-instance v3, Ljava/io/EOFException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "End of input"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1330
    :cond_33
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1331
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1334
    :cond_37
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "p":I
    .local v4, "p":I
    aget-char v1, v0, v1

    .line 1335
    .local v1, "c":I
    const/16 v5, 0xa

    if-ne v1, v5, :cond_48

    .line 1336
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1337
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1338
    goto/16 :goto_b7

    .line 1339
    :cond_48
    const/16 v5, 0x20

    if-eq v1, v5, :cond_b7

    const/16 v5, 0xd

    if-eq v1, v5, :cond_b7

    const/16 v5, 0x9

    if-ne v1, v5, :cond_55

    .line 1340
    goto :goto_b7

    .line 1343
    :cond_55
    const/16 v5, 0x2f

    if-ne v1, v5, :cond_a1

    .line 1344
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1345
    const/4 v5, 0x2

    if-ne v4, v2, :cond_6e

    .line 1346
    add-int/lit8 v6, v4, -0x1

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1347
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v6

    .line 1348
    .local v6, "charsLoaded":Z
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1349
    if-nez v6, :cond_6e

    .line 1350
    return v1

    .line 1354
    .end local v6    # "charsLoaded":Z
    :cond_6e
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1355
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v6, v0, v3

    .line 1356
    .local v6, "peek":C
    sparse-switch v6, :sswitch_data_ba

    .line 1376
    return v1

    .line 1369
    :sswitch_79
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1370
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1371
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1372
    .end local v4    # "p":I
    .local v3, "p":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1373
    move v1, v3

    goto :goto_6

    .line 1359
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :sswitch_86
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1360
    const-string v3, "*/"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 1363
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v5

    .line 1364
    .end local v4    # "p":I
    .restart local v3    # "p":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1365
    move v1, v3

    goto/16 :goto_6

    .line 1361
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :cond_9a
    const-string v3, "Unterminated comment"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 1378
    .end local v6    # "peek":C
    :cond_a1
    const/16 v3, 0x23

    if-ne v1, v3, :cond_b4

    .line 1379
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1385
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1386
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1387
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1388
    .end local v4    # "p":I
    .restart local v3    # "p":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1393
    .end local v1    # "c":I
    move v1, v3

    goto/16 :goto_6

    .line 1390
    .end local v3    # "p":I
    .restart local v1    # "c":I
    .restart local v4    # "p":I
    :cond_b4
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1391
    return v1

    .line 1325
    .end local v1    # "c":I
    :cond_b7
    :goto_b7
    move v1, v4

    goto/16 :goto_6

    :sswitch_data_ba
    .sparse-switch
        0x2a -> :sswitch_86
        0x2f -> :sswitch_79
    .end sparse-switch
.end method

.method private nextQuotedValue(C)Ljava/lang/String;
    .registers 12
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 986
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 987
    .local v0, "buffer":[C
    const/4 v1, 0x0

    .line 989
    .local v1, "builder":Ljava/lang/StringBuilder;
    :goto_3
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 990
    .local v2, "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 992
    .local v3, "l":I
    move v4, v2

    .line 993
    .local v4, "start":I
    :goto_8
    const/16 v5, 0x10

    const/4 v6, 0x1

    if-ge v2, v3, :cond_5f

    .line 994
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "p":I
    .local v7, "p":I
    aget-char v2, v0, v2

    .line 996
    .local v2, "c":I
    if-ne v2, p1, :cond_28

    .line 997
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 998
    sub-int v5, v7, v4

    sub-int/2addr v5, v6

    .line 999
    .local v5, "len":I
    if-nez v1, :cond_20

    .line 1000
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0, v4, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v6

    .line 1002
    :cond_20
    invoke-virtual {v1, v0, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1003
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1005
    .end local v5    # "len":I
    :cond_28
    const/16 v8, 0x5c

    if-ne v2, v8, :cond_52

    .line 1006
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1007
    sub-int v8, v7, v4

    sub-int/2addr v8, v6

    .line 1008
    .local v8, "len":I
    if-nez v1, :cond_41

    .line 1009
    add-int/lit8 v6, v8, 0x1

    mul-int/lit8 v6, v6, 0x2

    .line 1010
    .local v6, "estimatedLength":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v9

    .line 1012
    .end local v6    # "estimatedLength":I
    :cond_41
    invoke-virtual {v1, v0, v4, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1013
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1014
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1015
    .end local v7    # "p":I
    .local v5, "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1016
    move v4, v5

    .line 1017
    .end local v8    # "len":I
    move v2, v5

    goto :goto_5e

    .end local v5    # "p":I
    .restart local v7    # "p":I
    :cond_52
    const/16 v5, 0xa

    if-ne v2, v5, :cond_5d

    .line 1018
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1019
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1021
    .end local v2    # "c":I
    :cond_5d
    move v2, v7

    .end local v7    # "p":I
    .local v2, "p":I
    :goto_5e
    goto :goto_8

    .line 1023
    :cond_5f
    if-nez v1, :cond_6f

    .line 1024
    sub-int v7, v2, v4

    mul-int/lit8 v7, v7, 0x2

    .line 1025
    .local v7, "estimatedLength":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v8

    .line 1027
    .end local v7    # "estimatedLength":I
    :cond_6f
    sub-int v5, v2, v4

    invoke-virtual {v1, v0, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1028
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1029
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 1032
    .end local v2    # "p":I
    .end local v3    # "l":I
    .end local v4    # "start":I
    goto :goto_3

    .line 1030
    .restart local v2    # "p":I
    .restart local v3    # "l":I
    .restart local v4    # "start":I
    :cond_7d
    const-string v5, "Unterminated string"

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1040
    const/4 v0, 0x0

    .line 1041
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1045
    .local v1, "i":I
    :cond_2
    :goto_2
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int v3, v2, v1

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v3, v4, :cond_19

    .line 1046
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    add-int/2addr v2, v1

    aget-char v2, v3, v2

    sparse-switch v2, :sswitch_data_68

    .line 1045
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1052
    :sswitch_15
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1064
    :sswitch_18
    goto :goto_4a

    .line 1069
    :cond_19
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    array-length v2, v2

    if-ge v1, v2, :cond_27

    .line 1070
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1071
    goto :goto_2

    .line 1078
    :cond_27
    if-nez v0, :cond_35

    .line 1079
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v2

    .line 1081
    :cond_35
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1082
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1083
    const/4 v1, 0x0

    .line 1084
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1085
    nop

    .line 1089
    :cond_4a
    :goto_4a
    if-nez v0, :cond_56

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_62

    :cond_56
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1090
    .local v2, "result":Ljava/lang/String;
    :goto_62
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1091
    return-object v2

    :sswitch_data_68
    .sparse-switch
        0x9 -> :sswitch_18
        0xa -> :sswitch_18
        0xc -> :sswitch_18
        0xd -> :sswitch_18
        0x20 -> :sswitch_18
        0x23 -> :sswitch_15
        0x2c -> :sswitch_18
        0x2f -> :sswitch_15
        0x3a -> :sswitch_18
        0x3b -> :sswitch_15
        0x3d -> :sswitch_15
        0x5b -> :sswitch_18
        0x5c -> :sswitch_15
        0x5d -> :sswitch_18
        0x7b -> :sswitch_18
        0x7d -> :sswitch_18
    .end sparse-switch
.end method

.method private peekKeyword()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 602
    .local v0, "c":C
    const/16 v1, 0x74

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2f

    const/16 v1, 0x54

    if-ne v0, v1, :cond_10

    goto :goto_2f

    .line 606
    :cond_10
    const/16 v1, 0x66

    if-eq v0, v1, :cond_29

    const/16 v1, 0x46

    if-ne v0, v1, :cond_19

    goto :goto_29

    .line 610
    :cond_19
    const/16 v1, 0x6e

    if-eq v0, v1, :cond_23

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_22

    goto :goto_23

    .line 615
    :cond_22
    return v2

    .line 611
    :cond_23
    :goto_23
    const-string v1, "null"

    .line 612
    .local v1, "keyword":Ljava/lang/String;
    const-string v3, "NULL"

    .line 613
    .local v3, "keywordUpper":Ljava/lang/String;
    const/4 v4, 0x7

    .local v4, "peeking":I
    goto :goto_35

    .line 607
    .end local v1    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v4    # "peeking":I
    :cond_29
    :goto_29
    const-string v1, "false"

    .line 608
    .restart local v1    # "keyword":Ljava/lang/String;
    const-string v3, "FALSE"

    .line 609
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v4, 0x6

    .restart local v4    # "peeking":I
    goto :goto_35

    .line 603
    .end local v1    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v4    # "peeking":I
    :cond_2f
    :goto_2f
    const-string/jumbo v1, "true"

    .line 604
    .restart local v1    # "keyword":Ljava/lang/String;
    const-string v3, "TRUE"

    .line 605
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v4, 0x5

    .line 619
    .restart local v4    # "peeking":I
    :goto_35
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    .line 620
    .local v5, "length":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_3a
    if-ge v6, v5, :cond_63

    .line 621
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v6

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v7, v8, :cond_4c

    add-int/lit8 v7, v6, 0x1

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-nez v7, :cond_4c

    .line 622
    return v2

    .line 624
    :cond_4c
    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v8, v6

    aget-char v0, v7, v8

    .line 625
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_60

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_60

    .line 626
    return v2

    .line 620
    :cond_60
    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    .line 630
    .end local v6    # "i":I
    :cond_63
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v6, v5

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v6, v7, :cond_72

    add-int/lit8 v6, v5, 0x1

    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v6

    if-eqz v6, :cond_80

    :cond_72
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v5

    aget-char v6, v6, v7

    .line 631
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 632
    return v2

    .line 636
    :cond_80
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 637
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v4
.end method

.method private peekNumber()I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 642
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 643
    .local v1, "buffer":[C
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 644
    .local v2, "p":I
    iget v3, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 646
    .local v3, "l":I
    const-wide/16 v4, 0x0

    .line 647
    .local v4, "value":J
    const/4 v6, 0x0

    .line 648
    .local v6, "negative":Z
    const/4 v7, 0x1

    .line 649
    .local v7, "fitsInLong":Z
    const/4 v8, 0x0

    .line 651
    .local v8, "last":I
    const/4 v9, 0x0

    .line 655
    .local v9, "i":I
    :goto_e
    add-int v10, v2, v9

    const/4 v13, 0x4

    const/4 v14, 0x2

    const/4 v15, 0x0

    if-ne v10, v3, :cond_29

    .line 656
    array-length v10, v1

    if-ne v9, v10, :cond_19

    .line 659
    return v15

    .line 661
    :cond_19
    add-int/lit8 v10, v9, 0x1

    invoke-direct {v0, v10}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v10

    if-nez v10, :cond_25

    .line 662
    move-object/from16 v16, v1

    goto/16 :goto_d9

    .line 664
    :cond_25
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 665
    iget v3, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 668
    :cond_29
    add-int v10, v2, v9

    aget-char v10, v1, v10

    .line 669
    .local v10, "c":C
    const/4 v11, 0x5

    sparse-switch v10, :sswitch_data_110

    .line 704
    const/16 v12, 0x30

    if-lt v10, v12, :cond_cd

    const/16 v12, 0x39

    if-le v10, v12, :cond_73

    move-object/from16 v16, v1

    move/from16 v17, v2

    goto/16 :goto_d1

    .line 690
    :sswitch_3f
    if-eq v8, v14, :cond_45

    if-ne v8, v13, :cond_44

    goto :goto_45

    .line 694
    :cond_44
    return v15

    .line 691
    :cond_45
    :goto_45
    const/4 v8, 0x5

    .line 692
    move-object/from16 v16, v1

    move/from16 v17, v2

    goto/16 :goto_c5

    .line 697
    :sswitch_4c
    if-ne v8, v14, :cond_55

    .line 698
    const/4 v8, 0x3

    .line 699
    move-object/from16 v16, v1

    move/from16 v17, v2

    goto/16 :goto_c5

    .line 701
    :cond_55
    return v15

    .line 671
    :sswitch_56
    if-nez v8, :cond_60

    .line 672
    const/4 v6, 0x1

    .line 673
    const/4 v8, 0x1

    .line 674
    move-object/from16 v16, v1

    move/from16 v17, v2

    goto/16 :goto_c5

    .line 675
    :cond_60
    if-ne v8, v11, :cond_69

    .line 676
    const/4 v8, 0x6

    .line 677
    move-object/from16 v16, v1

    move/from16 v17, v2

    goto/16 :goto_c5

    .line 679
    :cond_69
    return v15

    .line 682
    :sswitch_6a
    if-ne v8, v11, :cond_72

    .line 683
    const/4 v8, 0x6

    .line 684
    move-object/from16 v16, v1

    move/from16 v17, v2

    goto :goto_c5

    .line 686
    :cond_72
    return v15

    .line 710
    :cond_73
    const/4 v12, 0x1

    if-eq v8, v12, :cond_ba

    if-nez v8, :cond_7d

    move-object/from16 v16, v1

    move/from16 v17, v2

    goto :goto_be

    .line 713
    :cond_7d
    if-ne v8, v14, :cond_a8

    .line 714
    const-wide/16 v13, 0x0

    cmp-long v11, v4, v13

    if-nez v11, :cond_86

    .line 715
    return v15

    .line 717
    :cond_86
    const-wide/16 v13, 0xa

    mul-long/2addr v13, v4

    add-int/lit8 v11, v10, -0x30

    move-object/from16 v16, v1

    move/from16 v17, v2

    .end local v1    # "buffer":[C
    .end local v2    # "p":I
    .local v16, "buffer":[C
    .local v17, "p":I
    int-to-long v1, v11

    sub-long/2addr v13, v1

    .line 718
    .local v13, "newValue":J
    const-wide v1, -0xcccccccccccccccL

    cmp-long v11, v4, v1

    if-gtz v11, :cond_a2

    cmp-long v1, v4, v1

    if-nez v1, :cond_a3

    cmp-long v1, v13, v4

    if-gez v1, :cond_a3

    :cond_a2
    move v15, v12

    :cond_a3
    and-int v1, v7, v15

    .line 720
    .end local v7    # "fitsInLong":Z
    .local v1, "fitsInLong":Z
    move-wide v4, v13

    .line 721
    .end local v13    # "newValue":J
    move v7, v1

    goto :goto_c5

    .end local v16    # "buffer":[C
    .end local v17    # "p":I
    .local v1, "buffer":[C
    .restart local v2    # "p":I
    .restart local v7    # "fitsInLong":Z
    :cond_a8
    move-object/from16 v16, v1

    move/from16 v17, v2

    .end local v1    # "buffer":[C
    .end local v2    # "p":I
    .restart local v16    # "buffer":[C
    .restart local v17    # "p":I
    const/4 v1, 0x3

    if-ne v8, v1, :cond_b2

    .line 722
    const/4 v1, 0x4

    move v8, v1

    .end local v8    # "last":I
    .local v1, "last":I
    goto :goto_c5

    .line 723
    .end local v1    # "last":I
    .restart local v8    # "last":I
    :cond_b2
    if-eq v8, v11, :cond_b7

    const/4 v1, 0x6

    if-ne v8, v1, :cond_c5

    .line 724
    :cond_b7
    const/4 v1, 0x7

    move v8, v1

    .end local v8    # "last":I
    .restart local v1    # "last":I
    goto :goto_c5

    .line 710
    .end local v16    # "buffer":[C
    .end local v17    # "p":I
    .local v1, "buffer":[C
    .restart local v2    # "p":I
    .restart local v8    # "last":I
    :cond_ba
    move-object/from16 v16, v1

    move/from16 v17, v2

    .line 711
    .end local v1    # "buffer":[C
    .end local v2    # "p":I
    .restart local v16    # "buffer":[C
    .restart local v17    # "p":I
    :goto_be
    add-int/lit8 v1, v10, -0x30

    neg-int v1, v1

    int-to-long v1, v1

    .line 712
    .end local v4    # "value":J
    .local v1, "value":J
    const/4 v4, 0x2

    move v8, v4

    move-wide v4, v1

    .line 654
    .end local v1    # "value":J
    .end local v10    # "c":C
    .restart local v4    # "value":J
    :cond_c5
    :goto_c5
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_e

    .line 704
    .end local v16    # "buffer":[C
    .end local v17    # "p":I
    .local v1, "buffer":[C
    .restart local v2    # "p":I
    .restart local v10    # "c":C
    :cond_cd
    move-object/from16 v16, v1

    move/from16 v17, v2

    .line 705
    .end local v1    # "buffer":[C
    .end local v2    # "p":I
    .restart local v16    # "buffer":[C
    .restart local v17    # "p":I
    :goto_d1
    invoke-direct {v0, v10}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v1

    if-nez v1, :cond_10e

    .line 706
    move/from16 v2, v17

    .line 730
    .end local v10    # "c":C
    .end local v17    # "p":I
    .restart local v2    # "p":I
    :goto_d9
    if-ne v8, v14, :cond_fe

    if-eqz v7, :cond_fe

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v1, v4, v10

    if-nez v1, :cond_e5

    if-eqz v6, :cond_fe

    :cond_e5
    const-wide/16 v10, 0x0

    cmp-long v1, v4, v10

    if-nez v1, :cond_ed

    if-nez v6, :cond_fe

    .line 731
    :cond_ed
    if-eqz v6, :cond_f1

    move-wide v10, v4

    goto :goto_f2

    :cond_f1
    neg-long v10, v4

    :goto_f2
    iput-wide v10, v0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 732
    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 733
    const/16 v1, 0xf

    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v1

    .line 734
    :cond_fe
    if-eq v8, v14, :cond_107

    if-eq v8, v13, :cond_107

    const/4 v1, 0x7

    if-ne v8, v1, :cond_106

    goto :goto_107

    .line 739
    :cond_106
    return v15

    .line 736
    :cond_107
    :goto_107
    iput v9, v0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 737
    const/16 v1, 0x10

    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v1

    .line 708
    .end local v2    # "p":I
    .restart local v10    # "c":C
    .restart local v17    # "p":I
    :cond_10e
    return v15

    nop

    :sswitch_data_110
    .sparse-switch
        0x2b -> :sswitch_6a
        0x2d -> :sswitch_56
        0x2e -> :sswitch_4c
        0x45 -> :sswitch_3f
        0x65 -> :sswitch_3f
    .end sparse-switch
.end method

.method private push(I)V
    .registers 5
    .param p1, "newTop"    # I

    .line 1263
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    array-length v2, v1

    if-ne v0, v2, :cond_21

    .line 1264
    mul-int/lit8 v0, v0, 0x2

    .line 1265
    .local v0, "newLength":I
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 1266
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 1267
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 1269
    .end local v0    # "newLength":I
    :cond_21
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    aput p1, v0, v1

    .line 1270
    return-void
.end method

.method private readEscapeCharacter()C
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1498
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    const-string v2, "Unterminated escape sequence"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_15

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_15

    .line 1499
    :cond_10
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1502
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 1503
    .local v0, "escaped":C
    const/16 v1, 0xa

    sparse-switch v0, :sswitch_data_b4

    .line 1553
    const-string v1, "Invalid escape sequence"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 1505
    :sswitch_2b
    const/4 v3, 0x4

    add-int/2addr v4, v3

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v4, v5, :cond_3d

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v4

    if-eqz v4, :cond_38

    goto :goto_3d

    .line 1506
    :cond_38
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 1509
    :cond_3d
    :goto_3d
    const/4 v2, 0x0

    .line 1510
    .local v2, "result":C
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .local v4, "i":I
    add-int/lit8 v5, v4, 0x4

    .local v5, "end":I
    :goto_42
    if-ge v4, v5, :cond_98

    .line 1511
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    aget-char v6, v6, v4

    .line 1512
    .local v6, "c":C
    shl-int/lit8 v7, v2, 0x4

    int-to-char v2, v7

    .line 1513
    const/16 v7, 0x30

    if-lt v6, v7, :cond_58

    const/16 v7, 0x39

    if-gt v6, v7, :cond_58

    .line 1514
    add-int/lit8 v7, v6, -0x30

    add-int/2addr v7, v2

    int-to-char v2, v7

    goto :goto_73

    .line 1515
    :cond_58
    const/16 v7, 0x61

    if-lt v6, v7, :cond_66

    const/16 v7, 0x66

    if-gt v6, v7, :cond_66

    .line 1516
    add-int/lit8 v7, v6, -0x61

    add-int/2addr v7, v1

    add-int/2addr v7, v2

    int-to-char v2, v7

    goto :goto_73

    .line 1517
    :cond_66
    const/16 v7, 0x41

    if-lt v6, v7, :cond_76

    const/16 v7, 0x46

    if-gt v6, v7, :cond_76

    .line 1518
    add-int/lit8 v7, v6, -0x41

    add-int/2addr v7, v1

    add-int/2addr v7, v2

    int-to-char v2, v7

    .line 1510
    .end local v6    # "c":C
    :goto_73
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 1520
    .restart local v6    # "c":C
    :cond_76
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\u"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v10, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v8, v9, v10, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1523
    .end local v4    # "i":I
    .end local v5    # "end":I
    .end local v6    # "c":C
    :cond_98
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1524
    return v2

    .line 1527
    .end local v2    # "result":C
    :sswitch_9e
    const/16 v1, 0x9

    return v1

    .line 1536
    :sswitch_a1
    const/16 v1, 0xd

    return v1

    .line 1533
    :sswitch_a4
    return v1

    .line 1539
    :sswitch_a5
    const/16 v1, 0xc

    return v1

    .line 1530
    :sswitch_a8
    const/16 v1, 0x8

    return v1

    .line 1542
    :sswitch_ab
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1543
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1550
    :sswitch_b2
    return v0

    nop

    :sswitch_data_b4
    .sparse-switch
        0xa -> :sswitch_ab
        0x22 -> :sswitch_b2
        0x27 -> :sswitch_b2
        0x2f -> :sswitch_b2
        0x5c -> :sswitch_b2
        0x62 -> :sswitch_a8
        0x66 -> :sswitch_a5
        0x6e -> :sswitch_a4
        0x72 -> :sswitch_a1
        0x74 -> :sswitch_9e
        0x75 -> :sswitch_2b
    .end sparse-switch
.end method

.method private skipQuotedValue(C)V
    .registers 8
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1096
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1098
    .local v0, "buffer":[C
    :goto_2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1099
    .local v1, "p":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1101
    .local v2, "l":I
    :goto_6
    const/4 v3, 0x1

    if-ge v1, v2, :cond_2e

    .line 1102
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "p":I
    .local v4, "p":I
    aget-char v1, v0, v1

    .line 1103
    .local v1, "c":I
    if-ne v1, p1, :cond_12

    .line 1104
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1105
    return-void

    .line 1106
    :cond_12
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_21

    .line 1107
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1108
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    .line 1109
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1110
    .end local v4    # "p":I
    .local v3, "p":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    move v1, v3

    goto :goto_2d

    .line 1111
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :cond_21
    const/16 v5, 0xa

    if-ne v1, v5, :cond_2c

    .line 1112
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1113
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1115
    .end local v1    # "c":I
    :cond_2c
    move v1, v4

    .end local v4    # "p":I
    .local v1, "p":I
    :goto_2d
    goto :goto_6

    .line 1116
    :cond_2e
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1117
    .end local v1    # "p":I
    .end local v2    # "l":I
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_2

    .line 1118
    :cond_37
    const-string v1, "Unterminated string"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private skipTo(Ljava/lang/String;)Z
    .registers 7
    .param p1, "toFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1429
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1431
    .local v0, "length":I
    :goto_4
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v1, v2, :cond_14

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_14

    .line 1444
    :cond_12
    const/4 v1, 0x0

    return v1

    .line 1432
    :cond_14
    :goto_14
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v1, v1, v2

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-ne v1, v3, :cond_29

    .line 1433
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1434
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1435
    goto :goto_3a

    .line 1437
    :cond_29
    const/4 v1, 0x0

    .local v1, "c":I
    :goto_2a
    if-ge v1, v0, :cond_43

    .line 1438
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    aget-char v2, v2, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_40

    .line 1439
    nop

    .line 1431
    .end local v1    # "c":I
    :goto_3a
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_4

    .line 1437
    .restart local v1    # "c":I
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 1442
    .end local v1    # "c":I
    :cond_43
    return v4
.end method

.method private skipToEndOfLine()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1413
    nop

    :goto_1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_e

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1414
    :cond_e
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 1415
    .local v0, "c":C
    const/16 v1, 0xa

    if-ne v0, v1, :cond_24

    .line 1416
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1417
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1418
    goto :goto_29

    .line 1419
    :cond_24
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2a

    .line 1420
    nop

    .line 1423
    .end local v0    # "c":C
    :cond_29
    :goto_29
    return-void

    .line 1422
    :cond_2a
    goto :goto_1
.end method

.method private skipUnquotedValue()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1123
    nop

    :cond_1
    const/4 v0, 0x0

    .line 1124
    .local v0, "i":I
    :goto_2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int v2, v1, v0

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v2, v3, :cond_1e

    .line 1125
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    add-int/2addr v1, v0

    aget-char v1, v2, v1

    sparse-switch v1, :sswitch_data_2a

    .line 1124
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1131
    :sswitch_15
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1143
    :sswitch_18
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1144
    return-void

    .line 1147
    :cond_1e
    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1148
    .end local v0    # "i":I
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1149
    return-void

    nop

    :sswitch_data_2a
    .sparse-switch
        0x9 -> :sswitch_18
        0xa -> :sswitch_18
        0xc -> :sswitch_18
        0xd -> :sswitch_18
        0x20 -> :sswitch_18
        0x23 -> :sswitch_15
        0x2c -> :sswitch_18
        0x2f -> :sswitch_15
        0x3a -> :sswitch_18
        0x3b -> :sswitch_15
        0x3d -> :sswitch_15
        0x5b -> :sswitch_18
        0x5c -> :sswitch_15
        0x5d -> :sswitch_18
        0x7b -> :sswitch_18
        0x7d -> :sswitch_18
    .end sparse-switch
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1562
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 341
    .local v0, "p":I
    if-nez v0, :cond_8

    .line 342
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 344
    :cond_8
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    .line 345
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 346
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v3, v1

    const/4 v1, 0x0

    aput v1, v2, v3

    .line 347
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 351
    return-void

    .line 349
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public beginObject()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 377
    .local v0, "p":I
    if-nez v0, :cond_8

    .line 378
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 380
    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 381
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 382
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 386
    return-void

    .line 384
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1215
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1216
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    .line 1217
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1218
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 1219
    return-void
.end method

.method doPeek()I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, -0x1

    aget v2, v0, v2

    .line 462
    .local v2, "peekStack":I
    const/16 v3, 0x8

    const/4 v4, 0x3

    const/4 v5, 0x7

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_16

    .line 463
    sub-int/2addr v1, v8

    aput v7, v0, v1

    goto/16 :goto_94

    .line 464
    :cond_16
    if-ne v2, v7, :cond_2e

    .line 466
    invoke-direct {p0, v8}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 467
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_152

    .line 475
    const-string v1, "Unterminated array"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 469
    :sswitch_26
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v6

    .line 471
    :sswitch_29
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 473
    :sswitch_2c
    nop

    .line 477
    .end local v0    # "c":I
    goto :goto_94

    :cond_2e
    const/4 v9, 0x5

    if-eq v2, v4, :cond_fe

    if-ne v2, v9, :cond_35

    goto/16 :goto_fe

    .line 515
    :cond_35
    if-ne v2, v6, :cond_67

    .line 516
    sub-int/2addr v1, v8

    aput v9, v0, v1

    .line 518
    invoke-direct {p0, v8}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 519
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_160

    .line 529
    const-string v1, "Expected \':\'"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 523
    :sswitch_48
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 524
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v9, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v1, v9, :cond_57

    invoke-direct {p0, v8}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_66

    :cond_57
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v9, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v1, v1, v9

    const/16 v10, 0x3e

    if-ne v1, v10, :cond_66

    .line 525
    add-int/2addr v9, v8

    iput v9, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_66

    .line 521
    :sswitch_65
    nop

    .line 531
    .end local v0    # "c":I
    :cond_66
    :goto_66
    goto :goto_94

    :cond_67
    const/4 v0, 0x6

    if-ne v2, v0, :cond_79

    .line 532
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v0, :cond_71

    .line 533
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->consumeNonExecutePrefix()V

    .line 535
    :cond_71
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v1, v8

    aput v5, v0, v1

    goto :goto_94

    .line 536
    :cond_79
    if-ne v2, v5, :cond_91

    .line 537
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 538
    .restart local v0    # "c":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_88

    .line 539
    const/16 v1, 0x11

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v1

    .line 541
    :cond_88
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 542
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v8

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .end local v0    # "c":I
    goto :goto_93

    .line 544
    :cond_91
    if-eq v2, v3, :cond_f6

    :goto_93
    nop

    .line 548
    :goto_94
    invoke-direct {p0, v8}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 549
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_16a

    .line 575
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v8

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 578
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekKeyword()I

    move-result v1

    .line 579
    .local v1, "result":I
    if-eqz v1, :cond_d4

    .line 580
    return v1

    .line 573
    .end local v1    # "result":I
    :sswitch_a7
    iput v8, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v8

    .line 551
    :sswitch_aa
    if-ne v2, v8, :cond_b2

    .line 552
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v6

    .line 571
    :sswitch_af
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v4

    .line 558
    :cond_b2
    :sswitch_b2
    if-eq v2, v8, :cond_be

    if-ne v2, v7, :cond_b7

    goto :goto_be

    .line 563
    :cond_b7
    const-string v1, "Unexpected value"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 559
    :cond_be
    :goto_be
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 560
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v8

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 561
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v5

    .line 566
    :sswitch_c9
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 567
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v3

    .line 569
    :sswitch_cf
    const/16 v1, 0x9

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v1

    .line 583
    .restart local v1    # "result":I
    :cond_d4
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekNumber()I

    move-result v1

    .line 584
    if-eqz v1, :cond_db

    .line 585
    return v1

    .line 588
    :cond_db
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v3, v3, v4

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v3

    if-eqz v3, :cond_ef

    .line 592
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 593
    const/16 v3, 0xa

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v3

    .line 589
    :cond_ef
    const-string v3, "Expected value"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 545
    .end local v0    # "c":I
    .end local v1    # "result":I
    :cond_f6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_fe
    :goto_fe
    sub-int/2addr v1, v8

    aput v6, v0, v1

    .line 480
    if-ne v2, v9, :cond_118

    .line 481
    invoke-direct {p0, v8}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 482
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_188

    .line 490
    const-string v1, "Unterminated object"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 484
    :sswitch_111
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v7

    .line 486
    :sswitch_114
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 488
    :sswitch_117
    nop

    .line 493
    .end local v0    # "c":I
    :cond_118
    invoke-direct {p0, v8}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 494
    .restart local v0    # "c":I
    const-string v1, "Expected name"

    sparse-switch v0, :sswitch_data_196

    .line 507
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 508
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v3, v8

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 509
    int-to-char v3, v0

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v3

    if-eqz v3, :cond_14c

    .line 510
    const/16 v1, 0xe

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v1

    .line 501
    :sswitch_135
    if-eq v2, v9, :cond_13a

    .line 502
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v7

    .line 504
    :cond_13a
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 498
    :sswitch_13f
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 499
    const/16 v1, 0xc

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v1

    .line 496
    :sswitch_147
    const/16 v1, 0xd

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v1

    .line 512
    :cond_14c
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    nop

    :sswitch_data_152
    .sparse-switch
        0x2c -> :sswitch_2c
        0x3b -> :sswitch_29
        0x5d -> :sswitch_26
    .end sparse-switch

    :sswitch_data_160
    .sparse-switch
        0x3a -> :sswitch_65
        0x3d -> :sswitch_48
    .end sparse-switch

    :sswitch_data_16a
    .sparse-switch
        0x22 -> :sswitch_cf
        0x27 -> :sswitch_c9
        0x2c -> :sswitch_b2
        0x3b -> :sswitch_b2
        0x5b -> :sswitch_af
        0x5d -> :sswitch_aa
        0x7b -> :sswitch_a7
    .end sparse-switch

    :sswitch_data_188
    .sparse-switch
        0x2c -> :sswitch_117
        0x3b -> :sswitch_114
        0x7d -> :sswitch_111
    .end sparse-switch

    :sswitch_data_196
    .sparse-switch
        0x22 -> :sswitch_147
        0x27 -> :sswitch_13f
        0x7d -> :sswitch_135
    .end sparse-switch
.end method

.method public endArray()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 359
    .local v0, "p":I
    if-nez v0, :cond_8

    .line 360
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 362
    :cond_8
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1f

    .line 363
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 364
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 365
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 369
    return-void

    .line 367
    :cond_1f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public endObject()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 394
    .local v0, "p":I
    if-nez v0, :cond_8

    .line 395
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 397
    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 398
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 399
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 400
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 401
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 405
    return-void

    .line 403
    :cond_24
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPath()Ljava/lang/String;
    .registers 6

    .line 1462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1463
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .local v2, "size":I
    :goto_e
    if-ge v1, v2, :cond_3e

    .line 1464
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_44

    goto :goto_3b

    .line 1473
    :pswitch_18
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1474
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_3b

    .line 1475
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 1467
    :pswitch_27
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1468
    nop

    .line 1463
    :cond_3b
    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1485
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_27
        :pswitch_27
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method public hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 412
    .local v0, "p":I
    if-nez v0, :cond_8

    .line 413
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 415
    :cond_8
    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public final isLenient()Z
    .registers 2

    .line 332
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    return v0
.end method

.method locationString()Ljava/lang/String;
    .registers 5

    .line 1452
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    .line 1453
    .local v0, "line":I
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 1454
    .local v1, "column":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public nextBoolean()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 839
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 840
    .local v0, "p":I
    if-nez v0, :cond_8

    .line 841
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 843
    :cond_8
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1a

    .line 844
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 845
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v3

    aget v4, v1, v2

    add-int/2addr v4, v3

    aput v4, v1, v2

    .line 846
    return v3

    .line 847
    :cond_1a
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2a

    .line 848
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 849
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v4, v3

    aget v5, v1, v4

    add-int/2addr v5, v3

    aput v5, v1, v4

    .line 850
    return v2

    .line 852
    :cond_2a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a boolean but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextDouble()D
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 885
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 886
    .local v0, "p":I
    if-nez v0, :cond_8

    .line 887
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 890
    :cond_8
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1f

    .line 891
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 892
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 893
    iget-wide v1, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-double v1, v1

    return-wide v1

    .line 896
    :cond_1f
    const/16 v1, 0x10

    const/16 v3, 0xb

    if-ne v0, v1, :cond_3a

    .line 897
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 898
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_83

    .line 899
    :cond_3a
    const/16 v1, 0x8

    if-eq v0, v1, :cond_76

    const/16 v4, 0x9

    if-ne v0, v4, :cond_43

    goto :goto_76

    .line 901
    :cond_43
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4e

    .line 902
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_83

    .line 903
    :cond_4e
    if-ne v0, v3, :cond_51

    goto :goto_83

    .line 904
    :cond_51
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a double but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 900
    :cond_76
    :goto_76
    if-ne v0, v1, :cond_7b

    const/16 v1, 0x27

    goto :goto_7d

    :cond_7b
    const/16 v1, 0x22

    :goto_7d
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 907
    :goto_83
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 908
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 909
    .local v3, "result":D
    iget-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-nez v1, :cond_bd

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_9c

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_9c

    goto :goto_bd

    .line 910
    :cond_9c
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON forbids NaN and infinities: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 911
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 913
    :cond_bd
    :goto_bd
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 914
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 915
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v5, v1, v2

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v2

    .line 916
    return-wide v3
.end method

.method public nextInt()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1162
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1163
    .local v0, "p":I
    if-nez v0, :cond_8

    .line 1164
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 1168
    :cond_8
    const/16 v1, 0xf

    const-string v2, "Expected an int but was "

    const/4 v3, 0x0

    if-ne v0, v1, :cond_47

    .line 1169
    iget-wide v4, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-int v1, v4

    .line 1170
    .local v1, "result":I
    int-to-long v6, v1

    cmp-long v4, v4, v6

    if-nez v4, :cond_26

    .line 1173
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1174
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 1175
    return v1

    .line 1171
    :cond_26
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1178
    .end local v1    # "result":I
    :cond_47
    const/16 v1, 0x10

    if-ne v0, v1, :cond_60

    .line 1179
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1180
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_bd

    .line 1181
    :cond_60
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_90

    const/16 v5, 0x9

    if-eq v0, v5, :cond_90

    if-ne v0, v1, :cond_6d

    goto :goto_90

    .line 1196
    :cond_6d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1182
    :cond_90
    :goto_90
    if-ne v0, v1, :cond_99

    .line 1183
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_a6

    .line 1185
    :cond_99
    if-ne v0, v4, :cond_9e

    const/16 v1, 0x27

    goto :goto_a0

    :cond_9e
    const/16 v1, 0x22

    :goto_a0
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1188
    :goto_a6
    :try_start_a6
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1189
    .restart local v1    # "result":I
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1190
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5
    :try_end_ba
    .catch Ljava/lang/NumberFormatException; {:try_start_a6 .. :try_end_ba} :catch_bb

    .line 1191
    return v1

    .line 1192
    .end local v1    # "result":I
    :catch_bb
    move-exception v1

    .line 1194
    nop

    .line 1199
    :goto_bd
    const/16 v1, 0xb

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1200
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 1201
    .local v4, "asDouble":D
    double-to-int v1, v4

    .line 1202
    .restart local v1    # "result":I
    int-to-double v6, v1

    cmpl-double v6, v6, v4

    if-nez v6, :cond_df

    .line 1205
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1206
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1207
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v6, v2, v3

    add-int/lit8 v6, v6, 0x1

    aput v6, v2, v3

    .line 1208
    return v1

    .line 1203
    :cond_df
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public nextLong()J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 930
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 931
    .local v0, "p":I
    if-nez v0, :cond_8

    .line 932
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 935
    :cond_8
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1e

    .line 936
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 937
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 938
    iget-wide v1, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    return-wide v1

    .line 941
    :cond_1e
    const/16 v1, 0x10

    const-string v3, "Expected a long but was "

    if-ne v0, v1, :cond_39

    .line 942
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 943
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_96

    .line 944
    :cond_39
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_69

    const/16 v5, 0x9

    if-eq v0, v5, :cond_69

    if-ne v0, v1, :cond_46

    goto :goto_69

    .line 959
    :cond_46
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 945
    :cond_69
    :goto_69
    if-ne v0, v1, :cond_72

    .line 946
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_7f

    .line 948
    :cond_72
    if-ne v0, v4, :cond_77

    const/16 v1, 0x27

    goto :goto_79

    :cond_77
    const/16 v1, 0x22

    :goto_79
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 951
    :goto_7f
    :try_start_7f
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 952
    .local v4, "result":J
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 953
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v1, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v1, v6
    :try_end_93
    .catch Ljava/lang/NumberFormatException; {:try_start_7f .. :try_end_93} :catch_94

    .line 954
    return-wide v4

    .line 955
    .end local v4    # "result":J
    :catch_94
    move-exception v1

    .line 957
    nop

    .line 962
    :goto_96
    const/16 v1, 0xb

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 963
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 964
    .local v4, "asDouble":D
    double-to-long v6, v4

    .line 965
    .local v6, "result":J
    long-to-double v8, v6

    cmpl-double v1, v8, v4

    if-nez v1, :cond_b8

    .line 968
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 969
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 970
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 971
    return-wide v6

    .line 966
    :cond_b8
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextName()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 776
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 777
    .local v0, "p":I
    if-nez v0, :cond_8

    .line 778
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 781
    :cond_8
    const/16 v1, 0xe

    if-ne v0, v1, :cond_11

    .line 782
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    goto :goto_26

    .line 783
    .end local v1    # "result":Ljava/lang/String;
    :cond_11
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1c

    .line 784
    const/16 v1, 0x27

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_26

    .line 785
    .end local v1    # "result":Ljava/lang/String;
    :cond_1c
    const/16 v1, 0xd

    if-ne v0, v1, :cond_32

    .line 786
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .line 790
    .restart local v1    # "result":Ljava/lang/String;
    :goto_26
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 791
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    .line 792
    return-object v1

    .line 788
    .end local v1    # "result":Ljava/lang/String;
    :cond_32
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextNull()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 863
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 864
    .local v0, "p":I
    if-nez v0, :cond_8

    .line 865
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 867
    :cond_8
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1b

    .line 868
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 869
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 873
    return-void

    .line 871
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected null but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 804
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 805
    .local v0, "p":I
    if-nez v0, :cond_8

    .line 806
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 809
    :cond_8
    const/16 v1, 0xa

    if-ne v0, v1, :cond_11

    .line 810
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    goto :goto_52

    .line 811
    .end local v1    # "result":Ljava/lang/String;
    :cond_11
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1c

    .line 812
    const/16 v1, 0x27

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_52

    .line 813
    .end local v1    # "result":Ljava/lang/String;
    :cond_1c
    const/16 v1, 0x9

    if-ne v0, v1, :cond_27

    .line 814
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_52

    .line 815
    .end local v1    # "result":Ljava/lang/String;
    :cond_27
    const/16 v1, 0xb

    if-ne v0, v1, :cond_31

    .line 816
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 817
    .restart local v1    # "result":Ljava/lang/String;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_52

    .line 818
    .end local v1    # "result":Ljava/lang/String;
    :cond_31
    const/16 v1, 0xf

    if-ne v0, v1, :cond_3c

    .line 819
    iget-wide v1, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_52

    .line 820
    .end local v1    # "result":Ljava/lang/String;
    :cond_3c
    const/16 v1, 0x10

    if-ne v0, v1, :cond_62

    .line 821
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 822
    .restart local v1    # "result":Ljava/lang/String;
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 826
    :goto_52
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 827
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 828
    return-object v1

    .line 824
    .end local v1    # "result":Ljava/lang/String;
    :cond_62
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a string but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 423
    .local v0, "p":I
    if-nez v0, :cond_8

    .line 424
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 427
    :cond_8
    packed-switch v0, :pswitch_data_30

    .line 456
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 454
    :pswitch_11
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 452
    :pswitch_14
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 439
    :pswitch_17
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 449
    :pswitch_1a
    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 444
    :pswitch_1d
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 442
    :pswitch_20
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 435
    :pswitch_23
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 433
    :pswitch_26
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 431
    :pswitch_29
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 429
    :pswitch_2c
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    return-object v1

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_14
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .registers 2
    .param p1, "lenient"    # Z

    .line 325
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 326
    return-void
.end method

.method public skipValue()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1227
    const/4 v0, 0x0

    .line 1229
    .local v0, "count":I
    :cond_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1230
    .local v1, "p":I
    if-nez v1, :cond_9

    .line 1231
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v1

    .line 1234
    :cond_9
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v2, :cond_13

    .line 1235
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 1236
    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    .line 1237
    :cond_13
    if-ne v1, v3, :cond_1b

    .line 1238
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 1239
    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    .line 1240
    :cond_1b
    const/4 v2, 0x4

    if-ne v1, v2, :cond_26

    .line 1241
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1242
    add-int/lit8 v0, v0, -0x1

    goto :goto_67

    .line 1243
    :cond_26
    const/4 v2, 0x2

    if-ne v1, v2, :cond_31

    .line 1244
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1245
    add-int/lit8 v0, v0, -0x1

    goto :goto_67

    .line 1246
    :cond_31
    const/16 v2, 0xe

    if-eq v1, v2, :cond_64

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3a

    goto :goto_64

    .line 1248
    :cond_3a
    const/16 v2, 0x8

    if-eq v1, v2, :cond_5e

    const/16 v2, 0xc

    if-ne v1, v2, :cond_43

    goto :goto_5e

    .line 1250
    :cond_43
    const/16 v2, 0x9

    if-eq v1, v2, :cond_58

    const/16 v2, 0xd

    if-ne v1, v2, :cond_4c

    goto :goto_58

    .line 1252
    :cond_4c
    const/16 v2, 0x10

    if-ne v1, v2, :cond_67

    .line 1253
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_67

    .line 1251
    :cond_58
    :goto_58
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_67

    .line 1249
    :cond_5e
    :goto_5e
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_67

    .line 1247
    :cond_64
    :goto_64
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipUnquotedValue()V

    .line 1255
    :cond_67
    :goto_67
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1256
    .end local v1    # "p":I
    if-nez v0, :cond_1

    .line 1258
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v2, -0x1

    aget v5, v1, v4

    add-int/2addr v5, v3

    aput v5, v1, v4

    .line 1259
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    sub-int/2addr v2, v3

    const-string v3, "null"

    aput-object v3, v1, v2

    .line 1260
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

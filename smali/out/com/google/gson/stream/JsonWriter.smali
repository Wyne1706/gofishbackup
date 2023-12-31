.class public Lcom/google/gson/stream/JsonWriter;
.super Ljava/lang/Object;
.source "JsonWriter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

.field private static final REPLACEMENT_CHARS:[Ljava/lang/String;


# instance fields
.field private deferredName:Ljava/lang/String;

.field private htmlSafe:Z

.field private indent:Ljava/lang/String;

.field private lenient:Z

.field private final out:Ljava/io/Writer;

.field private separator:Ljava/lang/String;

.field private serializeNulls:Z

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 146
    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 147
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    const/16 v1, 0x1f

    if-gt v0, v1, :cond_22

    .line 148
    sget-object v1, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "\\u%04x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 150
    .end local v0    # "i":I
    :cond_22
    sget-object v0, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "\\\""

    aput-object v2, v0, v1

    .line 151
    const/16 v1, 0x5c

    const-string v2, "\\\\"

    aput-object v2, v0, v1

    .line 152
    const/16 v1, 0x9

    const-string v2, "\\t"

    aput-object v2, v0, v1

    .line 153
    const/16 v1, 0x8

    const-string v2, "\\b"

    aput-object v2, v0, v1

    .line 154
    const/16 v1, 0xa

    const-string v2, "\\n"

    aput-object v2, v0, v1

    .line 155
    const/16 v1, 0xd

    const-string v2, "\\r"

    aput-object v2, v0, v1

    .line 156
    const/16 v1, 0xc

    const-string v2, "\\f"

    aput-object v2, v0, v1

    .line 157
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 158
    const/16 v1, 0x3c

    const-string v2, "\\u003c"

    aput-object v2, v0, v1

    .line 159
    const/16 v1, 0x3e

    const-string v2, "\\u003e"

    aput-object v2, v0, v1

    .line 160
    const/16 v1, 0x26

    const-string v2, "\\u0026"

    aput-object v2, v0, v1

    .line 161
    const/16 v1, 0x3d

    const-string v2, "\\u003d"

    aput-object v2, v0, v1

    .line 162
    const/16 v1, 0x27

    const-string v2, "\\u0027"

    aput-object v2, v0, v1

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 4
    .param p1, "out"    # Ljava/io/Writer;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 171
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->push(I)V

    .line 183
    const-string v0, ":"

    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    .line 199
    if-eqz p1, :cond_1c

    .line 202
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 203
    return-void

    .line 200
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private beforeName()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 611
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->peek()I

    move-result v0

    .line 612
    .local v0, "context":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_f

    .line 613
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_12

    .line 614
    :cond_f
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    .line 617
    :goto_12
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    .line 618
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonWriter;->replaceTop(I)V

    .line 619
    return-void

    .line 615
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Nesting problem."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private beforeValue()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 628
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->peek()I

    move-result v0

    packed-switch v0, :pswitch_data_42

    .line 655
    :pswitch_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :pswitch_f
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    if-eqz v0, :cond_14

    goto :goto_1c

    .line 631
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :goto_1c
    :pswitch_1c
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->replaceTop(I)V

    .line 637
    goto :goto_40

    .line 650
    :pswitch_21
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 651
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->replaceTop(I)V

    .line 652
    goto :goto_40

    .line 645
    :pswitch_2d
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 646
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    .line 647
    goto :goto_40

    .line 640
    :pswitch_38
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->replaceTop(I)V

    .line 641
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    .line 642
    nop

    .line 657
    :goto_40
    return-void

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_38
        :pswitch_2d
        :pswitch_7
        :pswitch_21
        :pswitch_7
        :pswitch_1c
        :pswitch_f
    .end packed-switch
.end method

.method private close(IIC)Lcom/google/gson/stream/JsonWriter;
    .registers 8
    .param p1, "empty"    # I
    .param p2, "nonempty"    # I
    .param p3, "closeBracket"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->peek()I

    move-result v0

    .line 339
    .local v0, "context":I
    if-eq v0, p2, :cond_11

    if-ne v0, p1, :cond_9

    goto :goto_11

    .line 340
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Nesting problem."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_11
    :goto_11
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-nez v1, :cond_26

    .line 346
    iget v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 347
    if-ne v0, p2, :cond_20

    .line 348
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    .line 350
    :cond_20
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(I)V

    .line 351
    return-object p0

    .line 343
    :cond_26
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dangling name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private newline()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 597
    return-void

    .line 600
    :cond_5
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 601
    const/4 v0, 0x1

    .local v0, "i":I
    iget v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .local v1, "size":I
    :goto_f
    if-ge v0, v1, :cond_1b

    .line 602
    iget-object v2, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    iget-object v3, p0, Lcom/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 604
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1b
    return-void
.end method

.method private open(IC)Lcom/google/gson/stream/JsonWriter;
    .registers 4
    .param p1, "empty"    # I
    .param p2, "openBracket"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 327
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonWriter;->push(I)V

    .line 328
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(I)V

    .line 329
    return-object p0
.end method

.method private peek()I
    .registers 3

    .line 365
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    if-eqz v0, :cond_b

    .line 368
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    return v0

    .line 366
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private push(I)V
    .registers 5
    .param p1, "newTop"    # I

    .line 355
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    array-length v2, v1

    if-ne v0, v2, :cond_f

    .line 356
    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 358
    :cond_f
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    aput p1, v0, v1

    .line 359
    return-void
.end method

.method private replaceTop(I)V
    .registers 4
    .param p1, "topOfStack"    # I

    .line 375
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 376
    return-void
.end method

.method private string(Ljava/lang/String;)V
    .registers 11
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->htmlSafe:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    goto :goto_9

    :cond_7
    sget-object v0, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 565
    .local v0, "replacements":[Ljava/lang/String;
    :goto_9
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 566
    const/4 v1, 0x0

    .line 567
    .local v1, "last":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 568
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    if-ge v4, v3, :cond_45

    .line 569
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 571
    .local v5, "c":C
    const/16 v6, 0x80

    if-ge v5, v6, :cond_25

    .line 572
    aget-object v6, v0, v5

    .line 573
    .local v6, "replacement":Ljava/lang/String;
    if-nez v6, :cond_32

    .line 574
    goto :goto_42

    .line 576
    .end local v6    # "replacement":Ljava/lang/String;
    :cond_25
    const/16 v6, 0x2028

    if-ne v5, v6, :cond_2c

    .line 577
    const-string v6, "\\u2028"

    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_32

    .line 578
    .end local v6    # "replacement":Ljava/lang/String;
    :cond_2c
    const/16 v6, 0x2029

    if-ne v5, v6, :cond_42

    .line 579
    const-string v6, "\\u2029"

    .line 583
    .restart local v6    # "replacement":Ljava/lang/String;
    :cond_32
    :goto_32
    if-ge v1, v4, :cond_3b

    .line 584
    iget-object v7, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    sub-int v8, v4, v1

    invoke-virtual {v7, p1, v1, v8}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 586
    :cond_3b
    iget-object v7, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 587
    add-int/lit8 v1, v4, 0x1

    .line 568
    .end local v5    # "c":C
    .end local v6    # "replacement":Ljava/lang/String;
    :cond_42
    :goto_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 589
    .end local v4    # "i":I
    :cond_45
    if-ge v1, v3, :cond_4e

    .line 590
    iget-object v4, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    sub-int v5, v3, v1

    invoke-virtual {v4, p1, v1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 592
    :cond_4e
    iget-object v4, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v4, v2}, Ljava/io/Writer;->write(I)V

    .line 593
    return-void
.end method

.method private writeDeferredName()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 400
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeName()V

    .line 401
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->string(Ljava/lang/String;)V

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 404
    :cond_f
    return-void
.end method


# virtual methods
.method public beginArray()Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 289
    const/4 v0, 0x1

    const/16 v1, 0x5b

    invoke-direct {p0, v0, v1}, Lcom/google/gson/stream/JsonWriter;->open(IC)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public beginObject()Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 309
    const/4 v0, 0x3

    const/16 v1, 0x7b

    invoke-direct {p0, v0, v1}, Lcom/google/gson/stream/JsonWriter;->open(IC)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 556
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 557
    .local v0, "size":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_19

    if-ne v0, v1, :cond_15

    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    const/4 v2, 0x7

    if-ne v1, v2, :cond_19

    .line 560
    :cond_15
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 561
    return-void

    .line 558
    :cond_19
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Incomplete document"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public endArray()Lcom/google/gson/stream/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    const/4 v0, 0x2

    const/16 v1, 0x5d

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/google/gson/stream/JsonWriter;->close(IIC)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lcom/google/gson/stream/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    const/4 v0, 0x5

    const/16 v1, 0x7d

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Lcom/google/gson/stream/JsonWriter;->close(IIC)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    if-eqz v0, :cond_a

    .line 545
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 546
    return-void

    .line 543
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getSerializeNulls()Z
    .registers 2

    .line 278
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    return v0
.end method

.method public final isHtmlSafe()Z
    .registers 2

    .line 262
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->htmlSafe:Z

    return v0
.end method

.method public isLenient()Z
    .registers 2

    .line 243
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    return v0
.end method

.method public jsonValue(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    if-nez p1, :cond_7

    .line 431
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0

    .line 433
    :cond_7
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 434
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 435
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 436
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    if-eqz p1, :cond_1b

    .line 388
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 391
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    if-eqz v0, :cond_d

    .line 394
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 395
    return-object p0

    .line 392
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 386
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nullValue()Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 446
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    if-eqz v0, :cond_c

    .line 447
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    goto :goto_10

    .line 449
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 450
    return-object p0

    .line 453
    :cond_10
    :goto_10
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 454
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 455
    return-object p0
.end method

.method public final setHtmlSafe(Z)V
    .registers 2
    .param p1, "htmlSafe"    # Z

    .line 254
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonWriter;->htmlSafe:Z

    .line 255
    return-void
.end method

.method public final setIndent(Ljava/lang/String;)V
    .registers 3
    .param p1, "indent"    # Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    .line 216
    const-string v0, ":"

    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    goto :goto_14

    .line 218
    :cond_e
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    .line 219
    const-string v0, ": "

    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    .line 221
    :goto_14
    return-void
.end method

.method public final setLenient(Z)V
    .registers 2
    .param p1, "lenient"    # Z

    .line 236
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    .line 237
    return-void
.end method

.method public final setSerializeNulls(Z)V
    .registers 2
    .param p1, "serializeNulls"    # Z

    .line 270
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    .line 271
    return-void
.end method

.method public value(D)Lcom/google/gson/stream/JsonWriter;
    .registers 6
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 493
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 494
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    if-nez v0, :cond_2d

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_2d

    .line 495
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric values must be finite, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :cond_2d
    :goto_2d
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 498
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 499
    return-object p0
.end method

.method public value(J)Lcom/google/gson/stream/JsonWriter;
    .registers 5
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 508
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 509
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 510
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 511
    return-object p0
.end method

.method public value(Ljava/lang/Boolean;)Lcom/google/gson/stream/JsonWriter;
    .registers 4
    .param p1, "value"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    if-nez p1, :cond_7

    .line 477
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0

    .line 479
    :cond_7
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 480
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 481
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_19

    const-string/jumbo v1, "true"

    goto :goto_1b

    :cond_19
    const-string v1, "false"

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 482
    return-object p0
.end method

.method public value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;
    .registers 6
    .param p1, "value"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    if-nez p1, :cond_7

    .line 523
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0

    .line 526
    :cond_7
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 527
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "string":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    if-nez v1, :cond_44

    .line 529
    const-string v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_44

    .line 530
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Numeric values must be finite, but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 532
    :cond_44
    :goto_44
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 533
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 534
    return-object p0
.end method

.method public value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    if-nez p1, :cond_7

    .line 414
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0

    .line 416
    :cond_7
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 417
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 418
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonWriter;->string(Ljava/lang/String;)V

    .line 419
    return-object p0
.end method

.method public value(Z)Lcom/google/gson/stream/JsonWriter;
    .registers 4
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 465
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 466
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    if-eqz p1, :cond_e

    const-string/jumbo v1, "true"

    goto :goto_10

    :cond_e
    const-string v1, "false"

    :goto_10
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 467
    return-object p0
.end method

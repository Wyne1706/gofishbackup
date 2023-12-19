.class Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/exifinterface/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifAttribute"
.end annotation


# static fields
.field public static final BYTES_OFFSET_UNKNOWN:J = -0x1L


# instance fields
.field public final bytes:[B

.field public final bytesOffset:J

.field public final format:I

.field public final numberOfComponents:I


# direct methods
.method constructor <init>(IIJ[B)V
    .registers 6
    .param p1, "format"    # I
    .param p2, "numberOfComponents"    # I
    .param p3, "bytesOffset"    # J
    .param p5, "bytes"    # [B

    .line 3121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3122
    iput p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    .line 3123
    iput p2, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    .line 3124
    iput-wide p3, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytesOffset:J

    .line 3125
    iput-object p5, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 3126
    return-void
.end method

.method constructor <init>(II[B)V
    .registers 10
    .param p1, "format"    # I
    .param p2, "numberOfComponents"    # I
    .param p3, "bytes"    # [B

    .line 3117
    const-wide/16 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    .line 3118
    return-void
.end method

.method public static createByte(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 6
    .param p0, "value"    # Ljava/lang/String;

    .line 3172
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_2a

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x31

    if-gt v2, v4, :cond_2a

    .line 3173
    new-array v2, v1, [B

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int/2addr v4, v3

    int-to-byte v3, v4

    aput-byte v3, v2, v0

    move-object v0, v2

    .line 3174
    .local v0, "bytes":[B
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, v0

    invoke-direct {v2, v1, v3, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2

    .line 3176
    .end local v0    # "bytes":[B
    :cond_2a
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 3177
    .local v0, "ascii":[B
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, v0

    invoke-direct {v2, v1, v3, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createDouble(DLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 5
    .param p0, "value"    # D
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3226
    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createDouble([DLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 8
    .param p0, "values"    # [D
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3216
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3218
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3219
    array-length v2, p0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_1d

    aget-wide v4, p0, v3

    .line 3220
    .local v4, "value":D
    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 3219
    .end local v4    # "value":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 3222
    :cond_1d
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createSLong(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 3
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3167
    filled-new-array {p0}, [I

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createSLong([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 7
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3157
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3159
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3160
    array-length v2, p0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_1d

    aget v4, p0, v3

    .line 3161
    .local v4, "value":I
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3160
    .end local v4    # "value":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 3163
    :cond_1d
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createSRational(Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 4
    .param p0, "value"    # Landroidx/exifinterface/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3212
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createSRational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createSRational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 9
    .param p0, "values"    # [Landroidx/exifinterface/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3201
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v1, 0xa

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3203
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3204
    array-length v2, p0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_26

    aget-object v4, p0, v3

    .line 3205
    .local v4, "value":Landroidx/exifinterface/media/ExifInterface$Rational;
    iget-wide v5, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3206
    iget-wide v5, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3204
    .end local v4    # "value":Landroidx/exifinterface/media/ExifInterface$Rational;
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 3208
    :cond_26
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 5
    .param p0, "value"    # Ljava/lang/String;

    .line 3181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 3182
    .local v0, "ascii":[B
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const/4 v2, 0x2

    array-length v3, v0

    invoke-direct {v1, v2, v3, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v1
.end method

.method public static createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 5
    .param p0, "value"    # J
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3153
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createULong([JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 9
    .param p0, "values"    # [J
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3143
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3145
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3146
    array-length v2, p0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_1d

    aget-wide v4, p0, v3

    .line 3147
    .local v4, "value":J
    long-to-int v6, v4

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3146
    .end local v4    # "value":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 3149
    :cond_1d
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createURational(Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 4
    .param p0, "value"    # Landroidx/exifinterface/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3197
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createURational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 9
    .param p0, "values"    # [Landroidx/exifinterface/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3186
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3188
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3189
    array-length v2, p0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_25

    aget-object v4, p0, v3

    .line 3190
    .local v4, "value":Landroidx/exifinterface/media/ExifInterface$Rational;
    iget-wide v5, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3191
    iget-wide v5, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3189
    .end local v4    # "value":Landroidx/exifinterface/media/ExifInterface$Rational;
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 3193
    :cond_25
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 3
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3139
    filled-new-array {p0}, [I

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createUShort([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 8
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3129
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3131
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3132
    array-length v2, p0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_1d

    aget v4, p0, v3

    .line 3133
    .local v4, "value":I
    int-to-short v5, v4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3132
    .end local v4    # "value":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 3135
    :cond_1d
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method


# virtual methods
.method public getDoubleValue(Ljava/nio/ByteOrder;)D
    .registers 8
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3358
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    .line 3359
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_70

    .line 3362
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 3363
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    return-wide v1

    .line 3365
    :cond_12
    instance-of v1, v0, [J

    const/4 v2, 0x0

    const-string v3, "There are more than one component"

    const/4 v4, 0x1

    if-eqz v1, :cond_2a

    .line 3366
    move-object v1, v0

    check-cast v1, [J

    .line 3367
    .local v1, "array":[J
    array-length v5, v1

    if-ne v5, v4, :cond_24

    .line 3368
    aget-wide v2, v1, v2

    long-to-double v2, v2

    return-wide v2

    .line 3370
    :cond_24
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3372
    .end local v1    # "array":[J
    :cond_2a
    instance-of v1, v0, [I

    if-eqz v1, :cond_3e

    .line 3373
    move-object v1, v0

    check-cast v1, [I

    .line 3374
    .local v1, "array":[I
    array-length v5, v1

    if-ne v5, v4, :cond_38

    .line 3375
    aget v2, v1, v2

    int-to-double v2, v2

    return-wide v2

    .line 3377
    :cond_38
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3379
    .end local v1    # "array":[I
    :cond_3e
    instance-of v1, v0, [D

    if-eqz v1, :cond_51

    .line 3380
    move-object v1, v0

    check-cast v1, [D

    .line 3381
    .local v1, "array":[D
    array-length v5, v1

    if-ne v5, v4, :cond_4b

    .line 3382
    aget-wide v2, v1, v2

    return-wide v2

    .line 3384
    :cond_4b
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3386
    .end local v1    # "array":[D
    :cond_51
    instance-of v1, v0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    if-eqz v1, :cond_68

    .line 3387
    move-object v1, v0

    check-cast v1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 3388
    .local v1, "array":[Landroidx/exifinterface/media/ExifInterface$Rational;
    array-length v5, v1

    if-ne v5, v4, :cond_62

    .line 3389
    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$Rational;->calculate()D

    move-result-wide v2

    return-wide v2

    .line 3391
    :cond_62
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3393
    .end local v1    # "array":[Landroidx/exifinterface/media/ExifInterface$Rational;
    :cond_68
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Couldn\'t find a double value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3360
    :cond_70
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "NULL can\'t be converted to a double value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getIntValue(Ljava/nio/ByteOrder;)I
    .registers 8
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3397
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    .line 3398
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_45

    .line 3401
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 3402
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 3404
    :cond_12
    instance-of v1, v0, [J

    const/4 v2, 0x0

    const-string v3, "There are more than one component"

    const/4 v4, 0x1

    if-eqz v1, :cond_2a

    .line 3405
    move-object v1, v0

    check-cast v1, [J

    .line 3406
    .local v1, "array":[J
    array-length v5, v1

    if-ne v5, v4, :cond_24

    .line 3407
    aget-wide v2, v1, v2

    long-to-int v2, v2

    return v2

    .line 3409
    :cond_24
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3411
    .end local v1    # "array":[J
    :cond_2a
    instance-of v1, v0, [I

    if-eqz v1, :cond_3d

    .line 3412
    move-object v1, v0

    check-cast v1, [I

    .line 3413
    .local v1, "array":[I
    array-length v5, v1

    if-ne v5, v4, :cond_37

    .line 3414
    aget v2, v1, v2

    return v2

    .line 3416
    :cond_37
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3418
    .end local v1    # "array":[I
    :cond_3d
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Couldn\'t find a integer value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3399
    :cond_45
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "NULL can\'t be converted to a integer value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .registers 9
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3422
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    .line 3423
    .local v0, "value":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3424
    return-object v1

    .line 3426
    :cond_8
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 3427
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 3430
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3431
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    instance-of v3, v0, [J

    const-string v4, ","

    if-eqz v3, :cond_37

    .line 3432
    move-object v1, v0

    check-cast v1, [J

    .line 3433
    .local v1, "array":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    array-length v5, v1

    if-ge v3, v5, :cond_32

    .line 3434
    aget-wide v5, v1, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3435
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_2f

    .line 3436
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3433
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 3439
    .end local v3    # "i":I
    :cond_32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3441
    .end local v1    # "array":[J
    :cond_37
    instance-of v3, v0, [I

    if-eqz v3, :cond_57

    .line 3442
    move-object v1, v0

    check-cast v1, [I

    .line 3443
    .local v1, "array":[I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3f
    array-length v5, v1

    if-ge v3, v5, :cond_52

    .line 3444
    aget v5, v1, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3445
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_4f

    .line 3446
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3443
    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 3449
    .end local v3    # "i":I
    :cond_52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3451
    .end local v1    # "array":[I
    :cond_57
    instance-of v3, v0, [D

    if-eqz v3, :cond_77

    .line 3452
    move-object v1, v0

    check-cast v1, [D

    .line 3453
    .local v1, "array":[D
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5f
    array-length v5, v1

    if-ge v3, v5, :cond_72

    .line 3454
    aget-wide v5, v1, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3455
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_6f

    .line 3456
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3453
    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    .line 3459
    .end local v3    # "i":I
    :cond_72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3461
    .end local v1    # "array":[D
    :cond_77
    instance-of v3, v0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    if-eqz v3, :cond_a5

    .line 3462
    move-object v1, v0

    check-cast v1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 3463
    .local v1, "array":[Landroidx/exifinterface/media/ExifInterface$Rational;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_7f
    array-length v5, v1

    if-ge v3, v5, :cond_a0

    .line 3464
    aget-object v5, v1, v3

    iget-wide v5, v5, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3465
    const/16 v5, 0x2f

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3466
    aget-object v5, v1, v3

    iget-wide v5, v5, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3467
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_9d

    .line 3468
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3463
    :cond_9d
    add-int/lit8 v3, v3, 0x1

    goto :goto_7f

    .line 3471
    .end local v3    # "i":I
    :cond_a0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3473
    .end local v1    # "array":[Landroidx/exifinterface/media/ExifInterface$Rational;
    :cond_a5
    return-object v1
.end method

.method getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .registers 13
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3236
    const-string v0, "IOException occurred while closing InputStream"

    const-string v1, "ExifInterface"

    const/4 v2, 0x0

    .line 3238
    .local v2, "inputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    const/4 v3, 0x0

    :try_start_6
    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v4, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    move-object v2, v4

    .line 3239
    invoke-virtual {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3240
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    packed-switch v4, :pswitch_data_1c6

    .line 3341
    nop

    .line 3347
    goto/16 :goto_19e

    .line 3334
    :pswitch_19
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [D

    .line 3335
    .local v4, "values":[D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1e
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_2b

    .line 3336
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readDouble()D

    move-result-wide v6

    aput-wide v6, v4, v5
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_28} :catch_1a9
    .catchall {:try_start_6 .. :try_end_28} :catchall_1a7

    .line 3335
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 3338
    .end local v5    # "i":I
    :cond_2b
    nop

    .line 3347
    nop

    .line 3349
    :try_start_2d
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    .line 3352
    goto :goto_35

    .line 3350
    :catch_31
    move-exception v3

    .line 3351
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3338
    .end local v3    # "e":Ljava/io/IOException;
    :goto_35
    return-object v4

    .line 3327
    .end local v4    # "values":[D
    :pswitch_36
    :try_start_36
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [D

    .line 3328
    .restart local v4    # "values":[D
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3b
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_49

    .line 3329
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFloat()F

    move-result v6

    float-to-double v6, v6

    aput-wide v6, v4, v5
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_46} :catch_1a9
    .catchall {:try_start_36 .. :try_end_46} :catchall_1a7

    .line 3328
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 3331
    .end local v5    # "i":I
    :cond_49
    nop

    .line 3347
    nop

    .line 3349
    :try_start_4b
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    .line 3352
    goto :goto_53

    .line 3350
    :catch_4f
    move-exception v3

    .line 3351
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3331
    .end local v3    # "e":Ljava/io/IOException;
    :goto_53
    return-object v4

    .line 3318
    .end local v4    # "values":[D
    :pswitch_54
    :try_start_54
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 3319
    .local v4, "values":[Landroidx/exifinterface/media/ExifInterface$Rational;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_59
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_71

    .line 3320
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    int-to-long v6, v6

    .line 3321
    .local v6, "numerator":J
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v8

    int-to-long v8, v8

    .line 3322
    .local v8, "denominator":J
    new-instance v10, Landroidx/exifinterface/media/ExifInterface$Rational;

    invoke-direct {v10, v6, v7, v8, v9}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJ)V

    aput-object v10, v4, v5
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_6e} :catch_1a9
    .catchall {:try_start_54 .. :try_end_6e} :catchall_1a7

    .line 3319
    .end local v6    # "numerator":J
    .end local v8    # "denominator":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    .line 3324
    .end local v5    # "i":I
    :cond_71
    nop

    .line 3347
    nop

    .line 3349
    :try_start_73
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    .line 3352
    goto :goto_7b

    .line 3350
    :catch_77
    move-exception v3

    .line 3351
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3324
    .end local v3    # "e":Ljava/io/IOException;
    :goto_7b
    return-object v4

    .line 3311
    .end local v4    # "values":[Landroidx/exifinterface/media/ExifInterface$Rational;
    :pswitch_7c
    :try_start_7c
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [I

    .line 3312
    .local v4, "values":[I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_81
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_8e

    .line 3313
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    aput v6, v4, v5
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_8b} :catch_1a9
    .catchall {:try_start_7c .. :try_end_8b} :catchall_1a7

    .line 3312
    add-int/lit8 v5, v5, 0x1

    goto :goto_81

    .line 3315
    .end local v5    # "i":I
    :cond_8e
    nop

    .line 3347
    nop

    .line 3349
    :try_start_90
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    .line 3352
    goto :goto_98

    .line 3350
    :catch_94
    move-exception v3

    .line 3351
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3315
    .end local v3    # "e":Ljava/io/IOException;
    :goto_98
    return-object v4

    .line 3304
    .end local v4    # "values":[I
    :pswitch_99
    :try_start_99
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [I

    .line 3305
    .restart local v4    # "values":[I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_9e
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_ab

    .line 3306
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v6

    aput v6, v4, v5
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_a8} :catch_1a9
    .catchall {:try_start_99 .. :try_end_a8} :catchall_1a7

    .line 3305
    add-int/lit8 v5, v5, 0x1

    goto :goto_9e

    .line 3308
    .end local v5    # "i":I
    :cond_ab
    nop

    .line 3347
    nop

    .line 3349
    :try_start_ad
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b1

    .line 3352
    goto :goto_b5

    .line 3350
    :catch_b1
    move-exception v3

    .line 3351
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3308
    .end local v3    # "e":Ljava/io/IOException;
    :goto_b5
    return-object v4

    .line 3295
    .end local v4    # "values":[I
    :pswitch_b6
    :try_start_b6
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 3296
    .local v4, "values":[Landroidx/exifinterface/media/ExifInterface$Rational;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_bb
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_d1

    .line 3297
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v6

    .line 3298
    .restart local v6    # "numerator":J
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v8

    .line 3299
    .restart local v8    # "denominator":J
    new-instance v10, Landroidx/exifinterface/media/ExifInterface$Rational;

    invoke-direct {v10, v6, v7, v8, v9}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJ)V

    aput-object v10, v4, v5
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_ce} :catch_1a9
    .catchall {:try_start_b6 .. :try_end_ce} :catchall_1a7

    .line 3296
    .end local v6    # "numerator":J
    .end local v8    # "denominator":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_bb

    .line 3301
    .end local v5    # "i":I
    :cond_d1
    nop

    .line 3347
    nop

    .line 3349
    :try_start_d3
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_d7

    .line 3352
    goto :goto_db

    .line 3350
    :catch_d7
    move-exception v3

    .line 3351
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3301
    .end local v3    # "e":Ljava/io/IOException;
    :goto_db
    return-object v4

    .line 3288
    .end local v4    # "values":[Landroidx/exifinterface/media/ExifInterface$Rational;
    :pswitch_dc
    :try_start_dc
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [J

    .line 3289
    .local v4, "values":[J
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_e1
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_ee

    .line 3290
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v6

    aput-wide v6, v4, v5
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_eb} :catch_1a9
    .catchall {:try_start_dc .. :try_end_eb} :catchall_1a7

    .line 3289
    add-int/lit8 v5, v5, 0x1

    goto :goto_e1

    .line 3292
    .end local v5    # "i":I
    :cond_ee
    nop

    .line 3347
    nop

    .line 3349
    :try_start_f0
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f3} :catch_f4

    .line 3352
    goto :goto_f8

    .line 3350
    :catch_f4
    move-exception v3

    .line 3351
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3292
    .end local v3    # "e":Ljava/io/IOException;
    :goto_f8
    return-object v4

    .line 3281
    .end local v4    # "values":[J
    :pswitch_f9
    :try_start_f9
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [I

    .line 3282
    .local v4, "values":[I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_fe
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_10b

    .line 3283
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v6

    aput v6, v4, v5
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_108} :catch_1a9
    .catchall {:try_start_f9 .. :try_end_108} :catchall_1a7

    .line 3282
    add-int/lit8 v5, v5, 0x1

    goto :goto_fe

    .line 3285
    .end local v5    # "i":I
    :cond_10b
    nop

    .line 3347
    nop

    .line 3349
    :try_start_10d
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_110} :catch_111

    .line 3352
    goto :goto_115

    .line 3350
    :catch_111
    move-exception v3

    .line 3351
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3285
    .end local v3    # "e":Ljava/io/IOException;
    :goto_115
    return-object v4

    .line 3251
    .end local v4    # "values":[I
    :pswitch_116
    const/4 v4, 0x0

    .line 3252
    .local v4, "index":I
    :try_start_117
    iget v5, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    array-length v6, v6

    if-lt v5, v6, :cond_13a

    .line 3253
    const/4 v5, 0x1

    .line 3254
    .local v5, "same":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_120
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    array-length v7, v7

    if-ge v6, v7, :cond_134

    .line 3255
    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v7, v7, v6

    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    aget-byte v8, v8, v6

    if-eq v7, v8, :cond_131

    .line 3256
    const/4 v5, 0x0

    .line 3257
    goto :goto_134

    .line 3254
    :cond_131
    add-int/lit8 v6, v6, 0x1

    goto :goto_120

    .line 3260
    .end local v6    # "i":I
    :cond_134
    :goto_134
    if-eqz v5, :cond_13a

    .line 3261
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    array-length v6, v6

    move v4, v6

    .line 3265
    .end local v5    # "same":Z
    :cond_13a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3266
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_13f
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v4, v6, :cond_15c

    .line 3267
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v6, v6, v4

    .line 3268
    .local v6, "ch":I
    if-nez v6, :cond_14a

    .line 3269
    goto :goto_15c

    .line 3271
    :cond_14a
    const/16 v7, 0x20

    if-lt v6, v7, :cond_153

    .line 3272
    int-to-char v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_158

    .line 3274
    :cond_153
    const/16 v7, 0x3f

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3276
    :goto_158
    nop

    .end local v6    # "ch":I
    add-int/lit8 v4, v4, 0x1

    .line 3277
    goto :goto_13f

    .line 3278
    :cond_15c
    :goto_15c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_160
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_160} :catch_1a9
    .catchall {:try_start_117 .. :try_end_160} :catchall_1a7

    .line 3347
    nop

    .line 3349
    :try_start_161
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_164} :catch_165

    .line 3352
    goto :goto_169

    .line 3350
    :catch_165
    move-exception v6

    .line 3351
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3278
    .end local v6    # "e":Ljava/io/IOException;
    :goto_169
    return-object v3

    .line 3244
    .end local v4    # "index":I
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    :pswitch_16a
    :try_start_16a
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_18d

    const/4 v5, 0x0

    aget-byte v7, v4, v5

    if-ltz v7, :cond_18d

    if-gt v7, v6, :cond_18d

    .line 3245
    new-instance v4, Ljava/lang/String;

    new-array v6, v6, [C

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    aput-char v7, v6, v5

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([C)V
    :try_end_183
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_183} :catch_1a9
    .catchall {:try_start_16a .. :try_end_183} :catchall_1a7

    .line 3347
    nop

    .line 3349
    :try_start_184
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_187
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_187} :catch_188

    .line 3352
    goto :goto_18c

    .line 3350
    :catch_188
    move-exception v3

    .line 3351
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3245
    .end local v3    # "e":Ljava/io/IOException;
    :goto_18c
    return-object v4

    .line 3247
    :cond_18d
    :try_start_18d
    new-instance v5, Ljava/lang/String;

    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_194
    .catch Ljava/io/IOException; {:try_start_18d .. :try_end_194} :catch_1a9
    .catchall {:try_start_18d .. :try_end_194} :catchall_1a7

    .line 3347
    nop

    .line 3349
    :try_start_195
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_198
    .catch Ljava/io/IOException; {:try_start_195 .. :try_end_198} :catch_199

    .line 3352
    goto :goto_19d

    .line 3350
    :catch_199
    move-exception v3

    .line 3351
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3247
    .end local v3    # "e":Ljava/io/IOException;
    :goto_19d
    return-object v5

    .line 3349
    :goto_19e
    :try_start_19e
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_1a1
    .catch Ljava/io/IOException; {:try_start_19e .. :try_end_1a1} :catch_1a2

    .line 3352
    goto :goto_1a6

    .line 3350
    :catch_1a2
    move-exception v4

    .line 3351
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3341
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1a6
    return-object v3

    .line 3347
    :catchall_1a7
    move-exception v3

    goto :goto_1bb

    .line 3343
    :catch_1a9
    move-exception v4

    .line 3344
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_1aa
    const-string v5, "IOException occurred during reading a value"

    invoke-static {v1, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1af
    .catchall {:try_start_1aa .. :try_end_1af} :catchall_1a7

    .line 3345
    nop

    .line 3347
    if-eqz v2, :cond_1ba

    .line 3349
    :try_start_1b2
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_1b5
    .catch Ljava/io/IOException; {:try_start_1b2 .. :try_end_1b5} :catch_1b6

    .line 3352
    goto :goto_1ba

    .line 3350
    :catch_1b6
    move-exception v5

    .line 3351
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3345
    .end local v5    # "e":Ljava/io/IOException;
    :cond_1ba
    :goto_1ba
    return-object v3

    .line 3347
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1bb
    if-eqz v2, :cond_1c5

    .line 3349
    :try_start_1bd
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_1c0
    .catch Ljava/io/IOException; {:try_start_1bd .. :try_end_1c0} :catch_1c1

    .line 3352
    goto :goto_1c5

    .line 3350
    :catch_1c1
    move-exception v4

    .line 3351
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3354
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1c5
    :goto_1c5
    throw v3

    :pswitch_data_1c6
    .packed-switch 0x1
        :pswitch_16a
        :pswitch_116
        :pswitch_f9
        :pswitch_dc
        :pswitch_b6
        :pswitch_16a
        :pswitch_116
        :pswitch_99
        :pswitch_7c
        :pswitch_54
        :pswitch_36
        :pswitch_19
    .end packed-switch
.end method

.method public size()I
    .registers 3

    .line 3477
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    iget v1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    aget v0, v0, v1

    iget v1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 3231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v2, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

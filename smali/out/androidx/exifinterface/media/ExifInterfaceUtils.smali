.class Landroidx/exifinterface/media/ExifInterfaceUtils;
.super Ljava/lang/Object;
.source "ExifInterfaceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/exifinterface/media/ExifInterfaceUtils$Api23Impl;,
        Landroidx/exifinterface/media/ExifInterfaceUtils$Api21Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifInterfaceUtils"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static byteArrayToHexString([B)Ljava/lang/String;
    .registers 6
    .param p0, "bytes"    # [B

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 110
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_24

    .line 111
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aget-byte v3, p0, v1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%02x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 113
    .end local v1    # "i":I
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static closeFileDescriptor(Ljava/io/FileDescriptor;)V
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 151
    nop

    .line 153
    :try_start_1
    invoke-static {p0}, Landroidx/exifinterface/media/ExifInterfaceUtils$Api21Impl;->close(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_5

    .line 157
    :goto_4
    goto :goto_e

    .line 155
    :catch_5
    move-exception v0

    .line 156
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "ExifInterfaceUtils"

    const-string v2, "Error closing fd."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/Exception;
    goto :goto_4

    .line 161
    :goto_e
    return-void
.end method

.method static closeQuietly(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 135
    if-eqz p0, :cond_a

    .line 137
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 141
    goto :goto_a

    .line 140
    :catch_6
    move-exception v0

    goto :goto_a

    .line 138
    :catch_8
    move-exception v0

    .line 139
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 143
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_a
    :goto_a
    return-void
.end method

.method static convertToLongArray(Ljava/lang/Object;)[J
    .registers 6
    .param p0, "inputObj"    # Ljava/lang/Object;

    .line 80
    instance-of v0, p0, [I

    if-eqz v0, :cond_17

    .line 81
    move-object v0, p0

    check-cast v0, [I

    .line 82
    .local v0, "input":[I
    array-length v1, v0

    new-array v1, v1, [J

    .line 83
    .local v1, "result":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    array-length v3, v0

    if-ge v2, v3, :cond_16

    .line 84
    aget v3, v0, v2

    int-to-long v3, v3

    aput-wide v3, v1, v2

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 86
    .end local v2    # "i":I
    :cond_16
    return-object v1

    .line 87
    .end local v0    # "input":[I
    .end local v1    # "result":[J
    :cond_17
    instance-of v0, p0, [J

    if-eqz v0, :cond_1f

    .line 88
    move-object v0, p0

    check-cast v0, [J

    return-object v0

    .line 90
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .registers 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "total":I
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 49
    .local v1, "buffer":[B
    :goto_5
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "c":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_13

    .line 50
    add-int/2addr v0, v3

    .line 51
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_5

    .line 53
    :cond_13
    return v0
.end method

.method static copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .registers 9
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    move v0, p2

    .line 62
    .local v0, "remainder":I
    const/16 v1, 0x2000

    new-array v2, v1, [B

    .line 63
    .local v2, "buffer":[B
    :goto_5
    if-lez v0, :cond_1f

    .line 64
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 65
    .local v3, "bytesToRead":I
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 66
    .local v5, "bytesRead":I
    if-ne v5, v3, :cond_17

    .line 70
    sub-int/2addr v0, v5

    .line 71
    invoke-virtual {p1, v2, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 72
    .end local v3    # "bytesToRead":I
    .end local v5    # "bytesRead":I
    goto :goto_5

    .line 67
    .restart local v3    # "bytesToRead":I
    .restart local v5    # "bytesRead":I
    :cond_17
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Failed to copy the given amount of bytes from the inputstream to the output stream."

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    .end local v3    # "bytesToRead":I
    .end local v5    # "bytesRead":I
    :cond_1f
    return-void
.end method

.method static parseSubSeconds(Ljava/lang/String;)J
    .registers 8
    .param p0, "subSec"    # Ljava/lang/String;

    .line 118
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 119
    .local v0, "len":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_12} :catch_1c

    .line 120
    .local v2, "sub":J
    move v4, v0

    .local v4, "i":I
    :goto_13
    if-ge v4, v1, :cond_1b

    .line 121
    const-wide/16 v5, 0xa

    mul-long/2addr v2, v5

    .line 120
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 123
    .end local v4    # "i":I
    :cond_1b
    return-wide v2

    .line 124
    .end local v0    # "len":I
    .end local v2    # "sub":J
    :catch_1c
    move-exception v0

    .line 127
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static startsWith([B[B)Z
    .registers 6
    .param p0, "cur"    # [B
    .param p1, "val"    # [B

    .line 94
    const/4 v0, 0x0

    if-eqz p0, :cond_1b

    if-nez p1, :cond_6

    goto :goto_1b

    .line 97
    :cond_6
    array-length v1, p0

    array-length v2, p1

    if-ge v1, v2, :cond_b

    .line 98
    return v0

    .line 100
    :cond_b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, p1

    if-ge v1, v2, :cond_19

    .line 101
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_16

    .line 102
    return v0

    .line 100
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 105
    .end local v1    # "i":I
    :cond_19
    const/4 v0, 0x1

    return v0

    .line 95
    :cond_1b
    :goto_1b
    return v0
.end method

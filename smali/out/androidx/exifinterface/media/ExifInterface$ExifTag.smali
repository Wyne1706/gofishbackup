.class Landroidx/exifinterface/media/ExifInterface$ExifTag;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/exifinterface/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExifTag"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final number:I

.field public final primaryFormat:I

.field public final secondaryFormat:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # I
    .param p3, "format"    # I

    .line 3489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3490
    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 3491
    iput p2, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 3492
    iput p3, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 3493
    const/4 v0, -0x1

    iput v0, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    .line 3494
    return-void
.end method

.method constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # I
    .param p3, "primaryFormat"    # I
    .param p4, "secondaryFormat"    # I

    .line 3497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3498
    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 3499
    iput p2, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 3500
    iput p3, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 3501
    iput p4, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    .line 3502
    return-void
.end method


# virtual methods
.method isFormatCompatible(I)Z
    .registers 6
    .param p1, "format"    # I

    .line 3506
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_32

    if-ne p1, v2, :cond_9

    goto :goto_32

    .line 3508
    :cond_9
    if-eq v0, p1, :cond_31

    iget v2, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    if-ne v2, p1, :cond_10

    goto :goto_31

    .line 3510
    :cond_10
    const/4 v3, 0x4

    if-eq v0, v3, :cond_15

    if-ne v2, v3, :cond_19

    :cond_15
    const/4 v3, 0x3

    if-ne p1, v3, :cond_19

    .line 3512
    return v1

    .line 3513
    :cond_19
    const/16 v3, 0x9

    if-eq v0, v3, :cond_1f

    if-ne v2, v3, :cond_24

    :cond_1f
    const/16 v3, 0x8

    if-ne p1, v3, :cond_24

    .line 3515
    return v1

    .line 3516
    :cond_24
    const/16 v3, 0xc

    if-eq v0, v3, :cond_2a

    if-ne v2, v3, :cond_2f

    :cond_2a
    const/16 v0, 0xb

    if-ne p1, v0, :cond_2f

    .line 3518
    return v1

    .line 3520
    :cond_2f
    const/4 v0, 0x0

    return v0

    .line 3509
    :cond_31
    :goto_31
    return v1

    .line 3507
    :cond_32
    :goto_32
    return v1
.end method

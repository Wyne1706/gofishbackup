.class public final Lkotlin/UInt;
.super Ljava/lang/Object;
.source "UInt.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/UInt$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlin/UInt;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008!\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u0005\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\n\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u0087@\u0018\u0000 {2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001{B\u0014\u0008\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001b\u0010\u0008\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\u000c\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001b\u0010\u000c\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\rH\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001b\u0010\u000c\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0000H\u0097\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u000bJ\u001b\u0010\u000c\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0011H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001b\u0010\u000c\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0014H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0016\u0010\u0017\u001a\u00020\u0000H\u0087\n\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0005J\u001b\u0010\u0019\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001a\u0010\u000fJ\u001b\u0010\u0019\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u000bJ\u001b\u0010\u0019\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u001b\u0010\u0019\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001e\u0010\u0016J\u001a\u0010\u001f\u001a\u00020 2\u0008\u0010\t\u001a\u0004\u0018\u00010!H\u00d6\u0003\u00a2\u0006\u0004\u0008\"\u0010#J\u001b\u0010$\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008%\u0010\u000fJ\u001b\u0010$\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008&\u0010\u000bJ\u001b\u0010$\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\'\u0010\u001dJ\u001b\u0010$\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008(\u0010\u0016J\u0010\u0010)\u001a\u00020\u0003H\u00d6\u0001\u00a2\u0006\u0004\u0008*\u0010\u0005J\u0016\u0010+\u001a\u00020\u0000H\u0087\n\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008,\u0010\u0005J\u0016\u0010-\u001a\u00020\u0000H\u0087\u0008\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008.\u0010\u0005J\u001b\u0010/\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u00080\u0010\u000fJ\u001b\u0010/\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u00081\u0010\u000bJ\u001b\u0010/\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u00082\u0010\u001dJ\u001b\u0010/\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u00083\u0010\u0016J\u001b\u00104\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\rH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u00085\u00106J\u001b\u00104\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u00087\u0010\u000bJ\u001b\u00104\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u00088\u0010\u001dJ\u001b\u00104\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u00089\u0010:J\u001b\u0010;\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\u000c\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008<\u0010\u000bJ\u001b\u0010=\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008>\u0010\u000fJ\u001b\u0010=\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008?\u0010\u000bJ\u001b\u0010=\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008@\u0010\u001dJ\u001b\u0010=\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008A\u0010\u0016J\u001b\u0010B\u001a\u00020C2\u0006\u0010\t\u001a\u00020\u0000H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008D\u0010EJ\u001b\u0010F\u001a\u00020C2\u0006\u0010\t\u001a\u00020\u0000H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008G\u0010EJ\u001b\u0010H\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008I\u0010\u000fJ\u001b\u0010H\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008J\u0010\u000bJ\u001b\u0010H\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008K\u0010\u001dJ\u001b\u0010H\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008L\u0010\u0016J\u001e\u0010M\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\u0003H\u0087\u000c\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008O\u0010\u000bJ\u001e\u0010P\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\u0003H\u0087\u000c\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008Q\u0010\u000bJ\u001b\u0010R\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008S\u0010\u000fJ\u001b\u0010R\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008T\u0010\u000bJ\u001b\u0010R\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008U\u0010\u001dJ\u001b\u0010R\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008V\u0010\u0016J\u0010\u0010W\u001a\u00020XH\u0087\u0008\u00a2\u0006\u0004\u0008Y\u0010ZJ\u0010\u0010[\u001a\u00020\\H\u0087\u0008\u00a2\u0006\u0004\u0008]\u0010^J\u0010\u0010_\u001a\u00020`H\u0087\u0008\u00a2\u0006\u0004\u0008a\u0010bJ\u0010\u0010c\u001a\u00020\u0003H\u0087\u0008\u00a2\u0006\u0004\u0008d\u0010\u0005J\u0010\u0010e\u001a\u00020fH\u0087\u0008\u00a2\u0006\u0004\u0008g\u0010hJ\u0010\u0010i\u001a\u00020jH\u0087\u0008\u00a2\u0006\u0004\u0008k\u0010lJ\u000f\u0010m\u001a\u00020nH\u0016\u00a2\u0006\u0004\u0008o\u0010pJ\u0016\u0010q\u001a\u00020\rH\u0087\u0008\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008r\u0010ZJ\u0016\u0010s\u001a\u00020\u0000H\u0087\u0008\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008t\u0010\u0005J\u0016\u0010u\u001a\u00020\u0011H\u0087\u0008\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008v\u0010hJ\u0016\u0010w\u001a\u00020\u0014H\u0087\u0008\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008x\u0010lJ\u001b\u0010y\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\u000c\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008z\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0006\u0010\u0007\u0088\u0001\u0002\u0092\u0001\u00020\u0003\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u0006|"
    }
    d2 = {
        "Lkotlin/UInt;",
        "",
        "data",
        "",
        "constructor-impl",
        "(I)I",
        "getData$annotations",
        "()V",
        "and",
        "other",
        "and-WZ4Q5Ns",
        "(II)I",
        "compareTo",
        "Lkotlin/UByte;",
        "compareTo-7apg3OU",
        "(IB)I",
        "compareTo-WZ4Q5Ns",
        "Lkotlin/ULong;",
        "compareTo-VKZWuLQ",
        "(IJ)I",
        "Lkotlin/UShort;",
        "compareTo-xj2QHRw",
        "(IS)I",
        "dec",
        "dec-pVg5ArA",
        "div",
        "div-7apg3OU",
        "div-WZ4Q5Ns",
        "div-VKZWuLQ",
        "(IJ)J",
        "div-xj2QHRw",
        "equals",
        "",
        "",
        "equals-impl",
        "(ILjava/lang/Object;)Z",
        "floorDiv",
        "floorDiv-7apg3OU",
        "floorDiv-WZ4Q5Ns",
        "floorDiv-VKZWuLQ",
        "floorDiv-xj2QHRw",
        "hashCode",
        "hashCode-impl",
        "inc",
        "inc-pVg5ArA",
        "inv",
        "inv-pVg5ArA",
        "minus",
        "minus-7apg3OU",
        "minus-WZ4Q5Ns",
        "minus-VKZWuLQ",
        "minus-xj2QHRw",
        "mod",
        "mod-7apg3OU",
        "(IB)B",
        "mod-WZ4Q5Ns",
        "mod-VKZWuLQ",
        "mod-xj2QHRw",
        "(IS)S",
        "or",
        "or-WZ4Q5Ns",
        "plus",
        "plus-7apg3OU",
        "plus-WZ4Q5Ns",
        "plus-VKZWuLQ",
        "plus-xj2QHRw",
        "rangeTo",
        "Lkotlin/ranges/UIntRange;",
        "rangeTo-WZ4Q5Ns",
        "(II)Lkotlin/ranges/UIntRange;",
        "rangeUntil",
        "rangeUntil-WZ4Q5Ns",
        "rem",
        "rem-7apg3OU",
        "rem-WZ4Q5Ns",
        "rem-VKZWuLQ",
        "rem-xj2QHRw",
        "shl",
        "bitCount",
        "shl-pVg5ArA",
        "shr",
        "shr-pVg5ArA",
        "times",
        "times-7apg3OU",
        "times-WZ4Q5Ns",
        "times-VKZWuLQ",
        "times-xj2QHRw",
        "toByte",
        "",
        "toByte-impl",
        "(I)B",
        "toDouble",
        "",
        "toDouble-impl",
        "(I)D",
        "toFloat",
        "",
        "toFloat-impl",
        "(I)F",
        "toInt",
        "toInt-impl",
        "toLong",
        "",
        "toLong-impl",
        "(I)J",
        "toShort",
        "",
        "toShort-impl",
        "(I)S",
        "toString",
        "",
        "toString-impl",
        "(I)Ljava/lang/String;",
        "toUByte",
        "toUByte-w2LRezQ",
        "toUInt",
        "toUInt-pVg5ArA",
        "toULong",
        "toULong-s-VKNKU",
        "toUShort",
        "toUShort-Mh2AYeg",
        "xor",
        "xor-WZ4Q5Ns",
        "Companion",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field public static final Companion:Lkotlin/UInt$Companion;

.field public static final MAX_VALUE:I = -0x1

.field public static final MIN_VALUE:I = 0x0

.field public static final SIZE_BITS:I = 0x20

.field public static final SIZE_BYTES:I = 0x4


# instance fields
.field private final data:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/UInt$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/UInt$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/UInt;->Companion:Lkotlin/UInt$Companion;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .registers 2
    .param p1, "data"    # I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlin/UInt;->data:I

    return-void
.end method

.method private static final and-WZ4Q5Ns(II)I
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # I

    .line 270
    and-int v0, p0, p1

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public static final synthetic box-impl(I)Lkotlin/UInt;
    .registers 2

    new-instance v0, Lkotlin/UInt;

    invoke-direct {v0, p0}, Lkotlin/UInt;-><init>(I)V

    return-object v0
.end method

.method private static final compareTo-7apg3OU(IB)I
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # B

    .line 46
    and-int/lit16 v0, p1, 0xff

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    invoke-static {p0, v0}, Lkotlin/UByte$$ExternalSyntheticBackport2;->m(II)I

    move-result v0

    return v0
.end method

.method private static final compareTo-VKZWuLQ(IJ)I
    .registers 7
    .param p0, "arg0"    # I
    .param p1, "other"    # J

    .line 71
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lkotlin/UByte$$ExternalSyntheticBackport4;->m(JJ)I

    move-result v0

    return v0
.end method

.method private compareTo-WZ4Q5Ns(I)I
    .registers 3
    .param p1, "other"    # I

    invoke-virtual {p0}, Lkotlin/UInt;->unbox-impl()I

    move-result v0

    .line 63
    invoke-static {v0, p1}, Lkotlin/UnsignedKt;->uintCompare(II)I

    move-result v0

    return v0
.end method

.method private static compareTo-WZ4Q5Ns(II)I
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # I

    .line 63
    invoke-static {p0, p1}, Lkotlin/UnsignedKt;->uintCompare(II)I

    move-result v0

    return v0
.end method

.method private static final compareTo-xj2QHRw(IS)I
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # S

    .line 54
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    invoke-static {p0, v0}, Lkotlin/UByte$$ExternalSyntheticBackport2;->m(II)I

    move-result v0

    return v0
.end method

.method public static constructor-impl(I)I
    .registers 1

    return p0
.end method

.method private static final dec-pVg5ArA(I)I
    .registers 2
    .param p0, "arg0"    # I

    .line 234
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method private static final div-7apg3OU(IB)I
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # B

    .line 114
    and-int/lit16 v0, p1, 0xff

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    invoke-static {p0, v0}, Lkotlin/UByte$$ExternalSyntheticBackport1;->m(II)I

    move-result v0

    return v0
.end method

.method private static final div-VKZWuLQ(IJ)J
    .registers 7
    .param p0, "arg0"    # I
    .param p1, "other"    # J

    .line 123
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lkotlin/UByte$$ExternalSyntheticBackport5;->m(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final div-WZ4Q5Ns(II)I
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # I

    .line 120
    invoke-static {p0, p1}, Lkotlin/UnsignedKt;->uintDivide-J1ME1BU(II)I

    move-result v0

    return v0
.end method

.method private static final div-xj2QHRw(IS)I
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # S

    .line 117
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    invoke-static {p0, v0}, Lkotlin/UByte$$ExternalSyntheticBackport1;->m(II)I

    move-result v0

    return v0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lkotlin/UInt;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Lkotlin/UInt;

    invoke-virtual {v0}, Lkotlin/UInt;->unbox-impl()I

    move-result v0

    if-eq p0, v0, :cond_10

    return v1

    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method public static final equals-impl0(II)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static final floorDiv-7apg3OU(IB)I
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # B

    .line 160
    and-int/lit16 v0, p1, 0xff

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    invoke-static {p0, v0}, Lkotlin/UByte$$ExternalSyntheticBackport1;->m(II)I

    move-result v0

    return v0
.end method

.method private static final floorDiv-VKZWuLQ(IJ)J
    .registers 7
    .param p0, "arg0"    # I
    .param p1, "other"    # J

    .line 181
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lkotlin/UByte$$ExternalSyntheticBackport5;->m(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final floorDiv-WZ4Q5Ns(II)I
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # I

    .line 174
    invoke-static {p0, p1}, Lkotlin/UByte$$ExternalSyntheticBackport1;->m(II)I

    move-result v0

    return v0
.end method

.method private static final floorDiv-xj2QHRw(IS)I
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # S

    .line 167
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    invoke-static {p0, v0}, Lkotlin/UByte$$ExternalSyntheticBackport1;->m(II)I

    move-result v0

    return v0
.end method

.method public static synthetic getData$annotations()V
    .registers 0

    return-void
.end method

.method public static hashCode-impl(I)I
    .registers 1

    return p0
.end method

.method private static final inc-pVg5ArA(I)I
    .registers 2
    .param p0, "arg0"    # I

    .line 226
    add-int/lit8 v0, p0, 0x1

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method private static final inv-pVg5ArA(I)I
    .registers 2
    .param p0, "arg0"    # I

    .line 279
    not-int v0, p0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method private static final minus-7apg3OU(IB)I
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # B

    .line 88
    and-int/lit16 v0, p1, 0xff

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    sub-int v0, p0, v0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method private static final minus-VKZWuLQ(IJ)J
    .registers 7
    .param p0, "arg0"    # I
    .param p1, "other"    # J

    .line 97
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final minus-WZ4Q5Ns(II)I
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # I

    .line 94
    sub-int v0, p0, p1

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method private static final minus-xj2QHRw(IS)I
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # S

    .line 91
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    sub-int v0, p0, v0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method private static final mod-7apg3OU(IB)B
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # B

    .line 191
    and-int/lit16 v0, p1, 0xff

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    invoke-static {p0, v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v0

    return v0
.end method

.method private static final mod-VKZWuLQ(IJ)J
    .registers 7
    .param p0, "arg0"    # I
    .param p1, "other"    # J

    .line 218
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lkotlin/UByte$$ExternalSyntheticBackport3;->m(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final mod-WZ4Q5Ns(II)I
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # I

    .line 209
    invoke-static {p0, p1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    return v0
.end method

.method private static final mod-xj2QHRw(IS)S
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # S

    .line 200
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    invoke-static {p0, v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v0

    return v0
.end method

.method private static final or-WZ4Q5Ns(II)I
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # I

    .line 273
    or-int v0, p0, p1

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method private static final plus-7apg3OU(IB)I
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # B

    .line 75
    and-int/lit16 v0, p1, 0xff

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    add-int/2addr v0, p0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method private static final plus-VKZWuLQ(IJ)J
    .registers 7
    .param p0, "arg0"    # I
    .param p1, "other"    # J

    .line 84
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final plus-WZ4Q5Ns(II)I
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # I

    .line 81
    add-int v0, p0, p1

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method private static final plus-xj2QHRw(IS)I
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # S

    .line 78
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    add-int/2addr v0, p0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method private static final rangeTo-WZ4Q5Ns(II)Lkotlin/ranges/UIntRange;
    .registers 4
    .param p0, "arg0"    # I
    .param p1, "other"    # I

    .line 238
    new-instance v0, Lkotlin/ranges/UIntRange;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lkotlin/ranges/UIntRange;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private static final rangeUntil-WZ4Q5Ns(II)Lkotlin/ranges/UIntRange;
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # I

    .line 248
    invoke-static {p0, p1}, Lkotlin/ranges/URangesKt;->until-J1ME1BU(II)Lkotlin/ranges/UIntRange;

    move-result-object v0

    return-object v0
.end method

.method private static final rem-7apg3OU(IB)I
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # B

    .line 131
    and-int/lit16 v0, p1, 0xff

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    invoke-static {p0, v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    return v0
.end method

.method private static final rem-VKZWuLQ(IJ)J
    .registers 7
    .param p0, "arg0"    # I
    .param p1, "other"    # J

    .line 152
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lkotlin/UByte$$ExternalSyntheticBackport3;->m(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final rem-WZ4Q5Ns(II)I
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # I

    .line 145
    invoke-static {p0, p1}, Lkotlin/UnsignedKt;->uintRemainder-J1ME1BU(II)I

    move-result v0

    return v0
.end method

.method private static final rem-xj2QHRw(IS)I
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # S

    .line 138
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    invoke-static {p0, v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    return v0
.end method

.method private static final shl-pVg5ArA(II)I
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "bitCount"    # I

    .line 257
    shl-int v0, p0, p1

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method private static final shr-pVg5ArA(II)I
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "bitCount"    # I

    .line 266
    ushr-int v0, p0, p1

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method private static final times-7apg3OU(IB)I
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # B

    .line 101
    and-int/lit16 v0, p1, 0xff

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    mul-int/2addr v0, p0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method private static final times-VKZWuLQ(IJ)J
    .registers 7
    .param p0, "arg0"    # I
    .param p1, "other"    # J

    .line 110
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    mul-long/2addr v0, p1

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final times-WZ4Q5Ns(II)I
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # I

    .line 107
    mul-int v0, p0, p1

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method private static final times-xj2QHRw(IS)I
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # S

    .line 104
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    mul-int/2addr v0, p0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method private static final toByte-impl(I)B
    .registers 2
    .param p0, "arg0"    # I

    .line 291
    int-to-byte v0, p0

    return v0
.end method

.method private static final toDouble-impl(I)D
    .registers 3
    .param p0, "arg0"    # I

    .line 373
    invoke-static {p0}, Lkotlin/UnsignedKt;->uintToDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method private static final toFloat-impl(I)F
    .registers 3
    .param p0, "arg0"    # I

    .line 366
    invoke-static {p0}, Lkotlin/UnsignedKt;->uintToDouble(I)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private static final toInt-impl(I)I
    .registers 1
    .param p0, "arg0"    # I

    .line 312
    return p0
.end method

.method private static final toLong-impl(I)J
    .registers 5
    .param p0, "arg0"    # I

    .line 322
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static final toShort-impl(I)S
    .registers 2
    .param p0, "arg0"    # I

    .line 302
    int-to-short v0, p0

    return v0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .registers 5
    .param p0, "arg0"    # I

    .line 375
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final toUByte-w2LRezQ(I)B
    .registers 2
    .param p0, "arg0"    # I

    .line 333
    int-to-byte v0, p0

    invoke-static {v0}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v0

    return v0
.end method

.method private static final toUInt-pVg5ArA(I)I
    .registers 1
    .param p0, "arg0"    # I

    .line 346
    return p0
.end method

.method private static final toULong-s-VKNKU(I)J
    .registers 5
    .param p0, "arg0"    # I

    .line 356
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final toUShort-Mh2AYeg(I)S
    .registers 2
    .param p0, "arg0"    # I

    .line 343
    int-to-short v0, p0

    invoke-static {v0}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v0

    return v0
.end method

.method private static final xor-WZ4Q5Ns(II)I
    .registers 3
    .param p0, "arg0"    # I
    .param p1, "other"    # I

    .line 276
    xor-int v0, p0, p1

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 13
    move-object v0, p1

    check-cast v0, Lkotlin/UInt;

    invoke-virtual {v0}, Lkotlin/UInt;->unbox-impl()I

    move-result v0

    invoke-virtual {p0}, Lkotlin/UInt;->unbox-impl()I

    move-result v1

    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->uintCompare(II)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lkotlin/UInt;->data:I

    invoke-static {v0, p1}, Lkotlin/UInt;->equals-impl(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lkotlin/UInt;->data:I

    invoke-static {v0}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 375
    iget v0, p0, Lkotlin/UInt;->data:I

    invoke-static {v0}, Lkotlin/UInt;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()I
    .registers 2

    iget v0, p0, Lkotlin/UInt;->data:I

    return v0
.end method

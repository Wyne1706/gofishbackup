.class public final Lkotlin/time/MonotonicTimeSource;
.super Ljava/lang/Object;
.source "MonoTimeSource.kt"

# interfaces
.implements Lkotlin/time/TimeSource$WithComparableMarks;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000e\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000bJ \u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u000bJ\u0018\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0013\u001a\u00020\u0006H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0008\u0010\u0016\u001a\u00020\u0004H\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0008\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlin/time/MonotonicTimeSource;",
        "Lkotlin/time/TimeSource$WithComparableMarks;",
        "()V",
        "zero",
        "",
        "adjustReading",
        "Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;",
        "timeMark",
        "duration",
        "Lkotlin/time/Duration;",
        "adjustReading-6QKq23U",
        "(JJ)J",
        "differenceBetween",
        "one",
        "another",
        "differenceBetween-fRLX17w",
        "elapsedFrom",
        "elapsedFrom-6eNON_k",
        "(J)J",
        "markNow",
        "markNow-z9LOYto",
        "()J",
        "read",
        "toString",
        "",
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


# static fields
.field public static final INSTANCE:Lkotlin/time/MonotonicTimeSource;

.field private static final zero:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/time/MonotonicTimeSource;

    invoke-direct {v0}, Lkotlin/time/MonotonicTimeSource;-><init>()V

    sput-object v0, Lkotlin/time/MonotonicTimeSource;->INSTANCE:Lkotlin/time/MonotonicTimeSource;

    .line 13
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/MonotonicTimeSource;->zero:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final read()J
    .registers 5

    .line 14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Lkotlin/time/MonotonicTimeSource;->zero:J

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final adjustReading-6QKq23U(JJ)J
    .registers 7
    .param p1, "timeMark"    # J
    .param p3, "duration"    # J

    .line 25
    invoke-static {p1, p2, p3, p4}, Lkotlin/time/LongSaturatedMathKt;->saturatingAdd-pTJri5U(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final differenceBetween-fRLX17w(JJ)J
    .registers 7
    .param p1, "one"    # J
    .param p3, "another"    # J

    .line 22
    invoke-static {p1, p2, p3, p4}, Lkotlin/time/LongSaturatedMathKt;->saturatingOriginsDiff(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final elapsedFrom-6eNON_k(J)J
    .registers 5
    .param p1, "timeMark"    # J

    .line 19
    invoke-direct {p0}, Lkotlin/time/MonotonicTimeSource;->read()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lkotlin/time/LongSaturatedMathKt;->saturatingDiff(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic markNow()Lkotlin/time/ComparableTimeMark;
    .registers 3

    .line 10
    invoke-virtual {p0}, Lkotlin/time/MonotonicTimeSource;->markNow-z9LOYto()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic markNow()Lkotlin/time/TimeMark;
    .registers 3

    .line 10
    invoke-virtual {p0}, Lkotlin/time/MonotonicTimeSource;->markNow-z9LOYto()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object v0

    return-object v0
.end method

.method public markNow-z9LOYto()J
    .registers 3

    .line 17
    invoke-direct {p0}, Lkotlin/time/MonotonicTimeSource;->read()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 15
    const-string v0, "TimeSource(System.nanoTime())"

    return-object v0
.end method

.class Lcom/google/android/material/datepicker/DateStrings;
.super Ljava/lang/Object;
.source "DateStrings.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDateRangeString(Ljava/lang/Long;Ljava/lang/Long;)Landroidx/core/util/Pair;
    .registers 3
    .param p0, "start"    # Ljava/lang/Long;
    .param p1, "end"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/material/datepicker/DateStrings;->getDateRangeString(Ljava/lang/Long;Ljava/lang/Long;Ljava/text/SimpleDateFormat;)Landroidx/core/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static getDateRangeString(Ljava/lang/Long;Ljava/lang/Long;Ljava/text/SimpleDateFormat;)Landroidx/core/util/Pair;
    .registers 10
    .param p0, "start"    # Ljava/lang/Long;
    .param p1, "end"    # Ljava/lang/Long;
    .param p2, "userDefinedDateFormat"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/text/SimpleDateFormat;",
            ")",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 176
    const/4 v0, 0x0

    if-nez p0, :cond_a

    if-nez p1, :cond_a

    .line 177
    invoke-static {v0, v0}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v0

    return-object v0

    .line 178
    :cond_a
    if-nez p0, :cond_19

    .line 179
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2, p2}, Lcom/google/android/material/datepicker/DateStrings;->getDateString(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v0

    return-object v0

    .line 180
    :cond_19
    if-nez p1, :cond_28

    .line 181
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2, p2}, Lcom/google/android/material/datepicker/DateStrings;->getDateString(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v0

    return-object v0

    .line 184
    :cond_28
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 185
    .local v0, "currentCalendar":Ljava/util/Calendar;
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v1

    .line 186
    .local v1, "startCalendar":Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 187
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v2

    .line 188
    .local v2, "endCalendar":Ljava/util/Calendar;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 190
    if-eqz p2, :cond_64

    .line 191
    new-instance v3, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 192
    .local v3, "startDate":Ljava/util/Date;
    new-instance v4, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 193
    .local v4, "endDate":Ljava/util/Date;
    nop

    .line 194
    invoke-virtual {p2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 193
    invoke-static {v5, v6}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v5

    return-object v5

    .line 195
    .end local v3    # "startDate":Ljava/util/Date;
    .end local v4    # "endDate":Ljava/util/Date;
    :cond_64
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_b5

    .line 196
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_97

    .line 197
    nop

    .line 198
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/material/datepicker/DateStrings;->getMonthDay(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/google/android/material/datepicker/DateStrings;->getMonthDay(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 197
    invoke-static {v3, v4}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v3

    return-object v3

    .line 200
    :cond_97
    nop

    .line 201
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/material/datepicker/DateStrings;->getMonthDay(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDay(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 200
    invoke-static {v3, v4}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v3

    return-object v3

    .line 204
    :cond_b5
    nop

    .line 205
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDay(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDay(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 204
    invoke-static {v3, v4}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method static getDateString(J)Ljava/lang/String;
    .registers 3
    .param p0, "timeInMillis"    # J

    .line 123
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/material/datepicker/DateStrings;->getDateString(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getDateString(JLjava/text/SimpleDateFormat;)Ljava/lang/String;
    .registers 5
    .param p0, "timeInMillis"    # J
    .param p2, "userDefinedDateFormat"    # Ljava/text/SimpleDateFormat;

    .line 138
    if-eqz p2, :cond_c

    .line 139
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 140
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 141
    .end local v0    # "date":Ljava/util/Date;
    :cond_c
    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/DateStrings;->isDateWithinCurrentYear(J)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 142
    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/DateStrings;->getMonthDay(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 144
    :cond_17
    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDay(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getDayContentDescription(Landroid/content/Context;JZZZ)Ljava/lang/String;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dayInMillis"    # J
    .param p3, "isToday"    # Z
    .param p4, "isStartOfRange"    # Z
    .param p5, "isEndOfRange"    # Z

    .line 224
    invoke-static {p1, p2}, Lcom/google/android/material/datepicker/DateStrings;->getOptionalYearMonthDayOfWeekDay(J)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "dayContentDescription":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_16

    .line 226
    sget v3, Lcom/google/android/material/R$string;->mtrl_picker_today_description:I

    .line 228
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v1

    .line 227
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 230
    :cond_16
    if-eqz p4, :cond_27

    .line 231
    sget v3, Lcom/google/android/material/R$string;->mtrl_picker_start_date_description:I

    .line 232
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 231
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 233
    :cond_27
    if-eqz p5, :cond_38

    .line 234
    sget v3, Lcom/google/android/material/R$string;->mtrl_picker_end_date_description:I

    .line 235
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 234
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 237
    :cond_38
    return-object v0
.end method

.method static getMonthDay(J)Ljava/lang/String;
    .registers 3
    .param p0, "timeInMillis"    # J

    .line 67
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/material/datepicker/DateStrings;->getMonthDay(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getMonthDay(JLjava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p0, "timeInMillis"    # J
    .param p2, "locale"    # Ljava/util/Locale;

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_14

    .line 82
    invoke-static {p2}, Lcom/google/android/material/datepicker/UtcDates;->getAbbrMonthDayFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 84
    :cond_14
    invoke-static {p2}, Lcom/google/android/material/datepicker/UtcDates;->getMediumNoYear(Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getMonthDayOfWeekDay(J)Ljava/lang/String;
    .registers 3
    .param p0, "timeInMillis"    # J

    .line 88
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/material/datepicker/DateStrings;->getMonthDayOfWeekDay(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getMonthDayOfWeekDay(JLjava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p0, "timeInMillis"    # J
    .param p2, "locale"    # Ljava/util/Locale;

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_14

    .line 93
    invoke-static {p2}, Lcom/google/android/material/datepicker/UtcDates;->getMonthWeekdayDayFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 95
    :cond_14
    invoke-static {p2}, Lcom/google/android/material/datepicker/UtcDates;->getFullFormat(Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getOptionalYearMonthDayOfWeekDay(J)Ljava/lang/String;
    .registers 3
    .param p0, "timeInMillis"    # J

    .line 116
    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/DateStrings;->isDateWithinCurrentYear(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 117
    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/DateStrings;->getMonthDayOfWeekDay(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :cond_b
    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDayOfWeekDay(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getYearContentDescription(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I

    .line 248
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, p1, :cond_1f

    .line 249
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_navigate_to_current_year_description:I

    .line 250
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 249
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 252
    :cond_1f
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_navigate_to_year_description:I

    .line 253
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 252
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getYearMonth(J)Ljava/lang/String;
    .registers 4
    .param p0, "timeInMillis"    # J

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_18

    .line 39
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getYearMonthFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 41
    :cond_18
    const/16 v0, 0x2024

    .line 42
    .local v0, "flags":I
    const/4 v1, 0x0

    invoke-static {v1, p0, p1, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getYearMonthDay(J)Ljava/lang/String;
    .registers 3
    .param p0, "timeInMillis"    # J

    .line 46
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDay(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getYearMonthDay(JLjava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p0, "timeInMillis"    # J
    .param p2, "locale"    # Ljava/util/Locale;

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_14

    .line 61
    invoke-static {p2}, Lcom/google/android/material/datepicker/UtcDates;->getYearAbbrMonthDayFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 63
    :cond_14
    invoke-static {p2}, Lcom/google/android/material/datepicker/UtcDates;->getMediumFormat(Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getYearMonthDayOfWeekDay(J)Ljava/lang/String;
    .registers 3
    .param p0, "timeInMillis"    # J

    .line 99
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDayOfWeekDay(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getYearMonthDayOfWeekDay(JLjava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p0, "timeInMillis"    # J
    .param p2, "locale"    # Ljava/util/Locale;

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_14

    .line 104
    invoke-static {p2}, Lcom/google/android/material/datepicker/UtcDates;->getYearMonthWeekdayDayFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 106
    :cond_14
    invoke-static {p2}, Lcom/google/android/material/datepicker/UtcDates;->getFullFormat(Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isDateWithinCurrentYear(J)Z
    .registers 7
    .param p0, "timeInMillis"    # J

    .line 148
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 149
    .local v0, "currentCalendar":Ljava/util/Calendar;
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v1

    .line 150
    .local v1, "calendarDate":Ljava/util/Calendar;
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 151
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_17

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    return v2
.end method

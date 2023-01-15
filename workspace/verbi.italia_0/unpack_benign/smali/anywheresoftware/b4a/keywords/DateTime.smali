.class public Lanywheresoftware/b4a/keywords/DateTime;
.super Ljava/lang/Object;
.source "DateTime.java"


# static fields
.field public static final TicksPerDay:J = 0x5265c00L

.field public static final TicksPerHour:J = 0x36ee80L

.field public static final TicksPerMinute:J = 0xea60L

.field public static final TicksPerSecond:J = 0x3e8L

.field private static _instance:Lanywheresoftware/b4a/keywords/DateTime;

.field private static lastTimeSetEvent:J

.field private static listenToTimeZone:Z

.field private static zeroTimeZone:Ljava/util/TimeZone;


# instance fields
.field private cal:Ljava/util/Calendar;

.field private date:Ljava/util/Date;

.field private dateFormat:Ljava/text/SimpleDateFormat;

.field private timeFormat:Ljava/text/SimpleDateFormat;

.field private timeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    new-instance v0, Ljava/util/SimpleTimeZone;

    const-string v1, "13256"

    invoke-direct {v0, v2, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v0, Lanywheresoftware/b4a/keywords/DateTime;->zeroTimeZone:Ljava/util/TimeZone;

    .line 52
    sput-boolean v2, Lanywheresoftware/b4a/keywords/DateTime;->listenToTimeZone:Z

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lanywheresoftware/b4a/keywords/DateTime;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 57
    iget-object v0, p0, Lanywheresoftware/b4a/keywords/DateTime;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 58
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lanywheresoftware/b4a/keywords/DateTime;->timeFormat:Ljava/text/SimpleDateFormat;

    .line 59
    iget-object v0, p0, Lanywheresoftware/b4a/keywords/DateTime;->timeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 60
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lanywheresoftware/b4a/keywords/DateTime;->date:Ljava/util/Date;

    .line 61
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lanywheresoftware/b4a/keywords/DateTime;->timeZone:Ljava/util/TimeZone;

    .line 62
    return-void
.end method

.method public static Add(JIII)J
    .locals 3
    .param p0, "Ticks"    # J
    .param p2, "Years"    # I
    .param p3, "Months"    # I
    .param p4, "Days"    # I

    .prologue
    .line 312
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v1

    iget-object v0, v1, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    .line 313
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 314
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->add(II)V

    .line 315
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->add(II)V

    .line 316
    const/4 v1, 0x6

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->add(II)V

    .line 317
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static Date(J)Ljava/lang/String;
    .locals 3
    .param p0, "Ticks"    # J

    .prologue
    .line 103
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    .line 104
    .local v0, "d":Lanywheresoftware/b4a/keywords/DateTime;
    iget-object v1, v0, Lanywheresoftware/b4a/keywords/DateTime;->date:Ljava/util/Date;

    invoke-virtual {v1, p0, p1}, Ljava/util/Date;->setTime(J)V

    .line 105
    iget-object v1, v0, Lanywheresoftware/b4a/keywords/DateTime;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, v0, Lanywheresoftware/b4a/keywords/DateTime;->date:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static DateParse(Ljava/lang/String;)J
    .locals 2
    .param p0, "Date"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static DateTimeParse(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .param p0, "Date"    # Ljava/lang/String;
    .param p1, "Time"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v2, v0, Lanywheresoftware/b4a/keywords/DateTime;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 185
    .local v2, "df":Ljava/text/SimpleDateFormat;
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v3, v0, Lanywheresoftware/b4a/keywords/DateTime;->timeFormat:Ljava/text/SimpleDateFormat;

    .line 186
    .local v3, "tf":Ljava/text/SimpleDateFormat;
    sget-object v0, Lanywheresoftware/b4a/keywords/DateTime;->zeroTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 187
    sget-object v0, Lanywheresoftware/b4a/keywords/DateTime;->zeroTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 190
    :try_start_0
    invoke-static {p0}, Lanywheresoftware/b4a/keywords/DateTime;->DateParse(Ljava/lang/String;)J

    move-result-wide v0

    .line 191
    .local v0, "dd":J
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .end local p0    # "Date":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dd: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    .line 193
    .end local p1    # "Time":Ljava/lang/String;
    .local p0, "tt":J
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tt: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    add-long/2addr v0, p0

    .line 195
    .local v0, "total":J
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .end local p0    # "tt":J
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "total: "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 197
    invoke-static {v0, v1}, Lanywheresoftware/b4a/keywords/DateTime;->GetTimeZoneOffsetAt(J)D

    move-result-wide p0

    const-wide v4, 0x414b774000000000L    # 3600000.0

    mul-double/2addr p0, v4

    double-to-int p0, p0

    .line 198
    .local p0, "endShift":I
    int-to-long v4, p0

    sub-long/2addr v0, v4

    .line 199
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "total after endShift: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    invoke-static {v0, v1}, Lanywheresoftware/b4a/keywords/DateTime;->GetTimeZoneOffsetAt(J)D

    move-result-wide v4

    const-wide v6, 0x414b774000000000L    # 3600000.0

    mul-double/2addr v4, v6

    double-to-int p1, v4

    .line 201
    .local p1, "startShift":I
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sub-int v5, p0, p1

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    sub-int/2addr p0, p1

    int-to-long p0, p0

    add-long/2addr p0, v0

    .line 205
    .end local v0    # "total":J
    .end local p1    # "startShift":I
    .local p0, "total":J
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 206
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 203
    return-wide p0

    .line 204
    .end local p0    # "total":J
    :catchall_0
    move-exception p0

    .line 205
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object p1

    iget-object p1, p1, Lanywheresoftware/b4a/keywords/DateTime;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 206
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object p1

    iget-object p1, p1, Lanywheresoftware/b4a/keywords/DateTime;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 207
    throw p0
.end method

.method public static GetDayOfMonth(J)I
    .locals 2
    .param p0, "Ticks"    # J

    .prologue
    .line 259
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 260
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static GetDayOfWeek(J)I
    .locals 2
    .param p0, "Ticks"    # J

    .prologue
    .line 276
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 277
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static GetDayOfYear(J)I
    .locals 2
    .param p0, "Ticks"    # J

    .prologue
    .line 267
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 268
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static GetHour(J)I
    .locals 2
    .param p0, "Ticks"    # J

    .prologue
    .line 284
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 285
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static GetMinute(J)I
    .locals 2
    .param p0, "Ticks"    # J

    .prologue
    .line 300
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 301
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static GetMonth(J)I
    .locals 2
    .param p0, "Ticks"    # J

    .prologue
    .line 251
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 252
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static GetSecond(J)I
    .locals 2
    .param p0, "Ticks"    # J

    .prologue
    .line 292
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 293
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static GetTimeZoneOffsetAt(J)D
    .locals 6
    .param p0, "Date"    # J

    .prologue
    .line 236
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v2

    iget-object v2, v2, Lanywheresoftware/b4a/keywords/DateTime;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v2, p0, p1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double v0, v2, v4

    .line 237
    .local v0, "d":D
    return-wide v0
.end method

.method public static GetYear(J)I
    .locals 2
    .param p0, "Ticks"    # J

    .prologue
    .line 243
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 244
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static ListenToExternalTimeChanges(Lanywheresoftware/b4a/BA;)V
    .locals 3
    .param p0, "ba"    # Lanywheresoftware/b4a/BA;

    .prologue
    .line 69
    sget-boolean v2, Lanywheresoftware/b4a/keywords/DateTime;->listenToTimeZone:Z

    if-eqz v2, :cond_0

    .line 89
    :goto_0
    return-void

    .line 71
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lanywheresoftware/b4a/keywords/DateTime;->listenToTimeZone:Z

    .line 72
    new-instance v0, Lanywheresoftware/b4a/keywords/DateTime$1;

    invoke-direct {v0, p0}, Lanywheresoftware/b4a/keywords/DateTime$1;-><init>(Lanywheresoftware/b4a/BA;)V

    .line 86
    .local v0, "br":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 87
    .local v1, "fil":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    sget-object v2, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v2, v0, v1}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static SetTimeZone(D)V
    .locals 5
    .param p0, "OffsetHours"    # D

    .prologue
    .line 214
    new-instance v0, Ljava/util/SimpleTimeZone;

    const-wide v1, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v1, p0

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lanywheresoftware/b4a/keywords/DateTime;->setTimeZoneInternal(Ljava/util/TimeZone;)V

    .line 215
    return-void
.end method

.method public static SetTimeZone(I)V
    .locals 3
    .param p0, "OffsetHours"    # I
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 218
    new-instance v0, Ljava/util/SimpleTimeZone;

    mul-int/lit16 v1, p0, 0xe10

    mul-int/lit16 v1, v1, 0x3e8

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lanywheresoftware/b4a/keywords/DateTime;->setTimeZoneInternal(Ljava/util/TimeZone;)V

    .line 219
    return-void
.end method

.method public static Time(J)Ljava/lang/String;
    .locals 3
    .param p0, "Ticks"    # J

    .prologue
    .line 114
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    .line 115
    .local v0, "d":Lanywheresoftware/b4a/keywords/DateTime;
    iget-object v1, v0, Lanywheresoftware/b4a/keywords/DateTime;->date:Ljava/util/Date;

    invoke-virtual {v1, p0, p1}, Ljava/util/Date;->setTime(J)V

    .line 116
    iget-object v1, v0, Lanywheresoftware/b4a/keywords/DateTime;->timeFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, v0, Lanywheresoftware/b4a/keywords/DateTime;->date:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static TimeParse(Ljava/lang/String;)J
    .locals 15
    .param p0, "Time"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const-wide/32 v13, 0x5265c00

    const-wide/32 v11, 0xea60

    .line 169
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v7

    iget-object v4, v7, Lanywheresoftware/b4a/keywords/DateTime;->timeFormat:Ljava/text/SimpleDateFormat;

    .line 170
    .local v4, "tf":Ljava/text/SimpleDateFormat;
    sget-object v7, Lanywheresoftware/b4a/keywords/DateTime;->zeroTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 171
    invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 172
    .local v5, "time":J
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v7

    iget-object v7, v7, Lanywheresoftware/b4a/keywords/DateTime;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 173
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getTimeZoneOffset()D

    move-result-wide v7

    const-wide/high16 v9, 0x404e000000000000L    # 60.0

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 174
    .local v2, "offsetInMinutes":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    mul-long v9, v2, v11

    add-long v0, v7, v9

    .line 175
    .local v0, "dayStartInUserTimeZone":J
    rem-long v7, v0, v13

    sub-long/2addr v0, v7

    .line 176
    mul-long v7, v2, v11

    sub-long/2addr v0, v7

    .line 177
    rem-long v7, v5, v13

    add-long/2addr v7, v0

    return-wide v7
.end method

.method static synthetic access$0(Ljava/util/TimeZone;)V
    .locals 0

    .prologue
    .line 220
    invoke-static {p0}, Lanywheresoftware/b4a/keywords/DateTime;->setTimeZoneInternal(Ljava/util/TimeZone;)V

    return-void
.end method

.method static synthetic access$1()J
    .locals 2

    .prologue
    .line 53
    sget-wide v0, Lanywheresoftware/b4a/keywords/DateTime;->lastTimeSetEvent:J

    return-wide v0
.end method

.method static synthetic access$2(J)V
    .locals 0

    .prologue
    .line 53
    sput-wide p0, Lanywheresoftware/b4a/keywords/DateTime;->lastTimeSetEvent:J

    return-void
.end method

.method public static getDateFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceDefaultDateFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 155
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDeviceDefaultTimeFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 162
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getInst()Lanywheresoftware/b4a/keywords/DateTime;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lanywheresoftware/b4a/keywords/DateTime;->_instance:Lanywheresoftware/b4a/keywords/DateTime;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lanywheresoftware/b4a/keywords/DateTime;

    invoke-direct {v0}, Lanywheresoftware/b4a/keywords/DateTime;-><init>()V

    sput-object v0, Lanywheresoftware/b4a/keywords/DateTime;->_instance:Lanywheresoftware/b4a/keywords/DateTime;

    .line 46
    :cond_0
    sget-object v0, Lanywheresoftware/b4a/keywords/DateTime;->_instance:Lanywheresoftware/b4a/keywords/DateTime;

    return-object v0
.end method

.method public static getNow()J
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTimeFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->timeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeZoneOffset()D
    .locals 4

    .prologue
    .line 230
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->timeZone:Ljava/util/TimeZone;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static setDateFormat(Ljava/lang/String;)V
    .locals 1
    .param p0, "Pattern"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static setTimeFormat(Ljava/lang/String;)V
    .locals 1
    .param p0, "Pattern"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->timeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method private static setTimeZoneInternal(Ljava/util/TimeZone;)V
    .locals 2
    .param p0, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 221
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iput-object p0, v0, Lanywheresoftware/b4a/keywords/DateTime;->timeZone:Ljava/util/TimeZone;

    .line 222
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v1

    iget-object v1, v1, Lanywheresoftware/b4a/keywords/DateTime;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 223
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v1

    iget-object v1, v1, Lanywheresoftware/b4a/keywords/DateTime;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 224
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->timeFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v1

    iget-object v1, v1, Lanywheresoftware/b4a/keywords/DateTime;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 225
    return-void
.end method

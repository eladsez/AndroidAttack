.class public Lorg/hermit/android/net/WebBasedData;
.super Ljava/util/Observable;
.source "WebBasedData.java"

# interfaces
.implements Lorg/hermit/android/net/WebFetcher$Listener;


# static fields
.field private static final FETCH_TIMEOUT:J = 0xdbba0L

.field private static final MAX_SAMPLES:J = 0x190L

.field private static final MIN_CHECK_INTERVAL:J = 0x1b7740L

.field private static final REFRESH_INTERVAL:J = 0x6ddd00L

.field private static final TAG:Ljava/lang/String; = "WebBasedData"

.field private static calendar:Ljava/util/Calendar;


# instance fields
.field private dataInterval:J

.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private final fieldNames:[Ljava/lang/String;

.field private lastDataCheck:J

.field private latestDate:J

.field private final longDate:Z

.field private final sourceName:Ljava/lang/String;

.field private final urlBase:Ljava/lang/String;

.field private final urlSuff:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x0

    sput-object v0, Lorg/hermit/android/net/WebBasedData;->calendar:Ljava/util/Calendar;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ[Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "base"    # Ljava/lang/String;
    .param p3, "suff"    # Ljava/lang/String;
    .param p4, "interval"    # J
    .param p6, "ldate"    # Z
    .param p7, "fields"    # [Ljava/lang/String;

    .prologue
    const-wide/16 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/android/net/WebBasedData;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 455
    iput-wide v1, p0, Lorg/hermit/android/net/WebBasedData;->latestDate:J

    .line 459
    iput-wide v1, p0, Lorg/hermit/android/net/WebBasedData;->lastDataCheck:J

    .line 65
    iput-object p1, p0, Lorg/hermit/android/net/WebBasedData;->sourceName:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lorg/hermit/android/net/WebBasedData;->urlBase:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lorg/hermit/android/net/WebBasedData;->urlSuff:Ljava/lang/String;

    .line 68
    iput-wide p4, p0, Lorg/hermit/android/net/WebBasedData;->dataInterval:J

    .line 69
    iput-boolean p6, p0, Lorg/hermit/android/net/WebBasedData;->longDate:Z

    .line 70
    iput-object p7, p0, Lorg/hermit/android/net/WebBasedData;->fieldNames:[Ljava/lang/String;

    .line 71
    return-void
.end method

.method private findLatestDate()J
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 290
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "date"

    aput-object v0, v2, v11

    .line 291
    .local v2, "fields":[Ljava/lang/String;
    iget-object v0, p0, Lorg/hermit/android/net/WebBasedData;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lorg/hermit/android/net/WebBasedData;->sourceName:Ljava/lang/String;

    .line 292
    const-string v7, "date DESC"

    const-string v8, "1"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 291
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 293
    .local v9, "c":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/hermit/android/net/WebBasedData;->latestDate:J

    .line 299
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 301
    iget-wide v0, p0, Lorg/hermit/android/net/WebBasedData;->latestDate:J

    return-wide v0

    .line 296
    :cond_0
    aget-object v0, v2, v11

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 297
    .local v10, "cind":I
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/hermit/android/net/WebBasedData;->latestDate:J

    goto :goto_0
.end method

.method private static ymNameForDate(J)Ljava/lang/String;
    .locals 7
    .param p0, "date"    # J

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    .line 312
    sget-object v2, Lorg/hermit/android/net/WebBasedData;->calendar:Ljava/util/Calendar;

    if-nez v2, :cond_0

    .line 313
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    sput-object v2, Lorg/hermit/android/net/WebBasedData;->calendar:Ljava/util/Calendar;

    .line 314
    :cond_0
    sget-object v2, Lorg/hermit/android/net/WebBasedData;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 320
    sget-object v2, Lorg/hermit/android/net/WebBasedData;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 321
    .local v1, "year":I
    sget-object v2, Lorg/hermit/android/net/WebBasedData;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 322
    .local v0, "month":I
    const-string v2, "%04d%02d"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public declared-synchronized allRecords()Landroid/database/Cursor;
    .locals 9

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/hermit/android/net/WebBasedData;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lorg/hermit/android/net/WebBasedData;->sourceName:Ljava/lang/String;

    iget-object v2, p0, Lorg/hermit/android/net/WebBasedData;->fieldNames:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 160
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date ASC"

    const/4 v8, 0x0

    .line 159
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized allRecordsSince(J)Landroid/database/Cursor;
    .locals 9
    .param p1, "date"    # J

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/hermit/android/net/WebBasedData;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lorg/hermit/android/net/WebBasedData;->sourceName:Ljava/lang/String;

    iget-object v2, p0, Lorg/hermit/android/net/WebBasedData;->fieldNames:[Ljava/lang/String;

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "date>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 179
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date ASC"

    const/4 v8, 0x0

    .line 177
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 84
    const-string v2, "WebBasedData"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WBD: create table "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/hermit/android/net/WebBasedData;->sourceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CREATE TABLE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/hermit/android/net/WebBasedData;->sourceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 87
    const-string v3, "date INTEGER PRIMARY KEY UNIQUE ON CONFLICT IGNORE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "create":Ljava/lang/String;
    iget-object v2, p0, Lorg/hermit/android/net/WebBasedData;->fieldNames:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_0

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    return-void

    .line 88
    :cond_0
    aget-object v1, v2, v4

    .line 89
    .local v1, "f":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " REAL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/hermit/android/net/WebBasedData;->sourceName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lastRecord()Landroid/content/ContentValues;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/hermit/android/net/WebBasedData;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lorg/hermit/android/net/WebBasedData;->sourceName:Ljava/lang/String;

    iget-object v2, p0, Lorg/hermit/android/net/WebBasedData;->fieldNames:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 191
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date DESC"

    const-string v8, "1"

    .line 190
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 192
    .local v9, "c":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v11

    .line 201
    :goto_0
    monitor-exit p0

    return-object v0

    .line 197
    :cond_0
    :try_start_1
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 198
    .local v10, "data":Landroid/content/ContentValues;
    invoke-static {v9, v10}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 199
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v10

    .line 201
    goto :goto_0

    .line 190
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v10    # "data":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onWebData(Ljava/net/URL;Ljava/lang/Object;J)V
    .locals 8
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "fileDate"    # J

    .prologue
    .line 352
    iget-object v4, p0, Lorg/hermit/android/net/WebBasedData;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    .line 373
    :goto_0
    return-void

    .line 355
    :cond_0
    instance-of v4, p2, Landroid/content/ContentValues;

    if-nez v4, :cond_1

    .line 356
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Loaded object for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not a ContentValues!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/hermit/android/net/WebBasedData;->onWebError(Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_1
    move-object v0, p2

    check-cast v0, Landroid/content/ContentValues;

    move-object v3, v0

    .line 360
    .local v3, "rec":Landroid/content/ContentValues;
    const-string v4, "date"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 363
    .local v1, "rdate":J
    invoke-virtual {p0, v3}, Lorg/hermit/android/net/WebBasedData;->process(Landroid/content/ContentValues;)V

    .line 366
    monitor-enter p0

    .line 368
    :try_start_0
    iget-wide v4, p0, Lorg/hermit/android/net/WebBasedData;->latestDate:J

    cmp-long v4, v1, v4

    if-lez v4, :cond_2

    .line 369
    iget-object v4, p0, Lorg/hermit/android/net/WebBasedData;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, p0, Lorg/hermit/android/net/WebBasedData;->sourceName:Ljava/lang/String;

    iget-object v6, p0, Lorg/hermit/android/net/WebBasedData;->fieldNames:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 370
    iput-wide v1, p0, Lorg/hermit/android/net/WebBasedData;->latestDate:J

    .line 366
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onWebDone()V
    .locals 8

    .prologue
    .line 381
    monitor-enter p0

    .line 382
    :try_start_0
    iget-object v2, p0, Lorg/hermit/android/net/WebBasedData;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x190

    iget-wide v6, p0, Lorg/hermit/android/net/WebBasedData;->dataInterval:J

    mul-long/2addr v4, v6

    sub-long v0, v2, v4

    .line 385
    .local v0, "earliest":J
    iget-object v2, p0, Lorg/hermit/android/net/WebBasedData;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lorg/hermit/android/net/WebBasedData;->sourceName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "date<"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 381
    .end local v0    # "earliest":J
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    invoke-virtual {p0}, Lorg/hermit/android/net/WebBasedData;->setChanged()V

    .line 391
    iget-wide v2, p0, Lorg/hermit/android/net/WebBasedData;->latestDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/hermit/android/net/WebBasedData;->notifyObservers(Ljava/lang/Object;)V

    .line 392
    return-void

    .line 381
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public declared-synchronized onWebError(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 400
    monitor-enter p0

    :try_start_0
    const-string v0, "WebBasedData"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    monitor-exit p0

    return-void

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected process(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "rec"    # Landroid/content/ContentValues;

    .prologue
    .line 337
    return-void
.end method

.method public setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 119
    const-wide/16 v0, 0x0

    .line 120
    .local v0, "date":J
    monitor-enter p0

    .line 121
    :try_start_0
    iput-object p1, p0, Lorg/hermit/android/net/WebBasedData;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 122
    iget-object v2, p0, Lorg/hermit/android/net/WebBasedData;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    .line 123
    invoke-direct {p0}, Lorg/hermit/android/net/WebBasedData;->findLatestDate()J

    move-result-wide v0

    .line 120
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 128
    invoke-virtual {p0}, Lorg/hermit/android/net/WebBasedData;->setChanged()V

    .line 129
    iget-wide v2, p0, Lorg/hermit/android/net/WebBasedData;->latestDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/hermit/android/net/WebBasedData;->notifyObservers(Ljava/lang/Object;)V

    .line 131
    :cond_1
    return-void

    .line 120
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public update(J)V
    .locals 20
    .param p1, "now"    # J

    .prologue
    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/net/WebBasedData;->database:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    if-nez v5, :cond_0

    .line 279
    :goto_0
    return-void

    .line 221
    :cond_0
    const/4 v4, 0x0

    check-cast v4, [Ljava/net/URL;

    .line 222
    .local v4, "urls":[Ljava/net/URL;
    const/16 v18, 0x0

    .line 223
    .local v18, "name":Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 225
    .local v10, "earliest":J
    monitor-enter p0

    .line 227
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/hermit/android/net/WebBasedData;->lastDataCheck:J

    move-wide v5, v0

    sub-long v5, p1, v5

    const-wide/32 v7, 0x1b7740

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 228
    const-string v5, "WebBasedData"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "WBD "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/net/WebBasedData;->sourceName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": update reject: too soon since last"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    monitor-exit p0

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v5

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 234
    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lorg/hermit/android/net/WebBasedData;->findLatestDate()J

    move-result-wide v15

    .line 235
    .local v15, "latest":J
    sub-long v5, p1, v15

    const-wide/32 v7, 0x6ddd00

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    .line 236
    const-string v5, "WebBasedData"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "WBD "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/net/WebBasedData;->sourceName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": update reject: have fresh data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    monitor-exit p0

    goto :goto_0

    .line 243
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/hermit/android/net/WebBasedData;->dataInterval:J

    move-wide v5, v0

    add-long v10, v15, v5

    .line 244
    const-wide/16 v5, 0x190

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/hermit/android/net/WebBasedData;->dataInterval:J

    move-wide v7, v0

    mul-long/2addr v5, v7

    sub-long v5, p1, v5

    cmp-long v5, v10, v5

    if-gez v5, :cond_3

    .line 245
    const-wide/16 v5, 0x190

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/hermit/android/net/WebBasedData;->dataInterval:J

    move-wide v7, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    mul-long/2addr v5, v7

    sub-long v10, p1, v5

    .line 251
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/net/WebBasedData;->urlSuff:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_5

    .line 252
    invoke-static {v10, v11}, Lorg/hermit/android/net/WebBasedData;->ymNameForDate(J)Ljava/lang/String;

    move-result-object v14

    .line 253
    .local v14, "last":Ljava/lang/String;
    invoke-static/range {p1 .. p2}, Lorg/hermit/android/net/WebBasedData;->ymNameForDate(J)Ljava/lang/String;

    move-result-object v12

    .line 254
    .local v12, "curr":Ljava/lang/String;
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 255
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [Ljava/net/URL;

    move-object/from16 v19, v0

    const/4 v5, 0x0

    new-instance v6, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/net/WebBasedData;->urlBase:Ljava/lang/String;

    move-object v8, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/net/WebBasedData;->urlSuff:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    aput-object v6, v19, v5

    const/4 v5, 0x1

    .line 256
    new-instance v6, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/net/WebBasedData;->urlBase:Ljava/lang/String;

    move-object v8, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/net/WebBasedData;->urlSuff:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    aput-object v6, v19, v5
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    .end local v4    # "urls":[Ljava/net/URL;
    .local v19, "urls":[Ljava/net/URL;
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v18

    move-object/from16 v4, v19

    .line 225
    .end local v12    # "curr":Ljava/lang/String;
    .end local v14    # "last":Ljava/lang/String;
    .end local v19    # "urls":[Ljava/net/URL;
    .restart local v4    # "urls":[Ljava/net/URL;
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 273
    const-string v5, "WebBasedData"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "WBD "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/net/WebBasedData;->sourceName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": update: kick off "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v3, Lorg/hermit/android/net/TableFetcher;

    const-wide/32 v6, 0xdbba0

    .line 275
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/hermit/android/net/WebBasedData;->longDate:Z

    move v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/net/WebBasedData;->fieldNames:[Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v5, p0

    .line 274
    invoke-direct/range {v3 .. v11}, Lorg/hermit/android/net/TableFetcher;-><init>([Ljava/net/URL;Lorg/hermit/android/net/WebFetcher$Listener;JZ[Ljava/lang/String;J)V

    .line 276
    .local v3, "wf":Lorg/hermit/android/net/TableFetcher;
    invoke-virtual {v3}, Lorg/hermit/android/net/TableFetcher;->start()V

    .line 278
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/hermit/android/net/WebBasedData;->lastDataCheck:J

    goto/16 :goto_0

    .line 259
    .end local v3    # "wf":Lorg/hermit/android/net/TableFetcher;
    .restart local v12    # "curr":Ljava/lang/String;
    .restart local v14    # "last":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x1

    :try_start_5
    move v0, v5

    new-array v0, v0, [Ljava/net/URL;

    move-object/from16 v19, v0

    const/4 v5, 0x0

    new-instance v6, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/net/WebBasedData;->urlBase:Ljava/lang/String;

    move-object v8, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/net/WebBasedData;->urlSuff:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    aput-object v6, v19, v5

    .line 260
    .end local v4    # "urls":[Ljava/net/URL;
    .restart local v19    # "urls":[Ljava/net/URL;
    move-object/from16 v18, v12

    move-object/from16 v4, v19

    .end local v19    # "urls":[Ljava/net/URL;
    .restart local v4    # "urls":[Ljava/net/URL;
    goto :goto_2

    .line 263
    .end local v12    # "curr":Ljava/lang/String;
    .end local v14    # "last":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [Ljava/net/URL;

    move-object/from16 v19, v0

    const/4 v5, 0x0

    new-instance v6, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/net/WebBasedData;->urlBase:Ljava/lang/String;

    move-object v7, v0

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    aput-object v6, v19, v5
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 264
    .end local v4    # "urls":[Ljava/net/URL;
    .restart local v19    # "urls":[Ljava/net/URL;
    :try_start_6
    const-string v18, "fixed"
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v4, v19

    .end local v19    # "urls":[Ljava/net/URL;
    .restart local v4    # "urls":[Ljava/net/URL;
    goto/16 :goto_2

    .line 266
    :catch_0
    move-exception v5

    move-object v13, v5

    .line 268
    .local v13, "e":Ljava/net/MalformedURLException;
    :goto_3
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 269
    .local v17, "msg":Ljava/lang/String;
    const-string v5, "WebBasedData"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 225
    .end local v4    # "urls":[Ljava/net/URL;
    .end local v13    # "e":Ljava/net/MalformedURLException;
    .end local v17    # "msg":Ljava/lang/String;
    .restart local v19    # "urls":[Ljava/net/URL;
    :catchall_1
    move-exception v5

    move-object/from16 v4, v19

    .end local v19    # "urls":[Ljava/net/URL;
    .restart local v4    # "urls":[Ljava/net/URL;
    goto/16 :goto_1

    .line 266
    .end local v4    # "urls":[Ljava/net/URL;
    .restart local v19    # "urls":[Ljava/net/URL;
    :catch_1
    move-exception v5

    move-object v13, v5

    move-object/from16 v4, v19

    .end local v19    # "urls":[Ljava/net/URL;
    .restart local v4    # "urls":[Ljava/net/URL;
    goto :goto_3
.end method

.method public upgradeTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldV"    # I
    .param p3, "newV"    # I

    .prologue
    .line 103
    const-string v0, "WebBasedData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WBD: upgrade table "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/hermit/android/net/WebBasedData;->sourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/hermit/android/net/WebBasedData;->sourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p1}, Lorg/hermit/android/net/WebBasedData;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 109
    return-void
.end method

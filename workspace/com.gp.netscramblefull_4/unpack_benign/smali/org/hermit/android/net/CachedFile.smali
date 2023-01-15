.class public Lorg/hermit/android/net/CachedFile;
.super Ljava/util/Observable;
.source "CachedFile.java"

# interfaces
.implements Lorg/hermit/android/net/WebFetcher$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hermit/android/net/CachedFile$Entry;
    }
.end annotation


# static fields
.field private static final FETCH_TIMEOUT:J = 0xdbba0L

.field private static final MIN_CHECK_INTERVAL:J = 0x36ee80L

.field private static final REFRESH_INTERVAL:J = 0xdbba00L

.field private static final TAG:Ljava/lang/String; = "CachedFile"


# instance fields
.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private lastDataCheck:J

.field private final sourceName:Ljava/lang/String;

.field private targetFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/net/URL;",
            "Lorg/hermit/android/net/CachedFile$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/net/URL;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "urls"    # [Ljava/net/URL;

    .prologue
    const/4 v8, 0x0

    .line 98
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 411
    iput-object v8, p0, Lorg/hermit/android/net/CachedFile;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 415
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/hermit/android/net/CachedFile;->lastDataCheck:J

    .line 99
    iput-object p1, p0, Lorg/hermit/android/net/CachedFile;->sourceName:Ljava/lang/String;

    .line 101
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/hermit/android/net/CachedFile;->targetFiles:Ljava/util/HashMap;

    .line 105
    array-length v3, p2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_0

    .line 112
    return-void

    .line 105
    :cond_0
    aget-object v2, p2, v4

    .line 106
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "fn":Ljava/lang/String;
    const/16 v5, 0x2f

    const/16 v6, 0x2d

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 108
    new-instance v0, Lorg/hermit/android/net/CachedFile$Entry;

    invoke-direct {v0, v2, v1, v8}, Lorg/hermit/android/net/CachedFile$Entry;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/hermit/android/net/CachedFile$Entry;)V

    .line 109
    .local v0, "file":Lorg/hermit/android/net/CachedFile$Entry;
    const-string v5, "CachedFile"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Caching file: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v5, p0, Lorg/hermit/android/net/CachedFile;->targetFiles:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private syncDatabase(Lorg/hermit/android/net/CachedFile$Entry;)V
    .locals 21
    .param p1, "file"    # Lorg/hermit/android/net/CachedFile$Entry;

    .prologue
    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/net/CachedFile;->database:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/net/CachedFile;->sourceName:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    .line 181
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "url=\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/hermit/android/net/CachedFile$Entry;->url:Ljava/net/URL;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 182
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 180
    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 186
    .local v13, "c":Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_0

    .line 187
    const-string v4, "CachedFile"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "New file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/hermit/android/net/CachedFile$Entry;->url:Ljava/net/URL;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 189
    .local v20, "vals":Landroid/content/ContentValues;
    const-string v4, "url"

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/hermit/android/net/CachedFile$Entry;->url:Ljava/net/URL;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v4, "name"

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/hermit/android/net/CachedFile$Entry;->name:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v20

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v4, "date"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/net/CachedFile;->database:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/net/CachedFile;->sourceName:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "path"

    move-object v0, v4

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 227
    .end local v20    # "vals":Landroid/content/ContentValues;
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 228
    return-void

    .line 195
    :cond_0
    const-string v4, "name"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 196
    .local v17, "nameIndex":I
    move-object v0, v13

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 197
    .local v16, "n":Ljava/lang/String;
    if-eqz v16, :cond_1

    .line 198
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/hermit/android/net/CachedFile$Entry;->name:Ljava/lang/String;

    .line 201
    :cond_1
    const-string v4, "path"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 202
    .local v19, "pathIndex":I
    move-object v0, v13

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 206
    .local v18, "p":Ljava/lang/String;
    if-eqz v18, :cond_3

    .line 207
    const-string v4, "CachedFile"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Existing file loaded: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/hermit/android/net/CachedFile$Entry;->url:Ljava/net/URL;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v4, Ljava/io/File;

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/hermit/android/net/CachedFile$Entry;->path:Ljava/io/File;

    .line 211
    const-string v4, "date"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 212
    .local v15, "dateIndex":I
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 213
    .local v14, "d":Ljava/lang/Long;
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_1
    move-wide v0, v4

    move-object/from16 v2, p1

    iput-wide v0, v2, Lorg/hermit/android/net/CachedFile$Entry;->date:J

    .line 217
    invoke-virtual/range {p0 .. p0}, Lorg/hermit/android/net/CachedFile;->setChanged()V

    .line 218
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/hermit/android/net/CachedFile$Entry;->url:Ljava/net/URL;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/hermit/android/net/CachedFile;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    .line 213
    :cond_2
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 220
    .end local v14    # "d":Ljava/lang/Long;
    .end local v15    # "dateIndex":I
    :cond_3
    const-string v4, "CachedFile"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Existing file not here: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/hermit/android/net/CachedFile$Entry;->url:Ljava/net/URL;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/hermit/android/net/CachedFile$Entry;->path:Ljava/io/File;

    .line 222
    const-wide/16 v4, 0x0

    move-wide v0, v4

    move-object/from16 v2, p1

    iput-wide v0, v2, Lorg/hermit/android/net/CachedFile$Entry;->date:J

    goto/16 :goto_0
.end method


# virtual methods
.method public createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE TABLE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/hermit/android/net/CachedFile;->sourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 127
    const-string v2, "url TEXT PRIMARY KEY UNIQUE ON CONFLICT REPLACE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "create":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", name TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", path TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", date INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public declared-synchronized getFile(Ljava/net/URL;)Lorg/hermit/android/net/CachedFile$Entry;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/hermit/android/net/CachedFile;->targetFiles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hermit/android/net/CachedFile$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidate(Ljava/net/URL;)V
    .locals 5
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/hermit/android/net/CachedFile;->targetFiles:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hermit/android/net/CachedFile$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    .local v0, "entry":Lorg/hermit/android/net/CachedFile$Entry;
    if-nez v0, :cond_1

    .line 271
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 261
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, v0, Lorg/hermit/android/net/CachedFile$Entry;->path:Ljava/io/File;

    .line 262
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lorg/hermit/android/net/CachedFile$Entry;->date:J

    .line 265
    iget-object v2, p0, Lorg/hermit/android/net/CachedFile;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    .line 266
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 267
    .local v1, "vals":Landroid/content/ContentValues;
    const-string v2, "url"

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v2, "name"

    iget-object v3, v0, Lorg/hermit/android/net/CachedFile$Entry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v2, p0, Lorg/hermit/android/net/CachedFile;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lorg/hermit/android/net/CachedFile;->sourceName:Ljava/lang/String;

    const-string v4, "path"

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 256
    .end local v0    # "entry":Lorg/hermit/android/net/CachedFile$Entry;
    .end local v1    # "vals":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onWebData(Ljava/net/URL;Ljava/lang/Object;J)V
    .locals 7
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "date"    # J

    .prologue
    const-string v4, "path"

    .line 331
    iget-object v4, p0, Lorg/hermit/android/net/CachedFile;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    .line 360
    :goto_0
    return-void

    .line 334
    :cond_0
    instance-of v4, p2, Ljava/io/File;

    if-nez v4, :cond_1

    .line 335
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Loaded object for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not a File!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/hermit/android/net/CachedFile;->onWebError(Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/io/File;

    move-object v2, v0

    .line 339
    .local v2, "path":Ljava/io/File;
    const-string v4, "CachedFile"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Loaded "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    monitor-enter p0

    .line 343
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 344
    .local v3, "vals":Landroid/content/ContentValues;
    const-string v4, "url"

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v4, "name"

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v4, "path"

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v4, "date"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 348
    iget-object v4, p0, Lorg/hermit/android/net/CachedFile;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, p0, Lorg/hermit/android/net/CachedFile;->sourceName:Ljava/lang/String;

    const-string v6, "path"

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 351
    iget-object v4, p0, Lorg/hermit/android/net/CachedFile;->targetFiles:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/hermit/android/net/CachedFile$Entry;

    .line 352
    .local v1, "file":Lorg/hermit/android/net/CachedFile$Entry;
    iput-object v2, v1, Lorg/hermit/android/net/CachedFile$Entry;->path:Ljava/io/File;

    .line 353
    iput-wide p3, v1, Lorg/hermit/android/net/CachedFile$Entry;->date:J

    .line 342
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    invoke-virtual {p0}, Lorg/hermit/android/net/CachedFile;->setChanged()V

    .line 359
    invoke-virtual {p0, p1}, Lorg/hermit/android/net/CachedFile;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    .line 342
    .end local v1    # "file":Lorg/hermit/android/net/CachedFile$Entry;
    .end local v3    # "vals":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public onWebDone()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public declared-synchronized onWebError(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    const-string v0, "CachedFile"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    monitor-exit p0

    return-void

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    iput-object p1, p0, Lorg/hermit/android/net/CachedFile;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 162
    iget-object v1, p0, Lorg/hermit/android/net/CachedFile;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lorg/hermit/android/net/CachedFile;->targetFiles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 158
    :cond_0
    monitor-exit p0

    .line 166
    return-void

    .line 163
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hermit/android/net/CachedFile$Entry;

    .line 164
    .local v0, "file":Lorg/hermit/android/net/CachedFile$Entry;
    invoke-direct {p0, v0}, Lorg/hermit/android/net/CachedFile;->syncDatabase(Lorg/hermit/android/net/CachedFile$Entry;)V

    goto :goto_0

    .line 158
    .end local v0    # "file":Lorg/hermit/android/net/CachedFile$Entry;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized update(Landroid/content/Context;J)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "now"    # J

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/hermit/android/net/CachedFile;->database:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 312
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 293
    :cond_1
    :try_start_1
    iget-wide v1, p0, Lorg/hermit/android/net/CachedFile;->lastDataCheck:J

    sub-long v1, p2, v1

    const-wide/32 v3, 0x36ee80

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 299
    const/4 v9, 0x0

    .line 300
    .local v9, "checking":Z
    iget-object v1, p0, Lorg/hermit/android/net/CachedFile;->targetFiles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 310
    if-eqz v9, :cond_0

    .line 311
    iput-wide p2, p0, Lorg/hermit/android/net/CachedFile;->lastDataCheck:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 289
    .end local v9    # "checking":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 300
    .restart local v9    # "checking":Z
    :cond_3
    :try_start_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/hermit/android/net/CachedFile$Entry;

    .line 301
    .local v10, "entry":Lorg/hermit/android/net/CachedFile$Entry;
    iget-object v1, v10, Lorg/hermit/android/net/CachedFile$Entry;->path:Ljava/io/File;

    if-eqz v1, :cond_4

    iget-wide v1, v10, Lorg/hermit/android/net/CachedFile$Entry;->date:J

    sub-long v1, p2, v1

    const-wide/32 v3, 0xdbba00

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 303
    :cond_4
    new-instance v0, Lorg/hermit/android/net/FileFetcher;

    iget-object v2, v10, Lorg/hermit/android/net/CachedFile$Entry;->url:Ljava/net/URL;

    iget-object v3, v10, Lorg/hermit/android/net/CachedFile$Entry;->name:Ljava/lang/String;

    .line 304
    const-wide/32 v5, 0xdbba0

    iget-wide v7, v10, Lorg/hermit/android/net/CachedFile$Entry;->date:J

    move-object v1, p1

    move-object v4, p0

    .line 303
    invoke-direct/range {v0 .. v8}, Lorg/hermit/android/net/FileFetcher;-><init>(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Lorg/hermit/android/net/WebFetcher$Listener;JJ)V

    .line 305
    .local v0, "ff":Lorg/hermit/android/net/FileFetcher;
    invoke-static {v0}, Lorg/hermit/android/net/WebFetcher;->queue(Lorg/hermit/android/net/WebFetcher;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    const/4 v9, 0x1

    goto :goto_1
.end method

.method public upgradeTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldV"    # I
    .param p3, "newV"    # I

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/hermit/android/net/CachedFile;->sourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0, p1}, Lorg/hermit/android/net/CachedFile;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 148
    return-void
.end method

.class public Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBConnector.java"


# static fields
.field private static final DATABASE_VERSION:I = 0x1

.field private static final DB_NAME:Ljava/lang/String; = "fingerNotes.db"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final NOTES_TABLE_NAME:Ljava/lang/String; = "notes"

.field public static final SETTINGS_TABLE_NAME:Ljava/lang/String; = "settings"

.field private static final dateTitleFormat:Ljava/text/SimpleDateFormat;

.field private static final dateTypeFormat:Ljava/text/SimpleDateFormat;

.field private static final settingsTemplate:Ljava/lang/String; = "{}"


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mainAct:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-class v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->LOG_TAG:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 45
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 44
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->dateTypeFormat:Ljava/text/SimpleDateFormat;

    .line 46
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 47
    const-string v1, "yyyy-MM-dd HH:mm"

    .line 46
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->dateTitleFormat:Ljava/text/SimpleDateFormat;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 50
    const-string v0, "fingerNotes.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 51
    invoke-virtual {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 52
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->mainAct:Landroid/app/Activity;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "cont"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 56
    const-string v0, "fingerNotes.db"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 57
    invoke-virtual {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 58
    iput-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->mainAct:Landroid/app/Activity;

    .line 59
    return-void
.end method

.method private existsNoteFile(Ljava/lang/String;)Z
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 273
    const/4 v9, 0x0

    .line 274
    .local v9, "isExists":Z
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "notes"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "1"

    aput-object v3, v2, v6

    .line 275
    const-string v3, "noteContent=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    .line 274
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 276
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    .line 278
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 279
    return v9
.end method

.method private existsSettingsKey(Ljava/lang/String;)Z
    .locals 10
    .param p1, "skey"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 302
    const/4 v9, 0x0

    .line 303
    .local v9, "isExists":Z
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "settings"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "1"

    aput-object v3, v2, v6

    .line 304
    const-string v3, "skey=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    .line 303
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 305
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    .line 307
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 308
    return v9
.end method


# virtual methods
.method public checkImportNotesFromFreeFN(Landroid/app/Activity;)Z
    .locals 9
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x0

    .line 333
    if-nez p1, :cond_0

    move v0, v8

    .line 352
    :goto_0
    return v0

    .line 337
    :cond_0
    const-string v0, "content://com.blogspot.mvnblogbuild.FingerNotesProvider/notes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 342
    .local v1, "NOTES_URI":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    .line 343
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 342
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 344
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 345
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    const/4 v0, 0x1

    goto :goto_0

    .line 348
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 349
    .local v7, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    move v0, v8

    .line 352
    goto :goto_0
.end method

.method public countNotes()Ljava/lang/Integer;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 192
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 193
    .local v0, "count":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select count(*) from notes"

    .line 194
    new-array v4, v5, [Ljava/lang/String;

    .line 193
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 195
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 198
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 199
    return-object v0
.end method

.method public delete(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 184
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "delete from notes where _id=?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 186
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 187
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 188
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 189
    return-void
.end method

.method public importNotesFromFreeFN(Landroid/app/Activity;)V
    .locals 20
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 356
    if-nez p1, :cond_0

    .line 439
    :goto_0
    return-void

    .line 360
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 361
    const-string v3, "INSERT INTO notes(\'title\', \'jsonSettings\', \'alarm_date\', \'updated_date\', \'noteContent\', \'noteIcon\') values (?, ?, ?, ?, ?, ?)"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v18

    .line 364
    .local v18, "stmtWithAlarm":Landroid/database/sqlite/SQLiteStatement;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 365
    const-string v3, "INSERT INTO notes(\'title\', \'jsonSettings\', \'updated_date\', \'noteContent\', \'noteIcon\') values (?, ?, ?, ?, ?)"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v19

    .line 369
    .local v19, "stmtWithoutAlarm":Landroid/database/sqlite/SQLiteStatement;
    const-string v1, "content://com.blogspot.mvnblogbuild.FingerNotesProvider/notes"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 373
    .local v2, "NOTES_URI":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 374
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 373
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 375
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 381
    :cond_1
    const/4 v15, 0x0

    .line 382
    .local v15, "isSaved":Z
    const/4 v1, 0x5

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 385
    .local v13, "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->existsNoteFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 433
    :cond_2
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 376
    if-nez v1, :cond_1

    .line 436
    .end local v13    # "fileName":Ljava/lang/String;
    .end local v15    # "isSaved":Z
    :cond_3
    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 437
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 438
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 389
    .restart local v13    # "fileName":Ljava/lang/String;
    .restart local v15    # "isSaved":Z
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "content://com.blogspot.mvnblogbuild.FingerNotesProvider/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 389
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 394
    .local v7, "FILE_URI":Landroid/net/Uri;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 395
    const-string v3, "mode"

    .line 394
    invoke-virtual {v1, v7, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v17

    .line 396
    .local v17, "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    new-instance v14, Ljava/io/FileInputStream;

    .line 397
    invoke-virtual/range {v17 .. v17}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 396
    invoke-direct {v14, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 398
    .local v14, "fileStream":Ljava/io/InputStream;
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 400
    .local v8, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x4000

    new-array v10, v1, [B

    .line 401
    .local v10, "data":[B
    :goto_2
    const/4 v1, 0x0

    array-length v3, v10

    invoke-virtual {v14, v10, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v16

    .local v16, "nRead":I
    const/4 v1, -0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_5

    .line 404
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 406
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .line 408
    .local v12, "fileData":[B
    move-object/from16 v0, p1

    invoke-static {v0, v13, v12}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/IOUtils;->saveBinaryData(Landroid/app/Activity;Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v15

    .line 415
    .end local v8    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "data":[B
    .end local v12    # "fileData":[B
    .end local v14    # "fileStream":Ljava/io/InputStream;
    .end local v16    # "nRead":I
    .end local v17    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :goto_3
    if-eqz v15, :cond_2

    .line 416
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 417
    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 418
    const/4 v1, 0x2

    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 419
    const/4 v1, 0x3

    const/4 v3, 0x4

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 420
    const/4 v1, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v13}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 421
    const/4 v1, 0x5

    const/4 v3, 0x6

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 422
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_1

    .line 402
    .restart local v8    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "data":[B
    .restart local v14    # "fileStream":Ljava/io/InputStream;
    .restart local v16    # "nRead":I
    .restart local v17    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :cond_5
    const/4 v1, 0x0

    :try_start_1
    move/from16 v0, v16

    invoke-virtual {v8, v10, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 409
    .end local v8    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "data":[B
    .end local v14    # "fileStream":Ljava/io/InputStream;
    .end local v16    # "nRead":I
    .end local v17    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v11

    .line 410
    .local v11, "e":Ljava/io/FileNotFoundException;
    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FileNotFoundException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 411
    .end local v11    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v11

    .line 412
    .local v11, "e":Ljava/io/IOException;
    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 424
    .end local v11    # "e":Ljava/io/IOException;
    :cond_6
    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 425
    const/4 v1, 0x2

    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 426
    const/4 v1, 0x3

    const/4 v3, 0x3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 427
    const/4 v1, 0x4

    const/4 v3, 0x4

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 428
    const/4 v1, 0x5

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v13}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 429
    const/4 v1, 0x6

    const/4 v3, 0x6

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 430
    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_1
.end method

.method public insert(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lorg/json/JSONObject;Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "alarmDate"    # Ljava/util/Date;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "settings"    # Lorg/json/JSONObject;
    .param p5, "noteIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 87
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 88
    .local v0, "date":Ljava/util/Date;
    const-string v2, "INSERT INTO notes(\'title\', \'jsonSettings\', \'alarm_date\', \'updated_date\', \'noteContent\', \'noteIcon\') values (?, ?, ?, ?, ?, ?)"

    .line 91
    .local v2, "queryWithAlarm":Ljava/lang/String;
    const-string v3, "INSERT INTO notes(\'title\', \'jsonSettings\', \'updated_date\', \'noteContent\', \'noteIcon\') values (?, ?, ?, ?, ?)"

    .line 94
    .local v3, "queryWithoutAlarm":Ljava/lang/String;
    move-object v1, p1

    .line 96
    .local v1, "dbTitle":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 97
    sget-object v5, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->dateTitleFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 100
    :cond_0
    const/4 v4, 0x0

    .line 102
    .local v4, "stmt":Landroid/database/sqlite/SQLiteStatement;
    if-nez p2, :cond_2

    .line 103
    iget-object v5, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 104
    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 105
    if-eqz p4, :cond_1

    .line 106
    const/4 v5, 0x2

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 110
    :goto_0
    const/4 v5, 0x3

    sget-object v6, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->dateTypeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 111
    const/4 v5, 0x4

    invoke-virtual {v4, v5, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 112
    const/4 v5, 0x5

    invoke-static {p5}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppUtils;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 113
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 114
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 130
    :goto_1
    return-void

    .line 108
    :cond_1
    const/4 v5, 0x2

    const-string v6, "{}"

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_2
    iget-object v5, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 117
    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 118
    if-eqz p4, :cond_3

    .line 119
    const/4 v5, 0x2

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 123
    :goto_2
    const/4 v5, 0x3

    sget-object v6, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->dateTypeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 124
    const/4 v5, 0x4

    sget-object v6, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->dateTypeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 125
    const/4 v5, 0x5

    invoke-virtual {v4, v5, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 126
    const/4 v5, 0x6

    invoke-static {p5}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppUtils;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 127
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 128
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_1

    .line 121
    :cond_3
    const/4 v5, 0x2

    const-string v6, "{}"

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_2
.end method

.method public loadNoteSettings(I)Lorg/json/JSONObject;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v7, 0x0

    .line 249
    const/4 v1, 0x0

    .line 250
    .local v1, "settings":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "select jsonSettings from notes where _id=?"

    .line 251
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 250
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 252
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 254
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "settings":Lorg/json/JSONObject;
    .local v2, "settings":Lorg/json/JSONObject;
    move-object v1, v2

    .line 258
    .end local v2    # "settings":Lorg/json/JSONObject;
    .restart local v1    # "settings":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 259
    return-object v1

    .line 255
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public loadNotes(II)Ljava/util/List;
    .locals 9
    .param p1, "offsetRow"    # I
    .param p2, "limitRow"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 203
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v3, "notesList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;>;"
    iget-object v4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 206
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "select _id, title, noteContent, noteIcon, alarm_date, updated_date, alarm_armed from notes order by updated_date desc limit "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " offset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 206
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 210
    new-array v6, v7, [Ljava/lang/String;

    .line 205
    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 212
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 214
    :cond_0
    new-instance v2, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;

    invoke-direct {v2}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;-><init>()V

    .line 215
    .local v2, "noteListEntity":Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->setNoteId(Ljava/lang/Integer;)V

    .line 216
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->setTitle(Ljava/lang/String;)V

    .line 217
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->setNoteContent(Ljava/lang/String;)V

    .line 219
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 218
    invoke-static {v4}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppUtils;->byteArrToBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->setNoteIcon(Landroid/graphics/Bitmap;)V

    .line 221
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 223
    :try_start_0
    sget-object v4, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->dateTypeFormat:Ljava/text/SimpleDateFormat;

    .line 224
    const/4 v5, 0x4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 223
    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->setAlarmDate(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_1
    :goto_0
    :try_start_1
    sget-object v4, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->dateTypeFormat:Ljava/text/SimpleDateFormat;

    .line 232
    const/4 v5, 0x5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 231
    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->setUpdatedDate(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 237
    :goto_1
    const/4 v4, 0x6

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->setAlarmArmed(Ljava/lang/Integer;)V

    .line 239
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->setIsSelected(Ljava/lang/Boolean;)V

    .line 240
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    .line 213
    if-nez v4, :cond_0

    .line 244
    .end local v2    # "noteListEntity":Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 245
    return-object v3

    .line 225
    .restart local v2    # "noteListEntity":Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Ljava/text/ParseException;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->setAlarmDate(Ljava/util/Date;)V

    goto :goto_0

    .line 233
    .end local v1    # "e":Ljava/text/ParseException;
    :catch_1
    move-exception v1

    .line 234
    .restart local v1    # "e":Ljava/text/ParseException;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->setUpdatedDate(Ljava/util/Date;)V

    goto :goto_1
.end method

.method public loadSettings()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 283
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 285
    .local v9, "settingsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "settings"

    .line 286
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "skey"

    aput-object v4, v2, v10

    const-string v4, "sval"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 285
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 292
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    :cond_0
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 293
    if-nez v0, :cond_0

    .line 297
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 298
    return-object v9
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "dbCreate"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 63
    const-string v0, "create table notes (_id integer primary key autoincrement,  title text not null, jsonSettings text not null,  alarm_date date, alarm_armed integer default 0, updated_date date, noteContent text not null,  noteIcon blob)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    const-string v0, "create table settings (_id integer primary key autoincrement,  skey text not null, sval text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->mainAct:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->checkImportNotesFromFreeFN(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->mainAct:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->importNotesFromFreeFN(Landroid/app/Activity;)V

    .line 78
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "dbUpdate"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 83
    return-void
.end method

.method public saveSettings(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "settingsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 312
    iget-object v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "insert into settings(\'skey\', \'sval\') values(?, ?)"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 314
    .local v1, "stmtInsert":Landroid/database/sqlite/SQLiteStatement;
    iget-object v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "update settings set sval=? where skey=?"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 317
    .local v2, "stmtUpdate":Landroid/database/sqlite/SQLiteStatement;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 328
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 329
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 330
    return-void

    .line 317
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 318
    .local v0, "skey":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->existsSettingsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 319
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 320
    invoke-virtual {v2, v6, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 321
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {v1, v5, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 324
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v6, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 325
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method

.method public setArmedAlarm(II)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "armedVal"    # I

    .prologue
    .line 263
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "update notes set alarm_armed=?, updated_date=? where _id=?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 265
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 266
    const/4 v1, 0x2

    sget-object v2, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->dateTypeFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 267
    const/4 v1, 0x3

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 268
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 269
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 270
    return-void
.end method

.method public update(ILjava/lang/String;Ljava/util/Date;Ljava/lang/String;Lorg/json/JSONObject;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "alarmDate"    # Ljava/util/Date;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "settings"    # Lorg/json/JSONObject;
    .param p6, "noteIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 134
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 135
    .local v0, "date":Ljava/util/Date;
    const-string v2, "update notes set title=?, jsonSettings=?, alarm_date=?, updated_date=?, noteContent=?, noteIcon=? where _id=?"

    .line 139
    .local v2, "queryWithAlarm":Ljava/lang/String;
    const-string v3, "update notes set title=?, jsonSettings=?, alarm_date=null, updated_date=?, noteContent=?, noteIcon=? where _id=?"

    .line 143
    .local v3, "queryWithoutAlarm":Ljava/lang/String;
    move-object v1, p2

    .line 145
    .local v1, "dbTitle":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 146
    sget-object v5, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->dateTitleFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 149
    :cond_0
    const/4 v4, 0x0

    .line 151
    .local v4, "stmt":Landroid/database/sqlite/SQLiteStatement;
    if-nez p3, :cond_2

    .line 152
    iget-object v5, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 153
    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 154
    if-eqz p5, :cond_1

    .line 155
    const/4 v5, 0x2

    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 159
    :goto_0
    const/4 v5, 0x3

    sget-object v6, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->dateTypeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 160
    const/4 v5, 0x4

    invoke-virtual {v4, v5, p4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 161
    const/4 v5, 0x5

    invoke-static {p6}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppUtils;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 162
    const/4 v5, 0x6

    int-to-double v6, p1

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 163
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 164
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 181
    :goto_1
    return-void

    .line 157
    :cond_1
    const/4 v5, 0x2

    const-string v6, "{}"

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_2
    iget-object v5, p0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 167
    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 168
    if-eqz p5, :cond_3

    .line 169
    const/4 v5, 0x2

    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 173
    :goto_2
    const/4 v5, 0x3

    sget-object v6, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->dateTypeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 174
    const/4 v5, 0x4

    sget-object v6, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->dateTypeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 175
    const/4 v5, 0x5

    invoke-virtual {v4, v5, p4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 176
    const/4 v5, 0x6

    invoke-static {p6}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppUtils;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 177
    const/4 v5, 0x7

    int-to-double v6, p1

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 178
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 179
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_1

    .line 171
    :cond_3
    const/4 v5, 0x2

    const-string v6, "{}"

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_2
.end method

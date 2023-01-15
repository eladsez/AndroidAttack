.class public Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;
.super Ljava/lang/Object;
.source "TestsDBHelper.java"


# static fields
.field public static final DATABASE_TABLE:Ljava/lang/String; = "test"

.field public static final DB_NAME:Ljava/lang/String; = "bishitong.db"

.field public static final DB_PATH:Ljava/lang/String;

.field public static final KEY_ANSWER:Ljava/lang/String; = "answer"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_IMAGE:Ljava/lang/String; = "image"

.field public static final KEY_QUESTION:Ljava/lang/String; = "question"

.field public static final KEY_SELECT:Ljava/lang/String; = "qselect"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.ozdroid.kaoshitong"

.field private static instance:Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.ozdroid.kaoshitong"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->DB_PATH:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v0, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->instance:Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    invoke-direct {v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;-><init>()V

    sput-object v0, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->instance:Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    .line 45
    :cond_0
    sget-object v0, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->instance:Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    return-object v0
.end method

.method private initData()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->DB_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bishitong.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "dbfile":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 83
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 84
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 71
    return-void
.end method

.method public getAll()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ozdroid/kaoshitong/model/TestItemEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 126
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "test"

    const/4 v8, 0x5

    new-array v3, v8, [Ljava/lang/String;

    const-string v8, "_id"

    aput-object v8, v3, v12

    const-string v8, "question"

    aput-object v8, v3, v1

    const-string v8, "qselect"

    aput-object v8, v3, v13

    const-string v8, "answer"

    aput-object v8, v3, v14

    const/4 v8, 0x4

    const-string v9, "image"

    aput-object v9, v3, v8

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 128
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v4

    .line 145
    :goto_0
    return-object v0

    .line 132
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Lcom/ozdroid/kaoshitong/model/TestItemEntry;>;"
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    :cond_2
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 137
    .local v3, "fid":I
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "question":Ljava/lang/String;
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "qselect":Ljava/lang/String;
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 140
    .local v6, "answer":I
    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 141
    .local v7, "img":[B
    new-instance v2, Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    invoke-direct/range {v2 .. v7}, Lcom/ozdroid/kaoshitong/model/TestItemEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I[B)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 135
    if-nez v0, :cond_2

    .line 144
    .end local v3    # "fid":I
    .end local v4    # "question":Ljava/lang/String;
    .end local v5    # "qselect":Ljava/lang/String;
    .end local v6    # "answer":I
    .end local v7    # "img":[B
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v0, v11

    .line 145
    goto :goto_0
.end method

.method public getCount()I
    .locals 13

    .prologue
    const/4 v1, 0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 111
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "test"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v3, v12

    const-string v5, "question"

    aput-object v5, v3, v1

    const/4 v5, 0x2

    const-string v6, "qselect"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "answer"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string v6, "image"

    aput-object v6, v3, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 113
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v12

    .line 118
    :goto_0
    return v0

    .line 116
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 117
    .local v10, "count":I
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 118
    goto :goto_0
.end method

.method public getItemBaseID(I)Lcom/ozdroid/kaoshitong/model/TestItemEntry;
    .locals 11
    .param p1, "id"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "test"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "question"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "qselect"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "answer"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "image"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 94
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0

    .line 97
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 98
    .local v1, "fid":I
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\uff0c"

    const-string v3, ","

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u3002"

    const-string v3, "."

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u201c\u201d"

    const-string v3, "(\u5982\u4e0b\u56fe)"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "question":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "qselect":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 101
    .local v4, "answer":I
    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 102
    .local v5, "img":[B
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 103
    new-instance v0, Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    invoke-direct/range {v0 .. v5}, Lcom/ozdroid/kaoshitong/model/TestItemEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I[B)V

    goto :goto_0
.end method

.method public open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->initData()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 58
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v1, "TAG"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

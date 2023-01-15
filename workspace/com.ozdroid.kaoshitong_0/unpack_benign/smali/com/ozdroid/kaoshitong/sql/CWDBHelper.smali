.class public Lcom/ozdroid/kaoshitong/sql/CWDBHelper;
.super Ljava/lang/Object;
.source "CWDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ozdroid/kaoshitong/sql/CWDBHelper$DBOpenHelper;
    }
.end annotation


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "cwdata.db"

.field public static final DATABASE_TABLE:Ljava/lang/String; = "cuowu"

.field public static final DATABASE_VERSION:I = 0x3

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_NO:Ljava/lang/String; = "cuowu"

.field private static instance:Lcom/ozdroid/kaoshitong/sql/CWDBHelper;


# instance fields
.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lcom/ozdroid/kaoshitong/sql/CWDBHelper$DBOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "_context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->context:Landroid/content/Context;

    .line 35
    new-instance v0, Lcom/ozdroid/kaoshitong/sql/CWDBHelper$DBOpenHelper;

    iget-object v1, p0, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->context:Landroid/content/Context;

    const-string v2, "cwdata.db"

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper$DBOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->dbHelper:Lcom/ozdroid/kaoshitong/sql/CWDBHelper$DBOpenHelper;

    .line 36
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/CWDBHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    sget-object v0, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->instance:Lcom/ozdroid/kaoshitong/sql/CWDBHelper;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;

    invoke-direct {v0, p0}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->instance:Lcom/ozdroid/kaoshitong/sql/CWDBHelper;

    .line 46
    :cond_0
    sget-object v0, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->instance:Lcom/ozdroid/kaoshitong/sql/CWDBHelper;

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .locals 12
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 73
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "cuowu"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v4

    const-string v4, "cuowu"

    aput-object v4, v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "cuowu=\'"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 74
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 75
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 76
    .local v11, "newTaskValues":Landroid/content/ContentValues;
    const-string v0, "cuowu"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cuowu"

    invoke-virtual {v0, v1, v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 79
    .end local v11    # "newTaskValues":Landroid/content/ContentValues;
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 80
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 66
    return-void
.end method

.method public getAll()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 95
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "cuowu"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const-string v5, "cuowu"

    aput-object v5, v3, v1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 97
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v4

    .line 110
    :goto_0
    return-object v0

    .line 101
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    :cond_2
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 106
    .local v11, "index":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 104
    if-nez v0, :cond_2

    .line 109
    .end local v11    # "index":I
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v0, v12

    .line 110
    goto :goto_0
.end method

.method public getCount()I
    .locals 13

    .prologue
    const/4 v1, 0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 118
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "cuowu"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v3, v12

    const-string v5, "cuowu"

    aput-object v5, v3, v1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 119
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v12

    .line 124
    :goto_0
    return v0

    .line 122
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 123
    .local v10, "count":I
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 124
    goto :goto_0
.end method

.method public open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->dbHelper:Lcom/ozdroid/kaoshitong/sql/CWDBHelper$DBOpenHelper;

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper$DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 57
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->dbHelper:Lcom/ozdroid/kaoshitong/sql/CWDBHelper$DBOpenHelper;

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/CWDBHelper$DBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method

.method public remove(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/CWDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cuowu"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cuowu=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 88
    return-void
.end method

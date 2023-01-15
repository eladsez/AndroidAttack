.class public Lcom/ozdroid/kaoshitong/sql/JQDBHelper;
.super Ljava/lang/Object;
.source "JQDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ozdroid/kaoshitong/sql/JQDBHelper$DBOpenHelper;
    }
.end annotation


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "jsdata.db"

.field public static final DATABASE_TABLE:Ljava/lang/String; = "jiaqiang"

.field public static final DATABASE_VERSION:I = 0x3

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_NO:Ljava/lang/String; = "jsid"

.field private static instance:Lcom/ozdroid/kaoshitong/sql/JQDBHelper;


# instance fields
.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lcom/ozdroid/kaoshitong/sql/JQDBHelper$DBOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "_context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->context:Landroid/content/Context;

    .line 36
    new-instance v0, Lcom/ozdroid/kaoshitong/sql/JQDBHelper$DBOpenHelper;

    iget-object v1, p0, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->context:Landroid/content/Context;

    const-string v2, "jsdata.db"

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper$DBOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->dbHelper:Lcom/ozdroid/kaoshitong/sql/JQDBHelper$DBOpenHelper;

    .line 37
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/JQDBHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    sget-object v0, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->instance:Lcom/ozdroid/kaoshitong/sql/JQDBHelper;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;

    invoke-direct {v0, p0}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->instance:Lcom/ozdroid/kaoshitong/sql/JQDBHelper;

    .line 47
    :cond_0
    sget-object v0, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->instance:Lcom/ozdroid/kaoshitong/sql/JQDBHelper;

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .locals 12
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 74
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "jiaqiang"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v4

    const-string v4, "jsid"

    aput-object v4, v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "jsid=\'"

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

    .line 75
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 76
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 77
    .local v11, "newTaskValues":Landroid/content/ContentValues;
    const-string v0, "jsid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "jiaqiang"

    invoke-virtual {v0, v1, v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 80
    .end local v11    # "newTaskValues":Landroid/content/ContentValues;
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 81
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 67
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

    .line 96
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "jiaqiang"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const-string v5, "jsid"

    aput-object v5, v3, v1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 98
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v4

    .line 111
    :goto_0
    return-object v0

    .line 102
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    :cond_2
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 107
    .local v11, "index":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 105
    if-nez v0, :cond_2

    .line 110
    .end local v11    # "index":I
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v0, v12

    .line 111
    goto :goto_0
.end method

.method public getCount()I
    .locals 13

    .prologue
    const/4 v1, 0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 119
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "jiaqiang"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v3, v12

    const-string v5, "jsid"

    aput-object v5, v3, v1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 120
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v12

    .line 125
    :goto_0
    return v0

    .line 123
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 124
    .local v10, "count":I
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 125
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
    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->dbHelper:Lcom/ozdroid/kaoshitong/sql/JQDBHelper$DBOpenHelper;

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper$DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 58
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->dbHelper:Lcom/ozdroid/kaoshitong/sql/JQDBHelper$DBOpenHelper;

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/JQDBHelper$DBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method

.method public remove(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/JQDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "jiaqiang"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "jsid=\'"

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

    .line 89
    return-void
.end method

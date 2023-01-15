.class public Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;
.super Ljava/lang/Object;
.source "ChannelDBHelper.java"


# static fields
.field public static final DATABASE_TABLE:Ljava/lang/String; = "channeltype"

.field public static final DB_NAME:Ljava/lang/String; = "channel.db"

.field public static final DB_PATH:Ljava/lang/String;

.field public static final KEY_CHANNEL:Ljava/lang/String; = "channel"

.field public static final KEY_END:Ljava/lang/String; = "end"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_START:Ljava/lang/String; = "start"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.ozdroid.kaoshitong"

.field private static instance:Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
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

    sput-object v0, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->DB_PATH:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->instance:Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;

    invoke-direct {v0}, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;-><init>()V

    sput-object v0, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->instance:Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;

    .line 43
    :cond_0
    sget-object v0, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->instance:Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;

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
    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->DB_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "channel.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "dbfile":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 81
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 82
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 69
    return-void
.end method

.method public getAll()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ozdroid/kaoshitong/model/ChannelItemEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "channeltype"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "channel"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "start"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "end"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 92
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    :cond_0
    const/4 v0, 0x0

    .line 107
    :goto_0
    return-object v0

    .line 96
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Lcom/ozdroid/kaoshitong/model/ChannelItemEntry;>;"
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    :cond_2
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 101
    .local v13, "name":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 102
    .local v14, "start":I
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 103
    .local v11, "end":I
    new-instance v0, Lcom/ozdroid/kaoshitong/model/ChannelItemEntry;

    invoke-direct {v0, v13, v14, v11}, Lcom/ozdroid/kaoshitong/model/ChannelItemEntry;-><init>(Ljava/lang/String;II)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 99
    if-nez v0, :cond_2

    .line 106
    .end local v11    # "end":I
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "start":I
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v0, v12

    .line 107
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
    .line 54
    :try_start_0
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->initData()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 56
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v1, "TAG"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 58
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

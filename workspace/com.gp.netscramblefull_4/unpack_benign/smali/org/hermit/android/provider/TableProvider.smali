.class public Lorg/hermit/android/provider/TableProvider;
.super Landroid/content/ContentProvider;
.source "TableProvider.java"


# static fields
.field static final TAG:Ljava/lang/String; = "TableProvider"


# instance fields
.field private final dbSchema:Lorg/hermit/android/provider/DbSchema;

.field private mOpenHelper:Lorg/hermit/android/provider/DatabaseHelper;

.field private final sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>(Lorg/hermit/android/provider/DbSchema;)V
    .locals 10
    .param p1, "schema"    # Lorg/hermit/android/provider/DbSchema;

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/hermit/android/provider/TableProvider;->dbSchema:Lorg/hermit/android/provider/DbSchema;

    .line 61
    new-instance v4, Landroid/content/UriMatcher;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v4, p0, Lorg/hermit/android/provider/TableProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 63
    invoke-virtual {p1}, Lorg/hermit/android/provider/DbSchema;->getDbAuth()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "auth":Ljava/lang/String;
    const/4 v1, 0x0

    .line 65
    .local v1, "i":I
    invoke-virtual {p1}, Lorg/hermit/android/provider/DbSchema;->getDbTables()[Lorg/hermit/android/provider/TableSchema;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v5, :cond_0

    .line 72
    return-void

    .line 65
    :cond_0
    aget-object v2, v4, v6

    .line 66
    .local v2, "t":Lorg/hermit/android/provider/TableSchema;
    invoke-virtual {v2}, Lorg/hermit/android/provider/TableSchema;->getTableName()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "tn":Ljava/lang/String;
    iget-object v7, p0, Lorg/hermit/android/provider/TableProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, v0, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    iget-object v7, p0, Lorg/hermit/android/provider/TableProvider;->sUriMatcher:Landroid/content/UriMatcher;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x10000

    or-int/2addr v9, v1

    invoke-virtual {v7, v0, v8, v9}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    const-string v7, "TableProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Match "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 65
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const-string v10, " in delete()"

    .line 396
    iget-object v7, p0, Lorg/hermit/android/provider/TableProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 397
    .local v5, "tindex":I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_0

    .line 398
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unknown URI "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 399
    const-string v9, " in delete()"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 398
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 401
    :cond_0
    const/high16 v7, 0x10000

    and-int/2addr v7, v5

    if-eqz v7, :cond_2

    move v2, v8

    .line 402
    .local v2, "isItem":Z
    :goto_0
    const v7, 0xffff

    and-int/2addr v5, v7

    .line 403
    if-ltz v5, :cond_1

    iget-object v7, p0, Lorg/hermit/android/provider/TableProvider;->dbSchema:Lorg/hermit/android/provider/DbSchema;

    invoke-virtual {v7}, Lorg/hermit/android/provider/DbSchema;->getDbTables()[Lorg/hermit/android/provider/TableSchema;

    move-result-object v7

    array-length v7, v7

    if-lt v5, v7, :cond_3

    .line 404
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Invalid table in "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 405
    const-string v9, " in delete()"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 404
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 401
    .end local v2    # "isItem":Z
    :cond_2
    const/4 v7, 0x0

    move v2, v7

    goto :goto_0

    .line 406
    .restart local v2    # "isItem":Z
    :cond_3
    iget-object v7, p0, Lorg/hermit/android/provider/TableProvider;->dbSchema:Lorg/hermit/android/provider/DbSchema;

    invoke-virtual {v7}, Lorg/hermit/android/provider/DbSchema;->getDbTables()[Lorg/hermit/android/provider/TableSchema;

    move-result-object v7

    aget-object v4, v7, v5

    .line 410
    .local v4, "t":Lorg/hermit/android/provider/TableSchema;
    if-nez v2, :cond_5

    .line 411
    move-object v6, p2

    .line 419
    .local v6, "whereClause":Ljava/lang/String;
    :cond_4
    :goto_1
    iget-object v7, p0, Lorg/hermit/android/provider/TableProvider;->mOpenHelper:Lorg/hermit/android/provider/DatabaseHelper;

    invoke-virtual {v7}, Lorg/hermit/android/provider/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 420
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v4}, Lorg/hermit/android/provider/TableSchema;->getTableName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v6, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 422
    .local v0, "count":I
    invoke-virtual {p0}, Lorg/hermit/android/provider/TableProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 423
    return v0

    .line 413
    .end local v0    # "count":I
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "whereClause":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 414
    .local v3, "rowId":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "_id="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 415
    .restart local v6    # "whereClause":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 416
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " AND ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method protected getHelper()Lorg/hermit/android/provider/DatabaseHelper;
    .locals 3

    .prologue
    .line 134
    new-instance v0, Lorg/hermit/android/provider/DatabaseHelper;

    invoke-virtual {p0}, Lorg/hermit/android/provider/TableProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lorg/hermit/android/provider/TableProvider;->getSchema()Lorg/hermit/android/provider/DbSchema;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/hermit/android/provider/DatabaseHelper;-><init>(Landroid/content/Context;Lorg/hermit/android/provider/DbSchema;)V

    return-object v0
.end method

.method protected getSchema()Lorg/hermit/android/provider/DbSchema;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/hermit/android/provider/TableProvider;->dbSchema:Lorg/hermit/android/provider/DbSchema;

    return-object v0
.end method

.method protected getTableSchema(Ljava/lang/String;)Lorg/hermit/android/provider/TableSchema;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lorg/hermit/android/provider/TableProvider;->dbSchema:Lorg/hermit/android/provider/DbSchema;

    invoke-virtual {v0, p1}, Lorg/hermit/android/provider/DbSchema;->getTable(Ljava/lang/String;)Lorg/hermit/android/provider/TableSchema;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const-string v6, " in getType()"

    .line 153
    iget-object v3, p0, Lorg/hermit/android/provider/TableProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 154
    .local v2, "tindex":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 155
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown URI "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 156
    const-string v5, " in getType()"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    :cond_0
    const/high16 v3, 0x10000

    and-int/2addr v3, v2

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    move v0, v3

    .line 159
    .local v0, "isItem":Z
    :goto_0
    const v3, 0xffff

    and-int/2addr v2, v3

    .line 160
    if-ltz v2, :cond_1

    iget-object v3, p0, Lorg/hermit/android/provider/TableProvider;->dbSchema:Lorg/hermit/android/provider/DbSchema;

    invoke-virtual {v3}, Lorg/hermit/android/provider/DbSchema;->getDbTables()[Lorg/hermit/android/provider/TableSchema;

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_3

    .line 161
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid table in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 162
    const-string v5, " in getType()"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 161
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    .end local v0    # "isItem":Z
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 163
    .restart local v0    # "isItem":Z
    :cond_3
    iget-object v3, p0, Lorg/hermit/android/provider/TableProvider;->dbSchema:Lorg/hermit/android/provider/DbSchema;

    invoke-virtual {v3}, Lorg/hermit/android/provider/DbSchema;->getDbTables()[Lorg/hermit/android/provider/TableSchema;

    move-result-object v3

    aget-object v1, v3, v2

    .line 165
    .local v1, "t":Lorg/hermit/android/provider/TableSchema;
    if-nez v0, :cond_4

    .line 166
    invoke-virtual {v1}, Lorg/hermit/android/provider/TableSchema;->getTableType()Ljava/lang/String;

    move-result-object v3

    .line 168
    :goto_1
    return-object v3

    :cond_4
    invoke-virtual {v1}, Lorg/hermit/android/provider/TableSchema;->getItemType()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initValues"    # Landroid/content/ContentValues;

    .prologue
    const-string v12, " in insert()"

    .line 325
    iget-object v9, p0, Lorg/hermit/android/provider/TableProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v9, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    .line 326
    .local v7, "tindex":I
    const/4 v9, -0x1

    if-ne v7, v9, :cond_0

    .line 327
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unknown URI "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 328
    const-string v11, " in insert()"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 327
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 330
    :cond_0
    const/high16 v9, 0x10000

    and-int/2addr v9, v7

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    move v1, v9

    .line 331
    .local v1, "isItem":Z
    :goto_0
    const v9, 0xffff

    and-int/2addr v7, v9

    .line 332
    if-ltz v7, :cond_1

    iget-object v9, p0, Lorg/hermit/android/provider/TableProvider;->dbSchema:Lorg/hermit/android/provider/DbSchema;

    invoke-virtual {v9}, Lorg/hermit/android/provider/DbSchema;->getDbTables()[Lorg/hermit/android/provider/TableSchema;

    move-result-object v9

    array-length v9, v9

    if-lt v7, v9, :cond_3

    .line 333
    :cond_1
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Invalid table in "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 334
    const-string v11, " in insert()"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 333
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 330
    .end local v1    # "isItem":Z
    :cond_2
    const/4 v9, 0x0

    move v1, v9

    goto :goto_0

    .line 335
    .restart local v1    # "isItem":Z
    :cond_3
    iget-object v9, p0, Lorg/hermit/android/provider/TableProvider;->dbSchema:Lorg/hermit/android/provider/DbSchema;

    invoke-virtual {v9}, Lorg/hermit/android/provider/DbSchema;->getDbTables()[Lorg/hermit/android/provider/TableSchema;

    move-result-object v9

    aget-object v5, v9, v7

    .line 337
    .local v5, "t":Lorg/hermit/android/provider/TableSchema;
    if-eqz v1, :cond_4

    .line 338
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Can\'t insert into item URI "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 338
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 343
    :cond_4
    if-eqz p2, :cond_5

    .line 344
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 349
    .local v8, "values":Landroid/content/ContentValues;
    :goto_1
    invoke-virtual {v5, v8}, Lorg/hermit/android/provider/TableSchema;->onInsert(Landroid/content/ContentValues;)V

    .line 352
    invoke-virtual {p0, p1, v5, v8}, Lorg/hermit/android/provider/TableProvider;->onInsert(Landroid/net/Uri;Lorg/hermit/android/provider/TableSchema;Landroid/content/ContentValues;)V

    .line 355
    iget-object v9, p0, Lorg/hermit/android/provider/TableProvider;->mOpenHelper:Lorg/hermit/android/provider/DatabaseHelper;

    invoke-virtual {v9}, Lorg/hermit/android/provider/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 356
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v5}, Lorg/hermit/android/provider/TableSchema;->getTableName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lorg/hermit/android/provider/TableSchema;->getNullHack()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 357
    .local v3, "rowId":J
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-gtz v9, :cond_6

    .line 358
    new-instance v9, Landroid/database/SQLException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Failed to insert row into "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 346
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "rowId":J
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_5
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .restart local v8    # "values":Landroid/content/ContentValues;
    goto :goto_1

    .line 361
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "rowId":J
    :cond_6
    invoke-virtual {v5}, Lorg/hermit/android/provider/TableSchema;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    .line 362
    .local v6, "tableUri":Landroid/net/Uri;
    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 363
    .local v2, "itemUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lorg/hermit/android/provider/TableProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v2, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 365
    return-object v2
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/hermit/android/provider/TableProvider;->getHelper()Lorg/hermit/android/provider/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/hermit/android/provider/TableProvider;->mOpenHelper:Lorg/hermit/android/provider/DatabaseHelper;

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method protected onInsert(Landroid/net/Uri;Lorg/hermit/android/provider/TableSchema;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "table"    # Lorg/hermit/android/provider/TableSchema;
    .param p3, "initValues"    # Landroid/content/ContentValues;

    .prologue
    .line 311
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const-string v4, " in query()"

    .line 200
    iget-object v0, p0, Lorg/hermit/android/provider/TableProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 201
    .local v8, "tindex":I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown URI "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 203
    const-string v3, " in query()"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    const/high16 v0, 0x10000

    and-int/2addr v0, v8

    if-eqz v0, :cond_2

    move v7, v2

    .line 206
    .local v7, "isItem":Z
    :goto_0
    const v0, 0xffff

    and-int/2addr v8, v0

    .line 207
    if-ltz v8, :cond_1

    iget-object v0, p0, Lorg/hermit/android/provider/TableProvider;->dbSchema:Lorg/hermit/android/provider/DbSchema;

    invoke-virtual {v0}, Lorg/hermit/android/provider/DbSchema;->getDbTables()[Lorg/hermit/android/provider/TableSchema;

    move-result-object v0

    array-length v0, v0

    if-lt v8, v0, :cond_3

    .line 208
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid table in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 209
    const-string v3, " in query()"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    .end local v7    # "isItem":Z
    :cond_2
    const/4 v0, 0x0

    move v7, v0

    goto :goto_0

    .line 210
    .restart local v7    # "isItem":Z
    :cond_3
    iget-object v0, p0, Lorg/hermit/android/provider/TableProvider;->dbSchema:Lorg/hermit/android/provider/DbSchema;

    invoke-virtual {v0}, Lorg/hermit/android/provider/DbSchema;->getDbTables()[Lorg/hermit/android/provider/TableSchema;

    move-result-object v0

    aget-object v1, v0, v8

    .line 213
    .local v1, "t":Lorg/hermit/android/provider/TableSchema;
    if-eqz v7, :cond_4

    .line 214
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, p2, v0}, Lorg/hermit/android/provider/TableProvider;->queryItem(Lorg/hermit/android/provider/TableSchema;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 220
    .local v6, "c":Landroid/database/Cursor;
    :goto_1
    invoke-virtual {p0}, Lorg/hermit/android/provider/TableProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v6, v0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 221
    return-object v6

    .end local v6    # "c":Landroid/database/Cursor;
    :cond_4
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 216
    invoke-virtual/range {v0 .. v5}, Lorg/hermit/android/provider/TableProvider;->queryItems(Lorg/hermit/android/provider/TableSchema;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6    # "c":Landroid/database/Cursor;
    goto :goto_1
.end method

.method protected queryItem(Lorg/hermit/android/provider/TableSchema;[Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 1
    .param p1, "t"    # Lorg/hermit/android/provider/TableSchema;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "id"    # J

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/hermit/android/provider/TableProvider;->queryItem(Lorg/hermit/android/provider/TableSchema;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected queryItem(Lorg/hermit/android/provider/TableSchema;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "t"    # Lorg/hermit/android/provider/TableSchema;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 249
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 250
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {p1}, Lorg/hermit/android/provider/TableSchema;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p1}, Lorg/hermit/android/provider/TableSchema;->getProjectionMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v2, p0, Lorg/hermit/android/provider/TableProvider;->mOpenHelper:Lorg/hermit/android/provider/DatabaseHelper;

    invoke-virtual {v2}, Lorg/hermit/android/provider/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 256
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method protected queryItems(Lorg/hermit/android/provider/TableSchema;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "t"    # Lorg/hermit/android/provider/TableSchema;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 281
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 282
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {p1}, Lorg/hermit/android/provider/TableSchema;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1}, Lorg/hermit/android/provider/TableSchema;->getProjectionMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 286
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    invoke-virtual {p1}, Lorg/hermit/android/provider/TableSchema;->getSortOrder()Ljava/lang/String;

    move-result-object p5

    .line 290
    :cond_0
    iget-object v2, p0, Lorg/hermit/android/provider/TableProvider;->mOpenHelper:Lorg/hermit/android/provider/DatabaseHelper;

    invoke-virtual {v2}, Lorg/hermit/android/provider/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 291
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const-string v10, " in update()"

    .line 450
    iget-object v7, p0, Lorg/hermit/android/provider/TableProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 451
    .local v5, "tindex":I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_0

    .line 452
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unknown URI "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 453
    const-string v9, " in update()"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 452
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 455
    :cond_0
    const/high16 v7, 0x10000

    and-int/2addr v7, v5

    if-eqz v7, :cond_2

    move v2, v8

    .line 456
    .local v2, "isItem":Z
    :goto_0
    const v7, 0xffff

    and-int/2addr v5, v7

    .line 457
    if-ltz v5, :cond_1

    iget-object v7, p0, Lorg/hermit/android/provider/TableProvider;->dbSchema:Lorg/hermit/android/provider/DbSchema;

    invoke-virtual {v7}, Lorg/hermit/android/provider/DbSchema;->getDbTables()[Lorg/hermit/android/provider/TableSchema;

    move-result-object v7

    array-length v7, v7

    if-lt v5, v7, :cond_3

    .line 458
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Invalid table in "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 459
    const-string v9, " in update()"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 458
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 455
    .end local v2    # "isItem":Z
    :cond_2
    const/4 v7, 0x0

    move v2, v7

    goto :goto_0

    .line 460
    .restart local v2    # "isItem":Z
    :cond_3
    iget-object v7, p0, Lorg/hermit/android/provider/TableProvider;->dbSchema:Lorg/hermit/android/provider/DbSchema;

    invoke-virtual {v7}, Lorg/hermit/android/provider/DbSchema;->getDbTables()[Lorg/hermit/android/provider/TableSchema;

    move-result-object v7

    aget-object v4, v7, v5

    .line 464
    .local v4, "t":Lorg/hermit/android/provider/TableSchema;
    if-nez v2, :cond_5

    .line 465
    move-object v6, p3

    .line 473
    .local v6, "whereClause":Ljava/lang/String;
    :cond_4
    :goto_1
    iget-object v7, p0, Lorg/hermit/android/provider/TableProvider;->mOpenHelper:Lorg/hermit/android/provider/DatabaseHelper;

    invoke-virtual {v7}, Lorg/hermit/android/provider/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 474
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v4}, Lorg/hermit/android/provider/TableSchema;->getTableName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, p2, v6, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 476
    .local v0, "count":I
    invoke-virtual {p0}, Lorg/hermit/android/provider/TableProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 477
    return v0

    .line 467
    .end local v0    # "count":I
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "whereClause":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 468
    .local v3, "rowId":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "_id="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 469
    .restart local v6    # "whereClause":Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 470
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " AND ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

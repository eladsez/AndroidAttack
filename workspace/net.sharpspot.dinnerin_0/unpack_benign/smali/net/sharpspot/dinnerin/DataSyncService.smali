.class public Lnet/sharpspot/dinnerin/DataSyncService;
.super Landroid/app/IntentService;
.source "DataSyncService.java"


# static fields
.field public static final EXTRA_TABLE_NAME:Ljava/lang/String; = "TableName"

.field private static final USER_COLUMN:Ljava/lang/String; = "User"


# instance fields
.field private _context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "DataSyncService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method private AddNewLocalItems(Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p2, "parseObjects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v1, Lnet/sharpspot/dinnerin/Database;

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/DataSyncService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Lnet/sharpspot/dinnerin/Database;-><init>(Landroid/content/Context;)V

    .line 255
    .local v1, "database":Lnet/sharpspot/dinnerin/Database;
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 256
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 257
    .local v0, "cv":Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 259
    .local v5, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v1, p1}, Lnet/sharpspot/dinnerin/DataSyncService;->GetTableKeys(Lnet/sharpspot/dinnerin/Database;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 261
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 284
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 285
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Database;->close()V

    .line 286
    return-void

    .line 261
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseObject;

    .line 263
    .local v6, "parseObject":Lcom/parse/ParseObject;
    const/4 v3, 0x0

    .line 265
    .local v3, "exists":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 274
    :goto_1
    if-nez v3, :cond_0

    .line 276
    invoke-direct {p0, p1, v6}, Lnet/sharpspot/dinnerin/DataSyncService;->GetContentValuesForCommit(Ljava/lang/String;Lcom/parse/ParseObject;)Landroid/content/ContentValues;

    move-result-object v0

    .line 278
    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {v2, p1, v8, v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 280
    const-string v8, "Sync"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ": Added local item: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Key"

    invoke-virtual {v6, v10}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 267
    .local v4, "key":Ljava/lang/String;
    const-string v9, "Key"

    invoke-virtual {v6, v9}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 269
    const/4 v3, 0x1

    .line 270
    goto :goto_1
.end method

.method private AddNewServerItems(Ljava/lang/String;Ljava/util/List;)V
    .locals 12
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .local p2, "parseObjects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    const/4 v11, 0x0

    .line 200
    new-instance v3, Lnet/sharpspot/dinnerin/Database;

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/DataSyncService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v3, v8}, Lnet/sharpspot/dinnerin/Database;-><init>(Landroid/content/Context;)V

    .line 201
    .local v3, "database":Lnet/sharpspot/dinnerin/Database;
    invoke-virtual {v3}, Lnet/sharpspot/dinnerin/Database;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 202
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 204
    .local v2, "columns":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/DataSyncService;->GetColumnFromTable(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 206
    const-string v8, "SELECT * FROM %s WHERE Version IS NULL"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 208
    .local v1, "c":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 212
    :cond_0
    const/4 v6, 0x0

    .line 213
    .local v6, "newParseObject":Lcom/parse/ParseObject;
    const/4 v0, 0x0

    .line 214
    .local v0, "alreadyExists":Z
    const-string v8, "Key"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, "key":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 227
    :goto_0
    if-eqz v0, :cond_4

    .line 228
    invoke-direct {p0, p1, v5}, Lnet/sharpspot/dinnerin/DataSyncService;->SetInitialVersion(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 247
    .end local v0    # "alreadyExists":Z
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "newParseObject":Lcom/parse/ParseObject;
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 248
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 249
    invoke-virtual {v3}, Lnet/sharpspot/dinnerin/Database;->close()V

    .line 250
    return-void

    .line 216
    .restart local v0    # "alreadyExists":Z
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "newParseObject":Lcom/parse/ParseObject;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parse/ParseObject;

    .line 218
    .local v7, "parseObject":Lcom/parse/ParseObject;
    const-string v9, "Key"

    invoke-virtual {v7, v9}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 220
    const/4 v0, 0x1

    .line 221
    goto :goto_0

    .line 231
    .end local v7    # "parseObject":Lcom/parse/ParseObject;
    :cond_4
    new-instance v6, Lcom/parse/ParseObject;

    .end local v6    # "newParseObject":Lcom/parse/ParseObject;
    invoke-direct {v6, p1}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;)V

    .line 233
    .restart local v6    # "newParseObject":Lcom/parse/ParseObject;
    invoke-direct {p0, v2, v1, v6}, Lnet/sharpspot/dinnerin/DataSyncService;->PrepareParseObjectForSave(Ljava/util/HashMap;Landroid/database/Cursor;Lcom/parse/ParseObject;)V

    .line 235
    const-string v8, "Version"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    invoke-virtual {v6}, Lcom/parse/ParseObject;->save()V

    .line 239
    const-string v8, "Sync"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ": Added server item: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-direct {p0, p1, v5}, Lnet/sharpspot/dinnerin/DataSyncService;->SetInitialVersion(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private DeleteLocalItems(Ljava/lang/String;Ljava/util/List;)V
    .locals 13
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "parseObjects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 160
    new-instance v1, Lnet/sharpspot/dinnerin/Database;

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/DataSyncService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Lnet/sharpspot/dinnerin/Database;-><init>(Landroid/content/Context;)V

    .line 161
    .local v1, "database":Lnet/sharpspot/dinnerin/Database;
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Database;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 162
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 164
    .local v3, "dbWrite":Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "SELECT %s FROM %s WHERE Version IS NOT NULL"

    new-array v8, v12, [Ljava/lang/Object;

    const-string v9, "Key"

    aput-object v9, v8, v10

    aput-object p1, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 166
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 170
    :cond_0
    const-string v7, "Key"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "key":Ljava/lang/String;
    const/4 v4, 0x1

    .line 173
    .local v4, "deleteItem":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 182
    :goto_0
    if-eqz v4, :cond_2

    .line 184
    const-string v7, "DELETE FROM %s WHERE %s=\'%s\'"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v10

    const-string v9, "Key"

    aput-object v9, v8, v11

    aput-object v5, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 185
    const-string v7, "Sync"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ": Deleted local item: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 191
    .end local v4    # "deleteItem":Z
    .end local v5    # "key":Ljava/lang/String;
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 192
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 193
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 194
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Database;->close()V

    .line 196
    return-void

    .line 173
    .restart local v4    # "deleteItem":Z
    .restart local v5    # "key":Ljava/lang/String;
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseObject;

    .line 175
    .local v6, "parseObject":Lcom/parse/ParseObject;
    const-string v8, "Key"

    invoke-virtual {v6, v8}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 177
    const/4 v4, 0x0

    .line 178
    goto :goto_0
.end method

.method private DeleteServerItems(Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 130
    .local p2, "parseObjects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v3, "removedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parse/ParseObject;>;"
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/DataSyncService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;->GetDeleteItems(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 133
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 152
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 156
    return-void

    .line 133
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;

    .line 135
    .local v0, "item":Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 149
    :goto_2
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;->Delete()V

    goto :goto_0

    .line 135
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseObject;

    .line 137
    .local v2, "parseObject":Lcom/parse/ParseObject;
    const-string v7, "Key"

    invoke-virtual {v2, v7}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 139
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {v2}, Lcom/parse/ParseObject;->delete()V

    .line 143
    const-string v6, "Sync"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ": Deleted server item: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 152
    .end local v0    # "item":Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;
    .end local v2    # "parseObject":Lcom/parse/ParseObject;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseObject;

    .line 154
    .local v4, "removedObject":Lcom/parse/ParseObject;
    invoke-interface {p2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private GetColumnFromTable(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    new-instance v1, Lnet/sharpspot/dinnerin/Database;

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/DataSyncService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lnet/sharpspot/dinnerin/Database;-><init>(Landroid/content/Context;)V

    .line 330
    .local v1, "database":Lnet/sharpspot/dinnerin/Database;
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Database;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 331
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 333
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "PRAGMA table_info(%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 335
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 339
    :cond_0
    const-string v4, "name"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "type"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 344
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 345
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 346
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Database;->close()V

    .line 348
    return-object v3
.end method

.method private GetContentValuesForCommit(Ljava/lang/String;Lcom/parse/ParseObject;)Landroid/content/ContentValues;
    .locals 9
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "parseObject"    # Lcom/parse/ParseObject;

    .prologue
    const/4 v8, 0x0

    .line 451
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 453
    .local v3, "cv":Landroid/content/ContentValues;
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/DataSyncService;->GetColumnFromTable(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 491
    return-object v3

    .line 453
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 455
    .local v0, "column":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 456
    .local v2, "columnType":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 458
    .local v1, "columnName":Ljava/lang/String;
    invoke-virtual {p2, v1}, Lcom/parse/ParseObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 460
    const-string v6, "text"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 461
    invoke-virtual {p2, v1}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :cond_2
    const-string v6, "integer"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 463
    invoke-virtual {p2, v1}, Lcom/parse/ParseObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 464
    :cond_3
    const-string v6, "float"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 465
    invoke-virtual {p2, v1}, Lcom/parse/ParseObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0

    .line 466
    :cond_4
    const-string v6, "blob"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 470
    :try_start_0
    invoke-virtual {p2, v1}, Lcom/parse/ParseObject;->getParseFile(Ljava/lang/String;)Lcom/parse/ParseFile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parse/ParseFile;->getData()[B

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 472
    :catch_0
    move-exception v4

    .line 474
    .local v4, "ex":Ljava/lang/Exception;
    const-string v6, "Commit image bytes"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 480
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_5
    const-string v6, "text"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 481
    invoke-virtual {v3, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 482
    :cond_6
    const-string v6, "integer"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 483
    invoke-virtual {v3, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 484
    :cond_7
    const-string v6, "float"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 485
    invoke-virtual {v3, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto/16 :goto_0

    .line 486
    :cond_8
    const-string v6, "blob"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 487
    invoke-virtual {v3, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_0
.end method

.method private GetParseObjects(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v2, "parseObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parse/ParseObject;>;"
    const/4 v0, 0x0

    .line 99
    .local v0, "foundObjects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    const/4 v3, 0x0

    .line 100
    .local v3, "query":Lcom/parse/ParseQuery;
    const/16 v4, 0x3e8

    .line 101
    .local v4, "queryLimit":I
    const/4 v1, 0x0

    .line 103
    .local v1, "pageCount":I
    new-instance v3, Lcom/parse/ParseQuery;

    .end local v3    # "query":Lcom/parse/ParseQuery;
    invoke-direct {v3, p1}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    .line 104
    .restart local v3    # "query":Lcom/parse/ParseQuery;
    invoke-virtual {v3, v4}, Lcom/parse/ParseQuery;->setLimit(I)V

    .line 105
    const-string v5, "User"

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    .line 109
    :goto_0
    invoke-virtual {v3}, Lcom/parse/ParseQuery;->find()Ljava/util/List;

    move-result-object v0

    .line 110
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 111
    add-int/lit8 v1, v1, 0x1

    .line 113
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 114
    mul-int v5, v4, v1

    invoke-virtual {v3, v5}, Lcom/parse/ParseQuery;->setSkip(I)V

    goto :goto_0

    .line 120
    :cond_0
    return-object v2
.end method

.method private GetTableKeys(Lnet/sharpspot/dinnerin/Database;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "database"    # Lnet/sharpspot/dinnerin/Database;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sharpspot/dinnerin/Database;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v2, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lnet/sharpspot/dinnerin/Database;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 293
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "SELECT Key FROM %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 295
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    :cond_0
    const-string v3, "Key"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 304
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 306
    return-object v2
.end method

.method private GetTableNameList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v0, "tableNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "tTag"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    const-string v1, "tStep"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    const-string v1, "tRecipeTag"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    const-string v1, "tRecipe"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    const-string v1, "tMenuRecipe"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    const-string v1, "tMenu"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    const-string v1, "tMeasurement"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    const-string v1, "tLink"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    const-string v1, "tIngredient"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    const-string v1, "tFraction"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    return-object v0
.end method

.method private OnSyncComplete()V
    .locals 2

    .prologue
    .line 125
    const-string v0, "Sync"

    const-string v1, "Complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method private PrepareParseObjectForSave(Ljava/util/HashMap;Landroid/database/Cursor;Lcom/parse/ParseObject;)V
    .locals 10
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "parseObject"    # Lcom/parse/ParseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/Cursor;",
            "Lcom/parse/ParseObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 417
    .local p1, "columns":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v7, :cond_0

    .line 446
    const-string v5, "User"

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 447
    return-void

    .line 417
    :cond_0
    aget-object v0, v6, v5

    .line 419
    .local v0, "column":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 420
    .local v2, "columnType":Ljava/lang/String;
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 422
    .local v1, "columnIndex":I
    invoke-interface {p2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 423
    invoke-virtual {p3, v0}, Lcom/parse/ParseObject;->remove(Ljava/lang/String;)V

    .line 417
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 424
    :cond_2
    const-string v8, "text"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 425
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v0, v8}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 426
    :cond_3
    const-string v8, "integer"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 427
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p3, v0, v8}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 428
    :cond_4
    const-string v8, "float"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 429
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {p3, v0, v8}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 430
    :cond_5
    const-string v8, "blob"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 434
    :try_start_0
    new-instance v4, Lcom/parse/ParseFile;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    invoke-direct {v4, v8, v9}, Lcom/parse/ParseFile;-><init>(Ljava/lang/String;[B)V

    .line 435
    .local v4, "file":Lcom/parse/ParseFile;
    invoke-virtual {v4}, Lcom/parse/ParseFile;->save()V

    .line 437
    invoke-virtual {p3, v0, v4}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 439
    .end local v4    # "file":Lcom/parse/ParseFile;
    :catch_0
    move-exception v3

    .line 441
    .local v3, "ex":Ljava/lang/Exception;
    const-string v8, "Save image file"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private SetInitialVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 353
    new-instance v0, Lnet/sharpspot/dinnerin/Database;

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/DataSyncService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/sharpspot/dinnerin/Database;-><init>(Landroid/content/Context;)V

    .line 354
    .local v0, "database":Lnet/sharpspot/dinnerin/Database;
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 356
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "UPDATE %s SET Version=0 WHERE Key=\'%s\' AND Version IS NULL"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 358
    const-string v2, "Sync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ": Set initial version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 361
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Database;->close()V

    .line 362
    return-void
.end method

.method private SyncChangedItems(Ljava/lang/String;Ljava/util/List;)V
    .locals 13
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 366
    .local p2, "parseObjects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v3, Lnet/sharpspot/dinnerin/Database;

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/DataSyncService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v3, v9}, Lnet/sharpspot/dinnerin/Database;-><init>(Landroid/content/Context;)V

    .line 367
    .local v3, "database":Lnet/sharpspot/dinnerin/Database;
    invoke-virtual {v3}, Lnet/sharpspot/dinnerin/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 368
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Lnet/sharpspot/dinnerin/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 369
    .local v5, "dbWrite":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/DataSyncService;->GetColumnFromTable(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 370
    .local v1, "columns":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 372
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v9, "SELECT * FROM %s WHERE Version IS NOT NULL"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 374
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 378
    :cond_0
    const-string v9, "Version"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 379
    .local v8, "version":I
    const-string v9, "Key"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 381
    .local v6, "key":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 406
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 409
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "version":I
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 410
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 411
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 412
    invoke-virtual {v3}, Lnet/sharpspot/dinnerin/Database;->close()V

    .line 413
    return-void

    .line 381
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v8    # "version":I
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parse/ParseObject;

    .line 383
    .local v7, "parseObject":Lcom/parse/ParseObject;
    const-string v10, "Key"

    invoke-virtual {v7, v10}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 385
    const-string v10, "Version"

    invoke-virtual {v7, v10}, Lcom/parse/ParseObject;->getInt(Ljava/lang/String;)I

    move-result v10

    if-le v10, v8, :cond_4

    .line 388
    invoke-direct {p0, p1, v7}, Lnet/sharpspot/dinnerin/DataSyncService;->GetContentValuesForCommit(Ljava/lang/String;Lcom/parse/ParseObject;)Landroid/content/ContentValues;

    move-result-object v2

    .line 390
    const-string v10, "Key=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-virtual {v5, p1, v2, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 392
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Updated local item: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 394
    :cond_4
    const-string v10, "Version"

    invoke-virtual {v7, v10}, Lcom/parse/ParseObject;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ge v10, v8, :cond_1

    .line 397
    invoke-direct {p0, v1, v0, v7}, Lnet/sharpspot/dinnerin/DataSyncService;->PrepareParseObjectForSave(Ljava/util/HashMap;Landroid/database/Cursor;Lcom/parse/ParseObject;)V

    .line 399
    invoke-virtual {v7}, Lcom/parse/ParseObject;->save()V

    .line 401
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Updated server item: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private SyncTable(Ljava/lang/String;)V
    .locals 5
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v2, "Sync"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v1, 0x0

    .line 79
    .local v1, "parseObjects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/DataSyncService;->GetParseObjects(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 81
    invoke-direct {p0, p1, v1}, Lnet/sharpspot/dinnerin/DataSyncService;->DeleteServerItems(Ljava/lang/String;Ljava/util/List;)V

    .line 82
    invoke-direct {p0, p1, v1}, Lnet/sharpspot/dinnerin/DataSyncService;->DeleteLocalItems(Ljava/lang/String;Ljava/util/List;)V

    .line 84
    invoke-direct {p0, p1, v1}, Lnet/sharpspot/dinnerin/DataSyncService;->AddNewServerItems(Ljava/lang/String;Ljava/util/List;)V

    .line 85
    invoke-direct {p0, p1, v1}, Lnet/sharpspot/dinnerin/DataSyncService;->AddNewLocalItems(Ljava/lang/String;Ljava/util/List;)V

    .line 87
    invoke-direct {p0, p1, v1}, Lnet/sharpspot/dinnerin/DataSyncService;->SyncChangedItems(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 91
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "Sync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    iput-object p1, p0, Lnet/sharpspot/dinnerin/DataSyncService;->_context:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lnet/sharpspot/dinnerin/DataSyncService;->_context:Landroid/content/Context;

    return-object v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    const-string v2, "Sync"

    const-string v3, "Begin synchronization..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v2, "TableName"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "tableName":Ljava/lang/String;
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 55
    invoke-direct {p0, p0}, Lnet/sharpspot/dinnerin/DataSyncService;->setContext(Landroid/content/Context;)V

    .line 57
    if-nez v1, :cond_2

    .line 59
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/DataSyncService;->GetTableNameList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 68
    :cond_0
    :goto_1
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/DataSyncService;->OnSyncComplete()V

    .line 69
    return-void

    .line 59
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    .local v0, "name":Ljava/lang/String;
    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/DataSyncService;->SyncTable(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v1}, Lnet/sharpspot/dinnerin/DataSyncService;->SyncTable(Ljava/lang/String;)V

    goto :goto_1
.end method

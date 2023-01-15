.class public abstract Lnet/sharpspot/dinnerin/Classes/DataClass;
.super Ljava/lang/Object;
.source "DataClass.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final PRIMARY_KEY:Ljava/lang/String; = "Key"

.field public static final VERSION_COLUMN:Ljava/lang/String; = "Version"


# instance fields
.field private _context:Landroid/content/Context;

.field private _database:Lnet/sharpspot/dinnerin/Database;

.field private _isDirty:Z

.field private _isNew:Z

.field private _key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;->setContext(Landroid/content/Context;)V

    .line 28
    new-instance v0, Lnet/sharpspot/dinnerin/Database;

    invoke-direct {v0, p1}, Lnet/sharpspot/dinnerin/Database;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->setDatabase(Lnet/sharpspot/dinnerin/Database;)V

    .line 30
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->setIsNew(Z)V

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->OnSetDefaults(Z)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0, p2}, Lnet/sharpspot/dinnerin/Classes/DataClass;->LoadData(Landroid/database/Cursor;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0, p2}, Lnet/sharpspot/dinnerin/Classes/DataClass;->LoadData(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private LoadData(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;->OnLoadData(Landroid/database/Cursor;)V

    .line 120
    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->setIsNew(Z)V

    .line 121
    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->setIsDirty(Z)V

    .line 122
    return-void
.end method

.method private LoadData(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->getDatabase()Lnet/sharpspot/dinnerin/Database;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sharpspot/dinnerin/Database;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 107
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "SELECT * FROM %s WHERE %s=\'%s\'"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->GetTableName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Key"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 109
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->LoadData(Landroid/database/Cursor;)V

    .line 112
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 113
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 114
    return-void
.end method

.method private RecordInDeletedItemTable()V
    .locals 2

    .prologue
    .line 202
    new-instance v0, Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;-><init>(Landroid/content/Context;)V

    .line 203
    .local v0, "deleteItem":Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;->setKey(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->GetTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;->setSourceTable(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;->Commit()V

    .line 206
    return-void
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/DataClass;->_context:Landroid/content/Context;

    .line 69
    return-void
.end method

.method private setDatabase(Lnet/sharpspot/dinnerin/Database;)V
    .locals 0
    .param p1, "database"    # Lnet/sharpspot/dinnerin/Database;

    .prologue
    .line 78
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/DataClass;->_database:Lnet/sharpspot/dinnerin/Database;

    .line 79
    return-void
.end method

.method private setIsDirty(Z)V
    .locals 0
    .param p1, "isDirty"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lnet/sharpspot/dinnerin/Classes/DataClass;->_isDirty:Z

    .line 89
    return-void
.end method

.method private setIsNew(Z)V
    .locals 0
    .param p1, "isNew"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lnet/sharpspot/dinnerin/Classes/DataClass;->_isNew:Z

    .line 99
    return-void
.end method


# virtual methods
.method public Commit()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 146
    const/4 v1, 0x0

    .line 147
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 149
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->getIsDirty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->getDatabase()Lnet/sharpspot/dinnerin/Database;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sharpspot/dinnerin/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 152
    new-instance v0, Landroid/content/ContentValues;

    .end local v0    # "cv":Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 154
    .restart local v0    # "cv":Landroid/content/ContentValues;
    invoke-virtual {p0, v6}, Lnet/sharpspot/dinnerin/Classes/DataClass;->OnSetDefaults(Z)V

    .line 156
    const-string v2, "Key"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->OnPrepareCommitValues(Landroid/content/ContentValues;)V

    .line 160
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->getIsNew()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->GetTableName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 166
    :goto_0
    const-string v2, "UPDATE %s SET %s=%s+1 WHERE %s=\'%s\' AND Version IS NOT NULL"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->GetTableName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "Version"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "Version"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 167
    const-string v5, "Key"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->getKey()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 166
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 171
    :cond_0
    return-void

    .line 163
    :cond_1
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->GetTableName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Key=?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->getKey()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public CommitAsync()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lnet/sharpspot/dinnerin/Classes/DataClass$1;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Classes/DataClass$1;-><init>(Lnet/sharpspot/dinnerin/Classes/DataClass;)V

    .line 141
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/DataClass$1;->start()V

    .line 142
    return-void
.end method

.method public Delete()V
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->getIsNew()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->DeleteFromTable()V

    .line 189
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->RecordInDeletedItemTable()V

    .line 191
    :cond_0
    return-void
.end method

.method public DeleteAsync()V
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lnet/sharpspot/dinnerin/Classes/DataClass$2;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Classes/DataClass$2;-><init>(Lnet/sharpspot/dinnerin/Classes/DataClass;)V

    .line 181
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/DataClass$2;->start()V

    .line 182
    return-void
.end method

.method protected DeleteFromTable()V
    .locals 6

    .prologue
    .line 195
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->getDatabase()Lnet/sharpspot/dinnerin/Database;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 196
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->GetTableName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Key=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->getKey()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 197
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 198
    return-void
.end method

.method protected abstract GetTableName()Ljava/lang/String;
.end method

.method protected OnLoadData(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 126
    const-string v0, "Key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->setKey(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method protected OnPrepareCommitValues(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 131
    return-void
.end method

.method protected OnPropertyChanged()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->setIsDirty(Z)V

    .line 220
    return-void
.end method

.method protected OnSetDefaults(Z)V
    .locals 1
    .param p1, "isSaving"    # Z

    .prologue
    .line 210
    if-eqz p1, :cond_1

    .line 212
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 213
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->setKey(Ljava/lang/String;)V

    .line 215
    :cond_1
    return-void
.end method

.method protected ToTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 224
    if-nez p1, :cond_0

    .line 226
    const/4 v5, 0x0

    .line 255
    :goto_0
    return-object v5

    .line 229
    :cond_0
    const/4 v4, 0x1

    .line 230
    .local v4, "space":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 233
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v3, :cond_1

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 236
    .local v1, "c":C
    if-eqz v4, :cond_3

    .line 238
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 241
    invoke-static {v1}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v5

    invoke-virtual {v0, v2, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 242
    const/4 v4, 0x0

    .line 233
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 245
    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 247
    const/4 v4, 0x1

    .line 248
    goto :goto_2

    .line 251
    :cond_4
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    invoke-virtual {v0, v2, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/DataClass;->_context:Landroid/content/Context;

    return-object v0
.end method

.method public getDatabase()Lnet/sharpspot/dinnerin/Database;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/DataClass;->_database:Lnet/sharpspot/dinnerin/Database;

    return-object v0
.end method

.method public getIsDirty()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lnet/sharpspot/dinnerin/Classes/DataClass;->_isDirty:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->getIsNew()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getIsNew()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lnet/sharpspot/dinnerin/Classes/DataClass;->_isNew:Z

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/DataClass;->_key:Ljava/lang/String;

    return-object v0
.end method

.method protected setKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/DataClass;->_key:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/sharpspot/dinnerin/Helper;->IsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/DataClass;->_key:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->OnPropertyChanged()V

    .line 59
    :cond_0
    return-void
.end method

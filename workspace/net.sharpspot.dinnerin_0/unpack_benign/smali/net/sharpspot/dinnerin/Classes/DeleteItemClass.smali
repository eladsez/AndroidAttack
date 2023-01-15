.class public Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;
.super Lnet/sharpspot/dinnerin/Classes/DataClass;
.source "DeleteItemClass.java"


# static fields
.field public static final TABLE_COLUMN:Ljava/lang/String; = "SourceTable"

.field public static final TABLE_NAME:Ljava/lang/String; = "tDeleteItem"


# instance fields
.field private _sourceTable:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lnet/sharpspot/dinnerin/Classes/DataClass;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lnet/sharpspot/dinnerin/Classes/DataClass;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "CREATE TABLE tDeleteItem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, "Key text primary key, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, "SourceTable text not null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static DropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 108
    const-string v0, "DROP TABLE IF EXISTS tDeleteItem"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static GetDeleteItems(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    const-class v0, Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;

    const-string v1, "SELECT * FROM %s WHERE %s=\'%s\'"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "tDeleteItem"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "SourceTable"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lnet/sharpspot/dinnerin/Database;->GetObjects(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public Commit()V
    .locals 4

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 69
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 71
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;->getIsDirty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;->getDatabase()Lnet/sharpspot/dinnerin/Database;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sharpspot/dinnerin/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 74
    new-instance v0, Landroid/content/ContentValues;

    .end local v0    # "cv":Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 76
    .restart local v0    # "cv":Landroid/content/ContentValues;
    const-string v2, "Key"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v2, "SourceTable"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;->getSourceTable()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;->getIsNew()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;->GetTableName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 82
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 84
    :cond_1
    return-void
.end method

.method public Delete()V
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;->getIsNew()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;->DeleteFromTable()V

    .line 91
    :cond_0
    return-void
.end method

.method protected GetTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "tDeleteItem"

    return-object v0
.end method

.method protected OnLoadData(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;->OnLoadData(Landroid/database/Cursor;)V

    .line 62
    const-string v0, "SourceTable"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;->setSourceTable(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public getSourceTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;->_sourceTable:Ljava/lang/String;

    return-object v0
.end method

.method public setSourceTable(Ljava/lang/String;)V
    .locals 1
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;->_sourceTable:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/sharpspot/dinnerin/Helper;->IsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;->_sourceTable:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;->OnPropertyChanged()V

    .line 49
    :cond_0
    return-void
.end method

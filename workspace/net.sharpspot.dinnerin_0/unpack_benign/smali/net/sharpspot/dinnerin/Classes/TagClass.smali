.class public Lnet/sharpspot/dinnerin/Classes/TagClass;
.super Lnet/sharpspot/dinnerin/Classes/DataClass;
.source "TagClass.java"


# static fields
.field private static final DEFAULT_NAME:Ljava/lang/String; = "New Tag"

.field public static final NAME_COLUMN:Ljava/lang/String; = "Name"

.field public static final TABLE_NAME:Ljava/lang/String; = "tTag"


# instance fields
.field private _name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lnet/sharpspot/dinnerin/Classes/DataClass;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lnet/sharpspot/dinnerin/Classes/DataClass;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "CREATE TABLE tTag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, "Key text primary key, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, "Name text not null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, "Version integer null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public static CreateTag(Landroid/content/Context;Ljava/lang/String;)Lnet/sharpspot/dinnerin/Classes/TagClass;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v0, Lnet/sharpspot/dinnerin/Classes/TagClass;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Classes/TagClass;-><init>(Landroid/content/Context;)V

    .line 127
    .local v0, "tag":Lnet/sharpspot/dinnerin/Classes/TagClass;
    invoke-virtual {v0, p1}, Lnet/sharpspot/dinnerin/Classes/TagClass;->setName(Ljava/lang/String;)V

    .line 129
    return-object v0
.end method

.method public static DropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 106
    const-string v0, "DROP TABLE IF EXISTS tTag"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static GetTagByName(Landroid/content/Context;Ljava/lang/String;)Lnet/sharpspot/dinnerin/Classes/TagClass;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 116
    const-class v1, Lnet/sharpspot/dinnerin/Classes/TagClass;

    const-string v2, "SELECT * FROM %s WHERE Name=\'%s\'"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "tTag"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lnet/sharpspot/dinnerin/Database;->GetObjects(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 118
    .local v0, "collection":Ljava/util/List;, "Ljava/util/List<Lnet/sharpspot/dinnerin/Classes/TagClass;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 119
    const/4 v1, 0x0

    .line 121
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sharpspot/dinnerin/Classes/TagClass;

    goto :goto_0
.end method

.method public static GetTags(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/TagClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    const-class v0, Lnet/sharpspot/dinnerin/Classes/TagClass;

    const-string v1, "SELECT * FROM %s ORDER BY %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "tTag"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Name"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lnet/sharpspot/dinnerin/Database;->GetObjects(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected GetTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "tTag"

    return-object v0
.end method

.method protected OnLoadData(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;->OnLoadData(Landroid/database/Cursor;)V

    .line 64
    const-string v0, "Name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/TagClass;->setName(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method protected OnPrepareCommitValues(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 81
    const-string v0, "Name"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/TagClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method protected OnSetDefaults(Z)V
    .locals 1
    .param p1, "isSaving"    # Z

    .prologue
    .line 70
    invoke-super {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;->OnSetDefaults(Z)V

    .line 72
    if-eqz p1, :cond_1

    .line 74
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/TagClass;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/TagClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 75
    :cond_0
    const-string v0, "New Tag"

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/TagClass;->setName(Ljava/lang/String;)V

    .line 77
    :cond_1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/TagClass;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/TagClass;->_name:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/sharpspot/dinnerin/Helper;->IsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/TagClass;->_name:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/TagClass;->OnPropertyChanged()V

    .line 51
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/TagClass;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

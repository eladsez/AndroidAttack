.class public Lnet/sharpspot/dinnerin/Classes/LinkClass;
.super Lnet/sharpspot/dinnerin/Classes/DataClass;
.source "LinkClass.java"


# static fields
.field public static final LINKED_RECIPEKEY_COLUMN:Ljava/lang/String; = "LinkRecipeKey"

.field public static final RECIPEKEY_COLUMN:Ljava/lang/String; = "RecipeKey"

.field public static final TABLE_NAME:Ljava/lang/String; = "tLink"


# instance fields
.field private _linkedRecipeKey:Ljava/lang/String;

.field private _recipeKey:Ljava/lang/String;


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
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "CREATE TABLE tLink"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "Key text primary key, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, "RecipeKey text not null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, "LinkRecipeKey text not null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, "Version integer null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static DropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 105
    const-string v0, "DROP TABLE IF EXISTS tLink"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public static GetRecipeLinks(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recipeKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/LinkClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    const-class v0, Lnet/sharpspot/dinnerin/Classes/LinkClass;

    const-string v1, "SELECT * FROM %s WHERE %s=\'%s\'"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "tLink"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "RecipeKey"

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
.method protected GetTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "tLink"

    return-object v0
.end method

.method protected OnLoadData(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 76
    const-string v0, "RecipeKey"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/LinkClass;->setRecipeKey(Ljava/lang/String;)V

    .line 77
    const-string v0, "LinkRecipeKey"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/LinkClass;->setLinkedRecipeKey(Ljava/lang/String;)V

    .line 79
    invoke-super {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;->OnLoadData(Landroid/database/Cursor;)V

    .line 80
    return-void
.end method

.method protected OnPrepareCommitValues(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 84
    const-string v0, "RecipeKey"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/LinkClass;->getRecipeKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "LinkRecipeKey"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/LinkClass;->getLinkedRecipeKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public getLinkedRecipeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/LinkClass;->_linkedRecipeKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/LinkClass;->_recipeKey:Ljava/lang/String;

    return-object v0
.end method

.method public setLinkedRecipeKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "linkedRecipeKey"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/LinkClass;->_linkedRecipeKey:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/sharpspot/dinnerin/Helper;->IsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/LinkClass;->_linkedRecipeKey:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/LinkClass;->OnPropertyChanged()V

    .line 65
    :cond_0
    return-void
.end method

.method public setRecipeKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "recipeKey"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/LinkClass;->_recipeKey:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/sharpspot/dinnerin/Helper;->IsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/LinkClass;->_recipeKey:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/LinkClass;->OnPropertyChanged()V

    .line 51
    :cond_0
    return-void
.end method

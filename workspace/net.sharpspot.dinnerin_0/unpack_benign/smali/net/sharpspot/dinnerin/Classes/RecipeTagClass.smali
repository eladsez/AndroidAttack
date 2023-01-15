.class public Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;
.super Lnet/sharpspot/dinnerin/Classes/DataClass;
.source "RecipeTagClass.java"


# static fields
.field public static final RECIPEKEY_COLUMN:Ljava/lang/String; = "RecipeKey"

.field public static final TABLE_NAME:Ljava/lang/String; = "tRecipeTag"

.field public static final TAGKEY_COLUMN:Ljava/lang/String; = "TagKey"


# instance fields
.field private _recipeKey:Ljava/lang/String;

.field private _tag:Lnet/sharpspot/dinnerin/Classes/TagClass;

.field private _tagKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->_tag:Lnet/sharpspot/dinnerin/Classes/TagClass;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lnet/sharpspot/dinnerin/Classes/DataClass;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->_tag:Lnet/sharpspot/dinnerin/Classes/TagClass;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lnet/sharpspot/dinnerin/Classes/DataClass;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->_tag:Lnet/sharpspot/dinnerin/Classes/TagClass;

    .line 33
    return-void
.end method

.method public static CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "CREATE TABLE tRecipeTag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, "Key text primary key, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, "RecipeKey text not null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "TagKey text not null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, "Version integer null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static DropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 117
    const-string v0, "DROP TABLE IF EXISTS tRecipeTag"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static GetDistinctRecipeTags(Landroid/content/Context;)Ljava/util/List;
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
    .line 127
    const-string v1, "SELECT * FROM %s WHERE %s IN (SELECT DISTINCT %s FROM %s) ORDER BY %s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "tTag"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Key"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "TagKey"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "tRecipeTag"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 128
    const-string v4, "Name"

    aput-object v4, v2, v3

    .line 127
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "sql":Ljava/lang/String;
    const-class v1, Lnet/sharpspot/dinnerin/Classes/TagClass;

    invoke-static {v1, p0, v0}, Lnet/sharpspot/dinnerin/Database;->GetObjects(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static GetRecipeTags(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
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
            "Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    const-class v0, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;

    const-string v1, "SELECT * FROM %s WHERE %s=\'%s\'"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "tRecipeTag"

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
    .line 82
    const-string v0, "tRecipeTag"

    return-object v0
.end method

.method public GetTag()Lnet/sharpspot/dinnerin/Classes/TagClass;
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->getTagKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->_tag:Lnet/sharpspot/dinnerin/Classes/TagClass;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->_tag:Lnet/sharpspot/dinnerin/Classes/TagClass;

    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/TagClass;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->getTagKey()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 71
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->_tag:Lnet/sharpspot/dinnerin/Classes/TagClass;

    .line 73
    :cond_1
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->_tag:Lnet/sharpspot/dinnerin/Classes/TagClass;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->getTagKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 74
    new-instance v0, Lnet/sharpspot/dinnerin/Classes/TagClass;

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->getTagKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/sharpspot/dinnerin/Classes/TagClass;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->_tag:Lnet/sharpspot/dinnerin/Classes/TagClass;

    .line 76
    :cond_2
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->_tag:Lnet/sharpspot/dinnerin/Classes/TagClass;

    return-object v0
.end method

.method protected OnLoadData(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 88
    const-string v0, "RecipeKey"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->setRecipeKey(Ljava/lang/String;)V

    .line 89
    const-string v0, "TagKey"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->setTagKey(Ljava/lang/String;)V

    .line 91
    invoke-super {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;->OnLoadData(Landroid/database/Cursor;)V

    .line 92
    return-void
.end method

.method protected OnPrepareCommitValues(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 96
    const-string v0, "RecipeKey"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->getRecipeKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "TagKey"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->getTagKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public getRecipeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->_recipeKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTagKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->_tagKey:Ljava/lang/String;

    return-object v0
.end method

.method public setRecipeKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "recipeKey"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->_recipeKey:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/sharpspot/dinnerin/Helper;->IsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->_recipeKey:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->OnPropertyChanged()V

    .line 52
    :cond_0
    return-void
.end method

.method public setTagKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "tagKey"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->_tagKey:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/sharpspot/dinnerin/Helper;->IsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->_tagKey:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->OnPropertyChanged()V

    .line 66
    :cond_0
    return-void
.end method

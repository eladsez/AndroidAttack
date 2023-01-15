.class public Lnet/sharpspot/dinnerin/Classes/MenuClass;
.super Lnet/sharpspot/dinnerin/Classes/DataClass;
.source "MenuClass.java"


# static fields
.field private static final DEFAULT_NAME:Ljava/lang/String; = "New Menu"

.field public static final NAME_COLUMN:Ljava/lang/String; = "Name"

.field public static final TABLE_NAME:Ljava/lang/String; = "tMenu"


# instance fields
.field private _menuRecipes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;",
            ">;"
        }
    .end annotation
.end field

.field private _name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lnet/sharpspot/dinnerin/Classes/DataClass;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lnet/sharpspot/dinnerin/Classes/DataClass;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "CREATE TABLE tMenu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, "Key text primary key, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, "Name text not null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, "Version integer null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public static DropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 142
    const-string v0, "DROP TABLE IF EXISTS tMenu"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public static GetMenus(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/MenuClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    const-class v0, Lnet/sharpspot/dinnerin/Classes/MenuClass;

    const-string v1, "SELECT * FROM %s ORDER BY %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "tMenu"

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
.method public Commit()V
    .locals 3

    .prologue
    .line 111
    invoke-super {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->Commit()V

    .line 113
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/MenuClass;->getMenuRecipes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    return-void

    .line 113
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;

    .line 115
    .local v0, "i":Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/MenuClass;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;->setMenuKey(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;->Commit()V

    goto :goto_0
.end method

.method public Delete()V
    .locals 3

    .prologue
    .line 98
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/MenuClass;->getMenuRecipes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    invoke-super {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->Delete()V

    .line 102
    return-void

    .line 98
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;

    .line 99
    .local v0, "i":Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;->Delete()V

    goto :goto_0
.end method

.method protected GetTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "tMenu"

    return-object v0
.end method

.method protected OnLoadData(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;->OnLoadData(Landroid/database/Cursor;)V

    .line 76
    const-string v0, "Name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Classes/MenuClass;->_name:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/MenuClass;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/MenuClass;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;->GetMenuRecipesByMenuKey(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/MenuClass;->setMenuRecipes(Ljava/util/List;)V

    .line 79
    return-void
.end method

.method protected OnPrepareCommitValues(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 106
    const-string v0, "Name"

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Classes/MenuClass;->_name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method protected OnSetDefaults(Z)V
    .locals 1
    .param p1, "isSaving"    # Z

    .prologue
    .line 84
    invoke-super {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;->OnSetDefaults(Z)V

    .line 86
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/MenuClass;->getMenuRecipes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/MenuClass;->setMenuRecipes(Ljava/util/List;)V

    .line 89
    :cond_0
    if-eqz p1, :cond_2

    .line 91
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/MenuClass;->_name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/MenuClass;->_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 92
    :cond_1
    const-string v0, "New Menu"

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Classes/MenuClass;->_name:Ljava/lang/String;

    .line 94
    :cond_2
    return-void
.end method

.method public getMenuRecipes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/MenuClass;->_menuRecipes:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/MenuClass;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public setMenuRecipes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "menuRecipes":Ljava/util/List;, "Ljava/util/List<Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;>;"
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/MenuClass;->_menuRecipes:Ljava/util/List;

    .line 63
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/MenuClass;->_name:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/sharpspot/dinnerin/Helper;->IsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/MenuClass;->_name:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/MenuClass;->OnPropertyChanged()V

    .line 53
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/MenuClass;->_name:Ljava/lang/String;

    return-object v0
.end method

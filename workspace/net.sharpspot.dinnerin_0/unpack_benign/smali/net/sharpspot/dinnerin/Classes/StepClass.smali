.class public Lnet/sharpspot/dinnerin/Classes/StepClass;
.super Lnet/sharpspot/dinnerin/Classes/DataClass;
.source "StepClass.java"


# static fields
.field private static final DEFAULT_DESCRIPTION:Ljava/lang/String; = "New Step"

.field public static final DESCRIPTION_COLUMN:Ljava/lang/String; = "Description"

.field public static final RECIPEKEY_COLUMN:Ljava/lang/String; = "RecipeKey"

.field public static final TABLE_NAME:Ljava/lang/String; = "tStep"


# instance fields
.field private _description:Ljava/lang/String;

.field private _recipeKey:Ljava/lang/String;


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
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "CREATE TABLE tStep"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, "Key text primary key, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, "RecipeKey text not null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, "Description text not null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, "Version integer null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public static DropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 125
    const-string v0, "DROP TABLE IF EXISTS tStep"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public static GetRecipeSteps(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
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
            "Lnet/sharpspot/dinnerin/Classes/StepClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    const-class v0, Lnet/sharpspot/dinnerin/Classes/StepClass;

    const-string v1, "SELECT * FROM %s WHERE %s=\'%s\'"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "tStep"

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
    .line 72
    const-string v0, "tStep"

    return-object v0
.end method

.method protected OnLoadData(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 78
    const-string v0, "RecipeKey"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/StepClass;->setRecipeKey(Ljava/lang/String;)V

    .line 79
    const-string v0, "Description"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/StepClass;->setDescription(Ljava/lang/String;)V

    .line 81
    invoke-super {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;->OnLoadData(Landroid/database/Cursor;)V

    .line 82
    return-void
.end method

.method protected OnPrepareCommitValues(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 98
    const-string v0, "RecipeKey"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/StepClass;->getRecipeKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "Description"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/StepClass;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method protected OnSetDefaults(Z)V
    .locals 1
    .param p1, "isSaving"    # Z

    .prologue
    .line 87
    invoke-super {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;->OnSetDefaults(Z)V

    .line 89
    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/StepClass;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/StepClass;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 92
    :cond_0
    const-string v0, "New Step"

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/StepClass;->setDescription(Ljava/lang/String;)V

    .line 94
    :cond_1
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/StepClass;->_description:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/StepClass;->_recipeKey:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/StepClass;->_description:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/sharpspot/dinnerin/Helper;->IsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/StepClass;->_description:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/StepClass;->OnPropertyChanged()V

    .line 67
    :cond_0
    return-void
.end method

.method public setRecipeKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "recipeKey"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/StepClass;->_recipeKey:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/sharpspot/dinnerin/Helper;->IsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/StepClass;->_recipeKey:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/StepClass;->OnPropertyChanged()V

    .line 53
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/StepClass;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

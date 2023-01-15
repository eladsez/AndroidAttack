.class public Lnet/sharpspot/dinnerin/Classes/FractionClass;
.super Lnet/sharpspot/dinnerin/Classes/DataClass;
.source "FractionClass.java"


# static fields
.field private static final DEFAULT_NAME:Ljava/lang/String; = "New Fraction"

.field public static final NAME_COLUMN:Ljava/lang/String; = "Name"

.field public static final TABLE_NAME:Ljava/lang/String; = "tFraction"

.field public static final VALUE_COLUMN:Ljava/lang/String; = "Value"


# instance fields
.field private _name:Ljava/lang/String;

.field private _value:Ljava/lang/Float;


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

.method public static CreateFraction(Landroid/content/Context;Ljava/lang/String;)Lnet/sharpspot/dinnerin/Classes/FractionClass;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 176
    new-instance v0, Lnet/sharpspot/dinnerin/Classes/FractionClass;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Classes/FractionClass;-><init>(Landroid/content/Context;)V

    .line 177
    .local v0, "fraction":Lnet/sharpspot/dinnerin/Classes/FractionClass;
    invoke-virtual {v0, p1}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->setName(Ljava/lang/String;)V

    .line 179
    return-object v0
.end method

.method public static CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "CREATE TABLE tFraction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, "Key text primary key, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, "Name text not null,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, "Value float null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, "Version integer null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public static DropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 151
    const-string v0, "DROP TABLE IF EXISTS tFraction"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public static GetFractionByName(Landroid/content/Context;Ljava/lang/String;)Lnet/sharpspot/dinnerin/Classes/FractionClass;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 161
    const-class v1, Lnet/sharpspot/dinnerin/Classes/FractionClass;

    const-string v2, "SELECT * FROM tFraction WHERE Name = \'%s\'"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lnet/sharpspot/dinnerin/Database;->GetObjects(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 163
    .local v0, "collection":Ljava/util/List;, "Ljava/util/List<Lnet/sharpspot/dinnerin/Classes/FractionClass;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 164
    const/4 v1, 0x0

    .line 166
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sharpspot/dinnerin/Classes/FractionClass;

    goto :goto_0
.end method

.method public static GetFractions(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/FractionClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    const-class v0, Lnet/sharpspot/dinnerin/Classes/FractionClass;

    const-string v1, "SELECT * FROM %s ORDER BY %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "tFraction"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Value"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lnet/sharpspot/dinnerin/Database;->GetObjects(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static GetFractionsOrderedByValue(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/FractionClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    const-class v0, Lnet/sharpspot/dinnerin/Classes/FractionClass;

    const-string v1, "SELECT * FROM tFraction WHERE Value IS NOT NULL ORDER BY Value"

    invoke-static {v0, p0, v1}, Lnet/sharpspot/dinnerin/Database;->GetObjects(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static GetValueFromName(Ljava/lang/String;)F
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 124
    .local v2, "value":F
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    div-float v2, v3, v4

    .line 131
    :goto_0
    return v2

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected GetTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "tFraction"

    return-object v0
.end method

.method protected OnLoadData(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;->OnLoadData(Landroid/database/Cursor;)V

    .line 80
    const-string v0, "Name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->setName(Ljava/lang/String;)V

    .line 81
    const-string v0, "Value"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->setValue(Ljava/lang/Float;)V

    .line 82
    return-void
.end method

.method protected OnPrepareCommitValues(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 101
    const-string v0, "Name"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "Value"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->getValue()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 103
    return-void
.end method

.method protected OnSetDefaults(Z)V
    .locals 2
    .param p1, "isSaving"    # Z

    .prologue
    .line 87
    invoke-super {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;->OnSetDefaults(Z)V

    .line 89
    if-eqz p1, :cond_3

    .line 91
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 92
    :cond_0
    const-string v0, "New Fraction"

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->setName(Ljava/lang/String;)V

    .line 94
    :cond_1
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->getValue()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->getValue()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 95
    :cond_2
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->GetValueFromName(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->setValue(Ljava/lang/Float;)V

    .line 97
    :cond_3
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 114
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->getKey()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lnet/sharpspot/dinnerin/Classes/FractionClass;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/FractionClass;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/FractionClass;->_value:Ljava/lang/Float;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/FractionClass;->_name:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/sharpspot/dinnerin/Helper;->IsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/FractionClass;->_name:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->OnPropertyChanged()V

    .line 53
    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/Float;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Float;

    .prologue
    .line 62
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/FractionClass;->_value:Ljava/lang/Float;

    if-eq v0, p1, :cond_0

    .line 64
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/FractionClass;->_value:Ljava/lang/Float;

    .line 65
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->OnPropertyChanged()V

    .line 67
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

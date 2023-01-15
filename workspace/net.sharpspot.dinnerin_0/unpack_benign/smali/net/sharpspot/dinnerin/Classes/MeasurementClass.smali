.class public Lnet/sharpspot/dinnerin/Classes/MeasurementClass;
.super Lnet/sharpspot/dinnerin/Classes/DataClass;
.source "MeasurementClass.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ALIASES_COLUMN:Ljava/lang/String; = "Aliases"

.field private static final DEFAULT_NAME:Ljava/lang/String; = "New Measurement"

.field public static final GRAMS_COLUMN:Ljava/lang/String; = "Grams"

.field public static final NAME_COLUMN:Ljava/lang/String; = "Name"

.field public static final SHORTNAME_COLUMN:Ljava/lang/String; = "ShortName"

.field public static final TABLE_NAME:Ljava/lang/String; = "tMeasurement"


# instance fields
.field private _aliases:Ljava/lang/String;

.field private _grams:Ljava/lang/Float;

.field private _name:Ljava/lang/String;

.field private _shortName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lnet/sharpspot/dinnerin/Classes/DataClass;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lnet/sharpspot/dinnerin/Classes/DataClass;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "CREATE TABLE tMeasurement"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, "Key text primary key, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v1, "Name text not null collate nocase, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string v1, "Aliases text null collate nocase, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, "Grams float null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v1, "ShortName text null collate nocase, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v1, "Version integer null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public static DropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 176
    const-string v0, "DROP TABLE IF EXISTS tMeasurement"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public static GetMeasurementByText(Landroid/content/Context;Ljava/lang/String;)Lnet/sharpspot/dinnerin/Classes/MeasurementClass;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 186
    const-class v5, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    .line 187
    const-string v7, "SELECT * FROM tMeasurement WHERE Aliases LIKE \'%s\' OR Name LIKE \'%s\'"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "%"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "%"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 186
    invoke-static {v5, p0, v7}, Lnet/sharpspot/dinnerin/Database;->GetObjects(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 189
    .local v1, "collection":Ljava/util/List;, "Ljava/util/List<Lnet/sharpspot/dinnerin/Classes/MeasurementClass;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    move-object v3, v4

    .line 211
    :cond_0
    :goto_0
    return-object v3

    .line 193
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    move-object v3, v4

    .line 211
    goto :goto_0

    .line 193
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    .line 195
    .local v3, "m":Lnet/sharpspot/dinnerin/Classes/MeasurementClass;
    invoke-virtual {v3}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 199
    invoke-virtual {v3}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getAliases()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 201
    invoke-virtual {v3}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getAliases()Ljava/lang/String;

    move-result-object v5

    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "aliases":[Ljava/lang/String;
    array-length v8, v0

    move v5, v6

    :goto_1
    if-ge v5, v8, :cond_2

    aget-object v2, v0, v5

    .line 205
    .local v2, "item":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 203
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static GetMeasurements(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/MeasurementClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    const-class v0, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    const-string v1, "SELECT * FROM tMeasurement ORDER BY Name"

    invoke-static {v0, p0, v1}, Lnet/sharpspot/dinnerin/Database;->GetObjects(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected GetTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "tMeasurement"

    return-object v0
.end method

.method protected OnLoadData(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;->OnLoadData(Landroid/database/Cursor;)V

    .line 113
    const-string v0, "Name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->setName(Ljava/lang/String;)V

    .line 114
    const-string v0, "Aliases"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->setAliases(Ljava/lang/String;)V

    .line 116
    const-string v0, "Grams"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const-string v0, "Grams"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->setGrams(Ljava/lang/Float;)V

    .line 119
    :cond_0
    const-string v0, "ShortName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->setShortName(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method protected OnPrepareCommitValues(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 136
    const-string v0, "Name"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v0, "Aliases"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getAliases()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v0, "Grams"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getGrams()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 139
    const-string v0, "ShortName"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method protected OnSetDefaults(Z)V
    .locals 1
    .param p1, "isSaving"    # Z

    .prologue
    .line 125
    invoke-super {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;->OnSetDefaults(Z)V

    .line 127
    if-eqz p1, :cond_1

    .line 129
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 130
    :cond_0
    const-string v0, "New Measurement"

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->setName(Ljava/lang/String;)V

    .line 132
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 154
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getKey()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAliases()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->_aliases:Ljava/lang/String;

    return-object v0
.end method

.method public getGrams()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->_grams:Ljava/lang/Float;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->_shortName:Ljava/lang/String;

    return-object v0
.end method

.method public setAliases(Ljava/lang/String;)V
    .locals 1
    .param p1, "aliases"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->_aliases:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/sharpspot/dinnerin/Helper;->IsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->_aliases:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->OnPropertyChanged()V

    .line 72
    :cond_0
    return-void
.end method

.method public setGrams(Ljava/lang/Float;)V
    .locals 1
    .param p1, "grams"    # Ljava/lang/Float;

    .prologue
    .line 81
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->_grams:Ljava/lang/Float;

    if-eq v0, p1, :cond_0

    .line 83
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->_grams:Ljava/lang/Float;

    .line 84
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->OnPropertyChanged()V

    .line 86
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->_name:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/sharpspot/dinnerin/Helper;->IsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->_name:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->OnPropertyChanged()V

    .line 58
    :cond_0
    return-void
.end method

.method public setShortName(Ljava/lang/String;)V
    .locals 1
    .param p1, "shortName"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->_shortName:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/sharpspot/dinnerin/Helper;->IsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->_shortName:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->OnPropertyChanged()V

    .line 100
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getShortName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getShortName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getShortName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

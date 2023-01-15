.class public Lnet/sharpspot/dinnerin/Classes/IngredientClass;
.super Lnet/sharpspot/dinnerin/Classes/DataClass;
.source "IngredientClass.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DEFAULT_NAME:Ljava/lang/String; = "New Ingredient"

.field public static final FRACTION_KEY_COLUMN:Ljava/lang/String; = "FractionKey"

.field public static final MEASUREMENT_KEY_COLUMN:Ljava/lang/String; = "MeasurementKey"

.field public static final NAME_COLUMN:Ljava/lang/String; = "Name"

.field public static final RECIPEKEY_COLUMN:Ljava/lang/String; = "RecipeKey"

.field public static final TABLE_NAME:Ljava/lang/String; = "tIngredient"

.field public static final WHOLE_AMOUNT_COLUMN:Ljava/lang/String; = "WholeAmount"


# instance fields
.field private _fraction:Lnet/sharpspot/dinnerin/Classes/FractionClass;

.field private _fractionKey:Ljava/lang/String;

.field private _measurement:Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

.field private _measurementKey:Ljava/lang/String;

.field private _name:Ljava/lang/String;

.field private _recipeKey:Ljava/lang/String;

.field private _wholeAmount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lnet/sharpspot/dinnerin/Classes/DataClass;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lnet/sharpspot/dinnerin/Classes/DataClass;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "CREATE TABLE tIngredient"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string v1, "Key text primary key, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v1, "RecipeKey text not null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-string v1, "FractionKey text null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string v1, "MeasurementKey text null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string v1, "Name text null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string v1, "WholeAmount integer null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v1, "Version integer null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public static DropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 321
    const-string v0, "DROP TABLE IF EXISTS tIngredient"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method private GetFractionFromFloat(F)Lnet/sharpspot/dinnerin/Classes/FractionClass;
    .locals 10
    .param p1, "number"    # F

    .prologue
    .line 279
    const/4 v1, 0x0

    .line 280
    .local v1, "fractions":Ljava/util/List;, "Ljava/util/List<Lnet/sharpspot/dinnerin/Classes/FractionClass;>;"
    const/4 v2, 0x0

    .line 282
    .local v2, "newFraction":Lnet/sharpspot/dinnerin/Classes/FractionClass;
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    .line 284
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->GetFractionsOrderedByValue(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 286
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    float-to-double v4, p1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sharpspot/dinnerin/Classes/FractionClass;

    invoke-virtual {v3}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->getValue()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v6, v3

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_1

    .line 288
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 298
    :cond_1
    :goto_0
    return-object v2

    .line 288
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sharpspot/dinnerin/Classes/FractionClass;

    .line 290
    .local v0, "fraction":Lnet/sharpspot/dinnerin/Classes/FractionClass;
    move-object v2, v0

    .line 292
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->getValue()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    goto :goto_0
.end method

.method public static GetIngredientsByFractionKey(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fractionKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/IngredientClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    const-class v0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    const-string v1, "SELECT * FROM %s WHERE %s=\'%s\'"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "tIngredient"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "FractionKey"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lnet/sharpspot/dinnerin/Database;->GetObjects(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static GetIngredientsByMeasurementKey(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "measurementKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/IngredientClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    const-class v0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    const-string v1, "SELECT * FROM %s WHERE %s=\'%s\'"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "tIngredient"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "MeasurementKey"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lnet/sharpspot/dinnerin/Database;->GetObjects(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static GetIngredientsByRecipeKey(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
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
            "Lnet/sharpspot/dinnerin/Classes/IngredientClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .local v0, "sql":Ljava/lang/StringBuilder;
    const-string v1, "SELECT i.*, Grams, (COALESCE((Grams * WholeAmount),0) + COALESCE((Grams * Value),0)) AS Amount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string v1, "FROM tIngredient i "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v1, "LEFT JOIN tFraction \tf on i.FractionKey = f.Key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const-string v1, "LEFT JOIN tMeasurement \tm on i.MeasurementKey = m.Key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string v1, "WHERE RecipeKey = \'%s\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    const-string v1, "ORDER BY Amount DESC, WholeAmount DESC, Value DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-class v1, Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lnet/sharpspot/dinnerin/Database;->GetObjects(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public CopyTo(Lnet/sharpspot/dinnerin/Classes/IngredientClass;)V
    .locals 1
    .param p1, "ingredient"    # Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    .prologue
    .line 186
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setName(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getWholeAmount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setWholeAmount(Ljava/lang/Integer;)V

    .line 188
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getFractionKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setFractionKey(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getMeasurementKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setMeasurementKey(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public GetAmount()F
    .locals 2

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 212
    .local v0, "amount":F
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getWholeAmount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getWholeAmount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v0, v1

    .line 215
    :cond_0
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetFraction()Lnet/sharpspot/dinnerin/Classes/FractionClass;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetFraction()Lnet/sharpspot/dinnerin/Classes/FractionClass;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->getValue()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 216
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetFraction()Lnet/sharpspot/dinnerin/Classes/FractionClass;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->getValue()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    .line 218
    :cond_1
    return v0
.end method

.method public GetConversionValue()F
    .locals 2

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, "value":F
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getWholeAmount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getWholeAmount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v0, v1

    .line 199
    :cond_0
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetFraction()Lnet/sharpspot/dinnerin/Classes/FractionClass;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetFraction()Lnet/sharpspot/dinnerin/Classes/FractionClass;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->getValue()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 200
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetFraction()Lnet/sharpspot/dinnerin/Classes/FractionClass;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->getValue()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    .line 202
    :cond_1
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetMeasurement()Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetMeasurement()Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getGrams()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 203
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetMeasurement()Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getGrams()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    .line 205
    :cond_2
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    .end local v0    # "value":F
    :cond_3
    return v0
.end method

.method public GetFraction()Lnet/sharpspot/dinnerin/Classes/FractionClass;
    .locals 3

    .prologue
    .line 133
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getFractionKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->_fraction:Lnet/sharpspot/dinnerin/Classes/FractionClass;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->_fraction:Lnet/sharpspot/dinnerin/Classes/FractionClass;

    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getFractionKey()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 134
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->_fraction:Lnet/sharpspot/dinnerin/Classes/FractionClass;

    .line 136
    :cond_1
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->_fraction:Lnet/sharpspot/dinnerin/Classes/FractionClass;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getFractionKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 137
    new-instance v0, Lnet/sharpspot/dinnerin/Classes/FractionClass;

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getFractionKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/sharpspot/dinnerin/Classes/FractionClass;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->_fraction:Lnet/sharpspot/dinnerin/Classes/FractionClass;

    .line 139
    :cond_2
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->_fraction:Lnet/sharpspot/dinnerin/Classes/FractionClass;

    return-object v0
.end method

.method public GetMeasurement()Lnet/sharpspot/dinnerin/Classes/MeasurementClass;
    .locals 3

    .prologue
    .line 122
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getMeasurementKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->_measurement:Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->_measurement:Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getMeasurementKey()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 123
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->_measurement:Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    .line 125
    :cond_1
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->_measurement:Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getMeasurementKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 126
    new-instance v0, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getMeasurementKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->_measurement:Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    .line 128
    :cond_2
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->_measurement:Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    return-object v0
.end method

.method protected GetTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const-string v0, "tIngredient"

    return-object v0
.end method

.method protected OnLoadData(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 151
    const-string v0, "RecipeKey"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setRecipeKey(Ljava/lang/String;)V

    .line 152
    const-string v0, "FractionKey"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    const-string v0, "FractionKey"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setFractionKey(Ljava/lang/String;)V

    .line 154
    :cond_0
    const-string v0, "MeasurementKey"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    const-string v0, "MeasurementKey"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setMeasurementKey(Ljava/lang/String;)V

    .line 156
    :cond_1
    const-string v0, "Name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setName(Ljava/lang/String;)V

    .line 157
    const-string v0, "WholeAmount"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    const-string v0, "WholeAmount"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setWholeAmount(Ljava/lang/Integer;)V

    .line 160
    :cond_2
    invoke-super {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;->OnLoadData(Landroid/database/Cursor;)V

    .line 161
    return-void
.end method

.method protected OnPrepareCommitValues(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 177
    const-string v0, "RecipeKey"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getRecipeKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "FractionKey"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getFractionKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "MeasurementKey"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getMeasurementKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v0, "Name"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "WholeAmount"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getWholeAmount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    return-void
.end method

.method protected OnSetDefaults(Z)V
    .locals 1
    .param p1, "isSaving"    # Z

    .prologue
    .line 166
    invoke-super {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;->OnSetDefaults(Z)V

    .line 168
    if-eqz p1, :cond_1

    .line 170
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 171
    :cond_0
    const-string v0, "New Ingredient"

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setName(Ljava/lang/String;)V

    .line 173
    :cond_1
    return-void
.end method

.method public Scale(F)V
    .locals 6
    .param p1, "conversionFactor"    # F

    .prologue
    const/4 v5, 0x0

    .line 223
    const/4 v2, 0x0

    .line 224
    .local v2, "newFraction":Lnet/sharpspot/dinnerin/Classes/FractionClass;
    const/4 v1, 0x0

    .line 225
    .local v1, "newAmount":F
    const/4 v0, 0x0

    .line 226
    .local v0, "fractionAmount":F
    const/4 v3, 0x0

    .line 228
    .local v3, "wholeNumber":I
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetAmount()F

    move-result v4

    mul-float v1, v4, p1

    .line 229
    float-to-int v3, v1

    .line 230
    int-to-float v4, v3

    sub-float v0, v1, v4

    .line 231
    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetFractionFromFloat(F)Lnet/sharpspot/dinnerin/Classes/FractionClass;

    move-result-object v2

    .line 233
    if-eqz v2, :cond_0

    .line 235
    invoke-virtual {v2}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->getValue()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_0

    .line 237
    add-int/lit8 v3, v3, 0x1

    .line 238
    const/4 v2, 0x0

    .line 242
    :cond_0
    if-lez v3, :cond_1

    .line 243
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setWholeAmount(Ljava/lang/Integer;)V

    .line 247
    :goto_0
    if-nez v2, :cond_2

    .line 248
    invoke-virtual {p0, v5}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setFractionKey(Ljava/lang/String;)V

    .line 251
    :goto_1
    return-void

    .line 245
    :cond_1
    invoke-virtual {p0, v5}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setWholeAmount(Ljava/lang/Integer;)V

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {v2}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setFractionKey(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getFractionKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->_fractionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMeasurementKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->_measurementKey:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->_recipeKey:Ljava/lang/String;

    return-object v0
.end method

.method public getWholeAmount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->_wholeAmount:Ljava/lang/Integer;

    return-object v0
.end method

.method public setFractionKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "fractionKey"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->_fractionKey:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/sharpspot/dinnerin/Helper;->IsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->_fractionKey:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->OnPropertyChanged()V

    .line 76
    :cond_0
    return-void
.end method

.method public setMeasurementKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "measurementKey"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->_measurementKey:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/sharpspot/dinnerin/Helper;->IsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->_measurementKey:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->OnPropertyChanged()V

    .line 90
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->_name:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/sharpspot/dinnerin/Helper;->IsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p0, p1}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->ToTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->_name:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->OnPropertyChanged()V

    .line 104
    :cond_0
    return-void
.end method

.method public setRecipeKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "recipeKey"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->_recipeKey:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/sharpspot/dinnerin/Helper;->IsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->_recipeKey:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->OnPropertyChanged()V

    .line 62
    :cond_0
    return-void
.end method

.method public setWholeAmount(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "wholeAmount"    # Ljava/lang/Integer;

    .prologue
    .line 113
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->_wholeAmount:Ljava/lang/Integer;

    if-eq v0, p1, :cond_0

    .line 115
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->_wholeAmount:Ljava/lang/Integer;

    .line 116
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->OnPropertyChanged()V

    .line 118
    :cond_0
    return-void
.end method

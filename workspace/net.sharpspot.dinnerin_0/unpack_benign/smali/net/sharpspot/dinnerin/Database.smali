.class public Lnet/sharpspot/dinnerin/Database;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Database.java"


# static fields
.field private static final DATABASE_VERSION:I = 0x2b


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const v0, 0x7f0b0001

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x2b

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 40
    return-void
.end method

.method private AddGramsColumnToMeasurements(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 255
    const-string v0, "ALTER TABLE tMeasurement ADD Grams float NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 257
    const-string v0, "UPDATE tMeasurement SET Grams=4.8 WHERE Name=\'teaspoon(s)\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 258
    const-string v0, "UPDATE tMeasurement SET Grams=14.3 WHERE Name=\'tablespoon(s)\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 259
    const-string v0, "UPDATE tMeasurement SET Grams=29.57 WHERE Name=\'fluid(s)\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 260
    const-string v0, "UPDATE tMeasurement SET Grams=28.3 WHERE Name=\'ounce(s)\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 261
    const-string v0, "UPDATE tMeasurement SET Grams=226.8 WHERE Name=\'cup(s)\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 262
    const-string v0, "UPDATE tMeasurement SET Grams=452.8 WHERE Name=\'pint(s)\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 263
    const-string v0, "UPDATE tMeasurement SET Grams=905.6 WHERE Name=\'quart(s)\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 264
    const-string v0, "UPDATE tMeasurement SET Grams=3622.4 WHERE Name=\'gallon(s)\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 265
    const-string v0, "UPDATE tMeasurement SET Grams=452.8 WHERE Name=\'pound(s)\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 266
    const-string v0, "UPDATE tMeasurement SET Grams=113 WHERE Name=\'small\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 267
    const-string v0, "UPDATE tMeasurement SET Grams=226 WHERE Name=\'medium\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 268
    const-string v0, "UPDATE tMeasurement SET Grams=340 WHERE Name=\'large\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 269
    const-string v0, "UPDATE tMeasurement SET Grams=1 WHERE Name=\'pinch(es)\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 270
    const-string v0, "UPDATE tMeasurement SET Grams=0.75 WHERE Name=\'dash(es)\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method private AddShortNameAndAliasesToMeasurements(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 287
    const-string v0, "ALTER TABLE tMeasurement ADD ShortName text null collate nocase"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 289
    const-string v0, "UPDATE tMeasurement SET ShortName=\'tsp.\', Aliases=\'tsp, teaspoon, teaspoons\', Name=\'teaspoon\' WHERE Name=\'teaspoon(s)\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 290
    const-string v0, "UPDATE tMeasurement SET ShortName=\'tblsp.\', Aliases=\'tbsp, tblsp, tablespoon, tablespoons, tb\', Name=\'tablespoon\' WHERE Name=\'tablespoon(s)\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 291
    const-string v0, "UPDATE tMeasurement SET ShortName=\'fl.\', Aliases=\'fl, fluid, fluids\', Name=\'fluid\' WHERE Name=\'fluid(s)\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 292
    const-string v0, "UPDATE tMeasurement SET ShortName=\'oz.\', Aliases= \'oz, ounce, ounces\', Name=\'ounce\' WHERE Name=\'ounce(s)\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 293
    const-string v0, "UPDATE tMeasurement SET ShortName=\'pkg.\', Aliases= \'pkg, package, packages\', Name=\'package\' WHERE Name=\'package(s)\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 294
    const-string v0, "UPDATE tMeasurement SET ShortName=\'cup\', Aliases=\'c, cup, cups\', Name=\'cup\' WHERE Name=\'cup(s)\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 295
    const-string v0, "UPDATE tMeasurement SET ShortName=\'pt.\', Aliases=\'pt, pint, pints\', Name=\'pint\' WHERE Name=\'pint(s)\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 296
    const-string v0, "UPDATE tMeasurement SET ShortName=\'qt.\', Aliases=\'qt, quart, quarts\', Name=\'quart\' WHERE Name=\'quart(s)\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 297
    const-string v0, "UPDATE tMeasurement SET ShortName=\'gal.\', Aliases=\'gal, gallon, gallons\', Name=\'gallon\' WHERE Name=\'gallon(s)\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 298
    const-string v0, "UPDATE tMeasurement SET ShortName=\'lb.\', Aliases= \'lb, lbs, pound, pounds\', Name=\'pound\' WHERE Name=\'pound(s)\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 299
    const-string v0, "UPDATE tMeasurement SET ShortName=\'sm.\', Aliases=\'sm, small\' WHERE Name=\'small\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 300
    const-string v0, "UPDATE tMeasurement SET ShortName=\'med.\', Aliases=\'med, medium\' WHERE Name=\'medium\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 301
    const-string v0, "UPDATE tMeasurement SET ShortName=\'lg.\', Aliases= \'lg, large\' WHERE Name=\'large\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 302
    const-string v0, "UPDATE tMeasurement SET ShortName=\'pinch\', Aliases=\'pinch, pinches\', Name=\'pinch\' WHERE Name=\'pinch(es)\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 303
    const-string v0, "UPDATE tMeasurement SET ShortName=\'dash\', Aliases=\'dash, dashes\', Name=\'dash\' WHERE Name=\'dash(es)\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 304
    const-string v0, "UPDATE tMeasurement SET ShortName=\'can\', Aliases=\'can, cans\', Name=\'can\' WHERE Name=\'can(s)\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method private AddUuidToTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 367
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/sharpspot/dinnerin/Database;->AddUuidToTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 368
    return-void
.end method

.method private AddUuidToTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 9
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "useSystemId"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 372
    const-string v2, "ALTER TABLE %s ADD NewKey text null"

    .line 373
    .local v2, "sql":Ljava/lang/String;
    new-array v3, v8, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 375
    const-string v3, "SELECT * FROM %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 376
    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 378
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 382
    :cond_0
    const/4 v1, 0x0

    .line 384
    .local v1, "newKey":Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 385
    const-string v3, "Name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 389
    :goto_0
    const-string v3, "UPDATE %s SET NewKey=\'%s\' WHERE _id=\'%s\'"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    aput-object v1, v4, v8

    const/4 v5, 0x2

    const-string v6, "_id"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 391
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 393
    .end local v1    # "newKey":Ljava/lang/String;
    :cond_1
    return-void

    .line 387
    .restart local v1    # "newKey":Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private AddValueColumnToFractions(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 275
    const-string v0, "ALTER TABLE tFraction ADD Value float NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 277
    const-string v0, "UPDATE tFraction SET Value=0.125 WHERE Name=\'1/8\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 278
    const-string v0, "UPDATE tFraction SET Value=0.25 WHERE Name=\'1/4\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 279
    const-string v0, "UPDATE tFraction SET Value=0.5 WHERE Name=\'1/2\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 280
    const-string v0, "UPDATE tFraction SET Value=0.75 WHERE Name=\'3/4\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 281
    const-string v0, "UPDATE tFraction SET Value=0.33 WHERE Name=\'1/3\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 282
    const-string v0, "UPDATE tFraction SET Value=0.66 WHERE Name=\'2/3\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method private ConvertFractionsToUuids(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v7, 0x0

    .line 688
    const/4 v2, 0x0

    .line 689
    .local v2, "sql":Ljava/lang/String;
    const/4 v1, 0x0

    .line 690
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v3, "tFraction"

    .line 692
    .local v3, "tableName":Ljava/lang/String;
    const-string v4, "SELECT * FROM tmp_%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 693
    invoke-virtual {p1, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 695
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 699
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    .end local v1    # "cv":Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 701
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v4, "Key"

    const-string v5, "NewKey"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v4, "Name"

    const-string v5, "Name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string v4, "Value"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 704
    const-string v4, "Value"

    const-string v5, "Value"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 706
    :cond_1
    const/4 v4, 0x4

    invoke-virtual {p1, v3, v7, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 708
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 711
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 712
    return-void
.end method

.method private ConvertIngredientsToUuids(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 650
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 651
    .local v2, "sql":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 652
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v3, "tRecipeIngredient"

    .line 653
    .local v3, "tableName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tmp_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 655
    .local v4, "tmpTableName":Ljava/lang/String;
    const-string v5, "SELECT %s.*, tmp_tRecipe.NewKey AS NewRecipeKey, tmp_tFraction.NewKey AS NewFractionKey, tmp_tMeasurement.NewKey AS NewMeasurementKey "

    new-array v6, v8, [Ljava/lang/Object;

    .line 656
    aput-object v4, v6, v7

    .line 655
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    const-string v5, "FROM %s "

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    const-string v5, "INNER JOIN tmp_tRecipe \t\tON tmp_tRecipe._id \t\t= %s.RecipeKey "

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    const-string v5, "LEFT JOIN tmp_tFraction \t\tON tmp_tFraction._id \t= %s.FractionKey "

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    const-string v5, "LEFT JOIN tmp_tMeasurement\tON tmp_tMeasurement._id = %s.MeasurementKey "

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 664
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 668
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    .end local v1    # "cv":Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 670
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v5, "Key"

    const-string v6, "NewKey"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v5, "RecipeKey"

    const-string v6, "NewRecipeKey"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string v5, "FractionKey"

    const-string v6, "NewFractionKey"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v5, "MeasurementKey"

    const-string v6, "NewMeasurementKey"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-string v5, "Name"

    const-string v6, "Name"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string v5, "WholeAmount"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 676
    const-string v5, "WholeAmount"

    const-string v6, "WholeAmount"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 678
    :cond_1
    const-string v5, "tIngredient"

    invoke-virtual {p1, v5, v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 680
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 683
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 684
    return-void
.end method

.method private ConvertLinksToUuids(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 619
    .local v2, "sql":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 620
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v3, "tLink"

    .line 621
    .local v3, "tableName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tmp_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 623
    .local v4, "tmpTableName":Ljava/lang/String;
    const-string v5, "SELECT %s.*, a.NewKey AS ANewRecipeKey, b.NewKey AS BNewRecipeKey "

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    const-string v5, "FROM %s "

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    const-string v5, "INNER JOIN tmp_tRecipe a \tON a._id \t= %s.RecipeKey "

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    const-string v5, "INNER JOIN tmp_tRecipe b\tON b._id \t= %s.LinkRecipeKey "

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 630
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 634
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    .end local v1    # "cv":Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 636
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v5, "Key"

    const-string v6, "NewKey"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v5, "RecipeKey"

    const-string v6, "ANewRecipeKey"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v5, "LinkRecipeKey"

    const-string v6, "BNewRecipeKey"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-virtual {p1, v3, v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 642
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 645
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 646
    return-void
.end method

.method private ConvertMeasurementsToUuids(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v7, 0x0

    .line 588
    const/4 v2, 0x0

    .line 589
    .local v2, "sql":Ljava/lang/String;
    const/4 v1, 0x0

    .line 590
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v3, "tMeasurement"

    .line 592
    .local v3, "tableName":Ljava/lang/String;
    const-string v4, "SELECT * FROM tmp_%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 593
    invoke-virtual {p1, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 595
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 599
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    .end local v1    # "cv":Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 601
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v4, "Key"

    const-string v5, "NewKey"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v4, "Name"

    const-string v5, "Name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v4, "Aliases"

    const-string v5, "Aliases"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v4, "Grams"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 605
    const-string v4, "Grams"

    const-string v5, "Grams"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 606
    :cond_1
    const-string v4, "ShortName"

    const-string v5, "ShortName"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const/4 v4, 0x4

    invoke-virtual {p1, v3, v7, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 610
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 613
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 614
    return-void
.end method

.method private ConvertMenuRecipesToUuids(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 531
    .local v2, "sql":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 532
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v3, "tMenuRecipe"

    .line 533
    .local v3, "tableName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tmp_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 535
    .local v4, "tmpTableName":Ljava/lang/String;
    const-string v5, "SELECT %s.*, tmp_tRecipe.NewKey AS NewRecipeKey, tmp_tMenu.NewKey AS NewMenuKey "

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    const-string v5, "FROM %s "

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    const-string v5, "INNER JOIN tmp_tRecipe \tON tmp_tRecipe._id \t= %s.RecipeKey "

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    const-string v5, "INNER JOIN tmp_tMenu \t\tON tmp_tMenu._id \t= %s.MenuKey "

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 542
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 546
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    .end local v1    # "cv":Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 548
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v5, "Key"

    const-string v6, "NewKey"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v5, "RecipeKey"

    const-string v6, "NewRecipeKey"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string v5, "MenuKey"

    const-string v6, "NewMenuKey"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-virtual {p1, v3, v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 554
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 557
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 558
    return-void
.end method

.method private ConvertMenusToUuids(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v7, 0x0

    .line 562
    const/4 v2, 0x0

    .line 563
    .local v2, "sql":Ljava/lang/String;
    const/4 v1, 0x0

    .line 564
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v3, "tMenu"

    .line 566
    .local v3, "tableName":Ljava/lang/String;
    const-string v4, "SELECT * FROM tmp_%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 567
    invoke-virtual {p1, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 569
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 573
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    .end local v1    # "cv":Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 575
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v4, "Key"

    const-string v5, "NewKey"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v4, "Name"

    const-string v5, "Name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-virtual {p1, v3, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 580
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 583
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 584
    return-void
.end method

.method private ConvertRecipeTagsToUuids(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .local v2, "sql":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 468
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v3, "tRecipeTag"

    .line 469
    .local v3, "tableName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tmp_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 471
    .local v4, "tmpTableName":Ljava/lang/String;
    const-string v5, "SELECT %s.*, tmp_tRecipe.NewKey AS NewRecipeKey, tmp_tTag.NewKey AS NewTagKey "

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    const-string v5, "FROM %s "

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    const-string v5, "INNER JOIN tmp_tRecipe \tON tmp_tRecipe._id \t= %s.RecipeKey "

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    const-string v5, "INNER JOIN tmp_tTag \t\tON tmp_tTag._id \t= %s.TagKey "

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 478
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 482
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    .end local v1    # "cv":Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 484
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v5, "Key"

    const-string v6, "NewKey"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v5, "RecipeKey"

    const-string v6, "NewRecipeKey"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v5, "TagKey"

    const-string v6, "NewTagKey"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-virtual {p1, v3, v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 490
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 493
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 494
    return-void
.end method

.method private ConvertRecipesToUuids(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v7, 0x0

    .line 498
    const/4 v2, 0x0

    .line 499
    .local v2, "sql":Ljava/lang/String;
    const/4 v1, 0x0

    .line 500
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v3, "tRecipe"

    .line 502
    .local v3, "tableName":Ljava/lang/String;
    const-string v4, "SELECT * FROM tmp_%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 503
    invoke-virtual {p1, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 505
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 509
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    .end local v1    # "cv":Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 511
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v4, "Key"

    const-string v5, "NewKey"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v4, "Name"

    const-string v5, "Name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v4, "Source"

    const-string v5, "Source"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v4, "Description"

    const-string v5, "Description"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v4, "PrepTime"

    const-string v5, "PrepTime"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v4, "CookTime"

    const-string v5, "CookTime"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v4, "Image"

    const-string v5, "Image"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 518
    const-string v4, "Thumbnail"

    const-string v5, "Thumbnail"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 520
    invoke-virtual {p1, v3, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 522
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 525
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 526
    return-void
.end method

.method private ConvertStepsToUuids(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v6, 0x0

    .line 439
    const/4 v2, 0x0

    .line 440
    .local v2, "sql":Ljava/lang/String;
    const/4 v1, 0x0

    .line 441
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v3, "tStep"

    .line 443
    .local v3, "tableName":Ljava/lang/String;
    const-string v2, "SELECT tmp_tStep.*, tmp_tRecipe.NewKey AS NewRecipeKey FROM tmp_tStep INNER JOIN tmp_tRecipe ON tmp_tRecipe._id = tmp_tStep.RecipeKey"

    .line 444
    invoke-virtual {p1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 446
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 450
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    .end local v1    # "cv":Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 452
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v4, "Key"

    const-string v5, "NewKey"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v4, "RecipeKey"

    const-string v5, "NewRecipeKey"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v4, "Description"

    const-string v5, "Description"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-virtual {p1, v3, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 458
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 461
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 462
    return-void
.end method

.method private ConvertTagsToUuids(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v7, 0x0

    .line 413
    const/4 v2, 0x0

    .line 414
    .local v2, "sql":Ljava/lang/String;
    const/4 v1, 0x0

    .line 415
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v3, "tTag"

    .line 417
    .local v3, "tableName":Ljava/lang/String;
    const-string v4, "SELECT * FROM tmp_%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 418
    invoke-virtual {p1, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 420
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 424
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    .end local v1    # "cv":Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 426
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v4, "Key"

    const-string v5, "NewKey"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v4, "Name"

    const-string v5, "Name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const/4 v4, 0x4

    invoke-virtual {p1, v3, v7, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 431
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 434
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 435
    return-void
.end method

.method public static CopyDatabaseToSDCard(Landroid/content/Context;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    .line 74
    .local v14, "sd":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    .line 76
    .local v10, "data":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "//data//"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "//databases//"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0001

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 79
    .local v9, "currentDBPath":Ljava/lang/String;
    const v2, 0x7f0b0001

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 81
    .local v7, "backupDBPath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v10, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    .local v8, "currentDB":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v14, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    .local v6, "backupDB":Ljava/io/File;
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 85
    .local v12, "fileInputStream":Ljava/io/FileInputStream;
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 87
    .local v13, "fileOutputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v12}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 88
    .local v1, "src":Ljava/nio/channels/FileChannel;
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 90
    .local v0, "dst":Ljava/nio/channels/FileChannel;
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 92
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 93
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 94
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 95
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 97
    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v0    # "dst":Ljava/nio/channels/FileChannel;
    .end local v1    # "src":Ljava/nio/channels/FileChannel;
    .end local v6    # "backupDB":Ljava/io/File;
    .end local v7    # "backupDBPath":Ljava/lang/String;
    .end local v8    # "currentDB":Ljava/io/File;
    .end local v9    # "currentDBPath":Ljava/lang/String;
    .end local v10    # "data":Ljava/io/File;
    .end local v12    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v13    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v14    # "sd":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v11

    .line 102
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private CovertToUuids(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v1, 0x1

    .line 309
    const-string v0, "tTag"

    invoke-direct {p0, v0, p1, v1}, Lnet/sharpspot/dinnerin/Database;->AddUuidToTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 310
    const-string v0, "tStep"

    invoke-direct {p0, v0, p1}, Lnet/sharpspot/dinnerin/Database;->AddUuidToTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 311
    const-string v0, "tRecipeTag"

    invoke-direct {p0, v0, p1}, Lnet/sharpspot/dinnerin/Database;->AddUuidToTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 312
    const-string v0, "tRecipe"

    invoke-direct {p0, v0, p1}, Lnet/sharpspot/dinnerin/Database;->AddUuidToTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 313
    const-string v0, "tMenuRecipe"

    invoke-direct {p0, v0, p1}, Lnet/sharpspot/dinnerin/Database;->AddUuidToTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 314
    const-string v0, "tMenu"

    invoke-direct {p0, v0, p1}, Lnet/sharpspot/dinnerin/Database;->AddUuidToTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 315
    const-string v0, "tMeasurement"

    invoke-direct {p0, v0, p1, v1}, Lnet/sharpspot/dinnerin/Database;->AddUuidToTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 316
    const-string v0, "tLink"

    invoke-direct {p0, v0, p1}, Lnet/sharpspot/dinnerin/Database;->AddUuidToTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 317
    const-string v0, "tRecipeIngredient"

    invoke-direct {p0, v0, p1}, Lnet/sharpspot/dinnerin/Database;->AddUuidToTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 318
    const-string v0, "tFraction"

    invoke-direct {p0, v0, p1, v1}, Lnet/sharpspot/dinnerin/Database;->AddUuidToTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 320
    const-string v0, "tTag"

    invoke-direct {p0, v0, p1}, Lnet/sharpspot/dinnerin/Database;->RenameTableToTemp(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 321
    const-string v0, "tStep"

    invoke-direct {p0, v0, p1}, Lnet/sharpspot/dinnerin/Database;->RenameTableToTemp(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 322
    const-string v0, "tRecipeTag"

    invoke-direct {p0, v0, p1}, Lnet/sharpspot/dinnerin/Database;->RenameTableToTemp(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 323
    const-string v0, "tRecipe"

    invoke-direct {p0, v0, p1}, Lnet/sharpspot/dinnerin/Database;->RenameTableToTemp(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 324
    const-string v0, "tMenuRecipe"

    invoke-direct {p0, v0, p1}, Lnet/sharpspot/dinnerin/Database;->RenameTableToTemp(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 325
    const-string v0, "tMenu"

    invoke-direct {p0, v0, p1}, Lnet/sharpspot/dinnerin/Database;->RenameTableToTemp(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 326
    const-string v0, "tMeasurement"

    invoke-direct {p0, v0, p1}, Lnet/sharpspot/dinnerin/Database;->RenameTableToTemp(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 327
    const-string v0, "tLink"

    invoke-direct {p0, v0, p1}, Lnet/sharpspot/dinnerin/Database;->RenameTableToTemp(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 328
    const-string v0, "tRecipeIngredient"

    invoke-direct {p0, v0, p1}, Lnet/sharpspot/dinnerin/Database;->RenameTableToTemp(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 329
    const-string v0, "tFraction"

    invoke-direct {p0, v0, p1}, Lnet/sharpspot/dinnerin/Database;->RenameTableToTemp(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 331
    invoke-static {p1}, Lnet/sharpspot/dinnerin/Classes/TagClass;->CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 332
    invoke-static {p1}, Lnet/sharpspot/dinnerin/Classes/StepClass;->CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 333
    invoke-static {p1}, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 334
    invoke-static {p1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 335
    invoke-static {p1}, Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;->CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 336
    invoke-static {p1}, Lnet/sharpspot/dinnerin/Classes/MenuClass;->CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 337
    invoke-static {p1}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 338
    invoke-static {p1}, Lnet/sharpspot/dinnerin/Classes/LinkClass;->CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 339
    invoke-static {p1}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 340
    invoke-static {p1}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 342
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Database;->ConvertTagsToUuids(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 343
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Database;->ConvertStepsToUuids(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 344
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Database;->ConvertRecipeTagsToUuids(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 345
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Database;->ConvertRecipesToUuids(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 346
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Database;->ConvertMenuRecipesToUuids(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 347
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Database;->ConvertMenusToUuids(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 348
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Database;->ConvertMeasurementsToUuids(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 349
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Database;->ConvertLinksToUuids(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 350
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Database;->ConvertIngredientsToUuids(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 351
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Database;->ConvertFractionsToUuids(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 353
    const-string v0, "tTag"

    invoke-direct {p0, v0, p1}, Lnet/sharpspot/dinnerin/Database;->DropTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 354
    const-string v0, "tStep"

    invoke-direct {p0, v0, p1}, Lnet/sharpspot/dinnerin/Database;->DropTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 355
    const-string v0, "tRecipeTag"

    invoke-direct {p0, v0, p1}, Lnet/sharpspot/dinnerin/Database;->DropTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 356
    const-string v0, "tRecipe"

    invoke-direct {p0, v0, p1}, Lnet/sharpspot/dinnerin/Database;->DropTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 357
    const-string v0, "tMenuRecipe"

    invoke-direct {p0, v0, p1}, Lnet/sharpspot/dinnerin/Database;->DropTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 358
    const-string v0, "tMenu"

    invoke-direct {p0, v0, p1}, Lnet/sharpspot/dinnerin/Database;->DropTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 359
    const-string v0, "tMeasurement"

    invoke-direct {p0, v0, p1}, Lnet/sharpspot/dinnerin/Database;->DropTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 360
    const-string v0, "tLink"

    invoke-direct {p0, v0, p1}, Lnet/sharpspot/dinnerin/Database;->DropTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 361
    const-string v0, "tRecipeIngredient"

    invoke-direct {p0, v0, p1}, Lnet/sharpspot/dinnerin/Database;->DropTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 362
    const-string v0, "tFraction"

    invoke-direct {p0, v0, p1}, Lnet/sharpspot/dinnerin/Database;->DropTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 363
    return-void
.end method

.method private CreateDefaultFractions(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 221
    const-string v0, "INSERT INTO tFraction (\'Key\', \'Name\', \'Value\') VALUES (\'%s\', \'%s\', %s)"

    .line 223
    .local v0, "sql":Ljava/lang/String;
    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "1/8"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "1/8"

    aput-object v2, v1, v5

    const-wide/high16 v2, 0x3fc0000000000000L    # 0.125

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 224
    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "1/4"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "1/4"

    aput-object v2, v1, v5

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 225
    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "1/2"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "1/2"

    aput-object v2, v1, v5

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 226
    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "3/4"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "3/4"

    aput-object v2, v1, v5

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 227
    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "1/3"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "1/3"

    aput-object v2, v1, v5

    const-wide v2, 0x3fd51eb851eb851fL    # 0.33

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 228
    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "2/3"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "2/3"

    aput-object v2, v1, v5

    const-wide v2, 0x3fe51eb851eb851fL    # 0.66

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method private CreateDefaultMeasurements(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 233
    const-string v0, "INSERT INTO tMeasurement (\'Key\', \'Name\', \'Aliases\', \'Grams\', \'ShortName\') VALUES (\'%s\', \'%s\', \'%s\', %s, \'%s\')"

    .line 235
    .local v0, "sql":Ljava/lang/String;
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "teaspoon"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "teaspoon"

    aput-object v2, v1, v4

    const-string v2, "tsp, teaspoon, teaspoons"

    aput-object v2, v1, v6

    const-wide v2, 0x4013333333333333L    # 4.8

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "tsp."

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 236
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "tablespoon"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "tablespoon"

    aput-object v2, v1, v4

    const-string v2, "tbsp, tblsp, tablespoon, tablespoons, tb"

    aput-object v2, v1, v6

    const-wide v2, 0x402c99999999999aL    # 14.3

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "tblsp."

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 237
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "fluid"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "fluid"

    aput-object v2, v1, v4

    const-string v2, "fl, fluid, fluids"

    aput-object v2, v1, v6

    const-wide v2, 0x403d91eb851eb852L    # 29.57

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "fl."

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 238
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ounce"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "ounce"

    aput-object v2, v1, v4

    const-string v2, "oz, ounce, ounces"

    aput-object v2, v1, v6

    const-wide v2, 0x403c4ccccccccccdL    # 28.3

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "oz."

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 239
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "package"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "package"

    aput-object v2, v1, v4

    const-string v2, "pkg, package, packages"

    aput-object v2, v1, v6

    const/4 v2, 0x0

    aput-object v2, v1, v7

    const-string v2, "pkg."

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 240
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "cup"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "cup"

    aput-object v2, v1, v4

    const-string v2, "c, cup, cups"

    aput-object v2, v1, v6

    const-wide v2, 0x406c59999999999aL    # 226.8

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "cup"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 241
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "pint"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "pint"

    aput-object v2, v1, v4

    const-string v2, "pt, pint, pints"

    aput-object v2, v1, v6

    const-wide v2, 0x407c4ccccccccccdL    # 452.8

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "pt."

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 242
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "quart"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "quart"

    aput-object v2, v1, v4

    const-string v2, "qt, quart, quarts"

    aput-object v2, v1, v6

    const-wide v2, 0x408c4ccccccccccdL    # 905.6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "qt."

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 243
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "gallon"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "gallon"

    aput-object v2, v1, v4

    const-string v2, "gal, gallon, gallons"

    aput-object v2, v1, v6

    const-wide v2, 0x40ac4ccccccccccdL    # 3622.4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "gal."

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 244
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "pound"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "pound"

    aput-object v2, v1, v4

    const-string v2, "lb, lbs, pound, pounds"

    aput-object v2, v1, v6

    const-wide v2, 0x407c4ccccccccccdL    # 452.8

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "lb."

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 245
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "small"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "small"

    aput-object v2, v1, v4

    const-string v2, "sm, small"

    aput-object v2, v1, v6

    const/16 v2, 0x71

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "sm."

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 246
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "medium"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "medium"

    aput-object v2, v1, v4

    const-string v2, "med, medium"

    aput-object v2, v1, v6

    const/16 v2, 0xe2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "med."

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 247
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "large"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "large"

    aput-object v2, v1, v4

    const-string v2, "lg, large"

    aput-object v2, v1, v6

    const/16 v2, 0x154

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "lg."

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 248
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "pinch"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "pinch"

    aput-object v2, v1, v4

    const-string v2, "pinch, pinches"

    aput-object v2, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "pinch"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 249
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "dash"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "dash"

    aput-object v2, v1, v4

    const-string v2, "dash, dashes"

    aput-object v2, v1, v6

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "dash"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 250
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "can"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "can"

    aput-object v2, v1, v4

    const-string v2, "can, cans"

    aput-object v2, v1, v6

    const/4 v2, 0x0

    aput-object v2, v1, v7

    const-string v2, "can"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method private CreateDefaultTags(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 209
    const-string v0, "INSERT INTO tTag (\'Key\', \'Name\') VALUES (\'%s\',\'%s\')"

    .line 211
    .local v0, "sql":Ljava/lang/String;
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "Soups"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Soups"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 212
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "Snacks"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Snacks"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 213
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "Chicken"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Chicken"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 214
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "Beef"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Beef"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 215
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "Pork"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Pork"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 216
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "Appetizers"

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Database;->ToSystemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Appetizers"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method private DropTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 405
    const/4 v0, 0x0

    .line 407
    .local v0, "sql":Ljava/lang/String;
    const-string v1, "DROP TABLE tmp_%s;"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public static GetObjects(Ljava/lang/Class;Landroid/content/Context;Landroid/database/Cursor;)Ljava/util/List;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/sharpspot/dinnerin/Classes/DataClass;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 125
    .local v2, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v1, 0x0

    .line 126
    .local v1, "collection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v4, 0x0

    .line 128
    .local v4, "item":Lnet/sharpspot/dinnerin/Classes/DataClass;, "TT;"
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "collection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .restart local v1    # "collection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 136
    :cond_0
    if-eqz p0, :cond_1

    .line 138
    const/4 v5, 0x2

    :try_start_0
    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/database/Cursor;

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 140
    if-eqz v2, :cond_1

    .line 142
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lnet/sharpspot/dinnerin/Classes/DataClass;

    move-object v4, v0

    .line 143
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_1
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 155
    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 157
    return-object v1

    .line 147
    :catch_0
    move-exception v3

    .line 149
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "GetObjects"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static GetObjects(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/sharpspot/dinnerin/Classes/DataClass;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v2, Lnet/sharpspot/dinnerin/Database;

    invoke-direct {v2, p1}, Lnet/sharpspot/dinnerin/Database;-><init>(Landroid/content/Context;)V

    .line 109
    .local v2, "database":Lnet/sharpspot/dinnerin/Database;
    invoke-virtual {v2}, Lnet/sharpspot/dinnerin/Database;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 110
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 112
    .local v1, "collection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 114
    .local v0, "c":Landroid/database/Cursor;
    invoke-static {p0, p1, v0}, Lnet/sharpspot/dinnerin/Database;->GetObjects(Ljava/lang/Class;Landroid/content/Context;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 116
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 117
    invoke-virtual {v2}, Lnet/sharpspot/dinnerin/Database;->close()V

    .line 119
    return-object v1
.end method

.method private RenameTableToTemp(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 397
    const/4 v0, 0x0

    .line 399
    .local v0, "sql":Ljava/lang/String;
    const-string v1, "ALTER TABLE %s RENAME TO tmp_%s;"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method private ToSystemId(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 716
    const-string v0, "00000000-0000-0000-0000-%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "%12s"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "/"

    const-string v5, "s"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    const/16 v4, 0x30

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private UpdateToVersion42(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 162
    const/16 v0, 0x2a

    if-ge p2, v0, :cond_0

    .line 164
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 168
    :try_start_0
    invoke-static {p1}, Lnet/sharpspot/dinnerin/Classes/MenuClass;->CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 169
    invoke-static {p1}, Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;->CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 170
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Database;->AddGramsColumnToMeasurements(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 171
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Database;->AddValueColumnToFractions(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 173
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 180
    :cond_0
    return-void

    .line 176
    :catchall_0
    move-exception v0

    .line 177
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 178
    throw v0
.end method

.method private UpdateToVersion43(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 184
    const/16 v1, 0x2b

    if-ge p2, v1, :cond_0

    .line 186
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 190
    :try_start_0
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Database;->AddShortNameAndAliasesToMeasurements(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 191
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Database;->CovertToUuids(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 192
    invoke-static {p1}, Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;->CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 194
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 198
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 201
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 202
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 203
    throw v1
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 45
    invoke-static {p1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 46
    invoke-static {p1}, Lnet/sharpspot/dinnerin/Classes/StepClass;->CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 47
    invoke-static {p1}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 48
    invoke-static {p1}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 49
    invoke-static {p1}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 50
    invoke-static {p1}, Lnet/sharpspot/dinnerin/Classes/LinkClass;->CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 51
    invoke-static {p1}, Lnet/sharpspot/dinnerin/Classes/TagClass;->CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 52
    invoke-static {p1}, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 53
    invoke-static {p1}, Lnet/sharpspot/dinnerin/Classes/MenuClass;->CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 54
    invoke-static {p1}, Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;->CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 55
    invoke-static {p1}, Lnet/sharpspot/dinnerin/Classes/DeleteItemClass;->CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 57
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Database;->CreateDefaultFractions(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 58
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Database;->CreateDefaultMeasurements(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 59
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Database;->CreateDefaultTags(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 60
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lnet/sharpspot/dinnerin/Database;->UpdateToVersion42(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lnet/sharpspot/dinnerin/Database;->UpdateToVersion43(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 67
    return-void
.end method

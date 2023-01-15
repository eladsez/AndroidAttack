.class public Lorg/hermit/android/provider/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# instance fields
.field private final dbSchema:Lorg/hermit/android/provider/DbSchema;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/hermit/android/provider/DbSchema;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "schema"    # Lorg/hermit/android/provider/DbSchema;

    .prologue
    .line 52
    invoke-virtual {p2}, Lorg/hermit/android/provider/DbSchema;->getDbName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2}, Lorg/hermit/android/provider/DbSchema;->getDbVersion()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 53
    iput-object p2, p0, Lorg/hermit/android/provider/DatabaseHelper;->dbSchema:Lorg/hermit/android/provider/DbSchema;

    .line 54
    return-void
.end method


# virtual methods
.method protected getSchema()Lorg/hermit/android/provider/DbSchema;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/hermit/android/provider/DatabaseHelper;->dbSchema:Lorg/hermit/android/provider/DbSchema;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v10, 0x0

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v3, "qb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lorg/hermit/android/provider/DatabaseHelper;->dbSchema:Lorg/hermit/android/provider/DbSchema;

    invoke-virtual {v5}, Lorg/hermit/android/provider/DbSchema;->getDbTables()[Lorg/hermit/android/provider/TableSchema;

    move-result-object v5

    array-length v6, v5

    move v7, v10

    :goto_0
    if-lt v7, v6, :cond_0

    .line 90
    return-void

    .line 75
    :cond_0
    aget-object v4, v5, v7

    .line 76
    .local v4, "t":Lorg/hermit/android/provider/TableSchema;
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 77
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "CREATE TABLE "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/hermit/android/provider/TableSchema;->getTableName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ( "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v4}, Lorg/hermit/android/provider/TableSchema;->getTableFields()[Lorg/hermit/android/provider/TableSchema$FieldDesc;

    move-result-object v1

    .line 79
    .local v1, "fields":[Lorg/hermit/android/provider/TableSchema$FieldDesc;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v1

    if-lt v2, v8, :cond_1

    .line 87
    const-string v8, " );"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 80
    :cond_1
    aget-object v0, v1, v2

    .line 81
    .local v0, "field":Lorg/hermit/android/provider/TableSchema$FieldDesc;
    if-lez v2, :cond_2

    .line 82
    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_2
    iget-object v8, v0, Lorg/hermit/android/provider/TableSchema$FieldDesc;->name:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v8, v0, Lorg/hermit/android/provider/TableSchema$FieldDesc;->type:Lorg/hermit/android/provider/TableSchema$FieldType;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 117
    const-string v1, "TableProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Upgrading database from version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 119
    const-string v3, ", which will destroy all old data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lorg/hermit/android/provider/DatabaseHelper;->dbSchema:Lorg/hermit/android/provider/DbSchema;

    invoke-virtual {v1}, Lorg/hermit/android/provider/DbSchema;->getDbTables()[Lorg/hermit/android/provider/TableSchema;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 122
    invoke-virtual {p0, p1}, Lorg/hermit/android/provider/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 123
    return-void

    .line 120
    :cond_0
    aget-object v0, v1, v3

    .line 121
    .local v0, "t":Lorg/hermit/android/provider/TableSchema;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/hermit/android/provider/TableSchema;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

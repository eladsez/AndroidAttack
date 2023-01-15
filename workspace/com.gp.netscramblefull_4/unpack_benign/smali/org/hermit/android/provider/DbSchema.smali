.class public abstract Lorg/hermit/android/provider/DbSchema;
.super Ljava/lang/Object;
.source "DbSchema.java"


# static fields
.field private static synthetic $SWITCH_TABLE$org$hermit$android$provider$TableSchema$FieldType:[I = null

.field private static final BACKUP_MAGIC:I = 0x4d7e870a

.field private static final BACKUP_VERSION:I = 0x10000

.field private static final ROW_END:I = -0x7d3c0a19

.field private static final ROW_MAGIC:I = -0xa187d3d

.field static final TAG:Ljava/lang/String; = "DbSchema"


# instance fields
.field private final dbAuth:Ljava/lang/String;

.field private final dbName:Ljava/lang/String;

.field private final dbTables:[Lorg/hermit/android/provider/TableSchema;

.field private final dbVersion:I


# direct methods
.method static synthetic $SWITCH_TABLE$org$hermit$android$provider$TableSchema$FieldType()[I
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lorg/hermit/android/provider/DbSchema;->$SWITCH_TABLE$org$hermit$android$provider$TableSchema$FieldType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/hermit/android/provider/TableSchema$FieldType;->values()[Lorg/hermit/android/provider/TableSchema$FieldType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/hermit/android/provider/TableSchema$FieldType;->BIGINT:Lorg/hermit/android/provider/TableSchema$FieldType;

    invoke-virtual {v1}, Lorg/hermit/android/provider/TableSchema$FieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lorg/hermit/android/provider/TableSchema$FieldType;->BOOLEAN:Lorg/hermit/android/provider/TableSchema$FieldType;

    invoke-virtual {v1}, Lorg/hermit/android/provider/TableSchema$FieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lorg/hermit/android/provider/TableSchema$FieldType;->DOUBLE:Lorg/hermit/android/provider/TableSchema$FieldType;

    invoke-virtual {v1}, Lorg/hermit/android/provider/TableSchema$FieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lorg/hermit/android/provider/TableSchema$FieldType;->FLOAT:Lorg/hermit/android/provider/TableSchema$FieldType;

    invoke-virtual {v1}, Lorg/hermit/android/provider/TableSchema$FieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lorg/hermit/android/provider/TableSchema$FieldType;->INT:Lorg/hermit/android/provider/TableSchema$FieldType;

    invoke-virtual {v1}, Lorg/hermit/android/provider/TableSchema$FieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lorg/hermit/android/provider/TableSchema$FieldType;->REAL:Lorg/hermit/android/provider/TableSchema$FieldType;

    invoke-virtual {v1}, Lorg/hermit/android/provider/TableSchema$FieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lorg/hermit/android/provider/TableSchema$FieldType;->TEXT:Lorg/hermit/android/provider/TableSchema$FieldType;

    invoke-virtual {v1}, Lorg/hermit/android/provider/TableSchema$FieldType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lorg/hermit/android/provider/TableSchema$FieldType;->_ID:Lorg/hermit/android/provider/TableSchema$FieldType;

    invoke-virtual {v1}, Lorg/hermit/android/provider/TableSchema$FieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lorg/hermit/android/provider/DbSchema;->$SWITCH_TABLE$org$hermit$android$provider$TableSchema$FieldType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;[Lorg/hermit/android/provider/TableSchema;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "auth"    # Ljava/lang/String;
    .param p4, "tables"    # [Lorg/hermit/android/provider/TableSchema;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/hermit/android/provider/DbSchema;->dbName:Ljava/lang/String;

    .line 71
    iput p2, p0, Lorg/hermit/android/provider/DbSchema;->dbVersion:I

    .line 72
    iput-object p3, p0, Lorg/hermit/android/provider/DbSchema;->dbAuth:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lorg/hermit/android/provider/DbSchema;->dbTables:[Lorg/hermit/android/provider/TableSchema;

    .line 75
    iget-object v1, p0, Lorg/hermit/android/provider/DbSchema;->dbTables:[Lorg/hermit/android/provider/TableSchema;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 77
    return-void

    .line 75
    :cond_0
    aget-object v0, v1, v3

    .line 76
    .local v0, "t":Lorg/hermit/android/provider/TableSchema;
    invoke-virtual {v0, p0}, Lorg/hermit/android/provider/TableSchema;->init(Lorg/hermit/android/provider/DbSchema;)V

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private backupTable(Landroid/content/ContentResolver;Lorg/hermit/android/provider/TableSchema;Ljava/io/DataOutputStream;)V
    .locals 25
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "ts"    # Lorg/hermit/android/provider/TableSchema;
    .param p3, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    const-string v3, "DbSchema"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "BACKUP "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lorg/hermit/android/provider/TableSchema;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v6, 0x0

    .line 194
    .local v6, "where":Ljava/lang/String;
    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/String;

    .line 197
    .local v7, "wargs":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 199
    .local v10, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lorg/hermit/android/provider/TableSchema;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/hermit/android/provider/TableSchema;->getDefaultProjection()[Ljava/lang/String;

    move-result-object v5

    .line 200
    invoke-virtual/range {p2 .. p2}, Lorg/hermit/android/provider/TableSchema;->getSortOrder()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v3, p1

    .line 199
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 201
    const-string v3, "DbSchema"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "==> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 270
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 272
    :goto_0
    return-void

    .line 208
    :cond_0
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lorg/hermit/android/provider/TableSchema;->getTableFields()[Lorg/hermit/android/provider/TableSchema$FieldDesc;

    move-result-object v15

    .line 209
    .local v15, "fields":[Lorg/hermit/android/provider/TableSchema$FieldDesc;
    array-length v3, v15

    new-array v11, v3, [I

    .line 210
    .local v11, "cols":[I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    array-length v3, v15

    move/from16 v0, v18

    move v1, v3

    if-lt v0, v1, :cond_1

    .line 214
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 270
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 211
    :cond_1
    :try_start_2
    aget-object v3, v15, v18

    iget-object v3, v3, Lorg/hermit/android/provider/TableSchema$FieldDesc;->name:Ljava/lang/String;

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v11, v18

    .line 210
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 215
    :cond_2
    const v3, -0xa187d3d

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 219
    new-instance v22, Ljava/lang/StringBuilder;

    const/16 v3, 0xc

    move-object/from16 v0, v22

    move v1, v3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 220
    .local v22, "sb1":Ljava/lang/StringBuilder;
    new-instance v23, Ljava/lang/StringBuilder;

    const/16 v3, 0x78

    move-object/from16 v0, v23

    move v1, v3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 221
    .local v23, "sb2":Ljava/lang/StringBuilder;
    const/16 v18, 0x0

    :goto_3
    array-length v3, v15

    move/from16 v0, v18

    move v1, v3

    if-lt v0, v1, :cond_3

    .line 263
    const-string v3, "DbSchema"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ">> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const v3, -0x7d3c0a19

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 267
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 269
    .end local v11    # "cols":[I
    .end local v15    # "fields":[Lorg/hermit/android/provider/TableSchema$FieldDesc;
    .end local v18    # "i":I
    .end local v22    # "sb1":Ljava/lang/StringBuilder;
    .end local v23    # "sb2":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v3

    .line 270
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 271
    throw v3

    .line 222
    .restart local v11    # "cols":[I
    .restart local v15    # "fields":[Lorg/hermit/android/provider/TableSchema$FieldDesc;
    .restart local v18    # "i":I
    .restart local v22    # "sb1":Ljava/lang/StringBuilder;
    .restart local v23    # "sb2":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_3
    aget-object v14, v15, v18

    .line 223
    .local v14, "fd":Lorg/hermit/android/provider/TableSchema$FieldDesc;
    move-object v0, v14

    iget-object v0, v0, Lorg/hermit/android/provider/TableSchema$FieldDesc;->type:Lorg/hermit/android/provider/TableSchema$FieldType;

    move-object/from16 v16, v0

    .line 226
    .local v16, "ft":Lorg/hermit/android/provider/TableSchema$FieldType;
    move-object v0, v10

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lorg/hermit/android/provider/TableSchema$FieldType;->TEXT:Lorg/hermit/android/provider/TableSchema$FieldType;

    move-object/from16 v0, v16

    move-object v1, v3

    if-ne v0, v1, :cond_5

    aget v3, v11, v18

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    .line 227
    :cond_4
    const/16 v3, 0x5f

    move-object/from16 v0, v22

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 231
    :cond_5
    const/16 v3, 0x78

    move-object/from16 v0, v22

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " | "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v14, Lorg/hermit/android/provider/TableSchema$FieldDesc;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v11, v18

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 234
    invoke-static {}, Lorg/hermit/android/provider/DbSchema;->$SWITCH_TABLE$org$hermit$android$provider$TableSchema$FieldType()[I

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lorg/hermit/android/provider/TableSchema$FieldType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_4

    .line 237
    :pswitch_0
    aget v3, v11, v18

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 238
    .local v20, "lv":J
    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_4

    .line 241
    .end local v20    # "lv":J
    :pswitch_1
    aget v3, v11, v18

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 242
    .local v19, "iv":I
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_4

    .line 246
    .end local v19    # "iv":I
    :pswitch_2
    aget v3, v11, v18

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    .line 247
    .local v12, "dv":D
    move-object/from16 v0, p3

    move-wide v1, v12

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto :goto_4

    .line 250
    .end local v12    # "dv":D
    :pswitch_3
    aget v3, v11, v18

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v17

    .line 251
    .local v17, "fv":F
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_4

    .line 254
    .end local v17    # "fv":F
    :pswitch_4
    aget v3, v11, v18

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    move v9, v3

    .line 255
    .local v9, "bv":Z
    :goto_5
    move-object/from16 v0, p3

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto/16 :goto_4

    .line 254
    .end local v9    # "bv":Z
    :cond_6
    const/4 v3, 0x0

    move v9, v3

    goto :goto_5

    .line 258
    :pswitch_5
    aget v3, v11, v18

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 259
    .local v24, "sv":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private checkInt(Ljava/io/DataInputStream;ILjava/lang/String;Ljava/io/File;)V
    .locals 4
    .param p1, "dis"    # Ljava/io/DataInputStream;
    .param p2, "expect"    # I
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 380
    .local v0, "actual":I
    if-eq v0, p2, :cond_0

    .line 381
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bad "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 382
    const-string v3, ": expected 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 383
    const-string v3, "; got 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 381
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 384
    :cond_0
    return-void
.end method

.method private dontInsert(Landroid/content/ContentValues;[Lorg/hermit/android/provider/TableSchema$FieldDesc;)V
    .locals 8
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "fields"    # [Lorg/hermit/android/provider/TableSchema$FieldDesc;

    .prologue
    const/16 v7, 0x78

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0xc

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 389
    .local v1, "sb1":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 390
    .local v2, "sb2":Ljava/lang/StringBuilder;
    array-length v3, p2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_0

    .line 398
    const-string v3, "DbSchema"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ">> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-void

    .line 390
    :cond_0
    aget-object v0, p2, v4

    .line 391
    .local v0, "fd":Lorg/hermit/android/provider/TableSchema$FieldDesc;
    iget-object v5, v0, Lorg/hermit/android/provider/TableSchema$FieldDesc;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 392
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 393
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " | "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lorg/hermit/android/provider/TableSchema$FieldDesc;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lorg/hermit/android/provider/TableSchema$FieldDesc;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 395
    :cond_1
    const/16 v5, 0x5f

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private restoreTable(Landroid/content/ContentResolver;Lorg/hermit/android/provider/TableSchema;Ljava/io/DataInputStream;Ljava/io/File;)V
    .locals 7
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "ts"    # Lorg/hermit/android/provider/TableSchema;
    .param p3, "dis"    # Ljava/io/DataInputStream;
    .param p4, "bakFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    const-string v4, "DbSchema"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "RESTORE "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/hermit/android/provider/TableSchema;->getTableName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {p2}, Lorg/hermit/android/provider/TableSchema;->getTableFields()[Lorg/hermit/android/provider/TableSchema$FieldDesc;

    move-result-object v0

    .line 335
    .local v0, "fields":[Lorg/hermit/android/provider/TableSchema$FieldDesc;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 336
    .local v3, "values":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {p3}, Ljava/io/DataInputStream;->available()I

    move-result v4

    if-gtz v4, :cond_0

    .line 373
    return-void

    .line 337
    :cond_0
    const v4, -0xa187d3d

    const-string v5, "row header"

    invoke-direct {p0, p3, v4, v5, p4}, Lorg/hermit/android/provider/DbSchema;->checkInt(Ljava/io/DataInputStream;ILjava/lang/String;Ljava/io/File;)V

    .line 339
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 341
    :goto_1
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .local v1, "i":I
    const v4, -0x7d3c0a19

    if-ne v1, v4, :cond_1

    .line 370
    invoke-virtual {p2}, Lorg/hermit/android/provider/TableSchema;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 371
    invoke-direct {p0, v3, v0}, Lorg/hermit/android/provider/DbSchema;->dontInsert(Landroid/content/ContentValues;[Lorg/hermit/android/provider/TableSchema$FieldDesc;)V

    goto :goto_0

    .line 342
    :cond_1
    if-ltz v1, :cond_2

    array-length v4, v0

    if-lt v1, v4, :cond_3

    .line 343
    :cond_2
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bad column number "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 344
    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 343
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 345
    :cond_3
    aget-object v4, v0, v1

    iget-object v2, v4, Lorg/hermit/android/provider/TableSchema$FieldDesc;->type:Lorg/hermit/android/provider/TableSchema$FieldType;

    .line 346
    .local v2, "t":Lorg/hermit/android/provider/TableSchema$FieldType;
    invoke-static {}, Lorg/hermit/android/provider/DbSchema;->$SWITCH_TABLE$org$hermit$android$provider$TableSchema$FieldType()[I

    move-result-object v4

    invoke-virtual {v2}, Lorg/hermit/android/provider/TableSchema$FieldType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 349
    :pswitch_0
    aget-object v4, v0, v1

    iget-object v4, v4, Lorg/hermit/android/provider/TableSchema$FieldDesc;->name:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 352
    :pswitch_1
    aget-object v4, v0, v1

    iget-object v4, v4, Lorg/hermit/android/provider/TableSchema$FieldDesc;->name:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 356
    :pswitch_2
    aget-object v4, v0, v1

    iget-object v4, v4, Lorg/hermit/android/provider/TableSchema$FieldDesc;->name:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 359
    :pswitch_3
    aget-object v4, v0, v1

    iget-object v4, v4, Lorg/hermit/android/provider/TableSchema$FieldDesc;->name:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto/16 :goto_1

    .line 362
    :pswitch_4
    aget-object v4, v0, v1

    iget-object v4, v4, Lorg/hermit/android/provider/TableSchema$FieldDesc;->name:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 365
    :pswitch_5
    aget-object v4, v0, v1

    iget-object v4, v4, Lorg/hermit/android/provider/TableSchema$FieldDesc;->name:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 346
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private wipeTable(Landroid/content/ContentResolver;Lorg/hermit/android/provider/TableSchema;)V
    .locals 4
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "ts"    # Lorg/hermit/android/provider/TableSchema;

    .prologue
    const/4 v3, 0x0

    .line 320
    const-string v0, "DbSchema"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WIPE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/hermit/android/provider/TableSchema;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {p2}, Lorg/hermit/android/provider/TableSchema;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 322
    return-void
.end method


# virtual methods
.method public backupDb(Landroid/content/Context;Ljava/io/File;)V
    .locals 13
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "where"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lorg/hermit/android/provider/DbSchema;->dbName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".bak"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, p2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 153
    .local v0, "bakDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-nez v9, :cond_0

    .line 154
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "can\'t create backup dir "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 157
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 158
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lorg/hermit/android/provider/DbSchema;->getDbTables()[Lorg/hermit/android/provider/TableSchema;

    move-result-object v8

    .line 159
    .local v8, "tables":[Lorg/hermit/android/provider/TableSchema;
    array-length v9, v8

    const/4 v10, 0x0

    :goto_0
    if-lt v10, v9, :cond_1

    .line 183
    return-void

    .line 159
    :cond_1
    aget-object v7, v8, v10

    .line 160
    .local v7, "t":Lorg/hermit/android/provider/TableSchema;
    const/4 v5, 0x0

    .line 161
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 163
    .local v3, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/hermit/android/provider/TableSchema;->getTableName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ".tb"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    .local v1, "bakFile":Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .local v4, "dos":Ljava/io/DataOutputStream;
    const v11, 0x4d7e870a    # 2.66891424E8f

    :try_start_2
    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 170
    const/high16 v11, 0x10000

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 171
    iget v11, p0, Lorg/hermit/android/provider/DbSchema;->dbVersion:I

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 173
    invoke-direct {p0, v2, v7, v4}, Lorg/hermit/android/provider/DbSchema;->backupTable(Landroid/content/ContentResolver;Lorg/hermit/android/provider/TableSchema;Ljava/io/DataOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 175
    if-eqz v4, :cond_2

    .line 176
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 178
    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    .line 179
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 159
    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 174
    .end local v1    # "bakFile":Ljava/io/File;
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v9

    .line 175
    :goto_3
    if-eqz v3, :cond_4

    .line 176
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 178
    :cond_4
    :goto_4
    if-eqz v5, :cond_5

    .line 179
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 181
    :cond_5
    :goto_5
    throw v9

    .line 177
    :catch_0
    move-exception v10

    goto :goto_4

    .line 180
    :catch_1
    move-exception v10

    goto :goto_5

    .line 177
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bakFile":Ljava/io/File;
    .restart local v4    # "dos":Ljava/io/DataOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v11

    goto :goto_1

    .line 180
    :catch_3
    move-exception v11

    goto :goto_2

    .line 174
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "dos":Ljava/io/DataOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v3, v4

    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method getDbAuth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/hermit/android/provider/DbSchema;->dbAuth:Ljava/lang/String;

    return-object v0
.end method

.method public getDbName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/hermit/android/provider/DbSchema;->dbName:Ljava/lang/String;

    return-object v0
.end method

.method getDbTables()[Lorg/hermit/android/provider/TableSchema;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/hermit/android/provider/DbSchema;->dbTables:[Lorg/hermit/android/provider/TableSchema;

    return-object v0
.end method

.method public getDbVersion()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/hermit/android/provider/DbSchema;->dbVersion:I

    return v0
.end method

.method protected getTable(Ljava/lang/String;)Lorg/hermit/android/provider/TableSchema;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v1, p0, Lorg/hermit/android/provider/DbSchema;->dbTables:[Lorg/hermit/android/provider/TableSchema;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 141
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No such table: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_0
    aget-object v0, v1, v3

    .line 139
    .local v0, "t":Lorg/hermit/android/provider/TableSchema;
    invoke-virtual {v0}, Lorg/hermit/android/provider/TableSchema;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 140
    return-object v0

    .line 138
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public restoreDb(Landroid/content/Context;Ljava/io/File;)V
    .locals 13
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "where"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lorg/hermit/android/provider/DbSchema;->dbName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".bak"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, p2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 283
    .local v0, "bakDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_0

    .line 284
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "can\'t find backup dir "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 287
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 288
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lorg/hermit/android/provider/DbSchema;->getDbTables()[Lorg/hermit/android/provider/TableSchema;

    move-result-object v8

    .line 289
    .local v8, "tables":[Lorg/hermit/android/provider/TableSchema;
    array-length v9, v8

    const/4 v10, 0x0

    :goto_0
    if-lt v10, v9, :cond_1

    .line 316
    return-void

    .line 289
    :cond_1
    aget-object v7, v8, v10

    .line 290
    .local v7, "t":Lorg/hermit/android/provider/TableSchema;
    const/4 v5, 0x0

    .line 291
    .local v5, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 293
    .local v3, "dis":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/hermit/android/provider/TableSchema;->getTableName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ".tb"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 294
    .local v1, "bakFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v11

    if-nez v11, :cond_4

    .line 295
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "can\'t find backup file "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    .end local v1    # "bakFile":Ljava/io/File;
    :catchall_0
    move-exception v9

    .line 308
    :goto_1
    if-eqz v3, :cond_2

    .line 309
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 311
    :cond_2
    :goto_2
    if-eqz v5, :cond_3

    .line 312
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 314
    :cond_3
    :goto_3
    throw v9

    .line 296
    .restart local v1    # "bakFile":Ljava/io/File;
    :cond_4
    :try_start_3
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 297
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_4
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 301
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .local v4, "dis":Ljava/io/DataInputStream;
    const v11, 0x4d7e870a    # 2.66891424E8f

    :try_start_5
    const-string v12, "magic number"

    invoke-direct {p0, v4, v11, v12, v1}, Lorg/hermit/android/provider/DbSchema;->checkInt(Ljava/io/DataInputStream;ILjava/lang/String;Ljava/io/File;)V

    .line 302
    const/high16 v11, 0x10000

    const-string v12, "backup format version"

    invoke-direct {p0, v4, v11, v12, v1}, Lorg/hermit/android/provider/DbSchema;->checkInt(Ljava/io/DataInputStream;ILjava/lang/String;Ljava/io/File;)V

    .line 303
    iget v11, p0, Lorg/hermit/android/provider/DbSchema;->dbVersion:I

    const-string v12, "database schema version"

    invoke-direct {p0, v4, v11, v12, v1}, Lorg/hermit/android/provider/DbSchema;->checkInt(Ljava/io/DataInputStream;ILjava/lang/String;Ljava/io/File;)V

    .line 305
    invoke-direct {p0, v2, v7}, Lorg/hermit/android/provider/DbSchema;->wipeTable(Landroid/content/ContentResolver;Lorg/hermit/android/provider/TableSchema;)V

    .line 306
    invoke-direct {p0, v2, v7, v4, v1}, Lorg/hermit/android/provider/DbSchema;->restoreTable(Landroid/content/ContentResolver;Lorg/hermit/android/provider/TableSchema;Ljava/io/DataInputStream;Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 308
    if-eqz v4, :cond_5

    .line 309
    :try_start_6
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 311
    :cond_5
    :goto_4
    if-eqz v6, :cond_6

    .line 312
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 289
    :cond_6
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 310
    .end local v1    # "bakFile":Ljava/io/File;
    .end local v4    # "dis":Ljava/io/DataInputStream;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v10

    goto :goto_2

    .line 313
    :catch_1
    move-exception v10

    goto :goto_3

    .line 310
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "bakFile":Ljava/io/File;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v11

    goto :goto_4

    .line 313
    :catch_3
    move-exception v11

    goto :goto_5

    .line 307
    .end local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v3    # "dis":Ljava/io/DataInputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v9

    move-object v3, v4

    .end local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

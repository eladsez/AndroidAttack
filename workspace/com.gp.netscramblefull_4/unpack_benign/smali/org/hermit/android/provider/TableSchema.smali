.class public abstract Lorg/hermit/android/provider/TableSchema;
.super Ljava/lang/Object;
.source "TableSchema.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hermit/android/provider/TableSchema$FieldDesc;,
        Lorg/hermit/android/provider/TableSchema$FieldType;
    }
.end annotation


# instance fields
.field private final contentUri:Landroid/net/Uri;

.field private final defProjection:[Ljava/lang/String;

.field private final fieldDefs:[Lorg/hermit/android/provider/TableSchema$FieldDesc;

.field private final itemType:Ljava/lang/String;

.field private projectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sortOrder:Ljava/lang/String;

.field private final tableName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Lorg/hermit/android/provider/TableSchema$FieldDesc;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "sort"    # Ljava/lang/String;
    .param p5, "fields"    # [Lorg/hermit/android/provider/TableSchema$FieldDesc;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lorg/hermit/android/provider/TableSchema;->tableName:Ljava/lang/String;

    .line 160
    iput-object p2, p0, Lorg/hermit/android/provider/TableSchema;->itemType:Ljava/lang/String;

    .line 161
    iput-object p3, p0, Lorg/hermit/android/provider/TableSchema;->contentUri:Landroid/net/Uri;

    .line 162
    iput-object p4, p0, Lorg/hermit/android/provider/TableSchema;->sortOrder:Ljava/lang/String;

    .line 163
    iput-object p5, p0, Lorg/hermit/android/provider/TableSchema;->fieldDefs:[Lorg/hermit/android/provider/TableSchema$FieldDesc;

    .line 164
    invoke-static {p5}, Lorg/hermit/android/provider/TableSchema;->makeProjection([Lorg/hermit/android/provider/TableSchema$FieldDesc;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/hermit/android/provider/TableSchema;->defProjection:[Ljava/lang/String;

    .line 165
    return-void
.end method

.method protected static makeProjection([Lorg/hermit/android/provider/TableSchema$FieldDesc;)[Ljava/lang/String;
    .locals 7
    .param p0, "fields"    # [Lorg/hermit/android/provider/TableSchema$FieldDesc;

    .prologue
    .line 202
    array-length v4, p0

    new-array v3, v4, [Ljava/lang/String;

    .line 203
    .local v3, "projection":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 205
    .local v1, "np":I
    array-length v4, p0

    const/4 v5, 0x0

    move v2, v1

    .end local v1    # "np":I
    .local v2, "np":I
    :goto_0
    if-lt v5, v4, :cond_0

    .line 208
    return-object v3

    .line 205
    :cond_0
    aget-object v0, p0, v5

    .line 206
    .local v0, "field":Lorg/hermit/android/provider/TableSchema$FieldDesc;
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "np":I
    .restart local v1    # "np":I
    iget-object v6, v0, Lorg/hermit/android/provider/TableSchema$FieldDesc;->name:Ljava/lang/String;

    aput-object v6, v3, v2

    .line 205
    add-int/lit8 v5, v5, 0x1

    move v2, v1

    .end local v1    # "np":I
    .restart local v2    # "np":I
    goto :goto_0
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/hermit/android/provider/TableSchema;->contentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDefaultProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/hermit/android/provider/TableSchema;->defProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vnd.android.cursor.item/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/hermit/android/provider/TableSchema;->itemType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNullHack()Ljava/lang/String;
    .locals 2

    .prologue
    .line 313
    invoke-virtual {p0}, Lorg/hermit/android/provider/TableSchema;->getTableFields()[Lorg/hermit/android/provider/TableSchema$FieldDesc;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/hermit/android/provider/TableSchema$FieldDesc;->name:Ljava/lang/String;

    return-object v0
.end method

.method getProjectionMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lorg/hermit/android/provider/TableSchema;->projectionMap:Ljava/util/HashMap;

    return-object v0
.end method

.method getSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lorg/hermit/android/provider/TableSchema;->sortOrder:Ljava/lang/String;

    return-object v0
.end method

.method getTableFields()[Lorg/hermit/android/provider/TableSchema$FieldDesc;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lorg/hermit/android/provider/TableSchema;->fieldDefs:[Lorg/hermit/android/provider/TableSchema$FieldDesc;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/hermit/android/provider/TableSchema;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getTableType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vnd.android.cursor.dir/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/hermit/android/provider/TableSchema;->itemType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method init(Lorg/hermit/android/provider/DbSchema;)V
    .locals 7
    .param p1, "db"    # Lorg/hermit/android/provider/DbSchema;

    .prologue
    .line 179
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/hermit/android/provider/TableSchema;->projectionMap:Ljava/util/HashMap;

    .line 181
    iget-object v1, p0, Lorg/hermit/android/provider/TableSchema;->fieldDefs:[Lorg/hermit/android/provider/TableSchema$FieldDesc;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 183
    return-void

    .line 181
    :cond_0
    aget-object v0, v1, v3

    .line 182
    .local v0, "field":Lorg/hermit/android/provider/TableSchema$FieldDesc;
    iget-object v4, p0, Lorg/hermit/android/provider/TableSchema;->projectionMap:Ljava/util/HashMap;

    iget-object v5, v0, Lorg/hermit/android/provider/TableSchema$FieldDesc;->name:Ljava/lang/String;

    iget-object v6, v0, Lorg/hermit/android/provider/TableSchema$FieldDesc;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onInsert(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 279
    return-void
.end method

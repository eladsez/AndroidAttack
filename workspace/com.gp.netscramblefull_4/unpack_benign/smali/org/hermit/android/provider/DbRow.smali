.class public abstract Lorg/hermit/android/provider/DbRow;
.super Ljava/lang/Object;
.source "DbRow.java"


# instance fields
.field private final rowValues:Landroid/content/ContentValues;

.field private final tableSchema:Lorg/hermit/android/provider/TableSchema;


# direct methods
.method protected constructor <init>(Lorg/hermit/android/provider/TableSchema;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "schema"    # Lorg/hermit/android/provider/TableSchema;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 44
    invoke-virtual {p1}, Lorg/hermit/android/provider/TableSchema;->getDefaultProjection()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/hermit/android/provider/DbRow;-><init>(Lorg/hermit/android/provider/TableSchema;Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method protected constructor <init>(Lorg/hermit/android/provider/TableSchema;Landroid/database/Cursor;[Ljava/lang/String;)V
    .locals 1
    .param p1, "schema"    # Lorg/hermit/android/provider/TableSchema;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "projection"    # [Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/hermit/android/provider/DbRow;->tableSchema:Lorg/hermit/android/provider/TableSchema;

    .line 58
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lorg/hermit/android/provider/DbRow;->rowValues:Landroid/content/ContentValues;

    .line 59
    iget-object v0, p0, Lorg/hermit/android/provider/DbRow;->rowValues:Landroid/content/ContentValues;

    invoke-static {p2, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 60
    return-void
.end method


# virtual methods
.method getValues(Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/hermit/android/provider/DbRow;->rowValues:Landroid/content/ContentValues;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 79
    return-void
.end method

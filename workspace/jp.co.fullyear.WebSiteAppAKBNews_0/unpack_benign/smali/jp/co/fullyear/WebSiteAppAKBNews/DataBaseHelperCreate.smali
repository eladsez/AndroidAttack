.class public Ljp/co/fullyear/WebSiteAppAKBNews/DataBaseHelperCreate;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DataBaseHelperCreate.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "my.db"

.field private static final DB_VERSION:I = 0x2


# instance fields
.field private DB_MODE:I

.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const-string v0, "my.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Ljp/co/fullyear/WebSiteAppAKBNews/DataBaseHelperCreate;->DB_MODE:I

    .line 23
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 27
    const-string v0, "create table if not exists bookmark (_id integer primary key,folder,name,url)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 34
    const-string v0, "create table if not exists homeurl (_id integer primary key,url)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    return-void
.end method

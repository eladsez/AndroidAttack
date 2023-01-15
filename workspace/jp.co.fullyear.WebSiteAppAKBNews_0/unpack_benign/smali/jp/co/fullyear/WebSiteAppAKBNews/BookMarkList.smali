.class public Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList;
.super Landroid/app/Activity;
.source "BookMarkList.java"


# instance fields
.field public c:Landroid/database/sqlite/SQLiteCursor;

.field public db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createData()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v4, "retDataList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Ljp/co/fullyear/WebSiteAppAKBNews/DataBaseHelperCreate;

    invoke-direct {v1, p0}, Ljp/co/fullyear/WebSiteAppAKBNews/DataBaseHelperCreate;-><init>(Landroid/content/Context;)V

    .line 95
    .local v1, "dbHelper":Ljp/co/fullyear/WebSiteAppAKBNews/DataBaseHelperCreate;
    invoke-virtual {v1}, Ljp/co/fullyear/WebSiteAppAKBNews/DataBaseHelperCreate;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    iput-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 97
    const-string v5, "select * from bookmark order by _id asc;"

    .line 98
    .local v5, "sql":Ljava/lang/String;
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/SQLiteCursor;

    iput-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList;->c:Landroid/database/sqlite/SQLiteCursor;

    .line 99
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList;->c:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteCursor;->getCount()I

    move-result v3

    .line 100
    .local v3, "numRows":I
    const-string v6, "test"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-eqz v3, :cond_0

    .line 102
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList;->c:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteCursor;->moveToFirst()Z

    .line 103
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 111
    .end local v2    # "i":I
    :cond_0
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList;->c:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteCursor;->close()V

    .line 113
    return-object v4

    .line 104
    .restart local v2    # "i":I
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 105
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "title"

    iget-object v7, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList;->c:Landroid/database/sqlite/SQLiteCursor;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/database/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v6, "url"

    iget-object v7, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList;->c:Landroid/database/sqlite/SQLiteCursor;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/database/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList;->c:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteCursor;->moveToNext()Z

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList;->setContentView(I)V

    .line 38
    invoke-direct {p0}, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList;->createData()Ljava/util/List;

    move-result-object v2

    .line 40
    .local v2, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Landroid/widget/SimpleAdapter;

    .line 43
    const v3, 0x7f030004

    .line 44
    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v4, v7

    .line 45
    new-array v5, v5, [I

    const v1, 0x7f060001

    aput v1, v5, v7

    move-object v1, p0

    .line 40
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 48
    .local v0, "adapter":Landroid/widget/SimpleAdapter;
    const v1, 0x7f060002

    invoke-virtual {p0, v1}, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 53
    .local v6, "listView":Landroid/widget/ListView;
    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    new-instance v1, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList$1;

    invoke-direct {v1, p0}, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList$1;-><init>(Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList;)V

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 75
    new-instance v1, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList$2;

    invoke-direct {v1, p0}, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList$2;-><init>(Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList;)V

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 89
    return-void
.end method

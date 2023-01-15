.class public Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;
.super Landroid/app/Activity;
.source "BookMarkEdit.java"


# instance fields
.field public c:Landroid/database/sqlite/SQLiteCursor;

.field public db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->listRead()V

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
    .line 95
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v4, "retDataList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Ljp/co/fullyear/WebSiteAppAKBNews/DataBaseHelperCreate;

    invoke-direct {v1, p0}, Ljp/co/fullyear/WebSiteAppAKBNews/DataBaseHelperCreate;-><init>(Landroid/content/Context;)V

    .line 97
    .local v1, "dbHelper":Ljp/co/fullyear/WebSiteAppAKBNews/DataBaseHelperCreate;
    invoke-virtual {v1}, Ljp/co/fullyear/WebSiteAppAKBNews/DataBaseHelperCreate;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    iput-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 99
    const-string v5, "select * from bookmark order by _id asc;"

    .line 100
    .local v5, "sql":Ljava/lang/String;
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/SQLiteCursor;

    iput-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->c:Landroid/database/sqlite/SQLiteCursor;

    .line 101
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->c:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteCursor;->getCount()I

    move-result v3

    .line 102
    .local v3, "numRows":I
    if-eqz v3, :cond_0

    .line 103
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->c:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteCursor;->moveToFirst()Z

    .line 104
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 112
    .end local v2    # "i":I
    :cond_0
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->c:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteCursor;->close()V

    .line 114
    return-object v4

    .line 105
    .restart local v2    # "i":I
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 106
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "title"

    iget-object v7, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->c:Landroid/database/sqlite/SQLiteCursor;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/database/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v6, "id"

    iget-object v7, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->c:Landroid/database/sqlite/SQLiteCursor;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/database/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->c:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteCursor;->moveToNext()Z

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private listRead()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 177
    invoke-direct {p0}, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->createData()Ljava/util/List;

    move-result-object v2

    .line 179
    .local v2, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Landroid/widget/SimpleAdapter;

    .line 182
    const v3, 0x7f030004

    .line 183
    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v4, v7

    .line 184
    new-array v5, v5, [I

    const v1, 0x7f060001

    aput v1, v5, v7

    move-object v1, p0

    .line 179
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 187
    .local v0, "adapter":Landroid/widget/SimpleAdapter;
    const v1, 0x7f060002

    invoke-virtual {p0, v1}, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 192
    .local v6, "listView":Landroid/widget/ListView;
    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 193
    return-void
.end method


# virtual methods
.method public DialogmultiLineInput(I)V
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v8, 0x0

    .line 121
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 122
    .local v0, "factory":Landroid/view/LayoutInflater;
    const v6, 0x7f030002

    invoke-virtual {v0, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 123
    .local v1, "inputView":Landroid/view/View;
    const v6, 0x7f060004

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 124
    .local v3, "input_title":Landroid/widget/EditText;
    const v6, 0x7f060005

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 126
    .local v2, "input_body":Landroid/widget/EditText;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "select * from bookmark where _id = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "sql":Ljava/lang/String;
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/SQLiteCursor;

    iput-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->c:Landroid/database/sqlite/SQLiteCursor;

    .line 128
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->c:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteCursor;->getCount()I

    move-result v4

    .line 130
    .local v4, "numRows2":I
    if-eqz v4, :cond_0

    .line 131
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->c:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteCursor;->moveToFirst()Z

    .line 132
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->c:Landroid/database/sqlite/SQLiteCursor;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/database/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->c:Landroid/database/sqlite/SQLiteCursor;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/database/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :cond_0
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->c:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteCursor;->close()V

    .line 137
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    const-string v7, "\u30d6\u30c3\u30af\u30de\u30fc\u30af"

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 139
    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 140
    const-string v7, "\u767b\u3000\u9332"

    new-instance v8, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$3;

    invoke-direct {v8, p0, p1, v3, v2}, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$3;-><init>(Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;ILandroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 164
    const-string v7, "\u524a\u9664"

    new-instance v8, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$4;

    invoke-direct {v8, p0, p1}, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$4;-><init>(Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;I)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 171
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 172
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 173
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->setContentView(I)V

    .line 45
    invoke-direct {p0}, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->createData()Ljava/util/List;

    move-result-object v2

    .line 47
    .local v2, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Landroid/widget/SimpleAdapter;

    .line 50
    const v3, 0x7f030004

    .line 51
    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v4, v7

    .line 52
    new-array v5, v5, [I

    const v1, 0x7f060001

    aput v1, v5, v7

    move-object v1, p0

    .line 47
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 55
    .local v0, "adapter":Landroid/widget/SimpleAdapter;
    const v1, 0x7f060002

    invoke-virtual {p0, v1}, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 60
    .local v6, "listView":Landroid/widget/ListView;
    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    new-instance v1, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$1;

    invoke-direct {v1, p0}, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$1;-><init>(Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;)V

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    new-instance v1, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$2;

    invoke-direct {v1, p0}, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit$2;-><init>(Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;)V

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 91
    return-void
.end method

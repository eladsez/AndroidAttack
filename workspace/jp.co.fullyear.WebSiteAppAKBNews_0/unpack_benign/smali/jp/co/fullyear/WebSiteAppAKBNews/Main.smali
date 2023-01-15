.class public Ljp/co/fullyear/WebSiteAppAKBNews/Main;
.super Landroid/app/Activity;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/fullyear/WebSiteAppAKBNews/Main$AndroidBridge;,
        Ljp/co/fullyear/WebSiteAppAKBNews/Main$CustomWebViewClient;
    }
.end annotation


# instance fields
.field private AddBtn:Landroid/widget/Button;

.field public BaseUrl:Ljava/lang/String;

.field public BaseUrlStr:Ljava/lang/String;

.field public c:Landroid/database/sqlite/SQLiteCursor;

.field public db:Landroid/database/sqlite/SQLiteDatabase;

.field private progressBar:Landroid/widget/ProgressBar;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private titleStr:Landroid/widget/TextView;

.field private web:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const-string v0, "http://akb48gazou.gger.jp/lite/"

    iput-object v0, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->BaseUrlStr:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->BaseUrlStr:Ljava/lang/String;

    iput-object v0, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->BaseUrl:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static synthetic access$0(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->web:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->AddBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$4(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->titleStr:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public DialogDatePicker(Ljava/lang/String;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 126
    move-object v1, p1

    .line 127
    .local v1, "url":Ljava/lang/String;
    const-string v2, "telto:"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    const-string v2, "tel:"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    move-object v0, v1

    .line 130
    .local v0, "Tel":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u306b\u96fb\u8a71\u3092\u304b\u3051\u307e\u3059\u304b\uff1f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 132
    const-string v3, "\u767a\u4fe1\u3059\u308b"

    new-instance v4, Ljp/co/fullyear/WebSiteAppAKBNews/Main$5;

    invoke-direct {v4, p0, v0}, Ljp/co/fullyear/WebSiteAppAKBNews/Main$5;-><init>(Ljp/co/fullyear/WebSiteAppAKBNews/Main;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 141
    const-string v3, "\u30ad\u30e3\u30f3\u30bb\u30eb"

    new-instance v4, Ljp/co/fullyear/WebSiteAppAKBNews/Main$6;

    invoke-direct {v4, p0}, Ljp/co/fullyear/WebSiteAppAKBNews/Main$6;-><init>(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 147
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 148
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 149
    return-void
.end method

.method public DialogmultiLineInput(I)V
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v8, 0x0

    .line 296
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 297
    .local v0, "factory":Landroid/view/LayoutInflater;
    const v6, 0x7f030002

    invoke-virtual {v0, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 298
    .local v1, "inputView":Landroid/view/View;
    const v6, 0x7f060004

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 299
    .local v3, "input_title":Landroid/widget/EditText;
    const v6, 0x7f060005

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 301
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

    .line 302
    .local v5, "sql":Ljava/lang/String;
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/SQLiteCursor;

    iput-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->c:Landroid/database/sqlite/SQLiteCursor;

    .line 303
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->c:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteCursor;->getCount()I

    move-result v4

    .line 305
    .local v4, "numRows2":I
    if-eqz v4, :cond_0

    .line 306
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->c:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteCursor;->moveToFirst()Z

    .line 307
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->c:Landroid/database/sqlite/SQLiteCursor;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/database/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->c:Landroid/database/sqlite/SQLiteCursor;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/database/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 313
    :goto_0
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->c:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteCursor;->close()V

    .line 315
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 316
    const-string v7, "\u30d6\u30c3\u30af\u30de\u30fc\u30af"

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 317
    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 318
    const-string v7, "\u767b\u3000\u9332"

    new-instance v8, Ljp/co/fullyear/WebSiteAppAKBNews/Main$7;

    invoke-direct {v8, p0, p1, v3, v2}, Ljp/co/fullyear/WebSiteAppAKBNews/Main$7;-><init>(Ljp/co/fullyear/WebSiteAppAKBNews/Main;ILandroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 341
    const-string v7, "\u30ad\u30e3\u30f3\u30bb\u30eb"

    new-instance v8, Ljp/co/fullyear/WebSiteAppAKBNews/Main$8;

    invoke-direct {v8, p0}, Ljp/co/fullyear/WebSiteAppAKBNews/Main$8;-><init>(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 347
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 348
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 349
    return-void

    .line 310
    :cond_0
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->web:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->web:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0, v8}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->requestWindowFeature(I)Z

    .line 56
    const v6, 0x7f030003

    invoke-virtual {p0, v6}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->setContentView(I)V

    .line 58
    new-instance v3, Ljp/co/fullyear/WebSiteAppAKBNews/DataBaseHelperCreate;

    invoke-direct {v3, p0}, Ljp/co/fullyear/WebSiteAppAKBNews/DataBaseHelperCreate;-><init>(Landroid/content/Context;)V

    .line 59
    .local v3, "dbHelper":Ljp/co/fullyear/WebSiteAppAKBNews/DataBaseHelperCreate;
    invoke-virtual {v3}, Ljp/co/fullyear/WebSiteAppAKBNews/DataBaseHelperCreate;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    iput-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 61
    const v6, 0x7f06000c

    invoke-virtual {p0, v6}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/webkit/WebView;

    iput-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->web:Landroid/webkit/WebView;

    .line 62
    const v6, 0x7f06000a

    invoke-virtual {p0, v6}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->progressBar:Landroid/widget/ProgressBar;

    .line 63
    const v6, 0x7f060009

    invoke-virtual {p0, v6}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->titleStr:Landroid/widget/TextView;

    .line 64
    const v6, 0x7f060006

    invoke-virtual {p0, v6}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 65
    .local v1, "HomeBtn":Landroid/widget/Button;
    const v6, 0x7f060007

    invoke-virtual {p0, v6}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 66
    .local v2, "ReloadBtn":Landroid/widget/Button;
    const v6, 0x7f060008

    invoke-virtual {p0, v6}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 67
    .local v0, "FavoriteBtn":Landroid/widget/Button;
    const v6, 0x7f06000b

    invoke-virtual {p0, v6}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->AddBtn:Landroid/widget/Button;

    .line 69
    new-instance v6, Landroid/app/ProgressDialog;

    invoke-direct {v6, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->progressDialog:Landroid/app/ProgressDialog;

    .line 70
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->cancel()V

    .line 81
    invoke-virtual {p0}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 82
    .local v4, "intent":Landroid/content/Intent;
    const-string v6, "url"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "tmp":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 84
    iput-object v5, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->BaseUrl:Ljava/lang/String;

    .line 86
    :cond_0
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->web:Landroid/webkit/WebView;

    iget-object v7, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->BaseUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 87
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->web:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 89
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->web:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 90
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->web:Landroid/webkit/WebView;

    new-instance v7, Ljp/co/fullyear/WebSiteAppAKBNews/Main$CustomWebViewClient;

    invoke-direct {v7, p0}, Ljp/co/fullyear/WebSiteAppAKBNews/Main$CustomWebViewClient;-><init>(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 92
    new-instance v6, Ljp/co/fullyear/WebSiteAppAKBNews/Main$1;

    invoke-direct {v6, p0}, Ljp/co/fullyear/WebSiteAppAKBNews/Main$1;-><init>(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    new-instance v6, Ljp/co/fullyear/WebSiteAppAKBNews/Main$2;

    invoke-direct {v6, p0}, Ljp/co/fullyear/WebSiteAppAKBNews/Main$2;-><init>(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    new-instance v6, Ljp/co/fullyear/WebSiteAppAKBNews/Main$3;

    invoke-direct {v6, p0}, Ljp/co/fullyear/WebSiteAppAKBNews/Main$3;-><init>(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->AddBtn:Landroid/widget/Button;

    new-instance v7, Ljp/co/fullyear/WebSiteAppAKBNews/Main$4;

    invoke-direct {v7, p0}, Ljp/co/fullyear/WebSiteAppAKBNews/Main$4;-><init>(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v6, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->web:Landroid/webkit/WebView;

    new-instance v7, Ljp/co/fullyear/WebSiteAppAKBNews/Main$AndroidBridge;

    invoke-direct {v7, p0}, Ljp/co/fullyear/WebSiteAppAKBNews/Main$AndroidBridge;-><init>(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)V

    const-string v8, "android"

    invoke-virtual {v6, v7, v8}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 266
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 267
    invoke-virtual {p0}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 268
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 269
    const/4 v1, 0x1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 257
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 259
    const/4 v0, 0x1

    .line 261
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 273
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 274
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v1, v2

    .line 291
    :goto_0
    return v1

    .line 278
    :pswitch_0
    invoke-virtual {p0, v2}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->DialogmultiLineInput(I)V

    move v1, v3

    .line 279
    goto :goto_0

    .line 285
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkEdit;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    .local v0, "intent1":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    invoke-virtual {p0, v0}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->startActivity(Landroid/content/Intent;)V

    move v1, v3

    .line 289
    goto :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x7f06000d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 353
    iget-object v0, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 354
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 355
    return-void
.end method

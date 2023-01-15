.class public Lnet/sharpspot/dinnerin/Activities/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field private _btnBrowse:Landroid/widget/Button;

.field private _btnBrowseOnClickListener:Landroid/view/View$OnClickListener;

.field private _btnFractions:Landroid/widget/Button;

.field private _btnFractionsOnClickListener:Landroid/view/View$OnClickListener;

.field private _btnMeasurements:Landroid/widget/Button;

.field private _btnMeasurementsOnClickListener:Landroid/view/View$OnClickListener;

.field private _btnMenus:Landroid/widget/Button;

.field private _btnMenusOnClickListener:Landroid/view/View$OnClickListener;

.field private _btnNewRecipeOnClickListener:Landroid/view/View$OnClickListener;

.field private _btnSearch:Landroid/widget/Button;

.field private _btnSearchOnClickListener:Landroid/view/View$OnClickListener;

.field private _btnSignIn:Landroid/widget/Button;

.field private _btnSignInOnClickListener:Landroid/view/View$OnClickListener;

.field private _btnTags:Landroid/widget/Button;

.field private _btnTagsOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnSearch:Landroid/widget/Button;

    .line 27
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnBrowse:Landroid/widget/Button;

    .line 28
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnMenus:Landroid/widget/Button;

    .line 29
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnMeasurements:Landroid/widget/Button;

    .line 30
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnFractions:Landroid/widget/Button;

    .line 31
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnTags:Landroid/widget/Button;

    .line 32
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnSignIn:Landroid/widget/Button;

    .line 78
    new-instance v0, Lnet/sharpspot/dinnerin/Activities/MainActivity$1;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Activities/MainActivity$1;-><init>(Lnet/sharpspot/dinnerin/Activities/MainActivity;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnNewRecipeOnClickListener:Landroid/view/View$OnClickListener;

    .line 86
    new-instance v0, Lnet/sharpspot/dinnerin/Activities/MainActivity$2;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Activities/MainActivity$2;-><init>(Lnet/sharpspot/dinnerin/Activities/MainActivity;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnSearchOnClickListener:Landroid/view/View$OnClickListener;

    .line 93
    new-instance v0, Lnet/sharpspot/dinnerin/Activities/MainActivity$3;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Activities/MainActivity$3;-><init>(Lnet/sharpspot/dinnerin/Activities/MainActivity;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnBrowseOnClickListener:Landroid/view/View$OnClickListener;

    .line 101
    new-instance v0, Lnet/sharpspot/dinnerin/Activities/MainActivity$4;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Activities/MainActivity$4;-><init>(Lnet/sharpspot/dinnerin/Activities/MainActivity;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnMenusOnClickListener:Landroid/view/View$OnClickListener;

    .line 109
    new-instance v0, Lnet/sharpspot/dinnerin/Activities/MainActivity$5;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Activities/MainActivity$5;-><init>(Lnet/sharpspot/dinnerin/Activities/MainActivity;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnMeasurementsOnClickListener:Landroid/view/View$OnClickListener;

    .line 117
    new-instance v0, Lnet/sharpspot/dinnerin/Activities/MainActivity$6;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Activities/MainActivity$6;-><init>(Lnet/sharpspot/dinnerin/Activities/MainActivity;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnFractionsOnClickListener:Landroid/view/View$OnClickListener;

    .line 125
    new-instance v0, Lnet/sharpspot/dinnerin/Activities/MainActivity$7;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Activities/MainActivity$7;-><init>(Lnet/sharpspot/dinnerin/Activities/MainActivity;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnTagsOnClickListener:Landroid/view/View$OnClickListener;

    .line 133
    new-instance v0, Lnet/sharpspot/dinnerin/Activities/MainActivity$8;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Activities/MainActivity$8;-><init>(Lnet/sharpspot/dinnerin/Activities/MainActivity;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnSignInOnClickListener:Landroid/view/View$OnClickListener;

    .line 24
    return-void
.end method

.method private DisplayVersionName()V
    .locals 7

    .prologue
    .line 144
    const-string v3, ""

    .line 148
    .local v3, "versionName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 149
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "v "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 155
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    const v4, 0x7f05002b

    invoke-virtual {p0, v4}, Lnet/sharpspot/dinnerin/Activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 156
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    return-void

    .line 151
    .end local v2    # "tv":Landroid/widget/TextView;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private InitializeComponents()V
    .locals 2

    .prologue
    .line 52
    const v0, 0x7f050024

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnSearch:Landroid/widget/Button;

    .line 53
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnSearch:Landroid/widget/Button;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnSearchOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v0, 0x7f050023

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnBrowse:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnBrowse:Landroid/widget/Button;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnBrowseOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v0, 0x7f050028

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnMenus:Landroid/widget/Button;

    .line 59
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnMenus:Landroid/widget/Button;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnMenusOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f050026

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnMeasurements:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnMeasurements:Landroid/widget/Button;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnMeasurementsOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v0, 0x7f050025

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnFractions:Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnFractions:Landroid/widget/Button;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnFractionsOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v0, 0x7f050027

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnTags:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnTags:Landroid/widget/Button;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnTagsOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v0, 0x7f05002a

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnSignIn:Landroid/widget/Button;

    .line 71
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnSignIn:Landroid/widget/Button;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnSignInOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/MainActivity;->GetAddView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity;->_btnNewRecipeOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/MainActivity;->DisplayVersionName()V

    .line 76
    return-void
.end method

.method private SyncToCloud()V
    .locals 2

    .prologue
    .line 200
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/sharpspot/dinnerin/DataSyncService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method protected GetAddView()Landroid/view/View;
    .locals 1

    .prologue
    .line 161
    const v0, 0x7f050022

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/MainActivity;->setContentView(I)V

    .line 41
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/MainActivity;->InitializeComponents()V

    .line 44
    const-string v0, "v3wVw5IrewVc3odqxIOUoUkC8ukYOL8ykf0G8Hmz"

    const-string v1, "XmYjQVhFcAvyHogVLYi3oz3HdRdXBCztGho1Qw1i"

    invoke-static {p0, v0, v1}, Lcom/parse/Parse;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseAnalytics;->trackAppOpened(Landroid/content/Intent;)V

    .line 47
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/MainActivity;->SyncToCloud()V

    .line 48
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 167
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 170
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 171
    const/4 v1, 0x1

    .line 174
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 195
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/MainActivity;->SyncToCloud()V

    .line 196
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 180
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 186
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 183
    :pswitch_0
    invoke-static {p0}, Lnet/sharpspot/dinnerin/Database;->CopyDatabaseToSDCard(Landroid/content/Context;)V

    .line 184
    const/4 v0, 0x1

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x7f05004c
        :pswitch_0
    .end packed-switch
.end method

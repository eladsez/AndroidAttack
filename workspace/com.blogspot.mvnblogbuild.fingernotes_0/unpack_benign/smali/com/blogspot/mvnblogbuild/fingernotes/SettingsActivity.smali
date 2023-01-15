.class public Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"


# instance fields
.field private final me:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    iput-object p0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;->me:Landroid/app/Activity;

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;->me:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v6, 0x7f030004

    invoke-virtual {p0, v6}, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;->setContentView(I)V

    .line 25
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->getInstance(Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;)Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;

    move-result-object v0

    .line 26
    .local v0, "appSettings":Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;
    invoke-virtual {v0}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->getDBConnector()Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;

    move-result-object v3

    .line 27
    .local v3, "dbConnector":Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;
    const v6, 0x7f0a0017

    invoke-virtual {p0, v6}, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 28
    .local v2, "ctrlOrientation":Landroid/widget/CheckBox;
    const-string v6, "CONTROLS_ORIENTATION"

    invoke-virtual {v0, v6}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "R"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 29
    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 32
    :cond_0
    const v6, 0x7f0a0018

    invoke-virtual {p0, v6}, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 33
    .local v4, "preferStorage":Landroid/widget/CheckBox;
    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/IOUtils;->isExternalStorageAvailable()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/IOUtils;->isExternalStorageReadOnly()Z

    move-result v6

    if-nez v6, :cond_2

    .line 34
    const-string v6, "PREFER_STORAGE"

    invoke-virtual {v0, v6}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "I"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 35
    invoke-virtual {v4, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 43
    :goto_0
    const v6, 0x7f0a0019

    invoke-virtual {p0, v6}, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 44
    .local v5, "saveSettings":Landroid/widget/Button;
    new-instance v6, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity$1;

    invoke-direct {v6, p0, v2, v0, v4}, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity$1;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;Landroid/widget/CheckBox;Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v6, 0x7f0a001a

    invoke-virtual {p0, v6}, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 67
    .local v1, "cancelSettings":Landroid/widget/Button;
    new-instance v6, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity$2;

    invoke-direct {v6, p0}, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity$2;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void

    .line 37
    .end local v1    # "cancelSettings":Landroid/widget/Button;
    .end local v5    # "saveSettings":Landroid/widget/Button;
    :cond_1
    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 94
    const/4 v0, 0x1

    return v0
.end method

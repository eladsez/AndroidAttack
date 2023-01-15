.class public Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;
.super Landroid/app/Activity;
.source "MenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$IncomingHandler;,
        Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$MyLicenseCheckerCallback;,
        Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$WaitForService;
    }
.end annotation


# static fields
.field private static final BASE64_PUBLIC_KEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAi34fOphPDhjyebGwRePXPe8aJWu0lKmE9dSDzhUrel4ZRHk6Q707sMVF5wmF1BHxVB7HEj9DfB7LFinuagStwxxbReRx4SiQ0bT4s0O1RPzYqWPKP9kqsVvhiler0wohHFvZsFeLYhzl3eq3PB6MbtAz8l++cyiMD5cJ2pJ25XOUVxlI7iLT4h9JPHBdDJk/VfY5s8l7wKjeWJzLs3SV9Ns8MmfNviMnz/ziGDeoUklRvDLAbXAKDtW0Zw30ScbzheFFDMjKwCbBX/QsO5Mf6xpTxomEqOExl5oCMRGqpwNxbgINK5yM9eIdj5mB9l7iVWlvkwoiDkRolpdaIBRFeQIDAQAB"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SALT:[B


# instance fields
.field private mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mHandler:Landroid/os/Handler;

.field mIsBound:Z

.field private mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

.field final mMessenger:Landroid/os/Messenger;

.field mService:Landroid/os/Messenger;

.field private final me:Landroid/app/Activity;

.field waitForService:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$WaitForService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->LOG_TAG:Ljava/lang/String;

    .line 45
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->SALT:[B

    .line 39
    return-void

    .line 45
    :array_0
    .array-data 1
        -0x2ft
        0x43t
        0x21t
        -0x7ct
        -0x62t
        -0x33t
        0x46t
        -0x3et
        0x37t
        0x59t
        -0x5ct
        -0x2bt
        0x4ct
        -0x6ft
        -0x1ft
        -0x76t
        -0xft
        0x21t
        -0x3et
        0x56t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput-object p0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->me:Landroid/app/Activity;

    .line 56
    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->mService:Landroid/os/Messenger;

    .line 57
    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->waitForService:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$WaitForService;

    .line 58
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$IncomingHandler;

    invoke-direct {v1, p0}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$IncomingHandler;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->mMessenger:Landroid/os/Messenger;

    .line 67
    new-instance v0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$1;

    invoke-direct {v0, p0}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$1;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;)V

    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 39
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->me:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;)Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$3(Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->finishApplication()V

    return-void
.end method

.method private doCheck()V
    .locals 2

    .prologue
    .line 137
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 138
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/vending/licensing/LicenseChecker;->checkAccess(Lcom/google/android/vending/licensing/LicenseCheckerCallback;)V

    .line 139
    return-void
.end method

.method private finishApplication()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$2;

    invoke-direct {v1, p0}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$2;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 155
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->setRequestedOrientation(I)V

    .line 156
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    const v9, 0x7f030001

    invoke-virtual {p0, v9}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->setContentView(I)V

    .line 162
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->setRequestedOrientation(I)V

    .line 164
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->mHandler:Landroid/os/Handler;

    .line 166
    invoke-virtual {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "android_id"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "deviceId":Ljava/lang/String;
    new-instance v9, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$MyLicenseCheckerCallback;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$MyLicenseCheckerCallback;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$MyLicenseCheckerCallback;)V

    iput-object v9, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    .line 171
    new-instance v9, Lcom/google/android/vending/licensing/LicenseChecker;

    .line 172
    new-instance v10, Lcom/google/android/vending/licensing/ServerManagedPolicy;

    .line 173
    new-instance v11, Lcom/google/android/vending/licensing/AESObfuscator;

    sget-object v12, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->SALT:[B

    invoke-virtual {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13, v2}, Lcom/google/android/vending/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v10, p0, v11}, Lcom/google/android/vending/licensing/ServerManagedPolicy;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Obfuscator;)V

    .line 174
    const-string v11, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAi34fOphPDhjyebGwRePXPe8aJWu0lKmE9dSDzhUrel4ZRHk6Q707sMVF5wmF1BHxVB7HEj9DfB7LFinuagStwxxbReRx4SiQ0bT4s0O1RPzYqWPKP9kqsVvhiler0wohHFvZsFeLYhzl3eq3PB6MbtAz8l++cyiMD5cJ2pJ25XOUVxlI7iLT4h9JPHBdDJk/VfY5s8l7wKjeWJzLs3SV9Ns8MmfNviMnz/ziGDeoUklRvDLAbXAKDtW0Zw30ScbzheFFDMjKwCbBX/QsO5Mf6xpTxomEqOExl5oCMRGqpwNxbgINK5yM9eIdj5mB9l7iVWlvkwoiDkRolpdaIBRFeQIDAQAB"

    invoke-direct {v9, p0, v10, v11}, Lcom/google/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Ljava/lang/String;)V

    .line 171
    iput-object v9, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    .line 175
    invoke-direct {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->doCheck()V

    .line 179
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v9}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 180
    new-instance v9, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$WaitForService;

    invoke-direct {v9, p0}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$WaitForService;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;)V

    iput-object v9, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->waitForService:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$WaitForService;

    .line 181
    iget-object v9, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->waitForService:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$WaitForService;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Void;

    invoke-virtual {v9, v10}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$WaitForService;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 183
    new-instance v1, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;

    invoke-direct {v1, p0}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;-><init>(Landroid/app/Activity;)V

    .line 184
    .local v1, "dbConnector":Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;
    invoke-static {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->getInstance(Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;)Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;

    move-result-object v0

    .line 186
    .local v0, "appSettings":Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;
    const-string v9, "RATE_EXECUTION_COUNTER"

    invoke-virtual {v0, v9}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 185
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 187
    .local v3, "executionCounter":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x3e8

    if-ge v9, v10, :cond_0

    .line 188
    const-string v9, "RATE_EXECUTION_COUNTER"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 188
    invoke-virtual {v0, v9, v10}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->saveSettings()V

    .line 193
    :cond_0
    const v9, 0x7f0a000b

    invoke-virtual {p0, v9}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 194
    .local v5, "extendedNoteBtn":Landroid/widget/Button;
    new-instance v9, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$3;

    invoke-direct {v9, p0}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$3;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;)V

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    const v9, 0x7f0a000c

    invoke-virtual {p0, v9}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 206
    .local v8, "viewNotesBtn":Landroid/widget/Button;
    new-instance v9, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$4;

    invoke-direct {v9, p0}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$4;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    const v9, 0x7f0a000d

    invoke-virtual {p0, v9}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 236
    .local v7, "settingsBtn":Landroid/widget/Button;
    new-instance v9, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$5;

    invoke-direct {v9, p0}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$5;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;)V

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    const v9, 0x7f0a000e

    invoke-virtual {p0, v9}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 245
    .local v6, "rateBtn":Landroid/widget/Button;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x3e8

    if-ge v9, v10, :cond_1

    .line 246
    new-instance v9, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$6;

    invoke-direct {v9, p0, v3, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$6;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;Ljava/lang/Integer;Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;)V

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    :goto_0
    const v9, 0x7f0a000f

    invoke-virtual {p0, v9}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 266
    .local v4, "exitBtn":Landroid/widget/Button;
    new-instance v9, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$7;

    invoke-direct {v9, p0}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$7;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;)V

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    return-void

    .line 262
    .end local v4    # "exitBtn":Landroid/widget/Button;
    :cond_1
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 296
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 297
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    invoke-virtual {v1}, Lcom/google/android/vending/licensing/LicenseChecker;->onDestroy()V

    .line 300
    :try_start_0
    iget-boolean v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->mIsBound:Z

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 302
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->mIsBound:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "MainActivity"

    const-string v2, "Failed to unbind from the service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

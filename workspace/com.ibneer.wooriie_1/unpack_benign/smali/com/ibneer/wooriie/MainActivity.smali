.class public Lcom/ibneer/wooriie/MainActivity;
.super Lorg/apache/cordova/DroidGap;
.source "MainActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibneer/wooriie/MainActivity$DownloadWebpageText;
    }
.end annotation


# instance fields
.field private completeReceiver:Landroid/content/BroadcastReceiver;

.field private httpConnect:Lcom/ibneer/wooriie/GCMHttpConnect;

.field private httpRequest:Lcom/ibneer/wooriie/GCMHttpConnect$Request;

.field mSendTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mToastMessageReceiver:Landroid/content/BroadcastReceiver;

.field sender:Lcom/google/android/gcm/server/Sender;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/cordova/DroidGap;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibneer/wooriie/MainActivity;->httpConnect:Lcom/ibneer/wooriie/GCMHttpConnect;

    .line 53
    new-instance v0, Lcom/ibneer/wooriie/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/ibneer/wooriie/MainActivity$1;-><init>(Lcom/ibneer/wooriie/MainActivity;)V

    iput-object v0, p0, Lcom/ibneer/wooriie/MainActivity;->httpRequest:Lcom/ibneer/wooriie/GCMHttpConnect$Request;

    .line 356
    new-instance v0, Lcom/ibneer/wooriie/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/ibneer/wooriie/MainActivity$2;-><init>(Lcom/ibneer/wooriie/MainActivity;)V

    iput-object v0, p0, Lcom/ibneer/wooriie/MainActivity;->completeReceiver:Landroid/content/BroadcastReceiver;

    .line 481
    new-instance v0, Lcom/ibneer/wooriie/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/ibneer/wooriie/MainActivity$3;-><init>(Lcom/ibneer/wooriie/MainActivity;)V

    iput-object v0, p0, Lcom/ibneer/wooriie/MainActivity;->mToastMessageReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/ibneer/wooriie/MainActivity;)Lorg/apache/cordova/CordovaWebView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ibneer/wooriie/MainActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ibneer/wooriie/MainActivity;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/ibneer/wooriie/MainActivity;->mToastMessageReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ibneer/wooriie/MainActivity;)V
    .locals 0

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/ibneer/wooriie/MainActivity;->registerDevice()V

    return-void
.end method

.method private registerDevice()V
    .locals 5

    .prologue
    .line 464
    sget-object v1, Lcom/ibneer/wooriie/MainActivity;->TAG:Ljava/lang/String;

    const-string v2, "registerDevice()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 467
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->checkManifest(Landroid/content/Context;)V

    .line 469
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "regId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ibneer/wooriie/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1070105616021"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 476
    return-void
.end method


# virtual methods
.method public closeactivity()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 341
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 342
    const-string v1, "\uc885\ub8cc"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 343
    const-string v1, "\uc885\ub8cc \ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 344
    const/high16 v1, 0x7f020000

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 345
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 346
    const-string v1, "\uc544\ub2c8\uc694"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 347
    const-string v1, "\uc608"

    new-instance v2, Lcom/ibneer/wooriie/MainActivity$6;

    invoke-direct {v2, p0}, Lcom/ibneer/wooriie/MainActivity$6;-><init>(Lcom/ibneer/wooriie/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 354
    return-void
.end method

.method public deldatas()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 177
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/ibneer/wooriie/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 178
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 179
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "serverip"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    const-string v2, "id"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    const-string v2, "passwd"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 182
    const-string v2, "chksave"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 183
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 186
    return-void
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 442
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/ibneer/wooriie/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 443
    .local v0, "mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 444
    .local v1, "phoneNumber":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 446
    const-string v2, "+82"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 449
    const-string v2, "+82"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 452
    :cond_0
    return-object v1
.end method

.method public loaddata1()Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 138
    const-string v3, "pref"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/ibneer/wooriie/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 139
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v3, "serverip"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "serverip":Ljava/lang/String;
    move-object v1, v2

    .line 141
    .local v1, "redata":Ljava/lang/String;
    return-object v1
.end method

.method public loaddata2()Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 145
    const-string v3, "pref"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/ibneer/wooriie/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 146
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v3, "id"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "id":Ljava/lang/String;
    move-object v2, v0

    .line 148
    .local v2, "redata":Ljava/lang/String;
    return-object v2
.end method

.method public loaddata3()Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 152
    const-string v3, "pref"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/ibneer/wooriie/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 153
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v3, "passwd"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "passwd":Ljava/lang/String;
    move-object v2, v0

    .line 155
    .local v2, "redata":Ljava/lang/String;
    return-object v2
.end method

.method public loaddata4()Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 159
    const-string v3, "pref"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/ibneer/wooriie/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 160
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v3, "chksave"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "chksave":Ljava/lang/String;
    move-object v2, v0

    .line 162
    .local v2, "redata":Ljava/lang/String;
    return-object v2
.end method

.method public loadpage()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 275
    const-string v8, "pref"

    invoke-virtual {p0, v8, v10}, Lcom/ibneer/wooriie/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 277
    .local v4, "pref":Landroid/content/SharedPreferences;
    const-string v8, "serverip"

    const-string v9, ""

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "home_url":Ljava/lang/String;
    const-string v8, "id"

    const-string v9, ""

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "id":Ljava/lang/String;
    const-string v8, "passwd"

    const-string v9, ""

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 281
    .local v5, "pw":Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 284
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "http://"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/mobile/login_check.php"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 285
    .local v6, "test_home_url":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "id="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&passwd="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, "postData":Ljava/lang/String;
    iget-object v8, p0, Lcom/ibneer/wooriie/MainActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    const-string v9, "BASE64"

    invoke-static {v3, v9}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Lorg/apache/cordova/CordovaWebView;->postUrl(Ljava/lang/String;[B)V

    .line 288
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 289
    .local v2, "mHandler":Landroid/os/Handler;
    new-instance v8, Lcom/ibneer/wooriie/MainActivity$5;

    invoke-direct {v8, p0}, Lcom/ibneer/wooriie/MainActivity$5;-><init>(Lcom/ibneer/wooriie/MainActivity;)V

    .line 307
    const-wide/16 v9, 0x7d0

    .line 289
    invoke-virtual {v2, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 323
    .end local v2    # "mHandler":Landroid/os/Handler;
    .end local v3    # "postData":Ljava/lang/String;
    .end local v6    # "test_home_url":Ljava/lang/String;
    :goto_0
    return-void

    .line 317
    :cond_0
    const-string v8, "\ud68c\uc6d0\uc815\ubcf4\ub97c \uc785\ub825\ud558\uc138\uc694"

    invoke-static {p0, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 318
    .local v7, "toast":Landroid/widget/Toast;
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 431
    invoke-super {p0, p1}, Lorg/apache/cordova/DroidGap;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 432
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 64
    invoke-super {p0, p1}, Lorg/apache/cordova/DroidGap;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const-string v4, "splashscreen"

    const v5, 0x7f020001

    invoke-super {p0, v4, v5}, Lorg/apache/cordova/DroidGap;->setIntegerProperty(Ljava/lang/String;I)V

    .line 66
    const-string v4, "file:///android_asset/www/index.html"

    const/16 v5, 0xbb8

    invoke-super {p0, v4, v5}, Lorg/apache/cordova/DroidGap;->loadUrl(Ljava/lang/String;I)V

    .line 69
    invoke-virtual {p0}, Lcom/ibneer/wooriie/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/ibneer/wooriie/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "url":Ljava/lang/String;
    invoke-super {p0, v3}, Lorg/apache/cordova/DroidGap;->loadUrl(Ljava/lang/String;)V

    .line 78
    .end local v3    # "url":Ljava/lang/String;
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 80
    .local v2, "pref":Landroid/content/SharedPreferences;
    const-string v4, "onechk"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "check_value":Ljava/lang/String;
    const-string v4, "OK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 84
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 85
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "keycheck"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 86
    const-string v4, "sound"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 87
    const-string v4, "vibration"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 88
    const-string v4, "screen"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 89
    const-string v4, "onechk"

    const-string v5, "OK"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v4, p0, Lcom/ibneer/wooriie/MainActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    const-string v5, "active"

    invoke-virtual {v4, p0, v5}, Lorg/apache/cordova/CordovaWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v4, p0, Lcom/ibneer/wooriie/MainActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    new-instance v5, Lcom/ibneer/wooriie/MainActivity$4;

    invoke-direct {v5, p0}, Lcom/ibneer/wooriie/MainActivity$4;-><init>(Lcom/ibneer/wooriie/MainActivity;)V

    invoke-virtual {v4, v5}, Lorg/apache/cordova/CordovaWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 135
    return-void

    .line 74
    .end local v0    # "check_value":Ljava/lang/String;
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :cond_1
    const-string v4, "file:///android_asset/www/main.html"

    invoke-super {p0, v4}, Lorg/apache/cordova/DroidGap;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/ibneer/wooriie/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 399
    const/4 v0, 0x1

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 501
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    .line 403
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 428
    :goto_0
    return v4

    .line 405
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 406
    const-string v2, "\uc885\ub8cc"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 407
    const-string v2, "\uc885\ub8cc \ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 408
    const/high16 v2, 0x7f020000

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 409
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 410
    const-string v2, "\uc544\ub2c8\uc694"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 411
    const-string v2, "\uc608"

    new-instance v3, Lcom/ibneer/wooriie/MainActivity$7;

    invoke-direct {v3, p0}, Lcom/ibneer/wooriie/MainActivity$7;-><init>(Lcom/ibneer/wooriie/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 417
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 422
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ibneer/wooriie/Setting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 423
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ibneer/wooriie/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x7f090000
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 368
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onPause()V

    .line 370
    iget-object v0, p0, Lcom/ibneer/wooriie/MainActivity;->completeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/ibneer/wooriie/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 371
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 375
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 376
    .local v0, "completeFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/ibneer/wooriie/MainActivity;->completeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/ibneer/wooriie/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 377
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onResume()V

    .line 378
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 386
    invoke-super {p0, p1}, Lorg/apache/cordova/DroidGap;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 387
    iget-object v0, p0, Lcom/ibneer/wooriie/MainActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CordovaWebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 388
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 392
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onStop()V

    .line 393
    iget-object v0, p0, Lcom/ibneer/wooriie/MainActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->stopLoading()V

    .line 394
    return-void
.end method

.method public resetpage()V
    .locals 1

    .prologue
    .line 326
    const-string v0, "file:///android_asset/www/main.html"

    invoke-super {p0, v0}, Lorg/apache/cordova/DroidGap;->loadUrl(Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public savedatas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serverip"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "passwd"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 166
    const-string v3, "pref"

    invoke-virtual {p0, v3, v4}, Lcom/ibneer/wooriie/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 167
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 168
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "serverip"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    const-string v3, "id"

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    const-string v3, "passwd"

    invoke-interface {v0, v3, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    const-string v3, "\uc800\uc7a5\ud558\uc600\uc2b5\ub2c8\ub2e4."

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 173
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 174
    return-void
.end method

.method public testurl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "serverip"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "passwd"    # Ljava/lang/String;
    .param p4, "chk"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 191
    const-string v6, "pref"

    invoke-virtual {p0, v6, v9}, Lcom/ibneer/wooriie/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 192
    .local v4, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 193
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "serverip"

    invoke-interface {v2, v6, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 194
    const-string v6, "id"

    invoke-interface {v2, v6, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    const-string v6, "passwd"

    invoke-interface {v2, v6, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 196
    const-string v6, "chksave"

    invoke-interface {v2, v6, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 197
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 201
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 202
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/ibneer/wooriie/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 203
    .local v0, "conMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 204
    .local v3, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 206
    new-instance v6, Lcom/ibneer/wooriie/MainActivity$DownloadWebpageText;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/ibneer/wooriie/MainActivity$DownloadWebpageText;-><init>(Lcom/ibneer/wooriie/MainActivity;Lcom/ibneer/wooriie/MainActivity$DownloadWebpageText;)V

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v6, v7}, Lcom/ibneer/wooriie/MainActivity$DownloadWebpageText;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 218
    .end local v0    # "conMgr":Landroid/net/ConnectivityManager;
    .end local v3    # "netInfo":Landroid/net/NetworkInfo;
    :goto_0
    return-void

    .line 209
    .restart local v0    # "conMgr":Landroid/net/ConnectivityManager;
    .restart local v3    # "netInfo":Landroid/net/NetworkInfo;
    :cond_0
    new-instance v6, Ljava/lang/Exception;

    const v7, 0x7f060005

    invoke-virtual {p0, v7}, Lcom/ibneer/wooriie/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v0    # "conMgr":Landroid/net/ConnectivityManager;
    .end local v3    # "netInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 216
    .local v5, "toast":Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 212
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "toast":Landroid/widget/Toast;
    :cond_1
    :try_start_1
    new-instance v6, Ljava/lang/Exception;

    const v7, 0x7f060006

    invoke-virtual {p0, v7}, Lcom/ibneer/wooriie/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public whatthe()V
    .locals 3

    .prologue
    .line 329
    const-string v1, "\uc8fc\uc18c\uac00 \uc798\ubabb\ub418\uc5c8\uc2b5\ub2c8\ub2e4"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 330
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 335
    return-void
.end method

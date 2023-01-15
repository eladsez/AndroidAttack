.class public Lorg/apache/cordova/Device;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "Device.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Device"

.field public static cordovaVersion:Ljava/lang/String;

.field public static platform:Ljava/lang/String;

.field public static uuid:Ljava/lang/String;


# instance fields
.field telephonyReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "2.2.0"

    sput-object v0, Lorg/apache/cordova/Device;->cordovaVersion:Ljava/lang/String;

    .line 43
    const-string v0, "Android"

    sput-object v0, Lorg/apache/cordova/Device;->platform:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/Device;->telephonyReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    return-void
.end method

.method private initTelephonyReceiver()V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    new-instance v1, Lorg/apache/cordova/Device$1;

    invoke-direct {v1, p0}, Lorg/apache/cordova/Device$1;-><init>(Lorg/apache/cordova/Device;)V

    iput-object v1, p0, Lorg/apache/cordova/Device;->telephonyReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    iget-object v1, p0, Lorg/apache/cordova/Device;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/Device;->telephonyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 76
    const-string v1, "getDeviceInfo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 78
    .local v0, "r":Lorg/json/JSONObject;
    const-string v1, "uuid"

    sget-object v2, Lorg/apache/cordova/Device;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v1, "version"

    invoke-virtual {p0}, Lorg/apache/cordova/Device;->getOSVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v1, "platform"

    sget-object v2, Lorg/apache/cordova/Device;->platform:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v1, "name"

    invoke-virtual {p0}, Lorg/apache/cordova/Device;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v1, "cordova"

    sget-object v2, Lorg/apache/cordova/Device;->cordovaVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    invoke-virtual {p3, v0}, Lorg/apache/cordova/api/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 91
    const/4 v1, 0x1

    .end local v0    # "r":Lorg/json/JSONObject;
    :goto_0
    return v1

    .line 89
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCordovaVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lorg/apache/cordova/Device;->cordovaVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 174
    .local v0, "model":Ljava/lang/String;
    return-object v0
.end method

.method public getOSVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 189
    .local v0, "osversion":Ljava/lang/String;
    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lorg/apache/cordova/Device;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 179
    .local v0, "productname":Ljava/lang/String;
    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 195
    .local v0, "sdkversion":Ljava/lang/String;
    return-object v0
.end method

.method public getTimeZoneID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 200
    .local v0, "tz":Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUuid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 159
    iget-object v1, p0, Lorg/apache/cordova/Device;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "uuid":Ljava/lang/String;
    return-object v0
.end method

.method public initialize(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 1
    .param p1, "cordova"    # Lorg/apache/cordova/api/CordovaInterface;
    .param p2, "webView"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/api/CordovaPlugin;->initialize(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 63
    invoke-virtual {p0}, Lorg/apache/cordova/Device;->getUuid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/cordova/Device;->uuid:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lorg/apache/cordova/Device;->initTelephonyReceiver()V

    .line 65
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/cordova/Device;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/Device;->telephonyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    return-void
.end method

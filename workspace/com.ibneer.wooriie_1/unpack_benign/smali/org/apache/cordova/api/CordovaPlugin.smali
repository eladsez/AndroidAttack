.class public Lorg/apache/cordova/api/CordovaPlugin;
.super Ljava/lang/Object;
.source "CordovaPlugin.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public cordova:Lorg/apache/cordova/api/CordovaInterface;

.field public id:Ljava/lang/String;

.field public webView:Lorg/apache/cordova/CordovaWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/apache/cordova/api/CordovaPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/cordova/api/CordovaPlugin;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "rawArgs"    # Ljava/lang/String;
    .param p3, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "args":Lorg/json/JSONArray;
    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/cordova/api/CordovaPlugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z

    move-result v1

    return v1
.end method

.method public execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/apache/cordova/CordovaArgs;
    .param p3, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lorg/apache/cordova/CordovaArgs;

    invoke-direct {v0, p2}, Lorg/apache/cordova/CordovaArgs;-><init>(Lorg/json/JSONArray;)V

    .line 85
    .local v0, "cordovaArgs":Lorg/apache/cordova/CordovaArgs;
    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/cordova/api/CordovaPlugin;->execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/api/CallbackContext;)Z

    move-result v1

    return v1
.end method

.method public initialize(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 1
    .param p1, "cordova"    # Lorg/apache/cordova/api/CordovaInterface;
    .param p2, "webView"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    .line 45
    sget-boolean v0, Lorg/apache/cordova/api/CordovaPlugin;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/cordova/api/CordovaPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lorg/apache/cordova/api/CordovaPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    .line 47
    iput-object p2, p0, Lorg/apache/cordova/api/CordovaPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    .line 48
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 155
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 126
    return-void
.end method

.method public onOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public onPause(Z)V
    .locals 0
    .param p1, "multitasking"    # Z

    .prologue
    .line 112
    return-void
.end method

.method public onReset()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public onResume(Z)V
    .locals 0
    .param p1, "multitasking"    # Z

    .prologue
    .line 120
    return-void
.end method

.method public shouldInterceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.class public Lorg/apache/cordova/inappbrowser/InAppBrowser;
.super Lorg/apache/cordova/CordovaPlugin;
.source "InAppBrowser.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;
    }
.end annotation


# static fields
.field private static final CLEAR_ALL_CACHE:Ljava/lang/String; = "clearcache"

.field private static final CLEAR_SESSION_CACHE:Ljava/lang/String; = "clearsessioncache"

.field private static final CLOSE_BUTTON_CAPTION:Ljava/lang/String; = "closebuttoncaption"

.field private static final EXIT_EVENT:Ljava/lang/String; = "exit"

.field private static final HIDDEN:Ljava/lang/String; = "hidden"

.field private static final LOAD_ERROR_EVENT:Ljava/lang/String; = "loaderror"

.field private static final LOAD_START_EVENT:Ljava/lang/String; = "loadstart"

.field private static final LOAD_STOP_EVENT:Ljava/lang/String; = "loadstop"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field protected static final LOG_TAG:Ljava/lang/String; = "InAppBrowser"

.field private static final NULL:Ljava/lang/String; = "null"

.field private static final SELF:Ljava/lang/String; = "_self"

.field private static final SYSTEM:Ljava/lang/String; = "_system"


# instance fields
.field private buttonLabel:Ljava/lang/String;

.field private callbackContext:Lorg/apache/cordova/CallbackContext;

.field private clearAllCache:Z

.field private clearSessionCache:Z

.field private dialog:Landroid/app/Dialog;

.field private edittext:Landroid/widget/EditText;

.field private inAppWebView:Landroid/webkit/WebView;

.field private openWindowHidden:Z

.field private showLocationBar:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showLocationBar:Z

    .line 90
    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->openWindowHidden:Z

    .line 91
    const-string v0, "Done"

    iput-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->buttonLabel:Ljava/lang/String;

    .line 92
    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearAllCache:Z

    .line 93
    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearSessionCache:Z

    .line 634
    return-void
.end method

.method static synthetic access$000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$002(Lorg/apache/cordova/inappbrowser/InAppBrowser;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 68
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;Lorg/json/JSONObject;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearSessionCache:Z

    return v0
.end method

.method static synthetic access$1100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->getShowLocationBar()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->openWindowHidden:Z

    return v0
.end method

.method static synthetic access$1300(Lorg/apache/cordova/inappbrowser/InAppBrowser;Lorg/json/JSONObject;ZLorg/apache/cordova/PluginResult$Status;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lorg/apache/cordova/PluginResult$Status;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;ZLorg/apache/cordova/PluginResult$Status;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/cordova/inappbrowser/InAppBrowser;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->goBack()V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/cordova/inappbrowser/InAppBrowser;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->goForward()V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->edittext:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$402(Lorg/apache/cordova/inappbrowser/InAppBrowser;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .param p1, "x1"    # Landroid/widget/EditText;

    .prologue
    .line 68
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->edittext:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$500(Lorg/apache/cordova/inappbrowser/InAppBrowser;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->navigate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->buttonLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/cordova/inappbrowser/InAppBrowser;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeDialog()V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$802(Lorg/apache/cordova/inappbrowser/InAppBrowser;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .param p1, "x1"    # Landroid/webkit/WebView;

    .prologue
    .line 68
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$900(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearAllCache:Z

    return v0
.end method

.method private closeDialog()V
    .locals 6

    .prologue
    .line 316
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    .line 317
    .local v0, "childView":Landroid/webkit/WebView;
    new-instance v3, Lorg/apache/cordova/inappbrowser/InAppBrowser$2;

    invoke-direct {v3, p0, v0}, Lorg/apache/cordova/inappbrowser/InAppBrowser$2;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;Landroid/webkit/WebView;)V

    .line 326
    .local v3, "runnable":Ljava/lang/Runnable;
    iget-object v4, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 327
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 328
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v4, "type"

    const-string v5, "exit"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .end local v0    # "childView":Landroid/webkit/WebView;
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "runnable":Ljava/lang/Runnable;
    :goto_0
    iget-object v4, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->dialog:Landroid/app/Dialog;

    if-eqz v4, :cond_0

    .line 336
    iget-object v4, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->dialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 338
    :cond_0
    return-void

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, "ex":Lorg/json/JSONException;
    const-string v4, "InAppBrowser"

    const-string v5, "Should never happen"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getShowLocationBar()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showLocationBar:Z

    return v0
.end method

.method private goBack()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 347
    :cond_0
    return-void
.end method

.method private goForward()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 356
    :cond_0
    return-void
.end method

.method private injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "jsWrapper"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 235
    if-eqz p2, :cond_0

    .line 236
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 237
    .local v0, "jsonEsc":Lorg/json/JSONArray;
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 238
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "jsonRepr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "jsonSourceString":Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 245
    .end local v0    # "jsonEsc":Lorg/json/JSONArray;
    .end local v1    # "jsonRepr":Ljava/lang/String;
    .end local v2    # "jsonSourceString":Ljava/lang/String;
    .local v3, "scriptToInject":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "javascript:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 246
    return-void

    .line 242
    .end local v3    # "scriptToInject":Ljava/lang/String;
    :cond_0
    move-object v3, p1

    .restart local v3    # "scriptToInject":Ljava/lang/String;
    goto :goto_0
.end method

.method private navigate(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 364
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 365
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->edittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 367
    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "file:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 372
    :goto_0
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 373
    return-void

    .line 370
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseFeature(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .param p1, "optString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    const-string v5, "null"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 256
    const/4 v2, 0x0

    .line 273
    :cond_0
    return-object v2

    .line 258
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 259
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v0, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .local v0, "features":Ljava/util/StringTokenizer;
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 262
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v6, "="

    invoke-direct {v3, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .local v3, "option":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 264
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "key":Ljava/lang/String;
    const-string v5, "closebuttoncaption"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 266
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->buttonLabel:Ljava/lang/String;

    goto :goto_0

    .line 268
    :cond_3
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v6, "no"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 269
    .local v4, "value":Ljava/lang/Boolean;
    :goto_1
    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 268
    .end local v4    # "value":Ljava/lang/Boolean;
    :cond_4
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method private sendUpdate(Lorg/json/JSONObject;Z)V
    .locals 1
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "keepCallback"    # Z

    .prologue
    .line 615
    sget-object v0, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;ZLorg/apache/cordova/PluginResult$Status;)V

    .line 616
    return-void
.end method

.method private sendUpdate(Lorg/json/JSONObject;ZLorg/apache/cordova/PluginResult$Status;)V
    .locals 2
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "keepCallback"    # Z
    .param p3, "status"    # Lorg/apache/cordova/PluginResult$Status;

    .prologue
    .line 624
    new-instance v0, Lorg/apache/cordova/PluginResult;

    invoke-direct {v0, p3, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 625
    .local v0, "result":Lorg/apache/cordova/PluginResult;
    invoke-virtual {v0, p2}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 626
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 627
    return-void
.end method

.method private updateUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 285
    .local v0, "newUrl":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->isRelative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v2}, Lorg/apache/cordova/CordovaWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v4}, Lorg/apache/cordova/CordovaWebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 288
    :cond_0
    return-object p1
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 14
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 105
    :try_start_0
    const-string v10, "open"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 106
    move-object/from16 v0, p3

    iput-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 107
    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 108
    .local v9, "url":Ljava/lang/String;
    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    .line 109
    .local v8, "target":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "null"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 110
    :cond_0
    const-string v8, "_self"

    .line 112
    :cond_1
    const/4 v10, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->parseFeature(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 114
    .local v2, "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v10, "InAppBrowser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "target = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-direct {p0, v9}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->updateUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 117
    const-string v6, ""

    .line 120
    .local v6, "result":Ljava/lang/String;
    const-string v10, "_self"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 121
    const-string v10, "InAppBrowser"

    const-string v11, "in self"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v10, "file://"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "javascript:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v9}, Lorg/apache/cordova/Config;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 125
    :cond_2
    iget-object v10, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v10, v9}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 154
    :goto_0
    new-instance v5, Lorg/apache/cordova/PluginResult;

    sget-object v10, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v5, v10, v6}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 155
    .local v5, "pluginResult":Lorg/apache/cordova/PluginResult;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 156
    iget-object v10, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v10, v5}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 214
    .end local v2    # "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v5    # "pluginResult":Lorg/apache/cordova/PluginResult;
    .end local v6    # "result":Ljava/lang/String;
    .end local v8    # "target":Ljava/lang/String;
    .end local v9    # "url":Ljava/lang/String;
    :goto_1
    const/4 v10, 0x1

    :goto_2
    return v10

    .line 128
    .restart local v2    # "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v6    # "result":Ljava/lang/String;
    .restart local v8    # "target":Ljava/lang/String;
    .restart local v9    # "url":Ljava/lang/String;
    :cond_3
    const-string v10, "tel:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-eqz v10, :cond_4

    .line 131
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.intent.action.DIAL"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 133
    iget-object v10, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v10}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 134
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    :try_start_2
    const-string v10, "InAppBrowser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error dialing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 211
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v6    # "result":Ljava/lang/String;
    .end local v8    # "target":Ljava/lang/String;
    .end local v9    # "url":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 212
    .local v1, "e":Lorg/json/JSONException;
    iget-object v10, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v11, Lorg/apache/cordova/PluginResult;

    sget-object v12, Lorg/apache/cordova/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v11, v12}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    invoke-virtual {v10, v11}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_1

    .line 140
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v2    # "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v6    # "result":Ljava/lang/String;
    .restart local v8    # "target":Ljava/lang/String;
    .restart local v9    # "url":Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-virtual {p0, v9, v2}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showWebPage(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 144
    :cond_5
    const-string v10, "_system"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 145
    const-string v10, "InAppBrowser"

    const-string v11, "in system"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0, v9}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->openExternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 150
    :cond_6
    const-string v10, "InAppBrowser"

    const-string v11, "in blank"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0, v9, v2}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showWebPage(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 158
    .end local v2    # "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v6    # "result":Ljava/lang/String;
    .end local v8    # "target":Ljava/lang/String;
    .end local v9    # "url":Ljava/lang/String;
    :cond_7
    const-string v10, "close"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 159
    invoke-direct {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeDialog()V

    .line 160
    iget-object v10, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v11, Lorg/apache/cordova/PluginResult;

    sget-object v12, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v11, v12}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    invoke-virtual {v10, v11}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto/16 :goto_1

    .line 162
    :cond_8
    const-string v10, "injectScriptCode"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 163
    const/4 v4, 0x0

    .line 164
    .local v4, "jsWrapper":Ljava/lang/String;
    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 165
    const-string v10, "prompt(JSON.stringify([eval(%%s)]), \'gap-iab://%s\')"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual/range {p3 .. p3}, Lorg/apache/cordova/CallbackContext;->getCallbackId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 167
    :cond_9
    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v4}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 169
    .end local v4    # "jsWrapper":Ljava/lang/String;
    :cond_a
    const-string v10, "injectScriptFile"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 171
    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 172
    const-string v10, "(function(d) { var c = d.createElement(\'script\'); c.src = %%s; c.onload = function() { prompt(\'\', \'gap-iab://%s\'); }; d.body.appendChild(c); })(document)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual/range {p3 .. p3}, Lorg/apache/cordova/CallbackContext;->getCallbackId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 176
    .restart local v4    # "jsWrapper":Ljava/lang/String;
    :goto_3
    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v4}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 174
    .end local v4    # "jsWrapper":Ljava/lang/String;
    :cond_b
    const-string v4, "(function(d) { var c = d.createElement(\'script\'); c.src = %s; d.body.appendChild(c); })(document)"

    .restart local v4    # "jsWrapper":Ljava/lang/String;
    goto :goto_3

    .line 178
    .end local v4    # "jsWrapper":Ljava/lang/String;
    :cond_c
    const-string v10, "injectStyleCode"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 180
    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 181
    const-string v10, "(function(d) { var c = d.createElement(\'style\'); c.innerHTML = %%s; d.body.appendChild(c); prompt(\'\', \'gap-iab://%s\');})(document)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual/range {p3 .. p3}, Lorg/apache/cordova/CallbackContext;->getCallbackId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 185
    .restart local v4    # "jsWrapper":Ljava/lang/String;
    :goto_4
    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v4}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 183
    .end local v4    # "jsWrapper":Ljava/lang/String;
    :cond_d
    const-string v4, "(function(d) { var c = d.createElement(\'style\'); c.innerHTML = %s; d.body.appendChild(c); })(document)"

    .restart local v4    # "jsWrapper":Ljava/lang/String;
    goto :goto_4

    .line 187
    .end local v4    # "jsWrapper":Ljava/lang/String;
    :cond_e
    const-string v10, "injectStyleFile"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 189
    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 190
    const-string v10, "(function(d) { var c = d.createElement(\'link\'); c.rel=\'stylesheet\'; c.type=\'text/css\'; c.href = %%s; d.head.appendChild(c); prompt(\'\', \'gap-iab://%s\');})(document)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual/range {p3 .. p3}, Lorg/apache/cordova/CallbackContext;->getCallbackId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 194
    .restart local v4    # "jsWrapper":Ljava/lang/String;
    :goto_5
    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v4}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 192
    .end local v4    # "jsWrapper":Ljava/lang/String;
    :cond_f
    const-string v4, "(function(d) { var c = d.createElement(\'link\'); c.rel=\'stylesheet\'; c.type=\'text/css\'; c.href = %s; d.head.appendChild(c); })(document)"

    .restart local v4    # "jsWrapper":Ljava/lang/String;
    goto :goto_5

    .line 196
    .end local v4    # "jsWrapper":Ljava/lang/String;
    :cond_10
    const-string v10, "show"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 197
    new-instance v7, Lorg/apache/cordova/inappbrowser/InAppBrowser$1;

    invoke-direct {v7, p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser$1;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;)V

    .line 203
    .local v7, "runnable":Ljava/lang/Runnable;
    iget-object v10, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v10}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 204
    new-instance v5, Lorg/apache/cordova/PluginResult;

    sget-object v10, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v5, v10}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 205
    .restart local v5    # "pluginResult":Lorg/apache/cordova/PluginResult;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 206
    iget-object v10, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v10, v5}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 209
    .end local v5    # "pluginResult":Lorg/apache/cordova/PluginResult;
    .end local v7    # "runnable":Ljava/lang/Runnable;
    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_2
.end method

.method public openExternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 300
    const/4 v1, 0x0

    .line 301
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v1    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 303
    iget-object v3, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 304
    const-string v3, ""
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 307
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v3

    .line 305
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    const-string v3, "InAppBrowser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InAppBrowser: Error loading url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 305
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_1
.end method

.method public showWebPage(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 393
    .local p2, "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showLocationBar:Z

    .line 394
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->openWindowHidden:Z

    .line 395
    if-eqz p2, :cond_2

    .line 396
    const-string v5, "location"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 397
    .local v3, "show":Ljava/lang/Boolean;
    if-eqz v3, :cond_0

    .line 398
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showLocationBar:Z

    .line 400
    :cond_0
    const-string v5, "hidden"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 401
    .local v1, "hidden":Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    .line 402
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->openWindowHidden:Z

    .line 404
    :cond_1
    const-string v5, "clearcache"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 405
    .local v0, "cache":Ljava/lang/Boolean;
    if-eqz v0, :cond_3

    .line 406
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearAllCache:Z

    .line 415
    .end local v0    # "cache":Ljava/lang/Boolean;
    .end local v1    # "hidden":Ljava/lang/Boolean;
    .end local v3    # "show":Ljava/lang/Boolean;
    :cond_2
    :goto_0
    iget-object v4, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->webView:Lorg/apache/cordova/CordovaWebView;

    .line 418
    .local v4, "thatWebView":Lorg/apache/cordova/CordovaWebView;
    new-instance v2, Lorg/apache/cordova/inappbrowser/InAppBrowser$3;

    invoke-direct {v2, p0, p1, v4}, Lorg/apache/cordova/inappbrowser/InAppBrowser$3;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;Ljava/lang/String;Lorg/apache/cordova/CordovaWebView;)V

    .line 605
    .local v2, "runnable":Ljava/lang/Runnable;
    iget-object v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 606
    const-string v5, ""

    return-object v5

    .line 408
    .end local v2    # "runnable":Ljava/lang/Runnable;
    .end local v4    # "thatWebView":Lorg/apache/cordova/CordovaWebView;
    .restart local v0    # "cache":Ljava/lang/Boolean;
    .restart local v1    # "hidden":Ljava/lang/Boolean;
    .restart local v3    # "show":Ljava/lang/Boolean;
    :cond_3
    const-string v5, "clearsessioncache"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cache":Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .line 409
    .restart local v0    # "cache":Ljava/lang/Boolean;
    if-eqz v0, :cond_2

    .line 410
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearSessionCache:Z

    goto :goto_0
.end method

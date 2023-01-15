.class public Luk/co/martinpearman/b4a/webviewsettings/WebViewSettings;
.super Ljava/lang/Object;
.source "WebViewSettings.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$Author;
    value = "Martin Pearman"
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "WebViewSettings"
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$Version;
    value = 1.3f
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$android$webkit$WebSettings$PluginState:[I

.field private static synthetic $SWITCH_TABLE$android$webkit$WebSettings$ZoomDensity:[I


# direct methods
.method static synthetic $SWITCH_TABLE$android$webkit$WebSettings$PluginState()[I
    .locals 3

    .prologue
    .line 22
    sget-object v0, Luk/co/martinpearman/b4a/webviewsettings/WebViewSettings;->$SWITCH_TABLE$android$webkit$WebSettings$PluginState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/webkit/WebSettings$PluginState;->values()[Landroid/webkit/WebSettings$PluginState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1}, Landroid/webkit/WebSettings$PluginState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1}, Landroid/webkit/WebSettings$PluginState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON_DEMAND:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1}, Landroid/webkit/WebSettings$PluginState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Luk/co/martinpearman/b4a/webviewsettings/WebViewSettings;->$SWITCH_TABLE$android$webkit$WebSettings$PluginState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$android$webkit$WebSettings$ZoomDensity()[I
    .locals 3

    .prologue
    .line 22
    sget-object v0, Luk/co/martinpearman/b4a/webviewsettings/WebViewSettings;->$SWITCH_TABLE$android$webkit$WebSettings$ZoomDensity:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/webkit/WebSettings$ZoomDensity;->values()[Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v1}, Landroid/webkit/WebSettings$ZoomDensity;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v1}, Landroid/webkit/WebSettings$ZoomDensity;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v1}, Landroid/webkit/WebSettings$ZoomDensity;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Luk/co/martinpearman/b4a/webviewsettings/WebViewSettings;->$SWITCH_TABLE$android$webkit$WebSettings$ZoomDensity:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllowFileAccess(Landroid/webkit/WebView;)Z
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v0

    return v0
.end method

.method public static getCacheMode(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 3
    .param p0, "webView1"    # Landroid/webkit/WebView;

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    .local v0, "cacheModes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LOAD_CACHE_ELSE_NETWORK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LOAD_CACHE_ONLY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LOAD_DEFAULT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LOAD_NO_CACHE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LOAD_NORMAL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getCacheMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "webView1":Landroid/webkit/WebView;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getCursiveFontFamily(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getCursiveFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDOMStorageEnabled(Landroid/webkit/WebView;)Z
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDomStorageEnabled()Z

    move-result v0

    return v0
.end method

.method public static getDatabasePath(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDatabasePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultFixedFontSize(Landroid/webkit/WebView;)I
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultFixedFontSize()I

    move-result v0

    return v0
.end method

.method public static getDefaultFontSize(Landroid/webkit/WebView;)I
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultFontSize()I

    move-result v0

    return v0
.end method

.method public static getDefaultTextEncodingName(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultTextEncodingName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultZoom(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 4
    .param p0, "webView1"    # Landroid/webkit/WebView;

    .prologue
    .line 88
    const-string v1, ""

    .line 89
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v0

    .line 90
    .local v0, "density":Landroid/webkit/WebSettings$ZoomDensity;
    invoke-static {}, Luk/co/martinpearman/b4a/webviewsettings/WebViewSettings;->$SWITCH_TABLE$android$webkit$WebSettings$ZoomDensity()[I

    move-result-object v2

    invoke-virtual {v0}, Landroid/webkit/WebSettings$ZoomDensity;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 101
    :goto_0
    return-object v1

    .line 92
    :pswitch_0
    const-string v1, "CLOSE"

    .line 93
    goto :goto_0

    .line 95
    :pswitch_1
    const-string v1, "FAR"

    .line 96
    goto :goto_0

    .line 98
    :pswitch_2
    const-string v1, "MEDIUM"

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getDisplayZoomControls(Landroid/webkit/WebView;)Z
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDisplayZoomControls()Z

    move-result v0

    return v0
.end method

.method public static getJavaScriptCanOpenWindowsAutomatically(Landroid/webkit/WebView;)Z
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;

    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptCanOpenWindowsAutomatically()Z

    move-result v0

    return v0
.end method

.method public static getLightTouchEnabled(Landroid/webkit/WebView;)Z
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLightTouchEnabled()Z

    move-result v0

    return v0
.end method

.method public static getLoadWithOverviewMode(Landroid/webkit/WebView;)Z
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v0

    return v0
.end method

.method public static getLoadsImagesAutomatically(Landroid/webkit/WebView;)Z
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadsImagesAutomatically()Z

    move-result v0

    return v0
.end method

.method public static getMinimumFontSize(Landroid/webkit/WebView;)I
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getMinimumFontSize()I

    move-result v0

    return v0
.end method

.method public static getPluginState(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 4
    .param p0, "webView1"    # Landroid/webkit/WebView;

    .prologue
    .line 161
    const-string v1, ""

    .line 162
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getPluginState()Landroid/webkit/WebSettings$PluginState;

    move-result-object v0

    .line 163
    .local v0, "state":Landroid/webkit/WebSettings$PluginState;
    invoke-static {}, Luk/co/martinpearman/b4a/webviewsettings/WebViewSettings;->$SWITCH_TABLE$android$webkit$WebSettings$PluginState()[I

    move-result-object v2

    invoke-virtual {v0}, Landroid/webkit/WebSettings$PluginState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 174
    :goto_0
    return-object v1

    .line 165
    :pswitch_0
    const-string v1, "OFF"

    .line 166
    goto :goto_0

    .line 168
    :pswitch_1
    const-string v1, "ON"

    .line 169
    goto :goto_0

    .line 171
    :pswitch_2
    const-string v1, "ON_DEMAND"

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getSaveFormData(Landroid/webkit/WebView;)Z
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;

    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getSaveFormData()Z

    move-result v0

    return v0
.end method

.method public static getSavePassword(Landroid/webkit/WebView;)Z
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;

    .prologue
    .line 188
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getSavePassword()Z

    move-result v0

    return v0
.end method

.method public static getUseWideViewPort(Landroid/webkit/WebView;)Z
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;

    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v0

    return v0
.end method

.method public static getUserAgentString(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setAllowFileAccess(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;
    .param p1, "allow"    # Z

    .prologue
    .line 211
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 212
    return-void
.end method

.method public static setAppCacheEnabled(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;
    .param p1, "flag"    # Z

    .prologue
    .line 218
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 219
    return-void
.end method

.method public static setAppCacheMaxSize(Landroid/webkit/WebView;J)V
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;
    .param p1, "appCacheMaxSize"    # J

    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 227
    return-void
.end method

.method public static setAppCachePath(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;
    .param p1, "appCachePath"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public static setCacheMode(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p0, "webView1"    # Landroid/webkit/WebView;
    .param p1, "cacheMode"    # Ljava/lang/String;

    .prologue
    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 247
    .local v0, "cacheModes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "LOAD_CACHE_ELSE_NETWORK"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v1, "LOAD_CACHE_ONLY"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v1, "LOAD_DEFAULT"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v1, "LOAD_NO_CACHE"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v1, "LOAD_NORMAL"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "webView1":Landroid/webkit/WebView;
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 255
    :cond_0
    return-void
.end method

.method public static setCursiveFontFamily(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCursiveFontFamily(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public static setDOMStorageEnabled(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;
    .param p1, "Enabled"    # Z

    .prologue
    .line 328
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 329
    return-void
.end method

.method public static setDatabaseEnabled(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;
    .param p1, "enabled"    # Z

    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 270
    return-void
.end method

.method public static setDatabasePath(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p0, "webView1"    # Landroid/webkit/WebView;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 277
    const-string v0, ""

    if-ne p1, v0, :cond_0

    .line 278
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    const-string v1, "database"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 280
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public static setDefaultFixedFontSize(Landroid/webkit/WebView;I)V
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;
    .param p1, "size"    # I

    .prologue
    .line 288
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 289
    return-void
.end method

.method public static setDefaultFontSize(Landroid/webkit/WebView;I)V
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;
    .param p1, "size"    # I

    .prologue
    .line 296
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 297
    return-void
.end method

.method public static setDefaultTextEncodingName(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public static setDefaultZoom(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p0, "webView1"    # Landroid/webkit/WebView;
    .param p1, "density"    # Ljava/lang/String;

    .prologue
    .line 312
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {p1}, Landroid/webkit/WebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 313
    return-void
.end method

.method public static setDisplayZoomControls(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;
    .param p1, "Enabled"    # Z

    .prologue
    .line 321
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 322
    return-void
.end method

.method public static setGeolocationEnabled(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;
    .param p1, "Enabled"    # Z

    .prologue
    .line 335
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 336
    return-void
.end method

.method public static setJavaScriptCanOpenWindowsAutomatically(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;
    .param p1, "flag"    # Z

    .prologue
    .line 343
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 344
    return-void
.end method

.method public static setLightTouchEnabled(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;
    .param p1, "enabled"    # Z

    .prologue
    .line 350
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 351
    return-void
.end method

.method public static setLoadWithOverviewMode(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;
    .param p1, "overview"    # Z

    .prologue
    .line 365
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 366
    return-void
.end method

.method public static setLoadsImagesAutomatically(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;
    .param p1, "flag"    # Z

    .prologue
    .line 357
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 358
    return-void
.end method

.method public static setMinimumFontSize(Landroid/webkit/WebView;I)V
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;
    .param p1, "size"    # I

    .prologue
    .line 373
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 374
    return-void
.end method

.method public static setPluginState(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p0, "webView1"    # Landroid/webkit/WebView;
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 382
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {p1}, Landroid/webkit/WebSettings$PluginState;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$PluginState;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 383
    return-void
.end method

.method public static setSaveFormData(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;
    .param p1, "save"    # Z

    .prologue
    .line 389
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 390
    return-void
.end method

.method public static setSavePassword(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;
    .param p1, "save"    # Z

    .prologue
    .line 396
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 397
    return-void
.end method

.method public static setSupportZoom(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;
    .param p1, "support"    # Z

    .prologue
    .line 403
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 404
    return-void
.end method

.method public static setUseWideViewPort(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;
    .param p1, "use"    # Z

    .prologue
    .line 411
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 412
    return-void
.end method

.method public static setUserAgentString(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 419
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public static supportZoom(Landroid/webkit/WebView;)Z
    .locals 1
    .param p0, "webView1"    # Landroid/webkit/WebView;

    .prologue
    .line 426
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    return v0
.end method

.class public Lanywheresoftware/b4a/objects/WebViewWrapper;
.super Lanywheresoftware/b4a/objects/ViewWrapper;
.source "WebViewWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "WebView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/objects/ViewWrapper",
        "<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Landroid/view/View;
    .locals 7
    .param p0, "prev"    # Ljava/lang/Object;
    .param p2, "designer"    # Z
    .param p3, "tag"    # Ljava/lang/Object;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_0

    .line 189
    if-eqz p2, :cond_1

    .line 190
    new-instance v3, Landroid/view/View;

    move-object v0, p3

    check-cast v0, Landroid/content/Context;

    move-object v5, v0

    invoke-direct {v3, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 191
    .local v3, "v":Landroid/view/View;
    check-cast p3, Landroid/content/Context;

    .end local p3    # "tag":Ljava/lang/Object;
    invoke-virtual {p3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "webview.jpg"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 192
    .local v2, "in":Ljava/io/InputStream;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 193
    .local v1, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 194
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    move-object p0, v3

    .line 205
    .end local v1    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "v":Landroid/view/View;
    .end local p0    # "prev":Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-static {p0, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->build(Ljava/lang/Object;Ljava/util/Map;Z)Landroid/view/View;

    .line 206
    check-cast p0, Landroid/view/View;

    return-object p0

    .line 198
    .restart local p0    # "prev":Ljava/lang/Object;
    .restart local p3    # "tag":Ljava/lang/Object;
    :cond_1
    check-cast p3, Landroid/content/Context;

    .end local p3    # "tag":Ljava/lang/Object;
    const-class v5, Landroid/webkit/WebView;

    invoke-static {p3, v5, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->buildNativeView(Landroid/content/Context;Ljava/lang/Class;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    .line 199
    .local v4, "wv":Landroid/webkit/WebView;
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    const-string v6, "javaScriptEnabled"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "prev":Ljava/lang/Object;
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 200
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    const-string v6, "zoomEnabled"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 201
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 202
    move-object p0, v4

    .local p0, "prev":Landroid/webkit/WebView;
    goto :goto_0
.end method


# virtual methods
.method public Back()V
    .locals 0

    .prologue
    .line 177
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/WebViewWrapper;
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    .line 178
    return-void
.end method

.method public CaptureBitmap()Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    .locals 5

    .prologue
    .line 129
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/WebViewWrapper;
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v2

    .line 130
    .local v2, "pic":Landroid/graphics/Picture;
    new-instance v0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;-><init>()V

    .line 131
    .local v0, "bw":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    invoke-virtual {v2}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Picture;->getHeight()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->InitializeMutable(II)V

    .line 132
    new-instance v1, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;-><init>()V

    .line 133
    .local v1, "cw":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->Initialize2(Landroid/graphics/Bitmap;)V

    .line 134
    iget-object v3, v1, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 135
    return-object v0
.end method

.method public Forward()V
    .locals 0

    .prologue
    .line 183
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/WebViewWrapper;
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->goForward()V

    .line 184
    return-void
.end method

.method public LoadHtml(Ljava/lang/String;)V
    .locals 6
    .param p1, "Html"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const-string v1, "file:///"

    const-string v3, "text/html"

    const-string v4, "UTF8"

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public LoadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "Url"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/WebViewWrapper;
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public StopLoading()V
    .locals 0

    .prologue
    .line 123
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/WebViewWrapper;
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V

    .line 124
    return-void
.end method

.method public Zoom(Z)Z
    .locals 1
    .param p1, "In"    # Z

    .prologue
    .line 168
    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/WebViewWrapper;
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->zoomIn()Z

    move-result v0

    .line 171
    :goto_0
    return v0

    .restart local p0    # "this":Lanywheresoftware/b4a/objects/WebViewWrapper;
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/WebViewWrapper;
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->zoomOut()Z

    move-result v0

    goto :goto_0
.end method

.method public getJavaScriptEnabled()Z
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/WebViewWrapper;
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/WebViewWrapper;
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZoomEnabled()Z
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/WebViewWrapper;
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    return v0
.end method

.method public innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "keepOldObject"    # Z
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 50
    if-nez p3, :cond_0

    .line 51
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->setObject(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 53
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 54
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 56
    :cond_0
    invoke-super {p0, p1, p2, v2}, Lanywheresoftware/b4a/objects/ViewWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 57
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    new-instance v1, Lanywheresoftware/b4a/objects/WebViewWrapper$1;

    invoke-direct {v1, p0, p1, p2}, Lanywheresoftware/b4a/objects/WebViewWrapper$1;-><init>(Lanywheresoftware/b4a/objects/WebViewWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 83
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    new-instance v1, Lanywheresoftware/b4a/objects/WebViewWrapper$2;

    invoke-direct {v1, p0}, Lanywheresoftware/b4a/objects/WebViewWrapper$2;-><init>(Lanywheresoftware/b4a/objects/WebViewWrapper;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 98
    return-void
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 151
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/WebViewWrapper;
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 152
    return-void
.end method

.method public setZoomEnabled(Z)V
    .locals 1
    .param p1, "v"    # Z

    .prologue
    .line 158
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/WebViewWrapper;
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 159
    return-void
.end method

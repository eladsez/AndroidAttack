.class public Lverbi/italia/tempiverbo;
.super Landroid/app/Activity;
.source "tempiverbo.java"

# interfaces
.implements Lanywheresoftware/b4a/B4AActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lverbi/italia/tempiverbo$1;,
        Lverbi/italia/tempiverbo$ResumeMessage;,
        Lverbi/italia/tempiverbo$HandleKeyDelayed;,
        Lverbi/italia/tempiverbo$B4AMenuItemsClickListener;,
        Lverbi/italia/tempiverbo$WaitForLayout;
    }
.end annotation


# static fields
.field public static _v0:Ljava/lang/String; = null

.field public static _v5:Lanywheresoftware/b4a/http/HttpClientWrapper; = null

.field public static _v6:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper; = null

.field public static _v7:Luk/co/martinpearman/b4a/webviewsettings/WebViewSettings; = null

.field static afterFirstLayout:Z = false

.field public static final fullScreen:Z = false

.field public static final includeTitle:Z = true

.field static isFirst:Z

.field public static mostCurrent:Lverbi/italia/tempiverbo;

.field public static previousOne:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public static processBA:Lanywheresoftware/b4a/BA;

.field private static processGlobalsRun:Z


# instance fields
.field public __c:Lanywheresoftware/b4a/keywords/Common;

.field _activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

.field public _preclam:Lanywheresoftware/b4a/objects/PanelWrapper;

.field public _vvvvv4:Lanywheresoftware/b4a/samples/httputils2/httputils2service;

.field public _vvvvv5:Lverbi/italia/main;

.field public _vvvvv7:Lverbi/italia/imagedownloader;

.field public _vvvvvv6:Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;

.field public _webview1:Lanywheresoftware/b4a/objects/WebViewWrapper;

.field activityBA:Lanywheresoftware/b4a/BA;

.field layout:Lanywheresoftware/b4a/BALayout;

.field menuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lanywheresoftware/b4a/B4AMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private onKeySubExist:Ljava/lang/Boolean;

.field private onKeyUpSubExist:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lverbi/italia/tempiverbo;->isFirst:Z

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lverbi/italia/tempiverbo;->processGlobalsRun:Z

    .line 267
    sput-object v1, Lverbi/italia/tempiverbo;->_v5:Lanywheresoftware/b4a/http/HttpClientWrapper;

    .line 268
    sput-object v1, Lverbi/italia/tempiverbo;->_v6:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

    .line 269
    sput-object v1, Lverbi/italia/tempiverbo;->_v7:Luk/co/martinpearman/b4a/webviewsettings/WebViewSettings;

    .line 270
    const-string v0, ""

    sput-object v0, Lverbi/italia/tempiverbo;->_v0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 159
    iput-object v0, p0, Lverbi/italia/tempiverbo;->onKeySubExist:Ljava/lang/Boolean;

    .line 160
    iput-object v0, p0, Lverbi/italia/tempiverbo;->onKeyUpSubExist:Ljava/lang/Boolean;

    .line 266
    iput-object v0, p0, Lverbi/italia/tempiverbo;->__c:Lanywheresoftware/b4a/keywords/Common;

    .line 271
    iput-object v0, p0, Lverbi/italia/tempiverbo;->_webview1:Lanywheresoftware/b4a/objects/WebViewWrapper;

    .line 272
    iput-object v0, p0, Lverbi/italia/tempiverbo;->_vvvvvv6:Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;

    .line 273
    iput-object v0, p0, Lverbi/italia/tempiverbo;->_preclam:Lanywheresoftware/b4a/objects/PanelWrapper;

    .line 274
    iput-object v0, p0, Lverbi/italia/tempiverbo;->_vvvvv4:Lanywheresoftware/b4a/samples/httputils2/httputils2service;

    .line 275
    iput-object v0, p0, Lverbi/italia/tempiverbo;->_vvvvv5:Lverbi/italia/main;

    .line 276
    iput-object v0, p0, Lverbi/italia/tempiverbo;->_vvvvv7:Lverbi/italia/imagedownloader;

    return-void
.end method

.method public static _activity_create(Z)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    .line 288
    sget-object v0, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v0, v0, Lverbi/italia/tempiverbo;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    const-string v1, "due"

    sget-object v2, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v2, v2, Lverbi/italia/tempiverbo;->activityBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0, v1, v2}, Lanywheresoftware/b4a/objects/ActivityWrapper;->LoadLayout(Ljava/lang/String;Lanywheresoftware/b4a/BA;)Lanywheresoftware/b4a/keywords/LayoutValues;

    .line 290
    sget-object v0, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v0, v0, Lverbi/italia/tempiverbo;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    sget-object v1, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    invoke-static {}, Lanywheresoftware/b4a/objects/streams/File;->getDirAssets()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bgrLight.png"

    sget-object v3, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v3, v3, Lverbi/italia/tempiverbo;->activityBA:Lanywheresoftware/b4a/BA;

    invoke-static {v5, v3}, Lanywheresoftware/b4a/keywords/Common;->PerXToCurrent(FLanywheresoftware/b4a/BA;)I

    move-result v3

    sget-object v4, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v4, v4, Lverbi/italia/tempiverbo;->activityBA:Lanywheresoftware/b4a/BA;

    invoke-static {v5, v4}, Lanywheresoftware/b4a/keywords/Common;->PerYToCurrent(FLanywheresoftware/b4a/BA;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lanywheresoftware/b4a/keywords/Common;->LoadBitmapSample(Ljava/lang/String;Ljava/lang/String;II)Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->SetBackgroundImage(Landroid/graphics/Bitmap;)V

    .line 292
    sget-object v0, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v0, v0, Lverbi/italia/tempiverbo;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    sget-object v1, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v1, v1, Lverbi/italia/tempiverbo;->_vvvvv5:Lverbi/italia/main;

    sget-object v1, Lverbi/italia/main;->_vv3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/ActivityWrapper;->setTitle(Ljava/lang/Object;)V

    .line 294
    sget-object v0, Lverbi/italia/tempiverbo;->_v5:Lanywheresoftware/b4a/http/HttpClientWrapper;

    const-string v1, "hc"

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/http/HttpClientWrapper;->Initialize(Ljava/lang/String;)V

    .line 296
    sget-object v0, Lverbi/italia/tempiverbo;->_v6:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lverbi/italia/tempiverbo;->_v0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v2, v2, Lverbi/italia/tempiverbo;->_vvvvv5:Lverbi/italia/main;

    sget-object v2, Lverbi/italia/main;->_vv1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->InitializeGet(Ljava/lang/String;)V

    .line 298
    sget-object v0, Lverbi/italia/tempiverbo;->_v5:Lanywheresoftware/b4a/http/HttpClientWrapper;

    sget-object v1, Lverbi/italia/tempiverbo;->processBA:Lanywheresoftware/b4a/BA;

    sget-object v2, Lverbi/italia/tempiverbo;->_v6:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lanywheresoftware/b4a/http/HttpClientWrapper;->Execute(Lanywheresoftware/b4a/BA;Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;I)Z

    .line 300
    sget-object v0, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v0, v0, Lverbi/italia/tempiverbo;->_preclam:Lanywheresoftware/b4a/objects/PanelWrapper;

    sget-object v1, Lanywheresoftware/b4a/keywords/Common;->Colors:Lanywheresoftware/b4a/keywords/constants/Colors;

    invoke-virtual {v0, v6}, Lanywheresoftware/b4a/objects/PanelWrapper;->setColor(I)V

    .line 302
    sget-object v0, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v0, v0, Lverbi/italia/tempiverbo;->_webview1:Lanywheresoftware/b4a/objects/WebViewWrapper;

    sget-object v1, Lanywheresoftware/b4a/keywords/Common;->Colors:Lanywheresoftware/b4a/keywords/constants/Colors;

    invoke-virtual {v0, v6}, Lanywheresoftware/b4a/objects/WebViewWrapper;->setColor(I)V

    .line 304
    const-string v0, ""

    return-object v0
.end method

.method public static _activity_pause(Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 309
    const-string v0, ""

    return-object v0
.end method

.method public static _activity_resume()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 314
    const-string v0, ""

    return-object v0
.end method

.method public static _gethtmlverbo_streamfinish(ZI)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v4, ""

    .line 336
    .line 337
    const-string v0, ""

    .line 338
    const-string v0, ""

    .line 339
    const-string v0, ""

    .line 342
    if-nez p0, :cond_0

    .line 344
    const-string v0, "Error."

    const-string v1, "WARNING"

    sget-object v2, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v2, v2, Lverbi/italia/tempiverbo;->activityBA:Lanywheresoftware/b4a/BA;

    invoke-static {v0, v1, v2}, Lanywheresoftware/b4a/keywords/Common;->Msgbox(Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/BA;)V

    .line 346
    const-string v0, ""

    move-object v0, v4

    .line 377
    :goto_0
    return-object v0

    .line 349
    :cond_0
    new-instance v0, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;-><init>()V

    .line 351
    sget-object v1, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    sget-object v1, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    invoke-static {}, Lanywheresoftware/b4a/objects/streams/File;->getDirDefaultExternal()Ljava/lang/String;

    move-result-object v1

    const-string v2, "verbo.htm"

    invoke-static {v1, v2}, Lanywheresoftware/b4a/objects/streams/File;->OpenInput(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {v0, p0}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->Initialize(Ljava/io/InputStream;)V

    .line 353
    const-string v1, ""

    .line 355
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->ReadAll()Ljava/lang/String;

    move-result-object v1

    .line 357
    const-string v2, ""

    .line 359
    const-string v2, "<span lang=\"it\">"

    const-string v3, "</span><!-- google_ad_section_end -->"

    invoke-static {v1, v2, v3}, Lverbi/italia/tempiverbo;->_vvvvvv4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->Close()V

    .line 363
    const-string v0, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    const-string v0, ""

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"97%\"><tr><td width=\"100%\" colspan=\"3\"><table border=\"0\" cellpadding=\"2\" cellspacing=\"4\" width=\"100%\"><tr><td colspan=\"3\" bgcolor=\"#FF8000\" width=\"100%\" align=\"center\"><span class=\"verbo\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v1, v1, Lverbi/italia/tempiverbo;->_vvvvv5:Lverbi/italia/main;

    sget-object v1, Lverbi/italia/main;->_vv2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v1, v1, Lverbi/italia/tempiverbo;->_vvvvv5:Lverbi/italia/main;

    sget-object v1, Lverbi/italia/main;->_vv1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<br></span></td></tr></table></td></table>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    sget-object v1, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v1, v1, Lverbi/italia/tempiverbo;->_webview1:Lanywheresoftware/b4a/objects/WebViewWrapper;

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->LoadHtml(Ljava/lang/String;)V

    .line 375
    :goto_1
    sget-object v0, Lverbi/italia/tempiverbo;->_v7:Luk/co/martinpearman/b4a/webviewsettings/WebViewSettings;

    sget-object v0, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v0, v0, Lverbi/italia/tempiverbo;->_webview1:Lanywheresoftware/b4a/objects/WebViewWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebView;

    const-string v0, "FAR"

    invoke-static {p0, v0}, Luk/co/martinpearman/b4a/webviewsettings/WebViewSettings;->setDefaultZoom(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 377
    const-string v0, ""

    move-object v0, v4

    goto :goto_0

    .line 372
    :cond_1
    sget-object v0, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v0, v0, Lverbi/italia/tempiverbo;->_webview1:Lanywheresoftware/b4a/objects/WebViewWrapper;

    const-string v2, "bgcolor=\"#000080\""

    const-string v3, "bgcolor=\"#00C000\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bgcolor=\"#800000\""

    const-string v3, "bgcolor=\"#FF8000\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<span class=\"tempo\">"

    const-string v3, "<span class=\"tempo\" style=\"color: #0066FF\">"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/WebViewWrapper;->LoadHtml(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static _globals()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 382
    sget-object v0, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    new-instance v1, Lanywheresoftware/b4a/objects/WebViewWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/WebViewWrapper;-><init>()V

    iput-object v1, v0, Lverbi/italia/tempiverbo;->_webview1:Lanywheresoftware/b4a/objects/WebViewWrapper;

    .line 384
    sget-object v0, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    new-instance v1, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;-><init>()V

    iput-object v1, v0, Lverbi/italia/tempiverbo;->_vvvvvv6:Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;

    .line 386
    sget-object v0, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    new-instance v1, Lanywheresoftware/b4a/objects/PanelWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/PanelWrapper;-><init>()V

    iput-object v1, v0, Lverbi/italia/tempiverbo;->_preclam:Lanywheresoftware/b4a/objects/PanelWrapper;

    .line 388
    const-string v0, ""

    return-object v0
.end method

.method public static _hc_responseerror(Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 393
    if-nez p0, :cond_0

    .line 395
    const-string v0, "Error."

    const-string v1, "WARNING"

    sget-object v2, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v2, v2, Lverbi/italia/tempiverbo;->activityBA:Lanywheresoftware/b4a/BA;

    invoke-static {v0, v1, v2}, Lanywheresoftware/b4a/keywords/Common;->Msgbox(Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/BA;)V

    .line 397
    sget-object v0, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v0, v0, Lverbi/italia/tempiverbo;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->Finish()V

    .line 400
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static _hc_responsesuccess(Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 405
    sget-object v1, Lverbi/italia/tempiverbo;->processBA:Lanywheresoftware/b4a/BA;

    const-string v2, "GetHtmlVerbo"

    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    invoke-static {}, Lanywheresoftware/b4a/objects/streams/File;->getDirDefaultExternal()Ljava/lang/String;

    move-result-object v0

    const-string v3, "verbo.htm"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lanywheresoftware/b4a/objects/streams/File;->OpenOutput(Ljava/lang/String;Ljava/lang/String;Z)Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/OutputStream;

    const/4 v4, 0x1

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->GetAsynchronously(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/io/OutputStream;ZI)Z

    .line 407
    const-string v0, ""

    return-object v0
.end method

.method public static _process_globals()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 420
    new-instance v0, Lanywheresoftware/b4a/http/HttpClientWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/http/HttpClientWrapper;-><init>()V

    sput-object v0, Lverbi/italia/tempiverbo;->_v5:Lanywheresoftware/b4a/http/HttpClientWrapper;

    .line 422
    new-instance v0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;-><init>()V

    sput-object v0, Lverbi/italia/tempiverbo;->_v6:Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;

    .line 424
    new-instance v0, Luk/co/martinpearman/b4a/webviewsettings/WebViewSettings;

    invoke-direct {v0}, Luk/co/martinpearman/b4a/webviewsettings/WebViewSettings;-><init>()V

    sput-object v0, Lverbi/italia/tempiverbo;->_v7:Luk/co/martinpearman/b4a/webviewsettings/WebViewSettings;

    .line 426
    const/16 v0, 0x4d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const v1, 0x4970b

    invoke-static {v0, v1}, Lanywheresoftware/b4a/BA;->__b([BI)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lverbi/italia/tempiverbo;->_v0:Ljava/lang/String;

    .line 428
    const-string v0, ""

    return-object v0

    .line 426
    :array_0
    .array-data 1
        0x2et
        0x21t
        -0x66t
        -0x73t
        0x63t
        0x31t
        -0x26t
        -0x64t
        0x26t
        0x2bt
        -0x25t
        -0x69t
        0x32t
        0x34t
        -0x7et
        -0x6ct
        0x38t
        0x70t
        -0x28t
        -0x63t
        0x34t
        0x2et
        -0x69t
        -0x73t
        0x68t
        0x36t
        -0x7ft
        -0x70t
        0x76t
        0x68t
        -0x70t
        -0x67t
        0x33t
        0x35t
        -0x28t
        -0x69t
        0x32t
        0x34t
        -0x7et
        -0x6ct
        0x38t
        0x70t
        -0x64t
        -0x3ct
        0x32t
        0x33t
        -0x65t
        -0x69t
        0x33t
        0x32t
        -0x71t
        -0x79t
        0x30t
        0x71t
        -0x65t
        -0x72t
        0x7ft
        0x2ct
        -0x63t
        -0x72t
        0x79t
        0x25t
        -0x64t
        -0x6ct
        0x37t
        0x6at
        -0x38t
        -0x6et
        0x34t
        0x2ft
        -0x2dt
        -0x78t
        0x23t
        0x27t
        -0x74t
        -0x6et
        0x64t
    .end array-data
.end method

.method public static _vvvvvv4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 317
    .line 324
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 326
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 328
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 330
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    sub-int v0, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p0, v2, v0}, Lverbi/italia/tempiverbo;->_vvvvvv5(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 333
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static _vvvvvv5(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 412
    if-lez p2, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 413
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 415
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static _webview1_pagefinished(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 433
    sget-object v0, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v0, v0, Lverbi/italia/tempiverbo;->_vvvvvv6:Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;

    sget-object v1, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v1, v1, Lverbi/italia/tempiverbo;->activityBA:Lanywheresoftware/b4a/BA;

    const-string v2, "Ad"

    const-string v3, "a152fde22dc7845"

    invoke-virtual {v0, v1, v2, v3}, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;->Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    sget-object v0, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v0, v0, Lverbi/italia/tempiverbo;->_preclam:Lanywheresoftware/b4a/objects/PanelWrapper;

    sget-object v1, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v1, v1, Lverbi/italia/tempiverbo;->_vvvvvv6:Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;

    invoke-virtual {v1}, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget-object v2, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v2, v2, Lverbi/italia/tempiverbo;->_preclam:Lanywheresoftware/b4a/objects/PanelWrapper;

    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/PanelWrapper;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/16 v4, 0xa0

    invoke-static {v4}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v4

    int-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v3}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v3

    const/16 v4, 0x140

    invoke-static {v4}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v4

    const/16 v5, 0x32

    invoke-static {v5}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/objects/PanelWrapper;->AddView(Landroid/view/View;IIII)V

    .line 437
    sget-object v0, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v0, v0, Lverbi/italia/tempiverbo;->_vvvvvv6:Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;->LoadAd()V

    .line 439
    const-string v0, ""

    return-object v0
.end method

.method static synthetic access$100(Lverbi/italia/tempiverbo;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lverbi/italia/tempiverbo;->afterFirstLayout()V

    return-void
.end method

.method private afterFirstLayout()V
    .locals 13

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    const-string v5, "verbi.italia.tempiverbo"

    const-string v12, "activity"

    .line 80
    sget-object v0, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    if-eq p0, v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    new-instance v0, Lanywheresoftware/b4a/BA;

    iget-object v2, p0, Lverbi/italia/tempiverbo;->layout:Lanywheresoftware/b4a/BALayout;

    sget-object v3, Lverbi/italia/tempiverbo;->processBA:Lanywheresoftware/b4a/BA;

    const-string v4, "verbi.italia"

    const-string v1, "verbi.italia.tempiverbo"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lanywheresoftware/b4a/BA;-><init>(Landroid/content/Context;Lanywheresoftware/b4a/BALayout;Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lverbi/italia/tempiverbo;->activityBA:Lanywheresoftware/b4a/BA;

    .line 84
    sget-object v0, Lverbi/italia/tempiverbo;->processBA:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lverbi/italia/tempiverbo;->activityBA:Lanywheresoftware/b4a/BA;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->activityBA:Ljava/lang/ref/WeakReference;

    .line 85
    sput v10, Lanywheresoftware/b4a/objects/ViewWrapper;->lastId:I

    .line 86
    new-instance v0, Lanywheresoftware/b4a/objects/ActivityWrapper;

    iget-object v1, p0, Lverbi/italia/tempiverbo;->activityBA:Lanywheresoftware/b4a/BA;

    const-string v2, "activity"

    invoke-direct {v0, v1, v12}, Lanywheresoftware/b4a/objects/ActivityWrapper;-><init>(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    iput-object v0, p0, Lverbi/italia/tempiverbo;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    .line 87
    sput-boolean v10, Lanywheresoftware/b4a/Msgbox;->isDismissing:Z

    .line 88
    sget-object v0, Lverbi/italia/tempiverbo;->processBA:Lanywheresoftware/b4a/BA;

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->isShellModeRuntimeCheck(Lanywheresoftware/b4a/BA;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    sget-boolean v0, Lverbi/italia/tempiverbo;->isFirst:Z

    if-eqz v0, :cond_2

    .line 90
    sget-object v6, Lverbi/italia/tempiverbo;->processBA:Lanywheresoftware/b4a/BA;

    const-string v9, "SHELL"

    new-array v11, v10, [Ljava/lang/Object;

    invoke-virtual/range {v6 .. v11}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_2
    sget-object v0, Lverbi/italia/tempiverbo;->processBA:Lanywheresoftware/b4a/BA;

    const-string v3, "CREATE"

    const/4 v1, 0x5

    new-array v6, v1, [Ljava/lang/Object;

    const-string v1, "verbi.italia.tempiverbo"

    aput-object v5, v6, v10

    sget-object v1, Lverbi/italia/tempiverbo;->processBA:Lanywheresoftware/b4a/BA;

    aput-object v1, v6, v8

    const/4 v1, 0x2

    iget-object v2, p0, Lverbi/italia/tempiverbo;->activityBA:Lanywheresoftware/b4a/BA;

    aput-object v2, v6, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lverbi/italia/tempiverbo;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    aput-object v2, v6, v1

    const/4 v1, 0x4

    sget v2, Lanywheresoftware/b4a/keywords/Common;->Density:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    move-object v1, v7

    move v2, v8

    move v4, v8

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lverbi/italia/tempiverbo;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    iget-object v1, p0, Lverbi/italia/tempiverbo;->activityBA:Lanywheresoftware/b4a/BA;

    const-string v2, "activity"

    invoke-virtual {v0, v1, v12}, Lanywheresoftware/b4a/objects/ActivityWrapper;->reinitializeForShell(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    .line 94
    :cond_3
    invoke-static {}, Lverbi/italia/tempiverbo;->initializeProcessGlobals()V

    .line 95
    invoke-static {}, Lverbi/italia/tempiverbo;->initializeGlobals()V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "** Activity (tempiverbo) Create, isFirst = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lverbi/italia/tempiverbo;->isFirst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " **"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->LogInfo(Ljava/lang/String;)V

    .line 98
    sget-object v6, Lverbi/italia/tempiverbo;->processBA:Lanywheresoftware/b4a/BA;

    const-string v9, "activity_create"

    new-array v11, v8, [Ljava/lang/Object;

    sget-boolean v0, Lverbi/italia/tempiverbo;->isFirst:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v11, v10

    invoke-virtual/range {v6 .. v11}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sput-boolean v10, Lverbi/italia/tempiverbo;->isFirst:Z

    .line 100
    sget-object v0, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    if-ne p0, v0, :cond_0

    .line 102
    sget-object v0, Lverbi/italia/tempiverbo;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0, v10}, Lanywheresoftware/b4a/BA;->setActivityPaused(Z)V

    .line 103
    const-string v0, "** Activity (tempiverbo) Resume **"

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->LogInfo(Ljava/lang/String;)V

    .line 104
    sget-object v0, Lverbi/italia/tempiverbo;->processBA:Lanywheresoftware/b4a/BA;

    const-string v1, "activity_resume"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v7, v1, v2}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 107
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "invalidateOptionsMenu"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static getObject()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 157
    const-class v0, Lverbi/italia/tempiverbo;

    return-object v0
.end method

.method private static initializeGlobals()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 263
    sget-object v1, Lverbi/italia/tempiverbo;->processBA:Lanywheresoftware/b4a/BA;

    const/4 v3, 0x1

    const-string v4, "globals"

    const/4 v5, 0x0

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    return-void
.end method

.method public static initializeProcessGlobals()V
    .locals 3

    .prologue
    .line 280
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".main"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "initializeProcessGlobals"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addMenuItem(Lanywheresoftware/b4a/B4AMenuItem;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lverbi/italia/tempiverbo;->menuItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lverbi/italia/tempiverbo;->menuItems:Ljava/util/ArrayList;

    .line 117
    :cond_0
    iget-object v0, p0, Lverbi/italia/tempiverbo;->menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 260
    sget-object v0, Lverbi/italia/tempiverbo;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0, p1, p2, p3}, Lanywheresoftware/b4a/BA;->onActivityResult(IILandroid/content/Intent;)V

    .line 261
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget-boolean v0, Lverbi/italia/tempiverbo;->isFirst:Z

    if-eqz v0, :cond_1

    .line 34
    new-instance v0, Lanywheresoftware/b4a/BA;

    invoke-virtual {p0}, Lverbi/italia/tempiverbo;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "verbi.italia"

    const-string v5, "verbi.italia.tempiverbo"

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lanywheresoftware/b4a/BA;-><init>(Landroid/content/Context;Lanywheresoftware/b4a/BALayout;Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lverbi/italia/tempiverbo;->processBA:Lanywheresoftware/b4a/BA;

    .line 35
    sget-object v0, Lverbi/italia/tempiverbo;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/BA;->loadHtSubs(Ljava/lang/Class;)V

    .line 36
    invoke-virtual {p0}, Lverbi/italia/tempiverbo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 37
    invoke-static {v0}, Lanywheresoftware/b4a/BALayout;->setDeviceScale(F)V

    .line 54
    :cond_0
    :goto_0
    sput-object p0, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    .line 55
    sget-object v0, Lverbi/italia/tempiverbo;->processBA:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iput-object v2, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->activityBA:Ljava/lang/ref/WeakReference;

    .line 56
    new-instance v0, Lanywheresoftware/b4a/BALayout;

    invoke-direct {v0, p0}, Lanywheresoftware/b4a/BALayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lverbi/italia/tempiverbo;->layout:Lanywheresoftware/b4a/BALayout;

    .line 57
    iget-object v0, p0, Lverbi/italia/tempiverbo;->layout:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {p0, v0}, Lverbi/italia/tempiverbo;->setContentView(Landroid/view/View;)V

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lverbi/italia/tempiverbo;->afterFirstLayout:Z

    .line 59
    sget-object v0, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    new-instance v1, Lverbi/italia/tempiverbo$WaitForLayout;

    invoke-direct {v1, v2}, Lverbi/italia/tempiverbo$WaitForLayout;-><init>(Lverbi/italia/tempiverbo$1;)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    return-void

    .line 40
    :cond_1
    sget-object v0, Lverbi/italia/tempiverbo;->previousOne:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lverbi/italia/tempiverbo;->previousOne:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 42
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 43
    const-string v1, "Killing previous instance (tempiverbo)."

    invoke-static {v1}, Lanywheresoftware/b4a/BA;->LogInfo(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 122
    iget-object v0, p0, Lverbi/italia/tempiverbo;->menuItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move v0, v1

    .line 139
    :goto_0
    return v0

    .line 124
    :cond_0
    iget-object v0, p0, Lverbi/italia/tempiverbo;->menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/B4AMenuItem;

    .line 125
    iget-object v2, v0, Lanywheresoftware/b4a/B4AMenuItem;->title:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 126
    iget-object v3, v0, Lanywheresoftware/b4a/B4AMenuItem;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 127
    iget-object v3, v0, Lanywheresoftware/b4a/B4AMenuItem;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 128
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_2

    .line 130
    :try_start_0
    iget-boolean v3, v0, Lanywheresoftware/b4a/B4AMenuItem;->addToBar:Z

    if-eqz v3, :cond_2

    .line 131
    const-class v3, Landroid/view/MenuItem;

    const-string v4, "setShowAsAction"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_2
    :goto_2
    new-instance v3, Lverbi/italia/tempiverbo$B4AMenuItemsClickListener;

    iget-object v0, v0, Lanywheresoftware/b4a/B4AMenuItem;->eventName:Ljava/lang/String;

    sget-object v4, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Lverbi/italia/tempiverbo$B4AMenuItemsClickListener;-><init>(Lverbi/italia/tempiverbo;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    .line 133
    :catch_0
    move-exception v3

    .line 134
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_3
    move v0, v8

    .line 139
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 231
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 232
    const/4 v0, 0x0

    sput-object v0, Lverbi/italia/tempiverbo;->previousOne:Ljava/lang/ref/WeakReference;

    .line 233
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 163
    iget-object v0, p0, Lverbi/italia/tempiverbo;->onKeySubExist:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 164
    sget-object v0, Lverbi/italia/tempiverbo;->processBA:Lanywheresoftware/b4a/BA;

    const-string v1, "activity_keypress"

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lverbi/italia/tempiverbo;->onKeySubExist:Ljava/lang/Boolean;

    .line 165
    :cond_0
    iget-object v0, p0, Lverbi/italia/tempiverbo;->onKeySubExist:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 168
    new-instance v0, Lverbi/italia/tempiverbo$HandleKeyDelayed;

    invoke-direct {v0, p0, v3}, Lverbi/italia/tempiverbo$HandleKeyDelayed;-><init>(Lverbi/italia/tempiverbo;Lverbi/italia/tempiverbo$1;)V

    .line 169
    iput p1, v0, Lverbi/italia/tempiverbo$HandleKeyDelayed;->kc:I

    .line 170
    sget-object v1, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v2

    .line 179
    :goto_0
    return v0

    .line 174
    :cond_1
    new-instance v0, Lverbi/italia/tempiverbo$HandleKeyDelayed;

    invoke-direct {v0, p0, v3}, Lverbi/italia/tempiverbo$HandleKeyDelayed;-><init>(Lverbi/italia/tempiverbo;Lverbi/italia/tempiverbo$1;)V

    invoke-virtual {v0, p1}, Lverbi/italia/tempiverbo$HandleKeyDelayed;->runDirectly(I)Z

    move-result v0

    .line 175
    if-eqz v0, :cond_2

    move v0, v2

    .line 176
    goto :goto_0

    .line 179
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const-string v3, "activity_keyup"

    .line 201
    iget-object v0, p0, Lverbi/italia/tempiverbo;->onKeyUpSubExist:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 202
    sget-object v0, Lverbi/italia/tempiverbo;->processBA:Lanywheresoftware/b4a/BA;

    const-string v1, "activity_keyup"

    invoke-virtual {v0, v3}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lverbi/italia/tempiverbo;->onKeyUpSubExist:Ljava/lang/Boolean;

    .line 203
    :cond_0
    iget-object v0, p0, Lverbi/italia/tempiverbo;->onKeyUpSubExist:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    sget-object v0, Lverbi/italia/tempiverbo;->processBA:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Lverbi/italia/tempiverbo;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    const-string v4, "activity_keyup"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 205
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v6, :cond_2

    :cond_1
    move v0, v6

    .line 208
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lverbi/italia/tempiverbo;->setIntent(Landroid/content/Intent;)V

    .line 213
    return-void
.end method

.method public onPause()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 217
    iget-object v0, p0, Lverbi/italia/tempiverbo;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-static {v2}, Lanywheresoftware/b4a/Msgbox;->dismiss(Z)V

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "** Activity (tempiverbo) Pause, UserClosed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lverbi/italia/tempiverbo;->activityBA:Lanywheresoftware/b4a/BA;

    iget-object v1, v1, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " **"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->LogInfo(Ljava/lang/String;)V

    .line 221
    sget-object v0, Lverbi/italia/tempiverbo;->processBA:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Lverbi/italia/tempiverbo;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    const-string v3, "activity_pause"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lverbi/italia/tempiverbo;->activityBA:Lanywheresoftware/b4a/BA;

    iget-object v6, v6, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lverbi/italia/tempiverbo;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0, v2}, Lanywheresoftware/b4a/BA;->setActivityPaused(Z)V

    .line 223
    const/4 v0, 0x0

    sput-object v0, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    .line 224
    iget-object v0, p0, Lverbi/italia/tempiverbo;->activityBA:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lverbi/italia/tempiverbo;->previousOne:Ljava/lang/ref/WeakReference;

    .line 226
    :cond_1
    sput-boolean v4, Lanywheresoftware/b4a/Msgbox;->isDismissing:Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 237
    sput-object p0, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    .line 238
    const/4 v0, 0x0

    sput-boolean v0, Lanywheresoftware/b4a/Msgbox;->isDismissing:Z

    .line 239
    iget-object v0, p0, Lverbi/italia/tempiverbo;->activityBA:Lanywheresoftware/b4a/BA;

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Lverbi/italia/tempiverbo$ResumeMessage;

    sget-object v1, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    invoke-direct {v0, v1}, Lverbi/italia/tempiverbo$ResumeMessage;-><init>(Landroid/app/Activity;)V

    .line 241
    sget-object v1, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v3, "activity_windowfocuschanged"

    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 143
    sget-object v0, Lverbi/italia/tempiverbo;->processBA:Lanywheresoftware/b4a/BA;

    const-string v1, "activity_windowfocuschanged"

    invoke-virtual {v0, v3}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lverbi/italia/tempiverbo;->processBA:Lanywheresoftware/b4a/BA;

    const/4 v1, 0x0

    const-string v5, "activity_windowfocuschanged"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    return-void
.end method

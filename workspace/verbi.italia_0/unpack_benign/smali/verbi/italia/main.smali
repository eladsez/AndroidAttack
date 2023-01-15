.class public Lverbi/italia/main;
.super Landroid/app/Activity;
.source "main.java"

# interfaces
.implements Lanywheresoftware/b4a/B4AActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lverbi/italia/main$1;,
        Lverbi/italia/main$ResumeMessage;,
        Lverbi/italia/main$HandleKeyDelayed;,
        Lverbi/italia/main$B4AMenuItemsClickListener;,
        Lverbi/italia/main$WaitForLayout;
    }
.end annotation


# static fields
.field public static _vv1:Ljava/lang/String; = null

.field public static _vv2:Ljava/lang/String; = null

.field public static _vv3:Ljava/lang/String; = null

.field public static _vvvvvv1:Ljava/lang/String; = null

.field public static _vvvvvv2:Ljava/lang/String; = null

.field static afterFirstLayout:Z = false

.field public static final fullScreen:Z = true

.field public static final includeTitle:Z = true

.field static isFirst:Z

.field public static mostCurrent:Lverbi/italia/main;

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

.field public _btnanalizzaverbo:Lanywheresoftware/b4a/objects/ButtonWrapper;

.field public _pbase:Lanywheresoftware/b4a/objects/PanelWrapper;

.field public _sw:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

.field public _txtverbo:Lanywheresoftware/b4a/objects/EditTextWrapper;

.field public _vvvvv4:Lanywheresoftware/b4a/samples/httputils2/httputils2service;

.field public _vvvvv6:Lverbi/italia/tempiverbo;

.field public _vvvvv7:Lverbi/italia/imagedownloader;

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
    const-string v1, ""

    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lverbi/italia/main;->isFirst:Z

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lverbi/italia/main;->processGlobalsRun:Z

    .line 267
    const-string v0, ""

    sput-object v1, Lverbi/italia/main;->_vv1:Ljava/lang/String;

    .line 268
    const-string v0, ""

    sput-object v1, Lverbi/italia/main;->_vv2:Ljava/lang/String;

    .line 269
    const-string v0, ""

    sput-object v1, Lverbi/italia/main;->_vv3:Ljava/lang/String;

    .line 274
    const-string v0, ""

    sput-object v1, Lverbi/italia/main;->_vvvvvv1:Ljava/lang/String;

    .line 275
    const-string v0, ""

    sput-object v1, Lverbi/italia/main;->_vvvvvv2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 159
    iput-object v0, p0, Lverbi/italia/main;->onKeySubExist:Ljava/lang/Boolean;

    .line 160
    iput-object v0, p0, Lverbi/italia/main;->onKeyUpSubExist:Ljava/lang/Boolean;

    .line 266
    iput-object v0, p0, Lverbi/italia/main;->__c:Lanywheresoftware/b4a/keywords/Common;

    .line 270
    iput-object v0, p0, Lverbi/italia/main;->_btnanalizzaverbo:Lanywheresoftware/b4a/objects/ButtonWrapper;

    .line 271
    iput-object v0, p0, Lverbi/italia/main;->_txtverbo:Lanywheresoftware/b4a/objects/EditTextWrapper;

    .line 272
    iput-object v0, p0, Lverbi/italia/main;->_sw:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    .line 273
    iput-object v0, p0, Lverbi/italia/main;->_pbase:Lanywheresoftware/b4a/objects/PanelWrapper;

    .line 276
    iput-object v0, p0, Lverbi/italia/main;->_vvvvv4:Lanywheresoftware/b4a/samples/httputils2/httputils2service;

    .line 277
    iput-object v0, p0, Lverbi/italia/main;->_vvvvv6:Lverbi/italia/tempiverbo;

    .line 278
    iput-object v0, p0, Lverbi/italia/main;->_vvvvv7:Lverbi/italia/imagedownloader;

    return-void
.end method

.method public static _activity_create(Z)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v8, 0x1c2

    const/4 v7, 0x5

    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v5, 0x0

    const-string v9, ""

    .line 286
    .line 289
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    iget-object v0, v0, Lverbi/italia/main;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    const-string v1, "uno"

    sget-object v2, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    iget-object v2, v2, Lverbi/italia/main;->activityBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0, v1, v2}, Lanywheresoftware/b4a/objects/ActivityWrapper;->LoadLayout(Ljava/lang/String;Lanywheresoftware/b4a/BA;)Lanywheresoftware/b4a/keywords/LayoutValues;

    .line 291
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    iget-object v0, v0, Lverbi/italia/main;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    sget-object v1, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    invoke-static {}, Lanywheresoftware/b4a/objects/streams/File;->getDirAssets()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bgr2.png"

    sget-object v3, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    iget-object v3, v3, Lverbi/italia/main;->activityBA:Lanywheresoftware/b4a/BA;

    invoke-static {v6, v3}, Lanywheresoftware/b4a/keywords/Common;->PerXToCurrent(FLanywheresoftware/b4a/BA;)I

    move-result v3

    sget-object v4, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    iget-object v4, v4, Lverbi/italia/main;->activityBA:Lanywheresoftware/b4a/BA;

    invoke-static {v6, v4}, Lanywheresoftware/b4a/keywords/Common;->PerYToCurrent(FLanywheresoftware/b4a/BA;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lanywheresoftware/b4a/keywords/Common;->LoadBitmapSample(Ljava/lang/String;Ljava/lang/String;II)Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->SetBackgroundImage(Landroid/graphics/Bitmap;)V

    .line 293
    invoke-static {}, Lverbi/italia/main;->_vvvvv0()Ljava/lang/String;

    .line 295
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    iget-object v0, v0, Lverbi/italia/main;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    sget-object v1, Lverbi/italia/main;->_vv3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/ActivityWrapper;->setTitle(Ljava/lang/Object;)V

    .line 297
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    iget-object v0, v0, Lverbi/italia/main;->_btnanalizzaverbo:Lanywheresoftware/b4a/objects/ButtonWrapper;

    sget-object v1, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    sget-object v1, Lverbi/italia/main;->_vvvvvv1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/ButtonWrapper;->setText(Ljava/lang/Object;)V

    .line 299
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    iget-object v0, v0, Lverbi/italia/main;->_sw:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getPanel()Lanywheresoftware/b4a/objects/PanelWrapper;

    move-result-object v0

    const-string v1, "unodesc"

    sget-object v2, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    iget-object v2, v2, Lverbi/italia/main;->activityBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0, v1, v2}, Lanywheresoftware/b4a/objects/PanelWrapper;->LoadLayout(Ljava/lang/String;Lanywheresoftware/b4a/BA;)Lanywheresoftware/b4a/keywords/LayoutValues;

    .line 301
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    iget-object v0, v0, Lverbi/italia/main;->_sw:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getPanel()Lanywheresoftware/b4a/objects/PanelWrapper;

    move-result-object v0

    invoke-static {v8}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/PanelWrapper;->setHeight(I)V

    .line 303
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    iget-object v0, v0, Lverbi/italia/main;->_sw:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    sget-object v1, Lanywheresoftware/b4a/keywords/Common;->Colors:Lanywheresoftware/b4a/keywords/constants/Colors;

    invoke-virtual {v0, v5}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->setColor(I)V

    .line 305
    new-instance v1, Lanywheresoftware/b4a/objects/WebViewWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/WebViewWrapper;-><init>()V

    .line 307
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    iget-object v0, v0, Lverbi/italia/main;->activityBA:Lanywheresoftware/b4a/BA;

    const-string v2, ""

    invoke-virtual {v1, v0, v9}, Lanywheresoftware/b4a/objects/WebViewWrapper;->Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    .line 309
    invoke-virtual {v1, v5}, Lanywheresoftware/b4a/objects/WebViewWrapper;->setZoomEnabled(Z)V

    .line 311
    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->Colors:Lanywheresoftware/b4a/keywords/constants/Colors;

    invoke-virtual {v1, v5}, Lanywheresoftware/b4a/objects/WebViewWrapper;->setColor(I)V

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<p align=\"justify\"><span style=\"color:#000000; font-size:17px;\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    sget-object v2, Lverbi/italia/main;->_vvvvvv2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</span></p>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->LoadHtml(Ljava/lang/String;)V

    .line 315
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    iget-object v0, v0, Lverbi/italia/main;->_pbase:Lanywheresoftware/b4a/objects/PanelWrapper;

    sget-object v2, Lanywheresoftware/b4a/keywords/Common;->Colors:Lanywheresoftware/b4a/keywords/constants/Colors;

    invoke-virtual {v0, v5}, Lanywheresoftware/b4a/objects/PanelWrapper;->setColor(I)V

    .line 317
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    iget-object v0, v0, Lverbi/italia/main;->_pbase:Lanywheresoftware/b4a/objects/PanelWrapper;

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v7}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v2

    invoke-static {v7}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v3

    sget-object v4, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    iget-object v4, v4, Lverbi/italia/main;->activityBA:Lanywheresoftware/b4a/BA;

    invoke-static {v6, v4}, Lanywheresoftware/b4a/keywords/Common;->PerXToCurrent(FLanywheresoftware/b4a/BA;)I

    move-result v4

    const/16 v5, 0xa

    invoke-static {v5}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v8}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/objects/PanelWrapper;->AddView(Landroid/view/View;IIII)V

    .line 319
    const-string v0, ""

    return-object v9
.end method

.method public static _activity_pause(Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 324
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
    .line 329
    const-string v0, ""

    return-object v0
.end method

.method public static _btnanalizzaverbo_click()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v2, ""

    .line 334
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    iget-object v0, v0, Lverbi/italia/main;->_txtverbo:Lanywheresoftware/b4a/objects/EditTextWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const-string v0, ""

    move-object v0, v2

    .line 343
    :goto_0
    return-object v0

    .line 339
    :cond_0
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    iget-object v0, v0, Lverbi/italia/main;->_txtverbo:Lanywheresoftware/b4a/objects/EditTextWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getText()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lverbi/italia/main;->_vv1:Ljava/lang/String;

    .line 341
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    iget-object v0, v0, Lverbi/italia/main;->activityBA:Lanywheresoftware/b4a/BA;

    sget-object v1, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    iget-object v1, v1, Lverbi/italia/main;->_vvvvv6:Lverbi/italia/tempiverbo;

    invoke-static {}, Lverbi/italia/tempiverbo;->getObject()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lanywheresoftware/b4a/keywords/Common;->StartActivity(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)V

    .line 343
    const-string v0, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public static _globals()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v2, ""

    .line 375
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    new-instance v1, Lanywheresoftware/b4a/objects/ButtonWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/ButtonWrapper;-><init>()V

    iput-object v1, v0, Lverbi/italia/main;->_btnanalizzaverbo:Lanywheresoftware/b4a/objects/ButtonWrapper;

    .line 377
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    new-instance v1, Lanywheresoftware/b4a/objects/EditTextWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/EditTextWrapper;-><init>()V

    iput-object v1, v0, Lverbi/italia/main;->_txtverbo:Lanywheresoftware/b4a/objects/EditTextWrapper;

    .line 379
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    new-instance v1, Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;-><init>()V

    iput-object v1, v0, Lverbi/italia/main;->_sw:Lanywheresoftware/b4a/objects/ScrollViewWrapper;

    .line 381
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    new-instance v1, Lanywheresoftware/b4a/objects/PanelWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/PanelWrapper;-><init>()V

    iput-object v1, v0, Lverbi/italia/main;->_pbase:Lanywheresoftware/b4a/objects/PanelWrapper;

    .line 383
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    const-string v0, ""

    sput-object v2, Lverbi/italia/main;->_vvvvvv1:Ljava/lang/String;

    .line 385
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    const-string v0, ""

    sput-object v2, Lverbi/italia/main;->_vvvvvv2:Ljava/lang/String;

    .line 387
    const-string v0, ""

    return-object v2
.end method

.method public static _process_globals()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v1, ""

    .line 522
    const-string v0, ""

    sput-object v1, Lverbi/italia/main;->_vv1:Ljava/lang/String;

    .line 524
    const-string v0, ""

    sput-object v1, Lverbi/italia/main;->_vv2:Ljava/lang/String;

    .line 526
    const-string v0, ""

    sput-object v1, Lverbi/italia/main;->_vv3:Ljava/lang/String;

    .line 528
    const-string v0, ""

    return-object v1
.end method

.method public static _vvvvv0()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v5, "Conjugador de verbos italianos"

    const-string v4, ""

    const-string v3, "<br />"

    .line 390
    const-string v0, ""

    .line 394
    const-string v0, ""

    .line 396
    invoke-static {}, Lverbi/italia/main;->_vvvvvv3()Ljava/lang/String;

    move-result-object v0

    .line 398
    new-instance v1, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;-><init>()V

    .line 400
    invoke-virtual {v1}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Initialize()V

    .line 402
    const-string v2, "it"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    const-string v0, "La coniugazione dei verbi italiani presenta molte difficolt\u00e0 a causa della grande ricchezza e variet\u00e0 delle forme verbali utilizzate."

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 406
    const-string v0, "<br />"

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 408
    const-string v0, "Con questa app non \u00e8 pi\u00f9 un problema! Infatti puoi coniugare pi\u00f9 di 10.000 verbi!"

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 410
    const-string v0, "<br />"

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 412
    const-string v0, "<br />"

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 414
    const-string v0, "Digitate nell\'apposito riquadro, il verbo all\'infinito (esempio: parlare, cantare, credere, vedere, partire, dormire). "

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 416
    const-string v0, "Se si desidera la coniugazione nella forma riflessiva \u00e8 sufficiente digitare il verbo riflessivo desiderato (esempio: amarsi, struggersi, spazientirsi)."

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 418
    const-string v0, "Coniugatore di verbi italiani"

    sput-object v0, Lverbi/italia/main;->_vv3:Ljava/lang/String;

    .line 420
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    const-string v0, "Coniunga"

    sput-object v0, Lverbi/italia/main;->_vvvvvv1:Ljava/lang/String;

    .line 422
    const-string v0, "Nessun risultato per il verbo: "

    sput-object v0, Lverbi/italia/main;->_vv2:Ljava/lang/String;

    .line 515
    :goto_0
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    invoke-static {v1}, Lanywheresoftware/b4a/BA;->ObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lverbi/italia/main;->_vvvvvv2:Ljava/lang/String;

    .line 517
    const-string v0, ""

    return-object v4

    .line 423
    :cond_0
    const-string v2, "ru"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 425
    const-string v0, "\u0421\u043f\u0440\u044f\u0433\u0430\u0442\u0435\u043b\u044c \u0438\u0442\u0430\u043b\u044c\u044f\u043d\u0441\u043a\u0438\u0445 \u0433\u043b\u0430\u0433\u043e\u043b\u043e\u0432: \u0441\u043f\u0440\u044f\u0436\u0435\u043d\u0438\u044f \u043f\u0440\u0430\u0432\u0438\u043b\u044c\u043d\u044b\u0445 \u0438 \u043d\u0435\u043f\u0440\u0430\u0432\u0438\u043b\u044c\u043d\u044b\u0445 \u0433\u043b\u0430\u0433\u043e\u043b\u043e\u0432 \u0438\u0442\u0430\u043b\u044c\u044f\u043d\u0441\u043a\u043e\u0433\u043e \u044f\u0437\u044b\u043a\u0430."

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 427
    const-string v0, "<br />"

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 429
    const-string v0, "\u0421\u043f\u0440\u044f\u0436\u0435\u043d\u0438\u0435 \u0433\u043b\u0430\u0433\u043e\u043b\u043e\u0432 \u0438\u0442\u0430\u043b\u044c\u044f\u043d\u0441\u043a\u043e\u0433\u043e \u044f\u0437\u044b\u043a\u0430 \u043d\u0435 \u043f\u0440\u043e\u0441\u0442\u043e \u0438\u0437-\u0437\u0430 \u0438\u0445 \u0438\u0437\u043e\u0431\u0438\u043b\u0438\u044f \u0438 \u0440\u0430\u0437\u043b\u0438\u0447\u043d\u044b\u0445 \u0432\u0430\u0440\u0438\u0430\u0446\u0438\u0439 \u0433\u043b\u0430\u0433\u043e\u043b\u044c\u043d\u044b\u0445 \u0444\u043e\u0440\u043c."

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 431
    const-string v0, "<br />"

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 433
    const-string v0, "\u0411\u043b\u0430\u0433\u043e\u0434\u0430\u0440\u044f \u044d\u0442\u043e\u043c\u0443 \u0431\u0435\u0441\u043f\u043b\u0430\u0442\u043d\u043e\u043c\u0443 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044e, \u0442\u0435\u043f\u0435\u0440\u044c \u044d\u0442\u043e \u043d\u0435 \u043f\u0440\u043e\u0431\u043b\u0435\u043c\u0430. \u0412 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0438 \u0441\u043e\u0431\u0440\u0430\u043d\u043e \u0431\u043e\u043b\u0435\u0435 10000 \u0433\u043b\u0430\u0433\u043e\u043b\u043e\u0432. "

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 435
    const-string v0, "\u041f\u0440\u043e\u0441\u0442\u043e \u0432\u0432\u0435\u0434\u0438\u0442\u0435 \u0433\u043b\u0430\u0433\u043e\u043b \u0432 \u0438\u043d\u0444\u0438\u043d\u0438\u0442\u0438\u0432\u0435 (\u043d\u0430\u043f\u0440\u0438\u043c\u0435\u0440: parlare, cantare, credere, vedere, partire, dormire) \u0438 \u043e\u0442\u043a\u0440\u043e\u0435\u0442\u0441\u044f \u0442\u0430\u0431\u043b\u0438\u0446\u0430 \u0441\u043f\u0440\u044f\u0436\u0435\u043d\u0438\u0439 \u044d\u0442\u043e\u0433\u043e \u0433\u043b\u0430\u0433\u043e\u043b\u0430."

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 437
    const-string v0, "\u0421\u043f\u0440\u044f\u0433\u0430\u0442\u0435\u043b\u044c \u0438\u0442\u0430\u043b\u044c\u044f\u043d\u0441\u043a\u0438\u0445 \u0433\u043b\u0430\u0433\u043e\u043b\u043e\u0432"

    sput-object v0, Lverbi/italia/main;->_vv3:Ljava/lang/String;

    .line 439
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    const-string v0, "\u0421\u043f\u0440\u044f\u0433\u0430\u0442\u044c"

    sput-object v0, Lverbi/italia/main;->_vvvvvv1:Ljava/lang/String;

    .line 441
    const-string v0, "\u041d\u0435\u0442 \u0440\u0435\u0437\u0443\u043b\u044c\u0442\u0430\u0442\u043e\u0432 \u0434\u043b\u044f \u0433\u043b\u0430\u0433\u043e\u043b\u0430: "

    sput-object v0, Lverbi/italia/main;->_vv2:Ljava/lang/String;

    goto :goto_0

    .line 442
    :cond_1
    const-string v2, "de"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 444
    const-string v0, "Geben Sie das italienische Verb, das Sie konjugieren m\u00f6chten, in das Feld oben ein (d. h.: parlare, cantare, credere, vedere, partire, dormire)."

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 446
    const-string v0, "<br />"

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 448
    const-string v0, "Konjugator f\u00fcr italienische Verben"

    sput-object v0, Lverbi/italia/main;->_vv3:Ljava/lang/String;

    .line 450
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    const-string v0, "Konjugiere"

    sput-object v0, Lverbi/italia/main;->_vvvvvv1:Ljava/lang/String;

    .line 452
    const-string v0, "Keine Ergebnisse f\u00fcr das Verb: "

    sput-object v0, Lverbi/italia/main;->_vv2:Ljava/lang/String;

    goto :goto_0

    .line 453
    :cond_2
    const-string v2, "fr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 455
    const-string v0, "La conjugaison des verbes italiens pr\u00e9sente les difficult\u00e9s du fait de leur richesse et vari\u00e9t\u00e9 de formes verbales utilis\u00e9es."

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 457
    const-string v0, "<br />"

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 459
    const-string v0, "La conjugaison des verbes italiens n\'est d\u00e9sormais plus un probl\u00e8me avec notre app!"

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 461
    const-string v0, "<br />"

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 463
    const-string v0, "<br />"

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 465
    const-string v0, "Tapez dans le cadre ci-dessus le verbe italien \u00e0 l\'infinitif (par exemple: parlare, cantare, credere, vedere, partire, dormire). "

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 467
    const-string v0, "Conjugueur de verbes italiens"

    sput-object v0, Lverbi/italia/main;->_vv3:Ljava/lang/String;

    .line 469
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    const-string v0, "Conjuguer"

    sput-object v0, Lverbi/italia/main;->_vvvvvv1:Ljava/lang/String;

    .line 471
    const-string v0, "Pas de r\u00e9sultats pour le verbe: "

    sput-object v0, Lverbi/italia/main;->_vv2:Ljava/lang/String;

    goto/16 :goto_0

    .line 472
    :cond_3
    const-string v2, "es"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 474
    const-string v0, "Escriba el verbo que desee conjugar (por ejemplo: parlare, cantare, credere, vedere, partire, dormire)."

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 476
    const-string v0, "<br />"

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 478
    const-string v0, "Conjugador de verbos italianos"

    sput-object v5, Lverbi/italia/main;->_vv3:Ljava/lang/String;

    .line 480
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    const-string v0, "iA conjugarlo"

    sput-object v0, Lverbi/italia/main;->_vvvvvv1:Ljava/lang/String;

    .line 482
    const-string v0, "Ning\u00fan resultado para el verbo: "

    sput-object v0, Lverbi/italia/main;->_vv2:Ljava/lang/String;

    goto/16 :goto_0

    .line 483
    :cond_4
    const-string v2, "pt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 485
    const-string v0, "Escreva o verbo a ser conjugado no campo em cima (ie: parlare, cantare, credere, vedere, partire, dormire)."

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 487
    const-string v0, "<br />"

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 489
    const-string v0, "Conjugador de verbos italianos"

    sput-object v5, Lverbi/italia/main;->_vv3:Ljava/lang/String;

    .line 491
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    const-string v0, "Conjugar"

    sput-object v0, Lverbi/italia/main;->_vvvvvv1:Ljava/lang/String;

    .line 493
    const-string v0, "Nenhum resultado para o verbo: "

    sput-object v0, Lverbi/italia/main;->_vv2:Ljava/lang/String;

    goto/16 :goto_0

    .line 496
    :cond_5
    const-string v0, "The italian verbs conjugation has many difficulties due to their abundance and different uses of verbal forms."

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 498
    const-string v0, "<br />"

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 500
    const-string v0, "But now, the conjugation of Italian verbs is not a problem, thanks to this free application. There are more than 10000 verbs."

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 502
    const-string v0, "<br />"

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 504
    const-string v0, "<br />"

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 506
    const-string v0, "Type inside the form above the italian verb you wish to conjugate (ie: parlare, cantare, credere, vedere, partire, dormire)."

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    .line 508
    const-string v0, "Italian verbs conjugator"

    sput-object v0, Lverbi/italia/main;->_vv3:Ljava/lang/String;

    .line 510
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    const-string v0, "Conjugate it"

    sput-object v0, Lverbi/italia/main;->_vvvvvv1:Ljava/lang/String;

    .line 512
    const-string v0, "No results for the verb: "

    sput-object v0, Lverbi/italia/main;->_vv2:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static _vvvvvv3()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 349
    new-instance v2, Lanywheresoftware/b4a/agraham/reflection/Reflection;

    invoke-direct {v2}, Lanywheresoftware/b4a/agraham/reflection/Reflection;-><init>()V

    .line 351
    const-string v3, "java.util.Locale"

    const-string v4, "getDefault"

    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->Null:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    sget-object v1, Lanywheresoftware/b4a/keywords/Common;->Null:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0, v1}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->RunStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lanywheresoftware/b4a/agraham/reflection/Reflection;->Target:Ljava/lang/Object;

    .line 353
    const-string v0, "getLanguage"

    invoke-virtual {v2, v0}, Lanywheresoftware/b4a/agraham/reflection/Reflection;->RunMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->ObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lverbi/italia/main;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lverbi/italia/main;->afterFirstLayout()V

    return-void
.end method

.method private afterFirstLayout()V
    .locals 13

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    const-string v5, "verbi.italia.main"

    const-string v12, "activity"

    .line 80
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    if-eq p0, v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    new-instance v0, Lanywheresoftware/b4a/BA;

    iget-object v2, p0, Lverbi/italia/main;->layout:Lanywheresoftware/b4a/BALayout;

    sget-object v3, Lverbi/italia/main;->processBA:Lanywheresoftware/b4a/BA;

    const-string v4, "verbi.italia"

    const-string v1, "verbi.italia.main"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lanywheresoftware/b4a/BA;-><init>(Landroid/content/Context;Lanywheresoftware/b4a/BALayout;Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lverbi/italia/main;->activityBA:Lanywheresoftware/b4a/BA;

    .line 84
    sget-object v0, Lverbi/italia/main;->processBA:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lverbi/italia/main;->activityBA:Lanywheresoftware/b4a/BA;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->activityBA:Ljava/lang/ref/WeakReference;

    .line 85
    sput v10, Lanywheresoftware/b4a/objects/ViewWrapper;->lastId:I

    .line 86
    new-instance v0, Lanywheresoftware/b4a/objects/ActivityWrapper;

    iget-object v1, p0, Lverbi/italia/main;->activityBA:Lanywheresoftware/b4a/BA;

    const-string v2, "activity"

    invoke-direct {v0, v1, v12}, Lanywheresoftware/b4a/objects/ActivityWrapper;-><init>(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    iput-object v0, p0, Lverbi/italia/main;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    .line 87
    sput-boolean v10, Lanywheresoftware/b4a/Msgbox;->isDismissing:Z

    .line 88
    sget-object v0, Lverbi/italia/main;->processBA:Lanywheresoftware/b4a/BA;

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->isShellModeRuntimeCheck(Lanywheresoftware/b4a/BA;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    sget-boolean v0, Lverbi/italia/main;->isFirst:Z

    if-eqz v0, :cond_2

    .line 90
    sget-object v6, Lverbi/italia/main;->processBA:Lanywheresoftware/b4a/BA;

    const-string v9, "SHELL"

    new-array v11, v10, [Ljava/lang/Object;

    invoke-virtual/range {v6 .. v11}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_2
    sget-object v0, Lverbi/italia/main;->processBA:Lanywheresoftware/b4a/BA;

    const-string v3, "CREATE"

    const/4 v1, 0x5

    new-array v6, v1, [Ljava/lang/Object;

    const-string v1, "verbi.italia.main"

    aput-object v5, v6, v10

    sget-object v1, Lverbi/italia/main;->processBA:Lanywheresoftware/b4a/BA;

    aput-object v1, v6, v8

    const/4 v1, 0x2

    iget-object v2, p0, Lverbi/italia/main;->activityBA:Lanywheresoftware/b4a/BA;

    aput-object v2, v6, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lverbi/italia/main;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

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
    iget-object v0, p0, Lverbi/italia/main;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    iget-object v1, p0, Lverbi/italia/main;->activityBA:Lanywheresoftware/b4a/BA;

    const-string v2, "activity"

    invoke-virtual {v0, v1, v12}, Lanywheresoftware/b4a/objects/ActivityWrapper;->reinitializeForShell(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    .line 94
    :cond_3
    invoke-static {}, Lverbi/italia/main;->initializeProcessGlobals()V

    .line 95
    invoke-static {}, Lverbi/italia/main;->initializeGlobals()V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "** Activity (main) Create, isFirst = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lverbi/italia/main;->isFirst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " **"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->LogInfo(Ljava/lang/String;)V

    .line 98
    sget-object v6, Lverbi/italia/main;->processBA:Lanywheresoftware/b4a/BA;

    const-string v9, "activity_create"

    new-array v11, v8, [Ljava/lang/Object;

    sget-boolean v0, Lverbi/italia/main;->isFirst:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v11, v10

    invoke-virtual/range {v6 .. v11}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sput-boolean v10, Lverbi/italia/main;->isFirst:Z

    .line 100
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    if-ne p0, v0, :cond_0

    .line 102
    sget-object v0, Lverbi/italia/main;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0, v10}, Lanywheresoftware/b4a/BA;->setActivityPaused(Z)V

    .line 103
    const-string v0, "** Activity (main) Resume **"

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->LogInfo(Ljava/lang/String;)V

    .line 104
    sget-object v0, Lverbi/italia/main;->processBA:Lanywheresoftware/b4a/BA;

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
    const-class v0, Lverbi/italia/main;

    return-object v0
.end method

.method private static initializeGlobals()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 263
    sget-object v1, Lverbi/italia/main;->processBA:Lanywheresoftware/b4a/BA;

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
    .locals 2

    .prologue
    .line 360
    sget-boolean v0, Lverbi/italia/main;->processGlobalsRun:Z

    if-nez v0, :cond_0

    .line 361
    const/4 v0, 0x1

    sput-boolean v0, Lverbi/italia/main;->processGlobalsRun:Z

    .line 363
    :try_start_0
    invoke-static {}, Lanywheresoftware/b4a/samples/httputils2/httputils2service;->_process_globals()Ljava/lang/String;

    .line 364
    invoke-static {}, Lverbi/italia/main;->_process_globals()Ljava/lang/String;

    .line 365
    invoke-static {}, Lverbi/italia/tempiverbo;->_process_globals()Ljava/lang/String;

    .line 366
    invoke-static {}, Lverbi/italia/imagedownloader;->_process_globals()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :cond_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    .line 369
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isAnyActivityVisible()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 282
    sget-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    or-int/2addr v0, v2

    .line 283
    sget-object v1, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    if-eqz v1, :cond_1

    move v1, v3

    :goto_1
    or-int/2addr v0, v1

    .line 284
    return v0

    :cond_0
    move v0, v2

    .line 282
    goto :goto_0

    :cond_1
    move v1, v2

    .line 283
    goto :goto_1
.end method


# virtual methods
.method public addMenuItem(Lanywheresoftware/b4a/B4AMenuItem;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lverbi/italia/main;->menuItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lverbi/italia/main;->menuItems:Ljava/util/ArrayList;

    .line 117
    :cond_0
    iget-object v0, p0, Lverbi/italia/main;->menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 260
    sget-object v0, Lverbi/italia/main;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0, p1, p2, p3}, Lanywheresoftware/b4a/BA;->onActivityResult(IILandroid/content/Intent;)V

    .line 261
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/16 v6, 0x400

    const/4 v2, 0x0

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget-boolean v0, Lverbi/italia/main;->isFirst:Z

    if-eqz v0, :cond_1

    .line 34
    new-instance v0, Lanywheresoftware/b4a/BA;

    invoke-virtual {p0}, Lverbi/italia/main;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "verbi.italia"

    const-string v5, "verbi.italia.main"

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lanywheresoftware/b4a/BA;-><init>(Landroid/content/Context;Lanywheresoftware/b4a/BALayout;Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lverbi/italia/main;->processBA:Lanywheresoftware/b4a/BA;

    .line 35
    sget-object v0, Lverbi/italia/main;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/BA;->loadHtSubs(Ljava/lang/Class;)V

    .line 36
    invoke-virtual {p0}, Lverbi/italia/main;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 37
    invoke-static {v0}, Lanywheresoftware/b4a/BALayout;->setDeviceScale(F)V

    .line 51
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lverbi/italia/main;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 54
    sput-object p0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    .line 55
    sget-object v0, Lverbi/italia/main;->processBA:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iput-object v2, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->activityBA:Ljava/lang/ref/WeakReference;

    .line 56
    new-instance v0, Lanywheresoftware/b4a/BALayout;

    invoke-direct {v0, p0}, Lanywheresoftware/b4a/BALayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lverbi/italia/main;->layout:Lanywheresoftware/b4a/BALayout;

    .line 57
    iget-object v0, p0, Lverbi/italia/main;->layout:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {p0, v0}, Lverbi/italia/main;->setContentView(Landroid/view/View;)V

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lverbi/italia/main;->afterFirstLayout:Z

    .line 59
    sget-object v0, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    new-instance v1, Lverbi/italia/main$WaitForLayout;

    invoke-direct {v1, v2}, Lverbi/italia/main$WaitForLayout;-><init>(Lverbi/italia/main$1;)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    return-void

    .line 40
    :cond_1
    sget-object v0, Lverbi/italia/main;->previousOne:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lverbi/italia/main;->previousOne:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 42
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 43
    const-string v1, "Killing previous instance (main)."

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
    iget-object v0, p0, Lverbi/italia/main;->menuItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move v0, v1

    .line 139
    :goto_0
    return v0

    .line 124
    :cond_0
    iget-object v0, p0, Lverbi/italia/main;->menuItems:Ljava/util/ArrayList;

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
    new-instance v3, Lverbi/italia/main$B4AMenuItemsClickListener;

    iget-object v0, v0, Lanywheresoftware/b4a/B4AMenuItem;->eventName:Ljava/lang/String;

    sget-object v4, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Lverbi/italia/main$B4AMenuItemsClickListener;-><init>(Lverbi/italia/main;Ljava/lang/String;)V

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

    sput-object v0, Lverbi/italia/main;->previousOne:Ljava/lang/ref/WeakReference;

    .line 233
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 163
    iget-object v0, p0, Lverbi/italia/main;->onKeySubExist:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 164
    sget-object v0, Lverbi/italia/main;->processBA:Lanywheresoftware/b4a/BA;

    const-string v1, "activity_keypress"

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lverbi/italia/main;->onKeySubExist:Ljava/lang/Boolean;

    .line 165
    :cond_0
    iget-object v0, p0, Lverbi/italia/main;->onKeySubExist:Ljava/lang/Boolean;

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
    new-instance v0, Lverbi/italia/main$HandleKeyDelayed;

    invoke-direct {v0, p0, v3}, Lverbi/italia/main$HandleKeyDelayed;-><init>(Lverbi/italia/main;Lverbi/italia/main$1;)V

    .line 169
    iput p1, v0, Lverbi/italia/main$HandleKeyDelayed;->kc:I

    .line 170
    sget-object v1, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v2

    .line 179
    :goto_0
    return v0

    .line 174
    :cond_1
    new-instance v0, Lverbi/italia/main$HandleKeyDelayed;

    invoke-direct {v0, p0, v3}, Lverbi/italia/main$HandleKeyDelayed;-><init>(Lverbi/italia/main;Lverbi/italia/main$1;)V

    invoke-virtual {v0, p1}, Lverbi/italia/main$HandleKeyDelayed;->runDirectly(I)Z

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
    iget-object v0, p0, Lverbi/italia/main;->onKeyUpSubExist:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 202
    sget-object v0, Lverbi/italia/main;->processBA:Lanywheresoftware/b4a/BA;

    const-string v1, "activity_keyup"

    invoke-virtual {v0, v3}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lverbi/italia/main;->onKeyUpSubExist:Ljava/lang/Boolean;

    .line 203
    :cond_0
    iget-object v0, p0, Lverbi/italia/main;->onKeyUpSubExist:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    sget-object v0, Lverbi/italia/main;->processBA:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Lverbi/italia/main;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

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
    invoke-virtual {p0, p1}, Lverbi/italia/main;->setIntent(Landroid/content/Intent;)V

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
    iget-object v0, p0, Lverbi/italia/main;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

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

    const-string v1, "** Activity (main) Pause, UserClosed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lverbi/italia/main;->activityBA:Lanywheresoftware/b4a/BA;

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
    sget-object v0, Lverbi/italia/main;->processBA:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Lverbi/italia/main;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    const-string v3, "activity_pause"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lverbi/italia/main;->activityBA:Lanywheresoftware/b4a/BA;

    iget-object v6, v6, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lverbi/italia/main;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0, v2}, Lanywheresoftware/b4a/BA;->setActivityPaused(Z)V

    .line 223
    const/4 v0, 0x0

    sput-object v0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    .line 224
    iget-object v0, p0, Lverbi/italia/main;->activityBA:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lverbi/italia/main;->previousOne:Ljava/lang/ref/WeakReference;

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
    sput-object p0, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    .line 238
    const/4 v0, 0x0

    sput-boolean v0, Lanywheresoftware/b4a/Msgbox;->isDismissing:Z

    .line 239
    iget-object v0, p0, Lverbi/italia/main;->activityBA:Lanywheresoftware/b4a/BA;

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Lverbi/italia/main$ResumeMessage;

    sget-object v1, Lverbi/italia/main;->mostCurrent:Lverbi/italia/main;

    invoke-direct {v0, v1}, Lverbi/italia/main$ResumeMessage;-><init>(Landroid/app/Activity;)V

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
    sget-object v0, Lverbi/italia/main;->processBA:Lanywheresoftware/b4a/BA;

    const-string v1, "activity_windowfocuschanged"

    invoke-virtual {v0, v3}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lverbi/italia/main;->processBA:Lanywheresoftware/b4a/BA;

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

.class Lcom/picvision/seaweedweather/WeatherWidget$MyTime;
.super Ljava/util/TimerTask;
.source "WeatherWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picvision/seaweedweather/WeatherWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTime"
.end annotation


# instance fields
.field appWidgetManager:Landroid/appwidget/AppWidgetManager;

.field context:Landroid/content/Context;

.field remoteViews:Landroid/widget/RemoteViews;

.field final synthetic this$0:Lcom/picvision/seaweedweather/WeatherWidget;

.field thisWidget:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Lcom/picvision/seaweedweather/WeatherWidget;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V
    .locals 11
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 425
    iput-object p1, p0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->this$0:Lcom/picvision/seaweedweather/WeatherWidget;

    .line 390
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 391
    iput-object p2, p0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    .line 392
    iput-object p3, p0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 393
    const-string v4, "widgetCityId"

    invoke-virtual {p2, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 394
    .local v1, "settings":Landroid/content/SharedPreferences;
    const-string v4, "widgetCityId"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "cityid":Ljava/lang/String;
    const-string v4, "widgetThemeSetting"

    invoke-virtual {p2, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 397
    .local v3, "widgetTheme":Landroid/content/SharedPreferences;
    const-string v4, "themeID"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 398
    .local v2, "themeId":I
    const-string v4, "widget"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "themeId = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x9

    if-lt v4, v5, :cond_4

    .line 400
    if-ne v2, v7, :cond_0

    .line 401
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030013

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    .line 424
    :goto_0
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/picvision/seaweedweather/WeatherWidget;

    invoke-direct {v4, p2, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v4, p0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->thisWidget:Landroid/content/ComponentName;

    return-void

    .line 402
    :cond_0
    if-ne v2, v8, :cond_1

    .line 403
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030014

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 404
    :cond_1
    if-ne v2, v9, :cond_2

    .line 405
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030015

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 406
    :cond_2
    if-ne v2, v10, :cond_3

    .line 407
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030016

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 409
    :cond_3
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030012

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 412
    :cond_4
    if-ne v2, v7, :cond_5

    .line 413
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030011

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 414
    :cond_5
    if-ne v2, v8, :cond_6

    .line 415
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f03001c

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 416
    :cond_6
    if-ne v2, v9, :cond_7

    .line 417
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f03001d

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 418
    :cond_7
    if-ne v2, v10, :cond_8

    .line 419
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f03001e

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    goto/16 :goto_0

    .line 421
    :cond_8
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030010

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 45

    .prologue
    .line 428
    const/16 v18, 0x0

    .line 429
    .local v18, "hasCalendar":Z
    const-string v40, "widget"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "update widget in timetask run()   "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v42, Ljava/util/Date;

    invoke-direct/range {v42 .. v42}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-static {}, Lcom/picvision/seaweedweather/WeatherWidget;->access$0()V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v40, v0

    const-string v41, "widgetCityId"

    const/16 v42, 0x0

    invoke-virtual/range {v40 .. v42}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v29

    .line 432
    .local v29, "settings":Landroid/content/SharedPreferences;
    const-string v40, "widgetCityId"

    const-string v41, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 434
    .local v13, "cityid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v40, v0

    const-string v41, "widgetThemeSetting"

    const/16 v42, 0x0

    invoke-virtual/range {v40 .. v42}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 435
    .local v37, "widgetTheme":Landroid/content/SharedPreferences;
    const-string v40, "themeID"

    const/16 v41, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v33

    .line 437
    .local v33, "themeId":I
    const-string v40, ""

    move-object v0, v13

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_10

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v40

    const/16 v41, 0x9

    move/from16 v0, v40

    move/from16 v1, v41

    if-lt v0, v1, :cond_10

    .line 438
    const/16 v40, 0x2

    move/from16 v0, v33

    move/from16 v1, v40

    if-ne v0, v1, :cond_8

    .line 439
    new-instance v40, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v41

    const v42, 0x7f030013

    invoke-direct/range {v40 .. v42}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    .line 449
    :goto_0
    invoke-static {}, Lcom/picvision/seaweedweather/WeatherWidget;->access$1()Ljava/util/List;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v40

    if-lez v40, :cond_0

    .line 450
    const/16 v40, 0x2

    move/from16 v0, v33

    move/from16 v1, v40

    if-ne v0, v1, :cond_c

    .line 451
    new-instance v40, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v41

    const v42, 0x7f030018

    invoke-direct/range {v40 .. v42}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    .line 461
    :goto_1
    const/16 v18, 0x1

    .line 491
    :cond_0
    :goto_2
    const-string v40, ""

    move-object v0, v13

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v40

    const/16 v41, 0x9

    move/from16 v0, v40

    move/from16 v1, v41

    if-lt v0, v1, :cond_4

    .line 492
    new-instance v40, Ljava/lang/StringBuilder;

    const-string v41, "http://211.95.79.112/weatherServer/GetWeather.jsp?cityid="

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v40

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "&version=1.0.0"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 493
    .local v34, "url":Ljava/lang/String;
    const-string v25, "/data/data/com.picvision.seaweedweather/weather_widget2.xml"

    .line 496
    .local v25, "savePath":Ljava/lang/String;
    :try_start_0
    new-instance v30, Ljava/net/URL;

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 497
    .local v30, "sourceUrl":Ljava/net/URL;
    invoke-virtual/range {v30 .. v30}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    .line 498
    .local v14, "conn":Ljava/net/URLConnection;
    invoke-virtual {v14}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    .line 499
    .local v20, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v14}, Ljava/net/URLConnection;->getContentLength()I

    move-result v17

    .line 500
    .local v17, "fileSize":I
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 501
    .local v26, "savefile":Ljava/io/File;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v40

    if-eqz v40, :cond_1

    .line 502
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 504
    :cond_1
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->createNewFile()Z

    .line 505
    new-instance v21, Ljava/io/FileOutputStream;

    .line 506
    const/16 v40, 0x1

    .line 505
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 507
    .local v21, "outputStream":Ljava/io/FileOutputStream;
    const/16 v40, 0x400

    move/from16 v0, v40

    new-array v0, v0, [B

    move-object v4, v0

    .line 508
    .local v4, "buffer":[B
    const/16 v23, 0x0

    .line 509
    .local v23, "readCount":I
    const/16 v24, 0x0

    .line 510
    .local v24, "readNum":I
    :cond_2
    :goto_3
    move/from16 v0, v23

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    const/16 v40, -0x1

    move/from16 v0, v24

    move/from16 v1, v40

    if-ne v0, v1, :cond_19

    .line 517
    :cond_3
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 525
    .end local v4    # "buffer":[B
    .end local v14    # "conn":Ljava/net/URLConnection;
    .end local v17    # "fileSize":I
    .end local v20    # "inputStream":Ljava/io/InputStream;
    .end local v21    # "outputStream":Ljava/io/FileOutputStream;
    .end local v23    # "readCount":I
    .end local v24    # "readNum":I
    .end local v26    # "savefile":Ljava/io/File;
    .end local v30    # "sourceUrl":Ljava/net/URL;
    :goto_4
    new-instance v39, Ljava/io/File;

    const-string v40, "/data/data/com.picvision.seaweedweather/weather_widget2.xml"

    invoke-direct/range {v39 .. v40}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 526
    .local v39, "xmlFile":Ljava/io/File;
    invoke-static/range {v39 .. v39}, Lcom/picvision/seaweedweather/utils/Util;->searchWeather(Ljava/io/File;)Lcom/picvision/seaweedweather/model/Weather;

    move-result-object v35

    .line 527
    .local v35, "weather":Lcom/picvision/seaweedweather/model/Weather;
    if-eqz v35, :cond_4

    .line 528
    invoke-virtual/range {v35 .. v35}, Lcom/picvision/seaweedweather/model/Weather;->getCityName()Ljava/lang/String;

    move-result-object v6

    .line 529
    .local v6, "city2Name":Ljava/lang/String;
    invoke-virtual/range {v35 .. v35}, Lcom/picvision/seaweedweather/model/Weather;->getRealText()Ljava/lang/String;

    move-result-object v10

    .line 530
    .local v10, "city2weatherText":Ljava/lang/String;
    invoke-virtual/range {v35 .. v35}, Lcom/picvision/seaweedweather/model/Weather;->getRealTemperature()Ljava/lang/String;

    move-result-object v9

    .line 531
    .local v9, "city2temperature":Ljava/lang/String;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-virtual/range {v35 .. v35}, Lcom/picvision/seaweedweather/model/Weather;->getRealDirection()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v41, "  "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v35 .. v35}, Lcom/picvision/seaweedweather/model/Weather;->getRealForce()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 532
    .local v11, "city2windText":Ljava/lang/String;
    new-instance v40, Ljava/lang/StringBuilder;

    const-string v41, "\u6e7f\u5ea6:"

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v35 .. v35}, Lcom/picvision/seaweedweather/model/Weather;->getRealHumidity()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 533
    .local v7, "city2huminityText":Ljava/lang/String;
    invoke-virtual/range {v35 .. v35}, Lcom/picvision/seaweedweather/model/Weather;->getRealPicId()Ljava/lang/String;

    move-result-object v8

    .line 536
    .local v8, "city2picId1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    move-object/from16 v40, v0

    const v41, 0x7f090057

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    move-object/from16 v40, v0

    const v41, 0x7f090058

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    move-object/from16 v40, v0

    const v41, 0x7f090059

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    move-object/from16 v40, v0

    const v41, 0x7f09005a

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    move-object/from16 v40, v0

    const v41, 0x7f09005b

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    move-object/from16 v40, v0

    const v41, 0x7f090056

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v42

    const-string v43, "drawable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v42

    move-object v1, v8

    move-object/from16 v2, v43

    move-object/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v42

    invoke-virtual/range {v40 .. v42}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 542
    new-instance v27, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v40, v0

    const-class v41, Lcom/picvision/seaweedweather/setCityInWidget;

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 543
    .local v27, "setCityIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v27

    move/from16 v3, v42

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v28

    .line 545
    .local v28, "setCityPending":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    move-object/from16 v40, v0

    const v41, 0x7f090054

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 546
    new-instance v15, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v40, v0

    const-class v41, Lcom/picvision/seaweedweather/main;

    move-object v0, v15

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 547
    .local v15, "detailIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object v2, v15

    move/from16 v3, v42

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v22

    .line 548
    .local v22, "pending":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    move-object/from16 v40, v0

    const v41, 0x7f090055

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 551
    .end local v6    # "city2Name":Ljava/lang/String;
    .end local v7    # "city2huminityText":Ljava/lang/String;
    .end local v8    # "city2picId1":Ljava/lang/String;
    .end local v9    # "city2temperature":Ljava/lang/String;
    .end local v10    # "city2weatherText":Ljava/lang/String;
    .end local v11    # "city2windText":Ljava/lang/String;
    .end local v15    # "detailIntent":Landroid/content/Intent;
    .end local v22    # "pending":Landroid/app/PendingIntent;
    .end local v25    # "savePath":Ljava/lang/String;
    .end local v27    # "setCityIntent":Landroid/content/Intent;
    .end local v28    # "setCityPending":Landroid/app/PendingIntent;
    .end local v34    # "url":Ljava/lang/String;
    .end local v35    # "weather":Lcom/picvision/seaweedweather/model/Weather;
    .end local v39    # "xmlFile":Ljava/io/File;
    :cond_4
    new-instance v39, Ljava/io/File;

    const-string v40, "/data/data/com.picvision.seaweedweather/weather0.xml"

    invoke-direct/range {v39 .. v40}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 552
    .restart local v39    # "xmlFile":Ljava/io/File;
    invoke-virtual/range {v39 .. v39}, Ljava/io/File;->exists()Z

    move-result v40

    if-eqz v40, :cond_6

    .line 553
    invoke-static/range {v39 .. v39}, Lcom/picvision/seaweedweather/utils/Util;->searchWeather(Ljava/io/File;)Lcom/picvision/seaweedweather/model/Weather;

    move-result-object v35

    .line 554
    .restart local v35    # "weather":Lcom/picvision/seaweedweather/model/Weather;
    if-eqz v35, :cond_5

    .line 555
    invoke-virtual/range {v35 .. v35}, Lcom/picvision/seaweedweather/model/Weather;->getCityName()Ljava/lang/String;

    move-result-object v12

    .line 556
    .local v12, "cityName":Ljava/lang/String;
    invoke-virtual/range {v35 .. v35}, Lcom/picvision/seaweedweather/model/Weather;->getRealText()Ljava/lang/String;

    move-result-object v36

    .line 557
    .local v36, "weatherText":Ljava/lang/String;
    invoke-virtual/range {v35 .. v35}, Lcom/picvision/seaweedweather/model/Weather;->getRealTemperature()Ljava/lang/String;

    move-result-object v32

    .line 558
    .local v32, "temperature":Ljava/lang/String;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-virtual/range {v35 .. v35}, Lcom/picvision/seaweedweather/model/Weather;->getRealDirection()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v41, "  "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v35 .. v35}, Lcom/picvision/seaweedweather/model/Weather;->getRealForce()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 559
    .local v38, "windText":Ljava/lang/String;
    new-instance v40, Ljava/lang/StringBuilder;

    const-string v41, "\u6e7f\u5ea6:"

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v35 .. v35}, Lcom/picvision/seaweedweather/model/Weather;->getRealHumidity()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 560
    .local v19, "huminityText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    move-object/from16 v40, v0

    const v41, 0x7f090047

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    move-object/from16 v40, v0

    const v41, 0x7f090048

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    move-object/from16 v40, v0

    const v41, 0x7f090049

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    move-object/from16 v40, v0

    const v41, 0x7f09004a

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    move-object/from16 v40, v0

    const v41, 0x7f09004b

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    move-object/from16 v40, v0

    const v41, 0x7f090042

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v42, v0

    const-string v43, "resID"

    const/16 v44, 0x0

    invoke-virtual/range {v42 .. v44}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v42

    const-string v43, "resID"

    const/16 v44, 0x0

    invoke-interface/range {v42 .. v44}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v42

    invoke-virtual/range {v40 .. v42}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 570
    new-instance v27, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v40, v0

    const-class v41, Lcom/picvision/seaweedweather/setCityInWidget;

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 571
    .restart local v27    # "setCityIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v27

    move/from16 v3, v42

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v28

    .line 572
    .restart local v28    # "setCityPending":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    move-object/from16 v40, v0

    const v41, 0x7f090054

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 574
    new-instance v15, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v40, v0

    const-class v41, Lcom/picvision/seaweedweather/main;

    move-object v0, v15

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 575
    .restart local v15    # "detailIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object v2, v15

    move/from16 v3, v42

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v22

    .line 576
    .restart local v22    # "pending":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    move-object/from16 v40, v0

    const v41, 0x7f090041

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    move-object/from16 v40, v0

    const v41, 0x7f090050

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    move-object/from16 v40, v0

    const v41, 0x7f090052

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    move-object/from16 v40, v0

    const v41, 0x7f090053

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 581
    .end local v12    # "cityName":Ljava/lang/String;
    .end local v15    # "detailIntent":Landroid/content/Intent;
    .end local v19    # "huminityText":Ljava/lang/String;
    .end local v22    # "pending":Landroid/app/PendingIntent;
    .end local v27    # "setCityIntent":Landroid/content/Intent;
    .end local v28    # "setCityPending":Landroid/app/PendingIntent;
    .end local v32    # "temperature":Ljava/lang/String;
    .end local v36    # "weatherText":Ljava/lang/String;
    .end local v38    # "windText":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    move-object/from16 v40, v0

    const v41, 0x7f090054

    const/16 v42, 0x0

    invoke-virtual/range {v40 .. v42}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 585
    .end local v35    # "weather":Lcom/picvision/seaweedweather/model/Weather;
    :cond_6
    if-eqz v18, :cond_7

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    move-object/from16 v40, v0

    const v41, 0x7f09005e

    invoke-static {}, Lcom/picvision/seaweedweather/WeatherWidget;->access$1()Ljava/util/List;

    move-result-object v42

    const/16 v43, 0x0

    invoke-interface/range {v42 .. v43}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/picvision/seaweedweather/model/MyCalendar;

    invoke-virtual {v4}, Lcom/picvision/seaweedweather/model/MyCalendar;->getTitle()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 587
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 588
    .local v5, "calendarIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/picvision/seaweedweather/WeatherWidget;->access$2()Ljava/lang/String;

    move-result-object v40

    invoke-static {}, Lcom/picvision/seaweedweather/WeatherWidget;->access$3()Ljava/lang/String;

    move-result-object v41

    move-object v0, v5

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object v2, v5

    move/from16 v3, v42

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v31

    .line 590
    .local v31, "startCalendarPending":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    move-object/from16 v40, v0

    const v41, 0x7f09005e

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 594
    .end local v5    # "calendarIntent":Landroid/content/Intent;
    .end local v31    # "startCalendarPending":Landroid/app/PendingIntent;
    :cond_7
    const-string v40, "timetask"

    const-string v41, "update widget in timetask end"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    return-void

    .line 440
    .end local v39    # "xmlFile":Ljava/io/File;
    :cond_8
    const/16 v40, 0x3

    move/from16 v0, v33

    move/from16 v1, v40

    if-ne v0, v1, :cond_9

    .line 441
    new-instance v40, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v41

    const v42, 0x7f030014

    invoke-direct/range {v40 .. v42}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    goto/16 :goto_0

    .line 442
    :cond_9
    const/16 v40, 0x4

    move/from16 v0, v33

    move/from16 v1, v40

    if-ne v0, v1, :cond_a

    .line 443
    new-instance v40, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v41

    const v42, 0x7f030015

    invoke-direct/range {v40 .. v42}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    goto/16 :goto_0

    .line 444
    :cond_a
    const/16 v40, 0x5

    move/from16 v0, v33

    move/from16 v1, v40

    if-ne v0, v1, :cond_b

    .line 445
    new-instance v40, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v41

    const v42, 0x7f030016

    invoke-direct/range {v40 .. v42}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    goto/16 :goto_0

    .line 447
    :cond_b
    new-instance v40, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v41

    const v42, 0x7f030012

    invoke-direct/range {v40 .. v42}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    goto/16 :goto_0

    .line 452
    :cond_c
    const/16 v40, 0x3

    move/from16 v0, v33

    move/from16 v1, v40

    if-ne v0, v1, :cond_d

    .line 453
    new-instance v40, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v41

    const v42, 0x7f030019

    invoke-direct/range {v40 .. v42}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    goto/16 :goto_1

    .line 454
    :cond_d
    const/16 v40, 0x4

    move/from16 v0, v33

    move/from16 v1, v40

    if-ne v0, v1, :cond_e

    .line 455
    new-instance v40, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v41

    const v42, 0x7f03001a

    invoke-direct/range {v40 .. v42}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    goto/16 :goto_1

    .line 456
    :cond_e
    const/16 v40, 0x5

    move/from16 v0, v33

    move/from16 v1, v40

    if-ne v0, v1, :cond_f

    .line 457
    new-instance v40, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v41

    const v42, 0x7f03001b

    invoke-direct/range {v40 .. v42}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    goto/16 :goto_1

    .line 459
    :cond_f
    new-instance v40, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v41

    const v42, 0x7f030017

    invoke-direct/range {v40 .. v42}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    goto/16 :goto_1

    .line 464
    :cond_10
    const/16 v40, 0x2

    move/from16 v0, v33

    move/from16 v1, v40

    if-ne v0, v1, :cond_11

    .line 465
    new-instance v40, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v41

    const v42, 0x7f030011

    invoke-direct/range {v40 .. v42}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    .line 475
    :goto_5
    invoke-static {}, Lcom/picvision/seaweedweather/WeatherWidget;->access$1()Ljava/util/List;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v40

    if-lez v40, :cond_0

    .line 476
    const/16 v40, 0x2

    move/from16 v0, v33

    move/from16 v1, v40

    if-ne v0, v1, :cond_15

    .line 477
    new-instance v40, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v41

    const v42, 0x7f030020

    invoke-direct/range {v40 .. v42}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    .line 487
    :goto_6
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 466
    :cond_11
    const/16 v40, 0x3

    move/from16 v0, v33

    move/from16 v1, v40

    if-ne v0, v1, :cond_12

    .line 467
    new-instance v40, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v41

    const v42, 0x7f03001c

    invoke-direct/range {v40 .. v42}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    goto :goto_5

    .line 468
    :cond_12
    const/16 v40, 0x4

    move/from16 v0, v33

    move/from16 v1, v40

    if-ne v0, v1, :cond_13

    .line 469
    new-instance v40, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v41

    const v42, 0x7f03001d

    invoke-direct/range {v40 .. v42}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    goto :goto_5

    .line 470
    :cond_13
    const/16 v40, 0x5

    move/from16 v0, v33

    move/from16 v1, v40

    if-ne v0, v1, :cond_14

    .line 471
    new-instance v40, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v41

    const v42, 0x7f03001e

    invoke-direct/range {v40 .. v42}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    goto/16 :goto_5

    .line 473
    :cond_14
    new-instance v40, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v41

    const v42, 0x7f030010

    invoke-direct/range {v40 .. v42}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    goto/16 :goto_5

    .line 478
    :cond_15
    const/16 v40, 0x3

    move/from16 v0, v33

    move/from16 v1, v40

    if-ne v0, v1, :cond_16

    .line 479
    new-instance v40, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v41

    const v42, 0x7f030021

    invoke-direct/range {v40 .. v42}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    goto/16 :goto_6

    .line 480
    :cond_16
    const/16 v40, 0x4

    move/from16 v0, v33

    move/from16 v1, v40

    if-ne v0, v1, :cond_17

    .line 481
    new-instance v40, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v41

    const v42, 0x7f030022

    invoke-direct/range {v40 .. v42}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    goto/16 :goto_6

    .line 482
    :cond_17
    const/16 v40, 0x5

    move/from16 v0, v33

    move/from16 v1, v40

    if-ne v0, v1, :cond_18

    .line 483
    new-instance v40, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v41

    const v42, 0x7f030023

    invoke-direct/range {v40 .. v42}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    goto/16 :goto_6

    .line 485
    :cond_18
    new-instance v40, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->context:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v41

    const v42, 0x7f03001f

    invoke-direct/range {v40 .. v42}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;->remoteViews:Landroid/widget/RemoteViews;

    goto/16 :goto_6

    .line 511
    .restart local v4    # "buffer":[B
    .restart local v14    # "conn":Ljava/net/URLConnection;
    .restart local v17    # "fileSize":I
    .restart local v20    # "inputStream":Ljava/io/InputStream;
    .restart local v21    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v23    # "readCount":I
    .restart local v24    # "readNum":I
    .restart local v25    # "savePath":Ljava/lang/String;
    .restart local v26    # "savefile":Ljava/io/File;
    .restart local v30    # "sourceUrl":Ljava/net/URL;
    .restart local v34    # "url":Ljava/lang/String;
    :cond_19
    :try_start_1
    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v24

    .line 512
    const/16 v40, -0x1

    move/from16 v0, v24

    move/from16 v1, v40

    if-le v0, v1, :cond_2

    .line 513
    const/16 v40, 0x0

    move-object/from16 v0, v21

    move-object v1, v4

    move/from16 v2, v40

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 514
    add-int v23, v23, v24

    goto/16 :goto_3

    .line 518
    .end local v4    # "buffer":[B
    .end local v14    # "conn":Ljava/net/URLConnection;
    .end local v17    # "fileSize":I
    .end local v20    # "inputStream":Ljava/io/InputStream;
    .end local v21    # "outputStream":Ljava/io/FileOutputStream;
    .end local v23    # "readCount":I
    .end local v24    # "readNum":I
    .end local v26    # "savefile":Ljava/io/File;
    .end local v30    # "sourceUrl":Ljava/net/URL;
    :catch_0
    move-exception v40

    move-object/from16 v16, v40

    .line 520
    .local v16, "e":Ljava/net/MalformedURLException;
    invoke-virtual/range {v16 .. v16}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_4

    .line 521
    .end local v16    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v40

    move-object/from16 v16, v40

    .line 523
    .local v16, "e":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4
.end method

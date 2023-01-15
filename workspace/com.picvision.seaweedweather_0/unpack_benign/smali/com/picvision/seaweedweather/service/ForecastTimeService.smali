.class public Lcom/picvision/seaweedweather/service/ForecastTimeService;
.super Landroid/app/Service;
.source "ForecastTimeService.java"


# static fields
.field public static final ACTION_UPDATE_ALL:Ljava/lang/String; = "com.ty.weather.UPDATE_ALL"

.field private static final TAG:Ljava/lang/String; = "ForecastTimeService"

.field private static isThreadRun:Z

.field private static requestWidgetIDs:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sLock:Ljava/lang/Object;

.field private static updateTimes:I


# instance fields
.field download:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

.field manager:Landroid/appwidget/AppWidgetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/picvision/seaweedweather/service/ForecastTimeService;->requestWidgetIDs:Ljava/util/Queue;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/picvision/seaweedweather/service/ForecastTimeService;->sLock:Ljava/lang/Object;

    .line 38
    sput-boolean v1, Lcom/picvision/seaweedweather/service/ForecastTimeService;->isThreadRun:Z

    .line 42
    sput v1, Lcom/picvision/seaweedweather/service/ForecastTimeService;->updateTimes:I

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    new-instance v0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    invoke-direct {v0}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/service/ForecastTimeService;->download:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    .line 31
    return-void
.end method

.method public static addWidgetIDs([I)V
    .locals 7
    .param p0, "widgetIDs"    # [I

    .prologue
    .line 49
    sget-object v1, Lcom/picvision/seaweedweather/service/ForecastTimeService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_0
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 49
    monitor-exit v1

    .line 55
    return-void

    .line 50
    :cond_0
    aget v0, p0, v3

    .line 51
    .local v0, "id":I
    const-string v4, "ForecastTimeService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "add widget ID:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget-object v4, Lcom/picvision/seaweedweather/service/ForecastTimeService;->requestWidgetIDs:Ljava/util/Queue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "id":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static hasMoreWidgetIDs()Z
    .locals 3

    .prologue
    .line 61
    sget-object v1, Lcom/picvision/seaweedweather/service/ForecastTimeService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v2, Lcom/picvision/seaweedweather/service/ForecastTimeService;->requestWidgetIDs:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    move v0, v2

    .line 63
    .local v0, "hasMore":Z
    :goto_0
    if-nez v0, :cond_0

    .line 64
    sput-boolean v0, Lcom/picvision/seaweedweather/service/ForecastTimeService;->isThreadRun:Z

    .line 66
    :cond_0
    monitor-exit v1

    return v0

    .line 62
    .end local v0    # "hasMore":Z
    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static nextWidgetIDs()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 74
    sget-object v1, Lcom/picvision/seaweedweather/service/ForecastTimeService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 75
    :try_start_0
    sget-object v0, Lcom/picvision/seaweedweather/service/ForecastTimeService;->requestWidgetIDs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/picvision/seaweedweather/service/ForecastTimeService;->requestWidgetIDs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    monitor-exit v1

    .line 78
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 93
    const-string v9, "ForecastTimeService"

    const-string v10, "start service Time update"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v9

    iput-object v9, p0, Lcom/picvision/seaweedweather/service/ForecastTimeService;->manager:Landroid/appwidget/AppWidgetManager;

    .line 96
    iget-object v9, p0, Lcom/picvision/seaweedweather/service/ForecastTimeService;->manager:Landroid/appwidget/AppWidgetManager;

    new-instance v10, Landroid/content/ComponentName;

    const-class v11, Lcom/picvision/seaweedweather/WeatherWidget;

    invoke-direct {v10, p0, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v9, v10}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v9

    invoke-static {v9}, Lcom/picvision/seaweedweather/service/ForecastTimeService;->addWidgetIDs([I)V

    .line 97
    :goto_0
    invoke-static {}, Lcom/picvision/seaweedweather/service/ForecastTimeService;->hasMoreWidgetIDs()Z

    move-result v9

    if-nez v9, :cond_0

    .line 204
    return-void

    .line 98
    :cond_0
    invoke-static {}, Lcom/picvision/seaweedweather/service/ForecastTimeService;->nextWidgetIDs()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 99
    .local v8, "widgetId":I
    const-string v9, "city"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/picvision/seaweedweather/service/ForecastTimeService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "cityid0"

    const-string v11, "101021300"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 103
    .local v1, "cityid":I
    sget v9, Lcom/picvision/seaweedweather/service/ForecastTimeService;->updateTimes:I

    const/16 v10, 0xf

    if-ne v9, v10, :cond_2

    .line 104
    iget-object v9, p0, Lcom/picvision/seaweedweather/service/ForecastTimeService;->download:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "http://211.95.79.112/weatherServer/GetWeather.jsp?cityid="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&version=1.0.0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "/data/data/com.picvision.seaweedweather/weather0.xml"

    invoke-virtual {v9, v10, v11}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->download(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v9, p0, Lcom/picvision/seaweedweather/service/ForecastTimeService;->download:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    new-instance v10, Lcom/picvision/seaweedweather/service/ForecastTimeService$1;

    invoke-direct {v10, p0}, Lcom/picvision/seaweedweather/service/ForecastTimeService$1;-><init>(Lcom/picvision/seaweedweather/service/ForecastTimeService;)V

    invoke-virtual {v9, v10}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->setOnDownloadCompleteListener(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadCompleteListener;)V

    .line 123
    iget-object v9, p0, Lcom/picvision/seaweedweather/service/ForecastTimeService;->download:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    new-instance v10, Lcom/picvision/seaweedweather/service/ForecastTimeService$2;

    invoke-direct {v10, p0}, Lcom/picvision/seaweedweather/service/ForecastTimeService$2;-><init>(Lcom/picvision/seaweedweather/service/ForecastTimeService;)V

    invoke-virtual {v9, v10}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->setOnDownloadErrorListener(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadErrorListener;)V

    .line 138
    const/4 v9, 0x0

    sput v9, Lcom/picvision/seaweedweather/service/ForecastTimeService;->updateTimes:I

    .line 191
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 192
    .local v2, "now":J
    const-wide/32 v5, 0xea60

    .line 194
    .local v5, "updateMilis":J
    const/4 v9, 0x0

    .line 195
    const/4 v10, 0x0

    .line 194
    invoke-static {p0, v9, p1, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 198
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    const-string v9, "alarm"

    invoke-virtual {p0, v9}, Lcom/picvision/seaweedweather/service/ForecastTimeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 199
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    const/4 v9, 0x0

    add-long v10, v2, v5

    invoke-virtual {v0, v9, v10, v11, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 202
    invoke-virtual {p0}, Lcom/picvision/seaweedweather/service/ForecastTimeService;->stopSelf()V

    goto :goto_0

    .line 141
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    .end local v2    # "now":J
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v5    # "updateMilis":J
    :cond_2
    sget v9, Lcom/picvision/seaweedweather/service/ForecastTimeService;->updateTimes:I

    add-int/lit8 v9, v9, 0x1

    sput v9, Lcom/picvision/seaweedweather/service/ForecastTimeService;->updateTimes:I

    .line 142
    new-instance v9, Ljava/io/File;

    const-string v10, "/data/data/com.picvision.seaweedweather/weather0.xml"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/picvision/seaweedweather/utils/Util;->searchWeather(Ljava/io/File;)Lcom/picvision/seaweedweather/model/Weather;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/picvision/seaweedweather/WeatherWidget;->updateWeather(Landroid/content/Context;Lcom/picvision/seaweedweather/model/Weather;)Landroid/widget/RemoteViews;

    move-result-object v7

    .line 144
    .local v7, "updateViews":Landroid/widget/RemoteViews;
    if-eqz v7, :cond_1

    .line 146
    iget-object v9, p0, Lcom/picvision/seaweedweather/service/ForecastTimeService;->manager:Landroid/appwidget/AppWidgetManager;

    iget-object v10, p0, Lcom/picvision/seaweedweather/service/ForecastTimeService;->manager:Landroid/appwidget/AppWidgetManager;

    new-instance v11, Landroid/content/ComponentName;

    const-class v12, Lcom/picvision/seaweedweather/WeatherWidget;

    invoke-direct {v11, p0, v12}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v10, v11}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v10

    invoke-virtual {v9, v10, v7}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    goto :goto_1
.end method

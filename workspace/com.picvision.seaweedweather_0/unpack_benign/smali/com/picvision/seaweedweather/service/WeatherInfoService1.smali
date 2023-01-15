.class public Lcom/picvision/seaweedweather/service/WeatherInfoService1;
.super Landroid/app/Service;
.source "WeatherInfoService1.java"


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


# instance fields
.field download:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

.field manager:Landroid/appwidget/AppWidgetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/picvision/seaweedweather/service/WeatherInfoService1;->requestWidgetIDs:Ljava/util/Queue;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/picvision/seaweedweather/service/WeatherInfoService1;->sLock:Ljava/lang/Object;

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/picvision/seaweedweather/service/WeatherInfoService1;->isThreadRun:Z

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    new-instance v0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    invoke-direct {v0}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/service/WeatherInfoService1;->download:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    .line 31
    return-void
.end method

.method public static addWidgetIDs([I)V
    .locals 7
    .param p0, "widgetIDs"    # [I

    .prologue
    .line 47
    sget-object v1, Lcom/picvision/seaweedweather/service/WeatherInfoService1;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 47
    monitor-exit v1

    .line 53
    return-void

    .line 48
    :cond_0
    aget v0, p0, v3

    .line 49
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

    .line 50
    sget-object v4, Lcom/picvision/seaweedweather/service/WeatherInfoService1;->requestWidgetIDs:Ljava/util/Queue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
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
    .line 59
    sget-object v1, Lcom/picvision/seaweedweather/service/WeatherInfoService1;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v2, Lcom/picvision/seaweedweather/service/WeatherInfoService1;->requestWidgetIDs:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    move v0, v2

    .line 61
    .local v0, "hasMore":Z
    :goto_0
    if-nez v0, :cond_0

    .line 62
    sput-boolean v0, Lcom/picvision/seaweedweather/service/WeatherInfoService1;->isThreadRun:Z

    .line 64
    :cond_0
    monitor-exit v1

    return v0

    .line 60
    .end local v0    # "hasMore":Z
    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 59
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
    .line 72
    sget-object v1, Lcom/picvision/seaweedweather/service/WeatherInfoService1;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lcom/picvision/seaweedweather/service/WeatherInfoService1;->requestWidgetIDs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcom/picvision/seaweedweather/service/WeatherInfoService1;->requestWidgetIDs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    monitor-exit v1

    .line 76
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 72
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
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v11, 0x0

    .line 90
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 91
    const-string v8, "ForecastTimeService"

    const-string v9, "start service Time update"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    iput-object v8, p0, Lcom/picvision/seaweedweather/service/WeatherInfoService1;->manager:Landroid/appwidget/AppWidgetManager;

    .line 94
    iget-object v8, p0, Lcom/picvision/seaweedweather/service/WeatherInfoService1;->manager:Landroid/appwidget/AppWidgetManager;

    new-instance v9, Landroid/content/ComponentName;

    const-class v10, Lcom/picvision/seaweedweather/WeatherWidget;

    invoke-direct {v9, p0, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v8, v9}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v8

    invoke-static {v8}, Lcom/picvision/seaweedweather/service/WeatherInfoService1;->addWidgetIDs([I)V

    .line 95
    :goto_0
    invoke-static {}, Lcom/picvision/seaweedweather/service/WeatherInfoService1;->hasMoreWidgetIDs()Z

    move-result v8

    if-nez v8, :cond_0

    .line 149
    return-void

    .line 96
    :cond_0
    invoke-static {}, Lcom/picvision/seaweedweather/service/WeatherInfoService1;->nextWidgetIDs()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 97
    .local v7, "widgetId":I
    const-string v8, "city"

    invoke-virtual {p0, v8, v11}, Lcom/picvision/seaweedweather/service/WeatherInfoService1;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "cityid"

    const-string v10, "101021300"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 99
    .local v1, "cityid":I
    iget-object v8, p0, Lcom/picvision/seaweedweather/service/WeatherInfoService1;->download:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://211.95.79.112/weatherServer/GetWeather.jsp?cityid="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&version=1.0.0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/data/data/com.picvision.seaweedweather/weather.xml"

    invoke-virtual {v8, v9, v10}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->download(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v8, p0, Lcom/picvision/seaweedweather/service/WeatherInfoService1;->download:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    new-instance v9, Lcom/picvision/seaweedweather/service/WeatherInfoService1$1;

    invoke-direct {v9, p0}, Lcom/picvision/seaweedweather/service/WeatherInfoService1$1;-><init>(Lcom/picvision/seaweedweather/service/WeatherInfoService1;)V

    invoke-virtual {v8, v9}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->setOnDownloadCompleteListener(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadCompleteListener;)V

    .line 118
    iget-object v8, p0, Lcom/picvision/seaweedweather/service/WeatherInfoService1;->download:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    new-instance v9, Lcom/picvision/seaweedweather/service/WeatherInfoService1$2;

    invoke-direct {v9, p0}, Lcom/picvision/seaweedweather/service/WeatherInfoService1$2;-><init>(Lcom/picvision/seaweedweather/service/WeatherInfoService1;)V

    invoke-virtual {v8, v9}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->setOnDownloadErrorListener(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadErrorListener;)V

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 137
    .local v2, "now":J
    const-wide/16 v5, 0x4e20

    .line 139
    .local v5, "updateMilis":J
    invoke-static {p0, v11, p1, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 143
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    const-string v8, "alarm"

    invoke-virtual {p0, v8}, Lcom/picvision/seaweedweather/service/WeatherInfoService1;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 144
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    add-long v8, v2, v5

    invoke-virtual {v0, v11, v8, v9, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 147
    invoke-virtual {p0}, Lcom/picvision/seaweedweather/service/WeatherInfoService1;->stopSelf()V

    goto :goto_0
.end method

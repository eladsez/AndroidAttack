.class Lcom/picvision/seaweedweather/service/ForecastTimeService1$2;
.super Ljava/lang/Object;
.source "ForecastTimeService1.java"

# interfaces
.implements Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/service/ForecastTimeService1;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picvision/seaweedweather/service/ForecastTimeService1;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/service/ForecastTimeService1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/service/ForecastTimeService1$2;->this$0:Lcom/picvision/seaweedweather/service/ForecastTimeService1;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadError(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;Ljava/lang/Exception;)V
    .locals 6
    .param p1, "managers"    # Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 123
    iget-object v1, p0, Lcom/picvision/seaweedweather/service/ForecastTimeService1$2;->this$0:Lcom/picvision/seaweedweather/service/ForecastTimeService1;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.picvision.seaweedweather/weather0.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/picvision/seaweedweather/utils/Util;->searchWeather(Ljava/io/File;)Lcom/picvision/seaweedweather/model/Weather;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/picvision/seaweedweather/WeatherWidget;->updateWeather(Landroid/content/Context;Lcom/picvision/seaweedweather/model/Weather;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 125
    .local v0, "updateViews":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Lcom/picvision/seaweedweather/service/ForecastTimeService1$2;->this$0:Lcom/picvision/seaweedweather/service/ForecastTimeService1;

    iget-object v1, v1, Lcom/picvision/seaweedweather/service/ForecastTimeService1;->manager:Landroid/appwidget/AppWidgetManager;

    iget-object v2, p0, Lcom/picvision/seaweedweather/service/ForecastTimeService1$2;->this$0:Lcom/picvision/seaweedweather/service/ForecastTimeService1;

    iget-object v2, v2, Lcom/picvision/seaweedweather/service/ForecastTimeService1;->manager:Landroid/appwidget/AppWidgetManager;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/picvision/seaweedweather/service/ForecastTimeService1$2;->this$0:Lcom/picvision/seaweedweather/service/ForecastTimeService1;

    const-class v5, Lcom/picvision/seaweedweather/WeatherWidget;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 129
    :cond_0
    return-void
.end method

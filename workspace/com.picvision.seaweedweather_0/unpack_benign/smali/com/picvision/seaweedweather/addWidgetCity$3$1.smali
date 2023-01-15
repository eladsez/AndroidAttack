.class Lcom/picvision/seaweedweather/addWidgetCity$3$1;
.super Ljava/lang/Object;
.source "addWidgetCity.java"

# interfaces
.implements Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/addWidgetCity$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/picvision/seaweedweather/addWidgetCity$3;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/addWidgetCity$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/addWidgetCity$3$1;->this$1:Lcom/picvision/seaweedweather/addWidgetCity$3;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;Ljava/lang/Object;)V
    .locals 7
    .param p1, "manager"    # Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 118
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/data/com.picvision.seaweedweather/weather0.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v3, "xmlFile":Ljava/io/File;
    invoke-static {v3}, Lcom/picvision/seaweedweather/utils/Util;->searchWeather(Ljava/io/File;)Lcom/picvision/seaweedweather/model/Weather;

    move-result-object v2

    .line 120
    .local v2, "weather":Lcom/picvision/seaweedweather/model/Weather;
    const-string v4, "addWidgetCity"

    const-string v5, "add city"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v4, p0, Lcom/picvision/seaweedweather/addWidgetCity$3$1;->this$1:Lcom/picvision/seaweedweather/addWidgetCity$3;

    invoke-static {v4}, Lcom/picvision/seaweedweather/addWidgetCity$3;->access$0(Lcom/picvision/seaweedweather/addWidgetCity$3;)Lcom/picvision/seaweedweather/addWidgetCity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/picvision/seaweedweather/WeatherWidget;->updateWeather(Landroid/content/Context;Lcom/picvision/seaweedweather/model/Weather;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 122
    .local v1, "updateViews":Landroid/widget/RemoteViews;
    if-eqz v1, :cond_0

    .line 123
    iget-object v4, p0, Lcom/picvision/seaweedweather/addWidgetCity$3$1;->this$1:Lcom/picvision/seaweedweather/addWidgetCity$3;

    invoke-static {v4}, Lcom/picvision/seaweedweather/addWidgetCity$3;->access$0(Lcom/picvision/seaweedweather/addWidgetCity$3;)Lcom/picvision/seaweedweather/addWidgetCity;

    move-result-object v4

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 124
    .local v0, "manager1":Landroid/appwidget/AppWidgetManager;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/picvision/seaweedweather/addWidgetCity$3$1;->this$1:Lcom/picvision/seaweedweather/addWidgetCity$3;

    invoke-static {v5}, Lcom/picvision/seaweedweather/addWidgetCity$3;->access$0(Lcom/picvision/seaweedweather/addWidgetCity$3;)Lcom/picvision/seaweedweather/addWidgetCity;

    move-result-object v5

    const-class v6, Lcom/picvision/seaweedweather/WeatherWidget;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 128
    .end local v0    # "manager1":Landroid/appwidget/AppWidgetManager;
    :cond_0
    return-void
.end method

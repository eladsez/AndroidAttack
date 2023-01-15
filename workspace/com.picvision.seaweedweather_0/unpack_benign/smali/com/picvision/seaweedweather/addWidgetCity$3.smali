.class Lcom/picvision/seaweedweather/addWidgetCity$3;
.super Ljava/lang/Object;
.source "addWidgetCity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/addWidgetCity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picvision/seaweedweather/addWidgetCity;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/addWidgetCity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/addWidgetCity$3;->this$0:Lcom/picvision/seaweedweather/addWidgetCity;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/picvision/seaweedweather/addWidgetCity$3;)Lcom/picvision/seaweedweather/addWidgetCity;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/picvision/seaweedweather/addWidgetCity$3;->this$0:Lcom/picvision/seaweedweather/addWidgetCity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-string v5, "widgetCityId"

    .line 109
    iget-object v3, p0, Lcom/picvision/seaweedweather/addWidgetCity$3;->this$0:Lcom/picvision/seaweedweather/addWidgetCity;

    const-string v4, "widgetCityId"

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/picvision/seaweedweather/addWidgetCity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 110
    .local v2, "settings":Landroid/content/SharedPreferences;
    const-string v3, "widgetCityId"

    const-string v3, ""

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "cityid":Ljava/lang/String;
    new-instance v1, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    invoke-direct {v1}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;-><init>()V

    .line 113
    .local v1, "download":Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://211.95.79.112/weatherServer/GetWeather.jsp?cityid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&version=1.0.0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/data/com.picvision.seaweedweather/weather_widget2.xml"

    invoke-virtual {v1, v3, v4}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->download(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v3, Lcom/picvision/seaweedweather/addWidgetCity$3$1;

    invoke-direct {v3, p0}, Lcom/picvision/seaweedweather/addWidgetCity$3$1;-><init>(Lcom/picvision/seaweedweather/addWidgetCity$3;)V

    invoke-virtual {v1, v3}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->setOnDownloadCompleteListener(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadCompleteListener;)V

    .line 134
    iget-object v3, p0, Lcom/picvision/seaweedweather/addWidgetCity$3;->this$0:Lcom/picvision/seaweedweather/addWidgetCity;

    invoke-virtual {v3}, Lcom/picvision/seaweedweather/addWidgetCity;->finish()V

    .line 135
    return-void
.end method

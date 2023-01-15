.class public Lcom/picvision/seaweedweather/setCityInWidget;
.super Landroid/app/Activity;
.source "setCityInWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cityAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Citys;",
            ">;"
        }
    .end annotation
.end field

.field private cityPosition:I

.field private deletecity:Landroid/widget/Button;

.field private provinceAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provinceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Province;",
            ">;"
        }
    .end annotation
.end field

.field private setcity:Landroid/widget/Button;

.field private settheme:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getCitys(I)Ljava/util/List;
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/picvision/seaweedweather/setCityInWidget;->cityList:Ljava/util/List;

    .line 61
    iget-object v2, p0, Lcom/picvision/seaweedweather/setCityInWidget;->provinceList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picvision/seaweedweather/model/Province;

    invoke-virtual {v2}, Lcom/picvision/seaweedweather/model/Province;->getCitys()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/picvision/seaweedweather/setCityInWidget;->cityList:Ljava/util/List;

    .line 62
    iget-object v2, p0, Lcom/picvision/seaweedweather/setCityInWidget;->cityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    return-object v1

    .line 62
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picvision/seaweedweather/model/Citys;

    .line 63
    .local v0, "city":Lcom/picvision/seaweedweather/model/Citys;
    invoke-virtual {v0}, Lcom/picvision/seaweedweather/model/Citys;->getCityName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v8, "widgetCityId"

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 81
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/picvision/seaweedweather/addWidgetCity;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/picvision/seaweedweather/setCityInWidget;->startActivity(Landroid/content/Intent;)V

    .line 83
    invoke-virtual {p0}, Lcom/picvision/seaweedweather/setCityInWidget;->finish()V

    goto :goto_0

    .line 86
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_1
    const-string v6, "widgetCityId"

    const/4 v6, 0x0

    invoke-virtual {p0, v8, v6}, Lcom/picvision/seaweedweather/setCityInWidget;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 87
    .local v3, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "widgetCityId"

    invoke-interface {v6, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/data/com.picvision.seaweedweather/weather_widget2.xml"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v5, "xmlFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 90
    :cond_0
    const-string v6, "setCityInWidger"

    const-string v7, "delete city"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/picvision/seaweedweather/WeatherWidget;->updateWeather(Landroid/content/Context;Lcom/picvision/seaweedweather/model/Weather;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 92
    .local v4, "updateViews":Landroid/widget/RemoteViews;
    if-eqz v4, :cond_1

    .line 93
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 94
    .local v2, "manager":Landroid/appwidget/AppWidgetManager;
    new-instance v6, Landroid/content/ComponentName;

    const-class v7, Lcom/picvision/seaweedweather/WeatherWidget;

    invoke-direct {v6, p0, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v6

    invoke-virtual {v2, v6, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 97
    .end local v2    # "manager":Landroid/appwidget/AppWidgetManager;
    :cond_1
    invoke-virtual {p0}, Lcom/picvision/seaweedweather/setCityInWidget;->finish()V

    goto :goto_0

    .line 100
    .end local v3    # "settings":Landroid/content/SharedPreferences;
    .end local v4    # "updateViews":Landroid/widget/RemoteViews;
    .end local v5    # "xmlFile":Ljava/io/File;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/picvision/seaweedweather/widgetThemeSelector;

    invoke-direct {v0, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/picvision/seaweedweather/setCityInWidget;->startActivity(Landroid/content/Intent;)V

    .line 102
    invoke-virtual {p0}, Lcom/picvision/seaweedweather/setCityInWidget;->finish()V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x7f09002c
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-string v4, "widgetCityId"

    const-string v3, ""

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v2, 0x7f030009

    invoke-virtual {p0, v2}, Lcom/picvision/seaweedweather/setCityInWidget;->setContentView(I)V

    .line 36
    const v2, 0x7f09002c

    invoke-virtual {p0, v2}, Lcom/picvision/seaweedweather/setCityInWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/picvision/seaweedweather/setCityInWidget;->setcity:Landroid/widget/Button;

    .line 37
    const v2, 0x7f09002d

    invoke-virtual {p0, v2}, Lcom/picvision/seaweedweather/setCityInWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/picvision/seaweedweather/setCityInWidget;->deletecity:Landroid/widget/Button;

    .line 38
    const-string v2, "widgetCityId"

    const/4 v2, 0x0

    invoke-virtual {p0, v4, v2}, Lcom/picvision/seaweedweather/setCityInWidget;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 39
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "widgetCityId"

    const-string v2, ""

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "secondCityId":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    iget-object v2, p0, Lcom/picvision/seaweedweather/setCityInWidget;->deletecity:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 45
    :goto_0
    const v2, 0x7f09002e

    invoke-virtual {p0, v2}, Lcom/picvision/seaweedweather/setCityInWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/picvision/seaweedweather/setCityInWidget;->settheme:Landroid/widget/Button;

    .line 46
    iget-object v2, p0, Lcom/picvision/seaweedweather/setCityInWidget;->setcity:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v2, p0, Lcom/picvision/seaweedweather/setCityInWidget;->settheme:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/picvision/seaweedweather/setCityInWidget;->deletecity:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 71
    const-string v0, "cancle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/picvision/seaweedweather/setCityInWidget;->finish()V

    .line 74
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

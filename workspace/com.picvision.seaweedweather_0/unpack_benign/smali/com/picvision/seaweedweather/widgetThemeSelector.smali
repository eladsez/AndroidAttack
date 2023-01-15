.class public Lcom/picvision/seaweedweather/widgetThemeSelector;
.super Landroid/app/Activity;
.source "widgetThemeSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final WIDGET_THEME_ID:Ljava/lang/String; = "themeID"

.field public static final WIDGET_THEME_SETTING:Ljava/lang/String; = "widgetThemeSetting"


# instance fields
.field manager:Landroid/appwidget/AppWidgetManager;

.field private sp:Landroid/content/SharedPreferences;

.field private theme1:Landroid/widget/ImageButton;

.field private theme2:Landroid/widget/ImageButton;

.field private theme3:Landroid/widget/ImageButton;

.field private theme4:Landroid/widget/ImageButton;

.field private theme5:Landroid/widget/ImageButton;

.field private themeId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const-class v11, Lcom/picvision/seaweedweather/WeatherWidget;

    const-string v10, "themeID"

    const-string v9, "selector"

    const-string v8, "not null"

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 94
    :goto_0
    return-void

    .line 43
    :pswitch_0
    iget-object v5, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "themeID"

    const/4 v6, 0x1

    invoke-interface {v5, v10, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 44
    invoke-static {p0, v7}, Lcom/picvision/seaweedweather/WeatherWidget;->updateWeather(Landroid/content/Context;Lcom/picvision/seaweedweather/model/Weather;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 45
    .local v0, "updateViews1":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_0

    .line 46
    const-string v5, "selector"

    const-string v5, "not null"

    invoke-static {v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    iput-object v5, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->manager:Landroid/appwidget/AppWidgetManager;

    .line 48
    iget-object v5, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->manager:Landroid/appwidget/AppWidgetManager;

    iget-object v6, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->manager:Landroid/appwidget/AppWidgetManager;

    new-instance v7, Landroid/content/ComponentName;

    const-class v8, Lcom/picvision/seaweedweather/WeatherWidget;

    invoke-direct {v7, p0, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/picvision/seaweedweather/widgetThemeSelector;->finish()V

    goto :goto_0

    .line 53
    .end local v0    # "updateViews1":Landroid/widget/RemoteViews;
    :pswitch_1
    iget-object v5, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "themeID"

    const/4 v6, 0x2

    invoke-interface {v5, v10, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    invoke-static {p0, v7}, Lcom/picvision/seaweedweather/WeatherWidget;->updateWeather(Landroid/content/Context;Lcom/picvision/seaweedweather/model/Weather;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 55
    .local v1, "updateViews2":Landroid/widget/RemoteViews;
    if-eqz v1, :cond_1

    .line 56
    const-string v5, "selector"

    const-string v5, "not null"

    invoke-static {v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    iput-object v5, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->manager:Landroid/appwidget/AppWidgetManager;

    .line 58
    iget-object v5, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->manager:Landroid/appwidget/AppWidgetManager;

    iget-object v6, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->manager:Landroid/appwidget/AppWidgetManager;

    new-instance v7, Landroid/content/ComponentName;

    const-class v8, Lcom/picvision/seaweedweather/WeatherWidget;

    invoke-direct {v7, p0, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/picvision/seaweedweather/widgetThemeSelector;->finish()V

    goto :goto_0

    .line 63
    .end local v1    # "updateViews2":Landroid/widget/RemoteViews;
    :pswitch_2
    iget-object v5, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "themeID"

    const/4 v6, 0x3

    invoke-interface {v5, v10, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    invoke-static {p0, v7}, Lcom/picvision/seaweedweather/WeatherWidget;->updateWeather(Landroid/content/Context;Lcom/picvision/seaweedweather/model/Weather;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 65
    .local v2, "updateViews3":Landroid/widget/RemoteViews;
    if-eqz v2, :cond_2

    .line 66
    const-string v5, "selector"

    const-string v5, "not null"

    invoke-static {v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    iput-object v5, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->manager:Landroid/appwidget/AppWidgetManager;

    .line 68
    iget-object v5, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->manager:Landroid/appwidget/AppWidgetManager;

    iget-object v6, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->manager:Landroid/appwidget/AppWidgetManager;

    new-instance v7, Landroid/content/ComponentName;

    const-class v8, Lcom/picvision/seaweedweather/WeatherWidget;

    invoke-direct {v7, p0, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/picvision/seaweedweather/widgetThemeSelector;->finish()V

    goto/16 :goto_0

    .line 73
    .end local v2    # "updateViews3":Landroid/widget/RemoteViews;
    :pswitch_3
    iget-object v5, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "themeID"

    const/4 v6, 0x4

    invoke-interface {v5, v10, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    invoke-static {p0, v7}, Lcom/picvision/seaweedweather/WeatherWidget;->updateWeather(Landroid/content/Context;Lcom/picvision/seaweedweather/model/Weather;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 75
    .local v3, "updateViews4":Landroid/widget/RemoteViews;
    if-eqz v3, :cond_3

    .line 76
    const-string v5, "selector"

    const-string v5, "not null"

    invoke-static {v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    iput-object v5, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->manager:Landroid/appwidget/AppWidgetManager;

    .line 78
    iget-object v5, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->manager:Landroid/appwidget/AppWidgetManager;

    iget-object v6, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->manager:Landroid/appwidget/AppWidgetManager;

    new-instance v7, Landroid/content/ComponentName;

    const-class v8, Lcom/picvision/seaweedweather/WeatherWidget;

    invoke-direct {v7, p0, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 80
    :cond_3
    invoke-virtual {p0}, Lcom/picvision/seaweedweather/widgetThemeSelector;->finish()V

    goto/16 :goto_0

    .line 83
    .end local v3    # "updateViews4":Landroid/widget/RemoteViews;
    :pswitch_4
    iget-object v5, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "themeID"

    const/4 v6, 0x5

    invoke-interface {v5, v10, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    invoke-static {p0, v7}, Lcom/picvision/seaweedweather/WeatherWidget;->updateWeather(Landroid/content/Context;Lcom/picvision/seaweedweather/model/Weather;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 85
    .local v4, "updateViews5":Landroid/widget/RemoteViews;
    if-eqz v4, :cond_4

    .line 86
    const-string v5, "selector"

    const-string v5, "not null"

    invoke-static {v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    iput-object v5, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->manager:Landroid/appwidget/AppWidgetManager;

    .line 88
    iget-object v5, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->manager:Landroid/appwidget/AppWidgetManager;

    iget-object v6, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->manager:Landroid/appwidget/AppWidgetManager;

    new-instance v7, Landroid/content/ComponentName;

    const-class v8, Lcom/picvision/seaweedweather/WeatherWidget;

    invoke-direct {v7, p0, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 90
    :cond_4
    invoke-virtual {p0}, Lcom/picvision/seaweedweather/widgetThemeSelector;->finish()V

    goto/16 :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x7f090069
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/picvision/seaweedweather/widgetThemeSelector;->setContentView(I)V

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f090069

    invoke-virtual {p0, v0}, Lcom/picvision/seaweedweather/widgetThemeSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->theme1:Landroid/widget/ImageButton;

    .line 27
    const v0, 0x7f09006a

    invoke-virtual {p0, v0}, Lcom/picvision/seaweedweather/widgetThemeSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->theme2:Landroid/widget/ImageButton;

    .line 28
    const v0, 0x7f09006b

    invoke-virtual {p0, v0}, Lcom/picvision/seaweedweather/widgetThemeSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->theme3:Landroid/widget/ImageButton;

    .line 29
    const v0, 0x7f09006c

    invoke-virtual {p0, v0}, Lcom/picvision/seaweedweather/widgetThemeSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->theme4:Landroid/widget/ImageButton;

    .line 30
    const v0, 0x7f09006d

    invoke-virtual {p0, v0}, Lcom/picvision/seaweedweather/widgetThemeSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->theme5:Landroid/widget/ImageButton;

    .line 31
    iget-object v0, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->theme1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->theme2:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->theme3:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->theme4:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->theme5:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const-string v0, "widgetThemeSetting"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/picvision/seaweedweather/widgetThemeSelector;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/picvision/seaweedweather/widgetThemeSelector;->sp:Landroid/content/SharedPreferences;

    .line 37
    return-void
.end method

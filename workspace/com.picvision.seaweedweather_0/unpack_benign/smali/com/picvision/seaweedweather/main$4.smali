.class Lcom/picvision/seaweedweather/main$4;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/main;->init()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picvision/seaweedweather/main;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/main;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/main$4;->this$0:Lcom/picvision/seaweedweather/main;

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 626
    new-array v2, v9, [Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    .line 628
    .local v2, "info":[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;
    iget-object v5, p0, Lcom/picvision/seaweedweather/main$4;->this$0:Lcom/picvision/seaweedweather/main;

    iget-object v6, p0, Lcom/picvision/seaweedweather/main$4;->this$0:Lcom/picvision/seaweedweather/main;

    iget-object v6, v6, Lcom/picvision/seaweedweather/main;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    aget-object v6, v6, p3

    invoke-static {v5, v6}, Lcom/picvision/seaweedweather/WeatherWidget;->updateWeather(Landroid/content/Context;Lcom/picvision/seaweedweather/model/Weather;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 630
    .local v4, "updateViews":Landroid/widget/RemoteViews;
    if-eqz v4, :cond_0

    .line 631
    iget-object v5, p0, Lcom/picvision/seaweedweather/main$4;->this$0:Lcom/picvision/seaweedweather/main;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 633
    .local v3, "manager":Landroid/appwidget/AppWidgetManager;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/picvision/seaweedweather/main$4;->this$0:Lcom/picvision/seaweedweather/main;

    const-class v7, Lcom/picvision/seaweedweather/WeatherWidget;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 635
    .end local v3    # "manager":Landroid/appwidget/AppWidgetManager;
    :cond_0
    iget-object v5, p0, Lcom/picvision/seaweedweather/main$4;->this$0:Lcom/picvision/seaweedweather/main;

    iget-object v5, v5, Lcom/picvision/seaweedweather/main;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    aget-object v5, v5, p3

    if-eqz v5, :cond_1

    .line 636
    iget-object v5, p0, Lcom/picvision/seaweedweather/main$4;->this$0:Lcom/picvision/seaweedweather/main;

    iget-object v5, v5, Lcom/picvision/seaweedweather/main;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    aget-object v5, v5, p3

    invoke-virtual {v5}, Lcom/picvision/seaweedweather/model/Weather;->getBriefInfos()[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    move-result-object v2

    .line 637
    new-instance v0, Lcom/picvision/seaweedweather/views/ImageAdapter;

    iget-object v5, p0, Lcom/picvision/seaweedweather/main$4;->this$0:Lcom/picvision/seaweedweather/main;

    invoke-direct {v0, v5, v2}, Lcom/picvision/seaweedweather/views/ImageAdapter;-><init>(Landroid/content/Context;[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;)V

    .line 638
    .local v0, "adapter":Lcom/picvision/seaweedweather/views/ImageAdapter;
    iget-object v5, p0, Lcom/picvision/seaweedweather/main$4;->this$0:Lcom/picvision/seaweedweather/main;

    iget-object v5, v5, Lcom/picvision/seaweedweather/main;->gallery:Lcom/picvision/seaweedweather/views/MyGallery;

    invoke-virtual {v5, v0}, Lcom/picvision/seaweedweather/views/MyGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 639
    iget-object v5, p0, Lcom/picvision/seaweedweather/main$4;->this$0:Lcom/picvision/seaweedweather/main;

    iget-object v5, v5, Lcom/picvision/seaweedweather/main;->mainbg:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/picvision/seaweedweather/main$4;->this$0:Lcom/picvision/seaweedweather/main;

    iget-object v6, v6, Lcom/picvision/seaweedweather/main;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Lcom/picvision/seaweedweather/model/Weather;->getRealText()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/picvision/seaweedweather/utils/Util;->isDaytime()Z

    move-result v7

    invoke-static {v6, v7}, Lcom/picvision/seaweedweather/utils/Util;->getWeatherImageBg(Ljava/lang/String;Z)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 640
    iget-object v5, p0, Lcom/picvision/seaweedweather/main$4;->this$0:Lcom/picvision/seaweedweather/main;

    iget-object v5, v5, Lcom/picvision/seaweedweather/main;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    aget-object v5, v5, p3

    invoke-virtual {v5}, Lcom/picvision/seaweedweather/model/Weather;->getRealText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/picvision/seaweedweather/utils/Util;->getBg(Ljava/lang/String;)I

    move-result v1

    .line 642
    .local v1, "id":I
    sparse-switch v1, :sswitch_data_0

    .line 652
    iget-object v5, p0, Lcom/picvision/seaweedweather/main$4;->this$0:Lcom/picvision/seaweedweather/main;

    iput v1, v5, Lcom/picvision/seaweedweather/main;->weatherId:I

    .line 653
    iget-object v5, p0, Lcom/picvision/seaweedweather/main$4;->this$0:Lcom/picvision/seaweedweather/main;

    iput-boolean v9, v5, Lcom/picvision/seaweedweather/main;->isHmove:Z

    .line 664
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 644
    .restart local v1    # "id":I
    :sswitch_0
    iget-object v5, p0, Lcom/picvision/seaweedweather/main$4;->this$0:Lcom/picvision/seaweedweather/main;

    iput v1, v5, Lcom/picvision/seaweedweather/main;->weatherId:I

    .line 645
    iget-object v5, p0, Lcom/picvision/seaweedweather/main$4;->this$0:Lcom/picvision/seaweedweather/main;

    iput-boolean v8, v5, Lcom/picvision/seaweedweather/main;->isHmove:Z

    goto :goto_0

    .line 648
    :sswitch_1
    iget-object v5, p0, Lcom/picvision/seaweedweather/main$4;->this$0:Lcom/picvision/seaweedweather/main;

    iput v1, v5, Lcom/picvision/seaweedweather/main;->weatherId:I

    .line 649
    iget-object v5, p0, Lcom/picvision/seaweedweather/main$4;->this$0:Lcom/picvision/seaweedweather/main;

    iput-boolean v8, v5, Lcom/picvision/seaweedweather/main;->isHmove:Z

    goto :goto_0

    .line 659
    .end local v0    # "adapter":Lcom/picvision/seaweedweather/views/ImageAdapter;
    .end local v1    # "id":I
    :cond_1
    new-instance v0, Lcom/picvision/seaweedweather/views/ImageAdapter;

    iget-object v5, p0, Lcom/picvision/seaweedweather/main$4;->this$0:Lcom/picvision/seaweedweather/main;

    invoke-direct {v0, v5, v2}, Lcom/picvision/seaweedweather/views/ImageAdapter;-><init>(Landroid/content/Context;[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;)V

    .line 660
    .restart local v0    # "adapter":Lcom/picvision/seaweedweather/views/ImageAdapter;
    iget-object v5, p0, Lcom/picvision/seaweedweather/main$4;->this$0:Lcom/picvision/seaweedweather/main;

    iget-object v5, v5, Lcom/picvision/seaweedweather/main;->gallery:Lcom/picvision/seaweedweather/views/MyGallery;

    invoke-virtual {v5, v0}, Lcom/picvision/seaweedweather/views/MyGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    .line 642
    :sswitch_data_0
    .sparse-switch
        0x7f020072 -> :sswitch_1
        0x7f02007e -> :sswitch_0
    .end sparse-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 669
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

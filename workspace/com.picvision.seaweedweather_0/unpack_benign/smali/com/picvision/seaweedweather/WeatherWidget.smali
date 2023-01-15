.class public Lcom/picvision/seaweedweather/WeatherWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "WeatherWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/picvision/seaweedweather/WeatherWidget$MyTime;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherWidget"

.field private static TIME_WIDGET:Landroid/text/format/Time;

.field private static calanderEventURL:Ljava/lang/String;

.field private static calanderRemiderURL:Ljava/lang/String;

.field private static calanderURL:Ljava/lang/String;

.field private static calendarLaunchName:Ljava/lang/String;

.field private static calendarList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/MyCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private static calendarName:Ljava/lang/String;

.field private static cr:Landroid/content/ContentResolver;

.field private static myContext:Landroid/content/Context;

.field private static nowTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v2, "com.android.calendar.LaunchActivity"

    const-string v1, ""

    .line 47
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Lcom/picvision/seaweedweather/WeatherWidget;->TIME_WIDGET:Landroid/text/format/Time;

    .line 49
    const-string v0, ""

    sput-object v1, Lcom/picvision/seaweedweather/WeatherWidget;->calanderURL:Ljava/lang/String;

    .line 50
    const-string v0, ""

    sput-object v1, Lcom/picvision/seaweedweather/WeatherWidget;->calanderEventURL:Ljava/lang/String;

    .line 51
    const-string v0, ""

    sput-object v1, Lcom/picvision/seaweedweather/WeatherWidget;->calanderRemiderURL:Ljava/lang/String;

    .line 52
    const-string v0, ""

    sput-object v1, Lcom/picvision/seaweedweather/WeatherWidget;->calendarName:Ljava/lang/String;

    .line 53
    const-string v0, ""

    sput-object v1, Lcom/picvision/seaweedweather/WeatherWidget;->calendarLaunchName:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/picvision/seaweedweather/utils/CoreLib;->ContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/picvision/seaweedweather/WeatherWidget;->cr:Landroid/content/ContentResolver;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/picvision/seaweedweather/WeatherWidget;->calendarList:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sput-wide v0, Lcom/picvision/seaweedweather/WeatherWidget;->nowTime:J

    .line 58
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 59
    const-string v0, "content://com.android.calendar/calendars"

    sput-object v0, Lcom/picvision/seaweedweather/WeatherWidget;->calanderURL:Ljava/lang/String;

    .line 60
    const-string v0, "content://com.android.calendar/events"

    sput-object v0, Lcom/picvision/seaweedweather/WeatherWidget;->calanderEventURL:Ljava/lang/String;

    .line 61
    const-string v0, "content://com.android.calendar/reminders"

    sput-object v0, Lcom/picvision/seaweedweather/WeatherWidget;->calanderRemiderURL:Ljava/lang/String;

    .line 62
    const-string v0, "com.google.android.calendar"

    sput-object v0, Lcom/picvision/seaweedweather/WeatherWidget;->calendarName:Ljava/lang/String;

    .line 63
    const-string v0, "com.android.calendar.LaunchActivity"

    sput-object v2, Lcom/picvision/seaweedweather/WeatherWidget;->calendarLaunchName:Ljava/lang/String;

    .line 44
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string v0, "content://calendar/calendars"

    sput-object v0, Lcom/picvision/seaweedweather/WeatherWidget;->calanderURL:Ljava/lang/String;

    .line 67
    const-string v0, "content://calendar/events"

    sput-object v0, Lcom/picvision/seaweedweather/WeatherWidget;->calanderEventURL:Ljava/lang/String;

    .line 68
    const-string v0, "content://calendar/reminders"

    sput-object v0, Lcom/picvision/seaweedweather/WeatherWidget;->calanderRemiderURL:Ljava/lang/String;

    .line 69
    const-string v0, "com.android.calendar"

    sput-object v0, Lcom/picvision/seaweedweather/WeatherWidget;->calendarName:Ljava/lang/String;

    .line 70
    const-string v0, "com.android.calendar.LaunchActivity"

    sput-object v2, Lcom/picvision/seaweedweather/WeatherWidget;->calendarLaunchName:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static synthetic access$0()V
    .locals 0

    .prologue
    .line 600
    invoke-static {}, Lcom/picvision/seaweedweather/WeatherWidget;->getEnventFromCalendar()V

    return-void
.end method

.method static synthetic access$1()Ljava/util/List;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/picvision/seaweedweather/WeatherWidget;->calendarList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/picvision/seaweedweather/WeatherWidget;->calendarName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/picvision/seaweedweather/WeatherWidget;->calendarLaunchName:Ljava/lang/String;

    return-object v0
.end method

.method private static getEnventFromCalendar()V
    .locals 13

    .prologue
    .line 601
    sget-object v0, Lcom/picvision/seaweedweather/WeatherWidget;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/picvision/seaweedweather/WeatherWidget;->calanderEventURL:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 602
    .local v3, "eventCursor":Landroid/database/Cursor;
    if-eqz v3, :cond_2

    .line 603
    const-string v4, ""

    .line 604
    .local v4, "eventTitle":Ljava/lang/String;
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 605
    sget-object v0, Lcom/picvision/seaweedweather/WeatherWidget;->calendarList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 606
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 607
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sput-wide v0, Lcom/picvision/seaweedweather/WeatherWidget;->nowTime:J

    .line 608
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result v6

    .line 609
    .local v6, "nowDay":I
    const-string v0, "dtstart"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 610
    .local v9, "startTime":J
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 611
    .local v7, "startDate":Ljava/util/Date;
    invoke-virtual {v7}, Ljava/util/Date;->getDay()I

    move-result v8

    .line 612
    .local v8, "startDay":I
    const-string v0, "lastDate"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 613
    .local v1, "endTime":J
    if-ne v6, v8, :cond_0

    sget-wide v11, Lcom/picvision/seaweedweather/WeatherWidget;->nowTime:J

    cmp-long v0, v11, v1

    if-gez v0, :cond_0

    .line 614
    new-instance v0, Lcom/picvision/seaweedweather/model/MyCalendar;

    invoke-direct {v0}, Lcom/picvision/seaweedweather/model/MyCalendar;-><init>()V

    .line 615
    .local v0, "temp":Lcom/picvision/seaweedweather/model/MyCalendar;
    const-string v5, "title"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/picvision/seaweedweather/model/MyCalendar;->setTitle(Ljava/lang/String;)V

    .line 616
    const-string v5, "dtstart"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Lcom/picvision/seaweedweather/model/MyCalendar;->setStartTime(J)V

    .line 617
    const-string v5, "lastDate"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Lcom/picvision/seaweedweather/model/MyCalendar;->setEndTime(J)V

    .line 618
    const-string v5, "description"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/picvision/seaweedweather/model/MyCalendar;->setContent(Ljava/lang/String;)V

    .line 619
    sget-object v5, Lcom/picvision/seaweedweather/WeatherWidget;->calendarList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    .end local v0    # "temp":Lcom/picvision/seaweedweather/model/MyCalendar;
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    .line 622
    .local v0, "columncount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v0, :cond_3

    .line 625
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .end local v4    # "eventTitle":Ljava/lang/String;
    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 626
    .restart local v4    # "eventTitle":Ljava/lang/String;
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .end local v1    # "endTime":J
    if-nez v1, :cond_4

    .end local v0    # "columncount":I
    .end local v5    # "i":I
    .end local v6    # "nowDay":I
    .end local v7    # "startDate":Ljava/util/Date;
    .end local v8    # "startDay":I
    .end local v9    # "startTime":J
    :cond_1
    move-object v0, v4

    .line 646
    .end local v4    # "eventTitle":Ljava/lang/String;
    .local v0, "eventTitle":Ljava/lang/String;
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 649
    .end local v0    # "eventTitle":Ljava/lang/String;
    :cond_2
    return-void

    .line 623
    .local v0, "columncount":I
    .restart local v1    # "endTime":J
    .restart local v4    # "eventTitle":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v6    # "nowDay":I
    .restart local v7    # "startDate":Ljava/util/Date;
    .restart local v8    # "startDay":I
    .restart local v9    # "startTime":J
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .end local v4    # "eventTitle":Ljava/lang/String;
    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ":"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 622
    .restart local v4    # "eventTitle":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 627
    .end local v1    # "endTime":J
    :cond_4
    const-string v1, "dtstart"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 628
    new-instance v7, Ljava/util/Date;

    .end local v7    # "startDate":Ljava/util/Date;
    invoke-direct {v7, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 629
    .restart local v7    # "startDate":Ljava/util/Date;
    invoke-virtual {v7}, Ljava/util/Date;->getDay()I

    move-result v8

    .line 630
    const-string v1, "lastDate"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 631
    .restart local v1    # "endTime":J
    if-ne v6, v8, :cond_5

    sget-wide v11, Lcom/picvision/seaweedweather/WeatherWidget;->nowTime:J

    cmp-long v5, v11, v1

    if-gez v5, :cond_5

    .line 632
    .end local v5    # "i":I
    new-instance v5, Lcom/picvision/seaweedweather/model/MyCalendar;

    invoke-direct {v5}, Lcom/picvision/seaweedweather/model/MyCalendar;-><init>()V

    .line 633
    .local v5, "temp":Lcom/picvision/seaweedweather/model/MyCalendar;
    const-string v11, "_id"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/picvision/seaweedweather/model/MyCalendar;->set_id(Ljava/lang/String;)V

    .line 634
    const-string v11, "title"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/picvision/seaweedweather/model/MyCalendar;->setTitle(Ljava/lang/String;)V

    .line 635
    const-string v11, "dtstart"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Lcom/picvision/seaweedweather/model/MyCalendar;->setStartTime(J)V

    .line 636
    const-string v11, "lastDate"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Lcom/picvision/seaweedweather/model/MyCalendar;->setEndTime(J)V

    .line 637
    const-string v11, "description"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/picvision/seaweedweather/model/MyCalendar;->setContent(Ljava/lang/String;)V

    .line 638
    sget-object v11, Lcom/picvision/seaweedweather/WeatherWidget;->calendarList:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    .end local v5    # "temp":Lcom/picvision/seaweedweather/model/MyCalendar;
    :cond_5
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-lt v5, v0, :cond_6

    .line 643
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .end local v4    # "eventTitle":Ljava/lang/String;
    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "eventTitle":Ljava/lang/String;
    goto/16 :goto_1

    .line 641
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .end local v4    # "eventTitle":Ljava/lang/String;
    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ":"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 640
    .restart local v4    # "eventTitle":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public static updateWeather(Landroid/content/Context;Lcom/picvision/seaweedweather/model/Weather;)Landroid/widget/RemoteViews;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ws"    # Lcom/picvision/seaweedweather/model/Weather;

    .prologue
    .line 92
    const-string v0, "widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update weather in widget    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v2, 0x0

    .line 96
    .local v2, "hasCalendar":Z
    invoke-static {}, Lcom/picvision/seaweedweather/WeatherWidget;->getEnventFromCalendar()V

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "city2":Lcom/picvision/seaweedweather/model/Weather;
    const-string v1, "widgetCityId"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 100
    .local v1, "settings":Landroid/content/SharedPreferences;
    const-string v3, "widgetCityId"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "cityid":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .end local v1    # "cityid":Ljava/lang/String;
    const/16 v3, 0x9

    if-lt v1, v3, :cond_0

    .line 102
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.picvision.seaweedweather/weather_widget2.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, "xmlFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    invoke-static {v1}, Lcom/picvision/seaweedweather/utils/Util;->searchWeather(Ljava/io/File;)Lcom/picvision/seaweedweather/model/Weather;

    move-result-object v0

    .line 107
    .end local v1    # "xmlFile":Ljava/io/File;
    :cond_0
    const-string v1, "widgetThemeSetting"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 108
    .local v1, "widgetTheme":Landroid/content/SharedPreferences;
    const-string v3, "themeID"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 110
    .local v1, "themeId":I
    const-string v3, "widget"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "themeId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v3, 0x0

    .line 113
    .local v3, "views":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_c

    .line 114
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 115
    .end local v3    # "views":Landroid/widget/RemoteViews;
    const-string v3, "widget"

    const-string v4, "widget2row_calendar2"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030013

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 130
    .restart local v3    # "views":Landroid/widget/RemoteViews;
    :goto_0
    sget-object v4, Lcom/picvision/seaweedweather/WeatherWidget;->calendarList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_16

    .line 131
    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 132
    .end local v2    # "hasCalendar":Z
    const-string v1, "widget"

    .end local v1    # "themeId":I
    const-string v2, "widget2row_calendar2"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030018

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .end local v3    # "views":Landroid/widget/RemoteViews;
    .local v1, "views":Landroid/widget/RemoteViews;
    move-object v2, v1

    .line 147
    .end local v1    # "views":Landroid/widget/RemoteViews;
    .local v2, "views":Landroid/widget/RemoteViews;
    :goto_1
    const/4 v1, 0x1

    .local v1, "hasCalendar":Z
    move-object v7, v2

    .end local v2    # "views":Landroid/widget/RemoteViews;
    .local v7, "views":Landroid/widget/RemoteViews;
    move v5, v1

    .line 188
    .end local v1    # "hasCalendar":Z
    .local v5, "hasCalendar":Z
    :goto_2
    sget-object v1, Lcom/picvision/seaweedweather/WeatherWidget;->TIME_WIDGET:Landroid/text/format/Time;

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 189
    sget-object v1, Lcom/picvision/seaweedweather/WeatherWidget;->TIME_WIDGET:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->hour:I

    div-int/lit8 v2, v1, 0xa

    .line 190
    .local v2, "hour01":I
    sget-object v1, Lcom/picvision/seaweedweather/WeatherWidget;->TIME_WIDGET:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->hour:I

    rem-int/lit8 v3, v1, 0xa

    .line 191
    .local v3, "hour02":I
    sget-object v1, Lcom/picvision/seaweedweather/WeatherWidget;->TIME_WIDGET:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->minute:I

    div-int/lit8 v4, v1, 0xa

    .line 192
    .local v4, "minute01":I
    sget-object v1, Lcom/picvision/seaweedweather/WeatherWidget;->TIME_WIDGET:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->minute:I

    rem-int/lit8 v6, v1, 0xa

    .line 193
    .local v6, "minute02":I
    sget-object v1, Lcom/picvision/seaweedweather/WeatherWidget;->TIME_WIDGET:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->weekDay:I

    .line 194
    .local v1, "dayOfWeek":I
    const v1, 0x7f06000d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local v1    # "dayOfWeek":I
    move-result-object v1

    sget-object v8, Lcom/picvision/seaweedweather/WeatherWidget;->TIME_WIDGET:Landroid/text/format/Time;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    invoke-static {v1, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 195
    .local v1, "dt":Ljava/lang/CharSequence;
    const v1, 0x7f090043

    invoke-static {v2}, Lcom/picvision/seaweedweather/utils/Util;->getImageNumber(I)I

    .end local v1    # "dt":Ljava/lang/CharSequence;
    move-result v2

    .end local v2    # "hour01":I
    invoke-virtual {v7, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 196
    const v1, 0x7f090044

    invoke-static {v3}, Lcom/picvision/seaweedweather/utils/Util;->getImageNumber(I)I

    move-result v2

    invoke-virtual {v7, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 197
    const v1, 0x7f090045

    invoke-static {v4}, Lcom/picvision/seaweedweather/utils/Util;->getImageNumber(I)I

    move-result v2

    invoke-virtual {v7, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 198
    const v1, 0x7f090046

    invoke-static {v6}, Lcom/picvision/seaweedweather/utils/Util;->getImageNumber(I)I

    move-result v2

    invoke-virtual {v7, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 199
    const v1, 0x7f090051

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "dots"

    .end local v3    # "hour02":I
    const-string v4, "drawable"

    .end local v4    # "minute01":I
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .end local v6    # "minute02":I
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v7, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 200
    if-nez p1, :cond_1

    .line 201
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.picvision.seaweedweather/weather0.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v1, "xmlFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    invoke-static {v1}, Lcom/picvision/seaweedweather/utils/Util;->searchWeather(Ljava/io/File;)Lcom/picvision/seaweedweather/model/Weather;

    move-result-object p1

    .line 206
    .end local v1    # "xmlFile":Ljava/io/File;
    :cond_1
    if-eqz p1, :cond_2

    .line 207
    invoke-virtual {p1}, Lcom/picvision/seaweedweather/model/Weather;->getCityName()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "cityName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/picvision/seaweedweather/model/Weather;->getRealText()Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "weatherText":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/picvision/seaweedweather/model/Weather;->getRealTemperature()Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "temperature":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/picvision/seaweedweather/model/Weather;->getRealDirection()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/picvision/seaweedweather/model/Weather;->getRealForce()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, "windText":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "\u6e7f\u5ea6:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/picvision/seaweedweather/model/Weather;->getRealHumidity()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "ws":Lcom/picvision/seaweedweather/model/Weather;
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 212
    .local p1, "huminityText":Ljava/lang/String;
    const v6, 0x7f090047

    invoke-virtual {v7, v6, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 213
    const v1, 0x7f090048

    invoke-virtual {v7, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 214
    .end local v1    # "cityName":Ljava/lang/String;
    const v1, 0x7f090049

    invoke-virtual {v7, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 215
    const v1, 0x7f09004a

    invoke-virtual {v7, v1, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 216
    const v1, 0x7f09004b

    invoke-virtual {v7, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 217
    const p1, 0x7f090042

    const-string v1, "resID"

    .end local p1    # "huminityText":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .end local v2    # "temperature":Ljava/lang/String;
    move-result-object v1

    const-string v2, "resID"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .end local v3    # "weatherText":Ljava/lang/String;
    move-result v1

    invoke-virtual {v7, p1, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 218
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/picvision/seaweedweather/main;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .local p1, "detailIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 220
    .local p1, "pending":Landroid/app/PendingIntent;
    const v1, 0x7f090041

    invoke-virtual {v7, v1, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 221
    const v1, 0x7f090050

    invoke-virtual {v7, v1, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 222
    const v1, 0x7f090052

    invoke-virtual {v7, v1, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 223
    const v1, 0x7f090053

    invoke-virtual {v7, v1, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 228
    .end local v4    # "windText":Ljava/lang/String;
    .end local p1    # "pending":Landroid/app/PendingIntent;
    :cond_2
    if-eqz v0, :cond_15

    .line 229
    invoke-virtual {v0}, Lcom/picvision/seaweedweather/model/Weather;->getCityName()Ljava/lang/String;

    move-result-object p1

    .line 230
    .local p1, "city2Name":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/picvision/seaweedweather/model/Weather;->getRealText()Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "city2weatherText":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/picvision/seaweedweather/model/Weather;->getRealTemperature()Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "city2temperature":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/picvision/seaweedweather/model/Weather;->getRealDirection()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/picvision/seaweedweather/model/Weather;->getRealForce()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, "city2windText":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "\u6e7f\u5ea6:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/picvision/seaweedweather/model/Weather;->getRealHumidity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "city2huminityText":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/picvision/seaweedweather/model/Weather;->getRealPicId()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "city2picId1":Ljava/lang/String;
    const v6, 0x7f090057

    invoke-virtual {v7, v6, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 237
    const p1, 0x7f090058

    invoke-virtual {v7, p1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 238
    .end local p1    # "city2Name":Ljava/lang/String;
    const p1, 0x7f090059

    invoke-virtual {v7, p1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 239
    const p1, 0x7f09005a

    invoke-virtual {v7, p1, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 240
    const p1, 0x7f09005b

    invoke-virtual {v7, p1, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 241
    const p1, 0x7f090056

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .end local v1    # "city2huminityText":Ljava/lang/String;
    const-string v2, "drawable"

    .end local v2    # "city2temperature":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .end local v3    # "city2weatherText":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .end local v0    # "city2picId1":Ljava/lang/String;
    invoke-virtual {v7, p1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 242
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/picvision/seaweedweather/setCityInWidget;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    .local p1, "setCityIntent":Landroid/content/Intent;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 245
    .local p1, "setCityPending":Landroid/app/PendingIntent;
    const v0, 0x7f090054

    invoke-virtual {v7, v0, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 246
    new-instance p1, Landroid/content/Intent;

    .end local p1    # "setCityPending":Landroid/app/PendingIntent;
    const-class v0, Lcom/picvision/seaweedweather/main;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    .local p1, "detailIntent":Landroid/content/Intent;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 248
    .local p1, "pending":Landroid/app/PendingIntent;
    const v0, 0x7f090055

    invoke-virtual {v7, v0, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 259
    .end local v4    # "city2windText":Ljava/lang/String;
    .end local p1    # "pending":Landroid/app/PendingIntent;
    :goto_3
    if-eqz v5, :cond_3

    .line 260
    const v0, 0x7f09005e

    sget-object p1, Lcom/picvision/seaweedweather/WeatherWidget;->calendarList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picvision/seaweedweather/model/MyCalendar;

    invoke-virtual {p1}, Lcom/picvision/seaweedweather/model/MyCalendar;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 261
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 262
    .local p1, "calendarIntent":Landroid/content/Intent;
    sget-object v0, Lcom/picvision/seaweedweather/WeatherWidget;->calendarName:Ljava/lang/String;

    sget-object v1, Lcom/picvision/seaweedweather/WeatherWidget;->calendarLaunchName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 264
    .local p0, "startCalendarPending":Landroid/app/PendingIntent;
    const p1, 0x7f09005e

    invoke-virtual {v7, p1, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 267
    .end local p0    # "startCalendarPending":Landroid/app/PendingIntent;
    .end local p1    # "calendarIntent":Landroid/content/Intent;
    :cond_3
    return-object v7

    .line 117
    .end local v5    # "hasCalendar":Z
    .end local v7    # "views":Landroid/widget/RemoteViews;
    .local v0, "city2":Lcom/picvision/seaweedweather/model/Weather;
    .local v1, "themeId":I
    .local v2, "hasCalendar":Z
    .local p0, "context":Landroid/content/Context;
    .local p1, "ws":Lcom/picvision/seaweedweather/model/Weather;
    :cond_4
    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    .line 118
    const-string v3, "widget"

    const-string v4, "widget2row_calendar3"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030014

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .local v3, "views":Landroid/widget/RemoteViews;
    goto/16 :goto_0

    .line 120
    .end local v3    # "views":Landroid/widget/RemoteViews;
    :cond_5
    const/4 v3, 0x4

    if-ne v1, v3, :cond_6

    .line 121
    const-string v3, "widget"

    const-string v4, "widget2row_calendar4"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030015

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v3    # "views":Landroid/widget/RemoteViews;
    goto/16 :goto_0

    .line 123
    .end local v3    # "views":Landroid/widget/RemoteViews;
    :cond_6
    const/4 v3, 0x5

    if-ne v1, v3, :cond_7

    .line 124
    const-string v3, "widget"

    const-string v4, "widget2row_calendar5"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030016

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v3    # "views":Landroid/widget/RemoteViews;
    goto/16 :goto_0

    .line 127
    .end local v3    # "views":Landroid/widget/RemoteViews;
    :cond_7
    const-string v3, "widget"

    const-string v4, "widget2row_calendar1"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030012

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v3    # "views":Landroid/widget/RemoteViews;
    goto/16 :goto_0

    .line 134
    .end local v2    # "hasCalendar":Z
    :cond_8
    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 135
    const-string v1, "widget"

    .end local v1    # "themeId":I
    const-string v2, "widget2row_calendar3"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030019

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .end local v3    # "views":Landroid/widget/RemoteViews;
    .local v1, "views":Landroid/widget/RemoteViews;
    move-object v2, v1

    .end local v1    # "views":Landroid/widget/RemoteViews;
    .local v2, "views":Landroid/widget/RemoteViews;
    goto/16 :goto_1

    .line 137
    .end local v2    # "views":Landroid/widget/RemoteViews;
    .local v1, "themeId":I
    .restart local v3    # "views":Landroid/widget/RemoteViews;
    :cond_9
    const/4 v2, 0x4

    if-ne v1, v2, :cond_a

    .line 138
    const-string v1, "widget"

    .end local v1    # "themeId":I
    const-string v2, "widget2row_calendar4"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03001a

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .end local v3    # "views":Landroid/widget/RemoteViews;
    .local v1, "views":Landroid/widget/RemoteViews;
    move-object v2, v1

    .end local v1    # "views":Landroid/widget/RemoteViews;
    .restart local v2    # "views":Landroid/widget/RemoteViews;
    goto/16 :goto_1

    .line 140
    .end local v2    # "views":Landroid/widget/RemoteViews;
    .local v1, "themeId":I
    .restart local v3    # "views":Landroid/widget/RemoteViews;
    :cond_a
    const/4 v2, 0x5

    if-ne v1, v2, :cond_b

    .line 141
    const-string v1, "widget"

    .end local v1    # "themeId":I
    const-string v2, "widget2row_calendar5"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03001b

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .end local v3    # "views":Landroid/widget/RemoteViews;
    .local v1, "views":Landroid/widget/RemoteViews;
    move-object v2, v1

    .end local v1    # "views":Landroid/widget/RemoteViews;
    .restart local v2    # "views":Landroid/widget/RemoteViews;
    goto/16 :goto_1

    .line 144
    .end local v2    # "views":Landroid/widget/RemoteViews;
    .local v1, "themeId":I
    .restart local v3    # "views":Landroid/widget/RemoteViews;
    :cond_b
    const-string v1, "widget"

    .end local v1    # "themeId":I
    const-string v2, "widget2row_calendar1"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030017

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .end local v3    # "views":Landroid/widget/RemoteViews;
    .local v1, "views":Landroid/widget/RemoteViews;
    move-object v2, v1

    .end local v1    # "views":Landroid/widget/RemoteViews;
    .restart local v2    # "views":Landroid/widget/RemoteViews;
    goto/16 :goto_1

    .line 150
    .local v1, "themeId":I
    .local v2, "hasCalendar":Z
    .restart local v3    # "views":Landroid/widget/RemoteViews;
    :cond_c
    const/4 v3, 0x2

    if-ne v1, v3, :cond_d

    .line 151
    .end local v3    # "views":Landroid/widget/RemoteViews;
    const-string v3, "widget"

    const-string v4, "widget_calendar2"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030011

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 166
    .restart local v3    # "views":Landroid/widget/RemoteViews;
    :goto_4
    sget-object v4, Lcom/picvision/seaweedweather/WeatherWidget;->calendarList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_16

    .line 167
    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 168
    .end local v2    # "hasCalendar":Z
    const-string v1, "widget"

    .end local v1    # "themeId":I
    const-string v2, "widget_calendar2"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030020

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .end local v3    # "views":Landroid/widget/RemoteViews;
    .local v1, "views":Landroid/widget/RemoteViews;
    move-object v2, v1

    .line 183
    .end local v1    # "views":Landroid/widget/RemoteViews;
    .local v2, "views":Landroid/widget/RemoteViews;
    :goto_5
    const/4 v1, 0x1

    .local v1, "hasCalendar":Z
    move-object v7, v2

    .end local v2    # "views":Landroid/widget/RemoteViews;
    .restart local v7    # "views":Landroid/widget/RemoteViews;
    move v5, v1

    .end local v1    # "hasCalendar":Z
    .restart local v5    # "hasCalendar":Z
    goto/16 :goto_2

    .line 153
    .end local v5    # "hasCalendar":Z
    .end local v7    # "views":Landroid/widget/RemoteViews;
    .local v1, "themeId":I
    .local v2, "hasCalendar":Z
    :cond_d
    const/4 v3, 0x3

    if-ne v1, v3, :cond_e

    .line 154
    const-string v3, "widget"

    const-string v4, "widget_calendar3"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f03001c

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v3    # "views":Landroid/widget/RemoteViews;
    goto :goto_4

    .line 156
    .end local v3    # "views":Landroid/widget/RemoteViews;
    :cond_e
    const/4 v3, 0x4

    if-ne v1, v3, :cond_f

    .line 157
    const-string v3, "widget"

    const-string v4, "widget_calendar4"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f03001d

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v3    # "views":Landroid/widget/RemoteViews;
    goto :goto_4

    .line 159
    .end local v3    # "views":Landroid/widget/RemoteViews;
    :cond_f
    const/4 v3, 0x5

    if-ne v1, v3, :cond_10

    .line 160
    const-string v3, "widget"

    const-string v4, "widget_calendar5"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f03001e

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v3    # "views":Landroid/widget/RemoteViews;
    goto :goto_4

    .line 163
    .end local v3    # "views":Landroid/widget/RemoteViews;
    :cond_10
    const-string v3, "widget"

    const-string v4, "widget_calendar1"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030010

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v3    # "views":Landroid/widget/RemoteViews;
    goto :goto_4

    .line 170
    .end local v2    # "hasCalendar":Z
    :cond_11
    const/4 v2, 0x3

    if-ne v1, v2, :cond_12

    .line 171
    const-string v1, "widget"

    .end local v1    # "themeId":I
    const-string v2, "widget_calendar3"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030021

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .end local v3    # "views":Landroid/widget/RemoteViews;
    .local v1, "views":Landroid/widget/RemoteViews;
    move-object v2, v1

    .end local v1    # "views":Landroid/widget/RemoteViews;
    .local v2, "views":Landroid/widget/RemoteViews;
    goto :goto_5

    .line 173
    .end local v2    # "views":Landroid/widget/RemoteViews;
    .local v1, "themeId":I
    .restart local v3    # "views":Landroid/widget/RemoteViews;
    :cond_12
    const/4 v2, 0x4

    if-ne v1, v2, :cond_13

    .line 174
    const-string v1, "widget"

    .end local v1    # "themeId":I
    const-string v2, "widget_calendar4"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030022

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .end local v3    # "views":Landroid/widget/RemoteViews;
    .local v1, "views":Landroid/widget/RemoteViews;
    move-object v2, v1

    .end local v1    # "views":Landroid/widget/RemoteViews;
    .restart local v2    # "views":Landroid/widget/RemoteViews;
    goto/16 :goto_5

    .line 176
    .end local v2    # "views":Landroid/widget/RemoteViews;
    .local v1, "themeId":I
    .restart local v3    # "views":Landroid/widget/RemoteViews;
    :cond_13
    const/4 v2, 0x5

    if-ne v1, v2, :cond_14

    .line 177
    const-string v1, "widget"

    .end local v1    # "themeId":I
    const-string v2, "widget_calendar5"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030023

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .end local v3    # "views":Landroid/widget/RemoteViews;
    .local v1, "views":Landroid/widget/RemoteViews;
    move-object v2, v1

    .end local v1    # "views":Landroid/widget/RemoteViews;
    .restart local v2    # "views":Landroid/widget/RemoteViews;
    goto/16 :goto_5

    .line 180
    .end local v2    # "views":Landroid/widget/RemoteViews;
    .local v1, "themeId":I
    .restart local v3    # "views":Landroid/widget/RemoteViews;
    :cond_14
    const-string v1, "widget"

    .end local v1    # "themeId":I
    const-string v2, "widget_calendar1"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03001f

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .end local v3    # "views":Landroid/widget/RemoteViews;
    .local v1, "views":Landroid/widget/RemoteViews;
    move-object v2, v1

    .end local v1    # "views":Landroid/widget/RemoteViews;
    .restart local v2    # "views":Landroid/widget/RemoteViews;
    goto/16 :goto_5

    .line 253
    .end local v2    # "views":Landroid/widget/RemoteViews;
    .end local p1    # "ws":Lcom/picvision/seaweedweather/model/Weather;
    .restart local v5    # "hasCalendar":Z
    .restart local v7    # "views":Landroid/widget/RemoteViews;
    :cond_15
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/picvision/seaweedweather/setCityInWidget;

    .end local v0    # "city2":Lcom/picvision/seaweedweather/model/Weather;
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    .local p1, "setCityIntent":Landroid/content/Intent;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 255
    .local p1, "setCityPending":Landroid/app/PendingIntent;
    const v0, 0x7f090054

    invoke-virtual {v7, v0, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_3

    .end local v5    # "hasCalendar":Z
    .end local v7    # "views":Landroid/widget/RemoteViews;
    .restart local v0    # "city2":Lcom/picvision/seaweedweather/model/Weather;
    .local v1, "themeId":I
    .local v2, "hasCalendar":Z
    .restart local v3    # "views":Landroid/widget/RemoteViews;
    .local p1, "ws":Lcom/picvision/seaweedweather/model/Weather;
    :cond_16
    move-object v7, v3

    .end local v3    # "views":Landroid/widget/RemoteViews;
    .restart local v7    # "views":Landroid/widget/RemoteViews;
    move v5, v2

    .end local v2    # "hasCalendar":Z
    .restart local v5    # "hasCalendar":Z
    goto/16 :goto_2
.end method

.method public static weatherAmination(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "frameId"    # I

    .prologue
    .line 271
    const-string p1, "widget"

    .end local p1    # "frameId":I
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "weatherAmination    "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v1, 0x0

    .line 274
    .local v1, "hasCalendar":Z
    invoke-static {}, Lcom/picvision/seaweedweather/WeatherWidget;->getEnventFromCalendar()V

    .line 276
    const/4 p1, 0x0

    .line 277
    .local p1, "city2":Lcom/picvision/seaweedweather/model/Weather;
    const-string v0, "widgetCityId"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 278
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v2, "widgetCityId"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "cityid":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .end local v0    # "cityid":Ljava/lang/String;
    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    .line 280
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.picvision.seaweedweather/weather_widget2.xml"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, "xmlFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    invoke-static {v0}, Lcom/picvision/seaweedweather/utils/Util;->searchWeather(Ljava/io/File;)Lcom/picvision/seaweedweather/model/Weather;

    move-result-object p1

    .line 285
    .end local v0    # "xmlFile":Ljava/io/File;
    :cond_0
    const-string v0, "widgetThemeSetting"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 286
    .local v0, "widgetTheme":Landroid/content/SharedPreferences;
    const-string v2, "themeID"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 288
    .local v0, "themeId":I
    const-string v2, "widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "themeId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v2, 0x0

    .line 291
    .local v2, "views":Landroid/widget/RemoteViews;
    if-eqz p1, :cond_9

    .line 292
    const/4 p1, 0x2

    if-ne v0, p1, :cond_1

    .line 293
    .end local p1    # "city2":Lcom/picvision/seaweedweather/model/Weather;
    const-string p1, "widget"

    const-string v2, "widget2row_calendar2"

    .end local v2    # "views":Landroid/widget/RemoteViews;
    invoke-static {p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance p1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030013

    invoke-direct {p1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 308
    .local p1, "views":Landroid/widget/RemoteViews;
    :goto_0
    sget-object v2, Lcom/picvision/seaweedweather/WeatherWidget;->calendarList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_12

    .line 309
    const/4 p1, 0x2

    if-ne v0, p1, :cond_5

    .line 310
    .end local p1    # "views":Landroid/widget/RemoteViews;
    const-string p1, "widget"

    const-string v0, "widget2row_calendar2"

    .end local v0    # "themeId":I
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance p1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    const v0, 0x7f030018

    invoke-direct {p1, p0, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 325
    .restart local p1    # "views":Landroid/widget/RemoteViews;
    :goto_1
    const/4 p0, 0x1

    .line 381
    .end local v1    # "hasCalendar":Z
    .local p0, "hasCalendar":Z
    :goto_2
    return-object p1

    .line 295
    .end local p1    # "views":Landroid/widget/RemoteViews;
    .restart local v0    # "themeId":I
    .restart local v1    # "hasCalendar":Z
    .restart local v2    # "views":Landroid/widget/RemoteViews;
    .local p0, "context":Landroid/content/Context;
    :cond_1
    const/4 p1, 0x3

    if-ne v0, p1, :cond_2

    .line 296
    const-string p1, "widget"

    const-string v2, "widget2row_calendar3"

    .end local v2    # "views":Landroid/widget/RemoteViews;
    invoke-static {p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance p1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030014

    invoke-direct {p1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local p1    # "views":Landroid/widget/RemoteViews;
    goto :goto_0

    .line 298
    .end local p1    # "views":Landroid/widget/RemoteViews;
    .restart local v2    # "views":Landroid/widget/RemoteViews;
    :cond_2
    const/4 p1, 0x4

    if-ne v0, p1, :cond_3

    .line 299
    const-string p1, "widget"

    const-string v2, "widget2row_calendar4"

    .end local v2    # "views":Landroid/widget/RemoteViews;
    invoke-static {p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance p1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030015

    invoke-direct {p1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local p1    # "views":Landroid/widget/RemoteViews;
    goto :goto_0

    .line 301
    .end local p1    # "views":Landroid/widget/RemoteViews;
    .restart local v2    # "views":Landroid/widget/RemoteViews;
    :cond_3
    const/4 p1, 0x5

    if-ne v0, p1, :cond_4

    .line 302
    const-string p1, "widget"

    const-string v2, "widget2row_calendar5"

    .end local v2    # "views":Landroid/widget/RemoteViews;
    invoke-static {p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance p1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030016

    invoke-direct {p1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local p1    # "views":Landroid/widget/RemoteViews;
    goto :goto_0

    .line 305
    .end local p1    # "views":Landroid/widget/RemoteViews;
    .restart local v2    # "views":Landroid/widget/RemoteViews;
    :cond_4
    const-string p1, "widget"

    const-string v2, "widget2row_calendar1"

    .end local v2    # "views":Landroid/widget/RemoteViews;
    invoke-static {p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance p1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030012

    invoke-direct {p1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local p1    # "views":Landroid/widget/RemoteViews;
    goto :goto_0

    .line 312
    .end local p1    # "views":Landroid/widget/RemoteViews;
    :cond_5
    const/4 p1, 0x3

    if-ne v0, p1, :cond_6

    .line 313
    const-string p1, "widget"

    const-string v0, "widget2row_calendar3"

    .end local v0    # "themeId":I
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance p1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    const v0, 0x7f030019

    invoke-direct {p1, p0, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local p1    # "views":Landroid/widget/RemoteViews;
    goto :goto_1

    .line 315
    .end local p1    # "views":Landroid/widget/RemoteViews;
    .restart local v0    # "themeId":I
    .restart local p0    # "context":Landroid/content/Context;
    :cond_6
    const/4 p1, 0x4

    if-ne v0, p1, :cond_7

    .line 316
    const-string p1, "widget"

    const-string v0, "widget2row_calendar4"

    .end local v0    # "themeId":I
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance p1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    const v0, 0x7f03001a

    invoke-direct {p1, p0, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local p1    # "views":Landroid/widget/RemoteViews;
    goto/16 :goto_1

    .line 318
    .end local p1    # "views":Landroid/widget/RemoteViews;
    .restart local v0    # "themeId":I
    .restart local p0    # "context":Landroid/content/Context;
    :cond_7
    const/4 p1, 0x5

    if-ne v0, p1, :cond_8

    .line 319
    const-string p1, "widget"

    const-string v0, "widget2row_calendar5"

    .end local v0    # "themeId":I
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance p1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    const v0, 0x7f03001b

    invoke-direct {p1, p0, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local p1    # "views":Landroid/widget/RemoteViews;
    goto/16 :goto_1

    .line 322
    .end local p1    # "views":Landroid/widget/RemoteViews;
    .restart local v0    # "themeId":I
    .restart local p0    # "context":Landroid/content/Context;
    :cond_8
    const-string p1, "widget"

    const-string v0, "widget2row_calendar1"

    .end local v0    # "themeId":I
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    new-instance p1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    const v0, 0x7f030017

    invoke-direct {p1, p0, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local p1    # "views":Landroid/widget/RemoteViews;
    goto/16 :goto_1

    .line 328
    .restart local v0    # "themeId":I
    .restart local v2    # "views":Landroid/widget/RemoteViews;
    .restart local p0    # "context":Landroid/content/Context;
    .local p1, "city2":Lcom/picvision/seaweedweather/model/Weather;
    :cond_9
    const/4 p1, 0x2

    if-ne v0, p1, :cond_a

    .line 329
    .end local p1    # "city2":Lcom/picvision/seaweedweather/model/Weather;
    const-string p1, "widget"

    const-string v2, "widget_calendar2"

    .end local v2    # "views":Landroid/widget/RemoteViews;
    invoke-static {p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance p1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030011

    invoke-direct {p1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 344
    .local p1, "views":Landroid/widget/RemoteViews;
    :goto_3
    sget-object v2, Lcom/picvision/seaweedweather/WeatherWidget;->calendarList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_12

    .line 345
    const/4 p1, 0x2

    if-ne v0, p1, :cond_e

    .line 346
    .end local p1    # "views":Landroid/widget/RemoteViews;
    const-string p1, "widget"

    const-string v0, "widget_calendar2"

    .end local v0    # "themeId":I
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance p1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    const v0, 0x7f030020

    invoke-direct {p1, p0, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 361
    .restart local p1    # "views":Landroid/widget/RemoteViews;
    :goto_4
    const/4 p0, 0x1

    .end local v1    # "hasCalendar":Z
    .local p0, "hasCalendar":Z
    goto/16 :goto_2

    .line 331
    .end local p1    # "views":Landroid/widget/RemoteViews;
    .restart local v0    # "themeId":I
    .restart local v1    # "hasCalendar":Z
    .restart local v2    # "views":Landroid/widget/RemoteViews;
    .local p0, "context":Landroid/content/Context;
    :cond_a
    const/4 p1, 0x3

    if-ne v0, p1, :cond_b

    .line 332
    const-string p1, "widget"

    const-string v2, "widget_calendar3"

    .end local v2    # "views":Landroid/widget/RemoteViews;
    invoke-static {p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance p1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03001c

    invoke-direct {p1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local p1    # "views":Landroid/widget/RemoteViews;
    goto :goto_3

    .line 334
    .end local p1    # "views":Landroid/widget/RemoteViews;
    .restart local v2    # "views":Landroid/widget/RemoteViews;
    :cond_b
    const/4 p1, 0x4

    if-ne v0, p1, :cond_c

    .line 335
    const-string p1, "widget"

    const-string v2, "widget_calendar4"

    .end local v2    # "views":Landroid/widget/RemoteViews;
    invoke-static {p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    new-instance p1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03001d

    invoke-direct {p1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local p1    # "views":Landroid/widget/RemoteViews;
    goto :goto_3

    .line 337
    .end local p1    # "views":Landroid/widget/RemoteViews;
    .restart local v2    # "views":Landroid/widget/RemoteViews;
    :cond_c
    const/4 p1, 0x5

    if-ne v0, p1, :cond_d

    .line 338
    const-string p1, "widget"

    const-string v2, "widget_calendar5"

    .end local v2    # "views":Landroid/widget/RemoteViews;
    invoke-static {p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance p1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03001e

    invoke-direct {p1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local p1    # "views":Landroid/widget/RemoteViews;
    goto :goto_3

    .line 341
    .end local p1    # "views":Landroid/widget/RemoteViews;
    .restart local v2    # "views":Landroid/widget/RemoteViews;
    :cond_d
    const-string p1, "widget"

    const-string v2, "widget_calendar1"

    .end local v2    # "views":Landroid/widget/RemoteViews;
    invoke-static {p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    new-instance p1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030010

    invoke-direct {p1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local p1    # "views":Landroid/widget/RemoteViews;
    goto :goto_3

    .line 348
    .end local p1    # "views":Landroid/widget/RemoteViews;
    :cond_e
    const/4 p1, 0x3

    if-ne v0, p1, :cond_f

    .line 349
    const-string p1, "widget"

    const-string v0, "widget_calendar3"

    .end local v0    # "themeId":I
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance p1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    const v0, 0x7f030021

    invoke-direct {p1, p0, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local p1    # "views":Landroid/widget/RemoteViews;
    goto :goto_4

    .line 351
    .end local p1    # "views":Landroid/widget/RemoteViews;
    .restart local v0    # "themeId":I
    .restart local p0    # "context":Landroid/content/Context;
    :cond_f
    const/4 p1, 0x4

    if-ne v0, p1, :cond_10

    .line 352
    const-string p1, "widget"

    const-string v0, "widget_calendar4"

    .end local v0    # "themeId":I
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance p1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    const v0, 0x7f030022

    invoke-direct {p1, p0, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local p1    # "views":Landroid/widget/RemoteViews;
    goto/16 :goto_4

    .line 354
    .end local p1    # "views":Landroid/widget/RemoteViews;
    .restart local v0    # "themeId":I
    .restart local p0    # "context":Landroid/content/Context;
    :cond_10
    const/4 p1, 0x5

    if-ne v0, p1, :cond_11

    .line 355
    const-string p1, "widget"

    const-string v0, "widget_calendar5"

    .end local v0    # "themeId":I
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance p1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    const v0, 0x7f030023

    invoke-direct {p1, p0, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local p1    # "views":Landroid/widget/RemoteViews;
    goto/16 :goto_4

    .line 358
    .end local p1    # "views":Landroid/widget/RemoteViews;
    .restart local v0    # "themeId":I
    .restart local p0    # "context":Landroid/content/Context;
    :cond_11
    const-string p1, "widget"

    const-string v0, "widget_calendar1"

    .end local v0    # "themeId":I
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance p1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    const v0, 0x7f03001f

    invoke-direct {p1, p0, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local p1    # "views":Landroid/widget/RemoteViews;
    goto/16 :goto_4

    .restart local v0    # "themeId":I
    .restart local p0    # "context":Landroid/content/Context;
    :cond_12
    move p0, v1

    .end local v1    # "hasCalendar":Z
    .local p0, "hasCalendar":Z
    goto/16 :goto_2
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 78
    sput-object p1, Lcom/picvision/seaweedweather/WeatherWidget;->myContext:Landroid/content/Context;

    .line 79
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 80
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;

    sget-object v2, Lcom/picvision/seaweedweather/WeatherWidget;->myContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p2}, Lcom/picvision/seaweedweather/WeatherWidget$MyTime;-><init>(Lcom/picvision/seaweedweather/WeatherWidget;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V

    const-wide/16 v2, 0x7530

    const-wide/32 v4, 0xdbba0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 81
    sget-object v1, Lcom/picvision/seaweedweather/WeatherWidget;->myContext:Landroid/content/Context;

    invoke-super {p0, v1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 86
    invoke-static {p3}, Lcom/picvision/seaweedweather/service/ForecastTimeService;->addWidgetIDs([I)V

    .line 88
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/picvision/seaweedweather/service/ForecastTimeService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 90
    return-void
.end method

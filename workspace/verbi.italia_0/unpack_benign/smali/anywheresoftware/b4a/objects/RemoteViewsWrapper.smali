.class public Lanywheresoftware/b4a/objects/RemoteViewsWrapper;
.super Ljava/lang/Object;
.source "RemoteViewsWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "RemoteViews"
.end annotation


# instance fields
.field protected current:Landroid/widget/RemoteViews;

.field protected eventName:Ljava/lang/String;

.field protected original:Landroid/os/Parcel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRemoteViews(Lanywheresoftware/b4a/BA;ILjava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/RemoteViewsWrapper;
    .locals 7
    .param p0, "ba"    # Lanywheresoftware/b4a/BA;
    .param p1, "id"    # I
    .param p2, "layout"    # Ljava/lang/String;
    .param p3, "eventName"    # Ljava/lang/String;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v2, Landroid/widget/RemoteViews;

    sget-object v0, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    invoke-direct {v2, v0, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 36
    .local v2, "rv":Landroid/widget/RemoteViews;
    sget-object p1, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    .end local p1    # "id":I
    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 37
    const-string p1, ".bal"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "layout":Ljava/lang/String;
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ".bal"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 39
    .restart local p2    # "layout":Ljava/lang/String;
    :cond_0
    sget-object p1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 40
    .local p1, "in":Ljava/io/InputStream;
    new-instance p2, Ljava/io/DataInputStream;

    .end local p2    # "layout":Ljava/lang/String;
    invoke-direct {p2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 41
    .local p2, "din":Ljava/io/DataInputStream;
    invoke-static {p2}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result v1

    .line 42
    .local v1, "version":I
    invoke-static {p2}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result v0

    .line 43
    .local v0, "pos":I
    :goto_0
    if-gtz v0, :cond_2

    .line 46
    const/4 p1, 0x0

    check-cast p1, [Ljava/lang/String;

    .line 47
    .local p1, "cache":[Ljava/lang/String;
    const/4 v0, 0x3

    if-lt v1, v0, :cond_1

    .line 48
    .end local v0    # "pos":I
    invoke-static {p2}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result p1

    .end local p1    # "cache":[Ljava/lang/String;
    new-array p1, p1, [Ljava/lang/String;

    .line 49
    .restart local p1    # "cache":[Ljava/lang/String;
    const/4 v0, 0x0

    .end local v1    # "version":I
    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-lt v0, v1, :cond_3

    .line 53
    .end local v0    # "i":I
    :cond_1
    invoke-static {p2}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result v1

    .line 54
    .local v1, "numberOfVariants":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-lt v0, v1, :cond_4

    .line 57
    invoke-static {p2, p1}, Lanywheresoftware/b4a/ConnectorUtils;->readMap(Ljava/io/DataInputStream;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 58
    .local p1, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0, p1, v2}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->loadLayoutHelper(Lanywheresoftware/b4a/BA;Ljava/util/HashMap;Landroid/widget/RemoteViews;)V

    .line 59
    invoke-virtual {p2}, Ljava/io/DataInputStream;->close()V

    .line 60
    new-instance p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;

    .end local p0    # "ba":Lanywheresoftware/b4a/BA;
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;-><init>()V

    .line 61
    .local p0, "rvw":Lanywheresoftware/b4a/objects/RemoteViewsWrapper;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    .end local p1    # "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->original:Landroid/os/Parcel;

    .line 62
    iget-object p1, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->original:Landroid/os/Parcel;

    const/4 p2, 0x0

    invoke-virtual {v2, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 63
    .end local p2    # "din":Ljava/io/DataInputStream;
    sget-object p1, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p3, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->eventName:Ljava/lang/String;

    .line 64
    return-object p0

    .line 44
    .local v0, "pos":I
    .local v1, "version":I
    .local p0, "ba":Lanywheresoftware/b4a/BA;
    .local p1, "in":Ljava/io/InputStream;
    .restart local p2    # "din":Ljava/io/DataInputStream;
    :cond_2
    int-to-long v3, v0

    int-to-long v5, v0

    invoke-virtual {p1, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v0, v3

    goto :goto_0

    .line 50
    .end local v1    # "version":I
    .local v0, "i":I
    .local p1, "cache":[Ljava/lang/String;
    :cond_3
    invoke-static {p2}, Lanywheresoftware/b4a/ConnectorUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    .local v1, "numberOfVariants":I
    :cond_4
    invoke-static {p2}, Lanywheresoftware/b4a/keywords/LayoutValues;->readFromStream(Ljava/io/DataInputStream;)Lanywheresoftware/b4a/keywords/LayoutValues;

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected static getIdForView(Lanywheresoftware/b4a/BA;Ljava/lang/String;)I
    .locals 4
    .param p0, "ba"    # Lanywheresoftware/b4a/BA;
    .param p1, "viewName"    # Ljava/lang/String;

    .prologue
    .line 92
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".R$id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 93
    .local v0, "Rid":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lanywheresoftware/b4a/BA;->getClassNameWithoutPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 94
    .end local v0    # "Rid":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static loadLayoutHelper(Lanywheresoftware/b4a/BA;Ljava/util/HashMap;Landroid/widget/RemoteViews;)V
    .locals 10
    .param p0, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "rv"    # Landroid/widget/RemoteViews;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanywheresoftware/b4a/BA;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/widget/RemoteViews;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "_click"

    .line 71
    const-string v6, "eventName"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "eventName":Ljava/lang/String;
    const-string v6, "name"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "name":Ljava/lang/String;
    const-string v6, ":kids"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 75
    .local v3, "kids":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_0

    .line 76
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lt v1, v6, :cond_2

    .line 80
    .end local v1    # "i":I
    :cond_0
    iget-object v6, p0, Lanywheresoftware/b4a/BA;->htSubs:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "_click"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 81
    const/4 v6, 0x0

    invoke-static {p0, v6}, Lanywheresoftware/b4a/keywords/Common;->getComponentIntent(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v1

    .line 82
    .local v1, "i":Landroid/content/Intent;
    const-string v6, "b4a_internal_event"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "_click"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-static {p0, v4}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->getIdForView(Lanywheresoftware/b4a/BA;Ljava/lang/String;)I

    move-result v2

    .line 84
    .local v2, "id":I
    iget-object v6, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    .line 85
    const/high16 v7, 0x8000000

    .line 84
    invoke-static {v6, v2, v1, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 86
    .local v5, "pi":Landroid/app/PendingIntent;
    invoke-virtual {p2, v2, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 88
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "id":I
    .end local v5    # "pi":Landroid/app/PendingIntent;
    :cond_1
    return-void

    .line 77
    .local v1, "i":I
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-static {p0, v6, p2}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->loadLayoutHelper(Lanywheresoftware/b4a/BA;Ljava/util/HashMap;Landroid/widget/RemoteViews;)V

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private raiseEventWithDebuggingSupport(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 2
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "event"    # Ljava/lang/String;

    .prologue
    .line 128
    sget-boolean v0, Lanywheresoftware/b4a/BA;->debugMode:Z

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    new-instance v1, Lanywheresoftware/b4a/objects/RemoteViewsWrapper$1;

    invoke-direct {v1, p0, p1, p2}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper$1;-><init>(Lanywheresoftware/b4a/objects/RemoteViewsWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2, v0}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public HandleWidgetEvents(Lanywheresoftware/b4a/BA;Landroid/content/Intent;)Z
    .locals 4
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "StartingIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v1, "b4a_internal_event"

    .line 111
    if-nez p2, :cond_0

    move v0, v3

    .line 125
    :goto_0
    return v0

    .line 113
    :cond_0
    const-string v0, "b4a_internal_event"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    const-string v0, "b4a_internal_event"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->raiseEventWithDebuggingSupport(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    move v0, v2

    .line 115
    goto :goto_0

    .line 117
    :cond_1
    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->eventName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_requestupdate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->raiseEventWithDebuggingSupport(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    move v0, v2

    .line 119
    goto :goto_0

    .line 121
    :cond_2
    const-string v0, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->eventName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->raiseEventWithDebuggingSupport(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    move v0, v2

    .line 123
    goto :goto_0

    :cond_3
    move v0, v3

    .line 125
    goto :goto_0
.end method

.method public SetImage(Lanywheresoftware/b4a/BA;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "ImageViewName"    # Ljava/lang/String;
    .param p3, "Image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 161
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->checkNull()V

    .line 162
    iget-object v0, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->current:Landroid/widget/RemoteViews;

    invoke-static {p1, p2}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->getIdForView(Lanywheresoftware/b4a/BA;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 163
    return-void
.end method

.method public SetProgress(Lanywheresoftware/b4a/BA;Ljava/lang/String;I)V
    .locals 3
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "ProgressBarName"    # Ljava/lang/String;
    .param p3, "Progress"    # I

    .prologue
    .line 185
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->checkNull()V

    .line 186
    iget-object v0, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->current:Landroid/widget/RemoteViews;

    invoke-static {p1, p2}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->getIdForView(Lanywheresoftware/b4a/BA;Ljava/lang/String;)I

    move-result v1

    const-string v2, "setProgress"

    invoke-virtual {v0, v1, v2, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 187
    return-void
.end method

.method public SetText(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "ViewName"    # Ljava/lang/String;
    .param p3, "Text"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->checkNull()V

    .line 146
    iget-object v0, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->current:Landroid/widget/RemoteViews;

    invoke-static {p1, p2}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->getIdForView(Lanywheresoftware/b4a/BA;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 147
    return-void
.end method

.method public SetTextColor(Lanywheresoftware/b4a/BA;Ljava/lang/String;I)V
    .locals 2
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "ViewName"    # Ljava/lang/String;
    .param p3, "Color"    # I

    .prologue
    .line 169
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->checkNull()V

    .line 170
    iget-object v0, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->current:Landroid/widget/RemoteViews;

    invoke-static {p1, p2}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->getIdForView(Lanywheresoftware/b4a/BA;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 171
    return-void
.end method

.method public SetTextSize(Lanywheresoftware/b4a/BA;Ljava/lang/String;F)V
    .locals 3
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "ViewName"    # Ljava/lang/String;
    .param p3, "Size"    # F

    .prologue
    .line 177
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->checkNull()V

    .line 178
    iget-object v0, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->current:Landroid/widget/RemoteViews;

    invoke-static {p1, p2}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->getIdForView(Lanywheresoftware/b4a/BA;Ljava/lang/String;)I

    move-result v1

    const-string v2, "setTextSize"

    invoke-virtual {v0, v1, v2, p3}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 179
    return-void
.end method

.method public SetVisible(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "ViewName"    # Ljava/lang/String;
    .param p3, "Visible"    # Z

    .prologue
    .line 153
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->checkNull()V

    .line 154
    iget-object v0, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->current:Landroid/widget/RemoteViews;

    invoke-static {p1, p2}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->getIdForView(Lanywheresoftware/b4a/BA;Ljava/lang/String;)I

    move-result v1

    if-eqz p3, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 155
    return-void

    .line 154
    :cond_0
    const/4 v2, 0x4

    goto :goto_0
.end method

.method public UpdateWidget(Lanywheresoftware/b4a/BA;)V
    .locals 4
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->checkNull()V

    .line 193
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p1, Lanywheresoftware/b4a/BA;->className:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lanywheresoftware/b4a/BA;->getClassNameWithoutPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_BR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v1, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iget-object v2, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->current:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 195
    const/4 v1, 0x0

    iput-object v1, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->current:Landroid/widget/RemoteViews;

    .line 196
    return-void
.end method

.method protected checkNull()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->original:Landroid/os/Parcel;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RemoteViews should be set by calling ConfigureHomeWidget."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->current:Landroid/widget/RemoteViews;

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->original:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 103
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->original:Landroid/os/Parcel;

    invoke-direct {v0, v1}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->current:Landroid/widget/RemoteViews;

    .line 105
    :cond_1
    return-void
.end method

.class public Lcom/parse/StandardPushCallback;
.super Lcom/parse/PushCallback;
.source "StandardPushCallback.java"


# static fields
.field static disableNotifications:Z

.field static totalNotifications:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput v0, Lcom/parse/StandardPushCallback;->totalNotifications:I

    .line 24
    sput-boolean v0, Lcom/parse/StandardPushCallback;->disableNotifications:Z

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/parse/PushCallback;-><init>()V

    return-void
.end method

.method private makeBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "com.parse.Data"

    iget-object v2, p0, Lcom/parse/StandardPushCallback;->pushData:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v1, "com.parse.Channel"

    iget-object v2, p0, Lcom/parse/StandardPushCallback;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 34
    sget v13, Lcom/parse/StandardPushCallback;->totalNotifications:I

    add-int/lit8 v13, v13, 0x1

    sput v13, Lcom/parse/StandardPushCallback;->totalNotifications:I

    .line 35
    sget-boolean v13, Lcom/parse/StandardPushCallback;->disableNotifications:Z

    if-eqz v13, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/StandardPushCallback;->pushData:Lorg/json/JSONObject;

    if-nez v13, :cond_2

    .line 41
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/parse/StandardPushCallback;->pushData:Lorg/json/JSONObject;

    .line 44
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/StandardPushCallback;->pushData:Lorg/json/JSONObject;

    const-string v14, "action"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 46
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 47
    .local v1, "broadcastIntent":Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/parse/StandardPushCallback;->makeBundle()Landroid/os/Bundle;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 48
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/StandardPushCallback;->pushData:Lorg/json/JSONObject;

    const-string v14, "action"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/StandardPushCallback;->service:Landroid/app/Service;

    invoke-virtual {v13}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 50
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/StandardPushCallback;->pushData:Lorg/json/JSONObject;

    const-string v14, "alert"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/StandardPushCallback;->pushData:Lorg/json/JSONObject;

    const-string v14, "title"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 58
    .end local v1    # "broadcastIntent":Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/StandardPushCallback;->pushData:Lorg/json/JSONObject;

    const-string v14, "alert"

    const-string v15, "Notification received."

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 59
    .local v9, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/StandardPushCallback;->pushData:Lorg/json/JSONObject;

    const-string v14, "title"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parse/StandardPushCallback;->localData:Lorg/json/JSONObject;

    const-string v16, "appName"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 61
    .local v10, "title":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 64
    .local v11, "when":J
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/StandardPushCallback;->localData:Lorg/json/JSONObject;

    const-string v14, "activityPackage"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 65
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/StandardPushCallback;->localData:Lorg/json/JSONObject;

    const-string v15, "activityClass"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 64
    invoke-direct {v2, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .local v2, "componentName":Landroid/content/ComponentName;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 67
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 68
    const/high16 v13, 0x10000000

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    invoke-direct/range {p0 .. p0}, Lcom/parse/StandardPushCallback;->makeBundle()Landroid/os/Bundle;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 70
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/StandardPushCallback;->service:Landroid/app/Service;

    long-to-int v14, v11

    const/4 v15, 0x0

    invoke-static {v13, v14, v5, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 73
    .local v3, "contentIntent":Landroid/app/PendingIntent;
    new-instance v7, Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/StandardPushCallback;->localData:Lorg/json/JSONObject;

    const-string v14, "icon"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    invoke-direct {v7, v13, v9, v11, v12}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 74
    .local v7, "notif":Landroid/app/Notification;
    iget v13, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v13, v13, 0x10

    iput v13, v7, Landroid/app/Notification;->flags:I

    .line 75
    iget v13, v7, Landroid/app/Notification;->defaults:I

    or-int/lit8 v13, v13, -0x1

    iput v13, v7, Landroid/app/Notification;->defaults:I

    .line 76
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/StandardPushCallback;->service:Landroid/app/Service;

    invoke-virtual {v7, v13, v10, v9, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 80
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/StandardPushCallback;->service:Landroid/app/Service;

    const-string v14, "notification"

    invoke-virtual {v13, v14}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 82
    .local v6, "nm":Landroid/app/NotificationManager;
    long-to-int v8, v11

    .line 85
    .local v8, "notificationId":I
    :try_start_0
    invoke-virtual {v6, v8, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 86
    :catch_0
    move-exception v4

    .line 88
    .local v4, "e":Ljava/lang/SecurityException;
    const/4 v13, 0x5

    iput v13, v7, Landroid/app/Notification;->defaults:I

    .line 89
    invoke-virtual {v6, v8, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

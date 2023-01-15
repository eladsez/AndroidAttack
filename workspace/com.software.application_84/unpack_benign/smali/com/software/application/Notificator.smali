.class public Lcom/software/application/Notificator;
.super Landroid/content/BroadcastReceiver;
.source "Notificator.java"


# static fields
.field private static final KEY_NOTIFICATION_NUMBER:Ljava/lang/String; = "KEY_NOTIFICATION_NUMBER"

.field private static final MINUTES_UNTIL_NOTIFICATION:I = 0x1388

.field private static final NOTIFICATION_ACT:Ljava/lang/String; = "NOTIFICATION_ACT"


# instance fields
.field private settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private decreaseNotificationNumber(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    iget-object v1, p0, Lcom/software/application/Notificator;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 64
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/software/application/Notificator;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 65
    const-string v1, "KEY_NOTIFICATION_NUMBER"

    iget-object v2, p0, Lcom/software/application/Notificator;->settings:Landroid/content/SharedPreferences;

    const-string v3, "KEY_NOTIFICATION_NUMBER"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    return-void
.end method

.method private setInitialAlarm(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 83
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/software/application/Notificator;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 85
    .local v0, "am":Landroid/app/AlarmManager;
    const-string v3, "NOTIFICATION_ACT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const/high16 v3, 0x10000000

    .line 86
    invoke-static {p1, v7, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 88
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x11e1a300

    add-long/2addr v3, v5

    invoke-virtual {v0, v7, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 90
    return-void
.end method

.method private showNotification(Landroid/content/Context;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 45
    .local v6, "time":J
    const/16 v9, 0x8

    :try_start_0
    invoke-static {v9, p1}, Lcom/software/application/TextUtils;->readLine(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 46
    .local v5, "notificationURL":Ljava/lang/String;
    const/4 v9, 0x7

    invoke-static {v9, p1}, Lcom/software/application/TextUtils;->readLine(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "body":Ljava/lang/String;
    const/4 v9, 0x6

    invoke-static {v9, p1}, Lcom/software/application/TextUtils;->readLine(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 48
    .local v8, "title":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v1, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 49
    .local v1, "browserIntent":Landroid/content/Intent;
    const/4 v9, 0x0

    .line 50
    const/high16 v10, 0x10000000

    .line 49
    invoke-static {p1, v9, v1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 52
    .local v2, "contentIntent":Landroid/app/PendingIntent;
    const-string v9, "notification"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 51
    check-cast v3, Landroid/app/NotificationManager;

    .line 53
    .local v3, "nm":Landroid/app/NotificationManager;
    new-instance v4, Landroid/app/Notification;

    const v9, 0x7f020011

    invoke-direct {v4, v9, v8, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 54
    .local v4, "notification":Landroid/app/Notification;
    invoke-virtual {v4, p1, v8, v0, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 55
    const/16 v9, 0x14

    iput v9, v4, Landroid/app/Notification;->flags:I

    .line 56
    invoke-virtual {v3, p2, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/software/application/Notificator;->decreaseNotificationNumber(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v0    # "body":Ljava/lang/String;
    .end local v1    # "browserIntent":Landroid/content/Intent;
    .end local v2    # "contentIntent":Landroid/app/PendingIntent;
    .end local v3    # "nm":Landroid/app/NotificationManager;
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v5    # "notificationURL":Ljava/lang/String;
    .end local v8    # "title":Ljava/lang/String;
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v9

    goto :goto_0
.end method


# virtual methods
.method public initNotificationsNumberSettings(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/software/application/Notificator;->settings:Landroid/content/SharedPreferences;

    const-string v2, "KEY_NOTIFICATION_NUMBER"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/software/application/Notificator;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/software/application/Notificator;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 74
    :try_start_0
    const-string v1, "KEY_NOTIFICATION_NUMBER"

    const/16 v2, 0x9

    invoke-static {v2, p1}, Lcom/software/application/TextUtils;->readLine(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    invoke-direct {p0, p1}, Lcom/software/application/Notificator;->setInitialAlarm(Landroid/content/Context;)V

    .line 80
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void

    .line 75
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 33
    const-string v2, "NOTIFICATION_ACT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    :cond_0
    const-string v2, "PREFS"

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/software/application/Notificator;->settings:Landroid/content/SharedPreferences;

    .line 35
    iget-object v2, p0, Lcom/software/application/Notificator;->settings:Landroid/content/SharedPreferences;

    const-string v3, "KEY_NOTIFICATION_NUMBER"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 36
    .local v1, "id":I
    if-lez v1, :cond_1

    .line 37
    invoke-direct {p0, p1, v1}, Lcom/software/application/Notificator;->showNotification(Landroid/content/Context;I)V

    .line 40
    .end local v1    # "id":I
    :cond_1
    return-void
.end method

.method public setPrefs(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/software/application/Notificator;->settings:Landroid/content/SharedPreferences;

    .line 27
    return-void
.end method

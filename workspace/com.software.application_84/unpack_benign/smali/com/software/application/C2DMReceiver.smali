.class public Lcom/software/application/C2DMReceiver;
.super Lcom/google/android/c2dm/C2DMBaseReceiver;
.source "C2DMReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "sender_id"

    invoke-direct {p0, v0}, Lcom/google/android/c2dm/C2DMBaseReceiver;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorId"    # Ljava/lang/String;

    .prologue
    .line 22
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    const-string v7, "title"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 27
    .local v5, "title":Ljava/lang/String;
    const-string v7, "url"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 28
    .local v6, "url":Ljava/lang/String;
    const-string v7, "body"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "body":Ljava/lang/String;
    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    .line 30
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 31
    .local v1, "browserIntent":Landroid/content/Intent;
    const/4 v7, 0x0

    .line 32
    const/high16 v8, 0x10000000

    .line 31
    invoke-static {p1, v7, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 34
    .local v2, "contentIntent":Landroid/app/PendingIntent;
    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 33
    check-cast v3, Landroid/app/NotificationManager;

    .line 35
    .local v3, "nm":Landroid/app/NotificationManager;
    new-instance v4, Landroid/app/Notification;

    const v7, 0x7f020011

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 35
    invoke-direct {v4, v7, v5, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 37
    .local v4, "notification":Landroid/app/Notification;
    invoke-virtual {v4, p1, v5, v0, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 38
    const/16 v7, 0x14

    iput v7, v4, Landroid/app/Notification;->flags:I

    .line 39
    const/16 v7, 0x3e7

    invoke-virtual {v3, v7, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 43
    .end local v1    # "browserIntent":Landroid/content/Intent;
    .end local v2    # "contentIntent":Landroid/app/PendingIntent;
    .end local v3    # "nm":Landroid/app/NotificationManager;
    .end local v4    # "notification":Landroid/app/Notification;
    :goto_0
    return-void

    .line 41
    :cond_0
    const-string v7, "DEBUGGING"

    const-string v8, "message: null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "registrationID"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p1, p2}, Lcom/software/application/DeviceRegistrar;->registerToServer(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public onUnregistered(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-string v2, "PREFS"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 53
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "deviceRegistrationID"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 55
    invoke-static {p1, v0}, Lcom/software/application/DeviceRegistrar;->unregisterToServer(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method

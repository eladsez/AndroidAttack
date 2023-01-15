.class public Lcom/ibneer/wooriie/GCMIntentService;
.super Lcom/google/android/gcm/GCMBaseIntentService;
.source "GCMIntentService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GCMIntentService"


# instance fields
.field private httpConnect:Lcom/ibneer/wooriie/GCMHttpConnect;

.field private httpRequest:Lcom/ibneer/wooriie/GCMHttpConnect$Request;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibneer/wooriie/GCMIntentService;->httpConnect:Lcom/ibneer/wooriie/GCMHttpConnect;

    .line 96
    new-instance v0, Lcom/ibneer/wooriie/GCMIntentService$1;

    invoke-direct {v0, p0}, Lcom/ibneer/wooriie/GCMIntentService$1;-><init>(Lcom/ibneer/wooriie/GCMIntentService;)V

    iput-object v0, p0, Lcom/ibneer/wooriie/GCMIntentService;->httpRequest:Lcom/ibneer/wooriie/GCMHttpConnect$Request;

    .line 38
    return-void
.end method

.method private static generateNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 157
    const/high16 v6, 0x7f020000

    .line 158
    .local v6, "icon":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 161
    .local v17, "when":J
    const-string v19, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 160
    check-cast v10, Landroid/app/NotificationManager;

    .line 162
    .local v10, "notificationManager":Landroid/app/NotificationManager;
    new-instance v8, Landroid/app/Notification;

    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-direct {v8, v6, v0, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 164
    .local v8, "notification":Landroid/app/Notification;
    const/high16 v19, 0x7f060000

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 166
    .local v15, "title":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    const-class v19, Lcom/ibneer/wooriie/MainActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .local v9, "notificationIntent":Landroid/content/Intent;
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 171
    const/high16 v19, 0x24000000

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 174
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 175
    .local v7, "intent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v8, v0, v15, v1, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 176
    iget v0, v8, Landroid/app/Notification;->flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x10

    move/from16 v0, v19

    iput v0, v8, Landroid/app/Notification;->flags:I

    .line 178
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 180
    .local v11, "pref":Landroid/content/SharedPreferences;
    const-string v19, "sound"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 181
    .local v14, "sound":Z
    const-string v19, "vibration"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 182
    .local v16, "vibration":Z
    const-string v19, "screen"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 183
    .local v4, "check_screen":Z
    if-eqz v14, :cond_0

    .line 185
    iget v0, v8, Landroid/app/Notification;->defaults:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    iput v0, v8, Landroid/app/Notification;->defaults:I

    .line 187
    :cond_0
    if-eqz v16, :cond_1

    .line 190
    iget v0, v8, Landroid/app/Notification;->defaults:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    iput v0, v8, Landroid/app/Notification;->defaults:I

    .line 192
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v10, v0, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 194
    if-eqz v4, :cond_2

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v12, v0

    .line 196
    .local v12, "pushtime":I
    new-instance v5, Landroid/content/Intent;

    const-class v19, Lcom/ibneer/wooriie/showMsg;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    .local v5, "i":Landroid/content/Intent;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 198
    .local v3, "b":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 199
    .local v13, "res":Landroid/content/res/Resources;
    const/high16 v19, 0x7f060000

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 200
    const-string v19, "title"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v19, "msg"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v19, "url"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v19, "pushtime"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    invoke-virtual {v5, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 205
    const/high16 v19, 0x10000000

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 206
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 208
    .end local v3    # "b":Landroid/os/Bundle;
    .end local v5    # "i":Landroid/content/Intent;
    .end local v12    # "pushtime":I
    .end local v13    # "res":Landroid/content/res/Resources;
    :cond_2
    return-void
.end method


# virtual methods
.method public getPhoneNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/ibneer/wooriie/GCMIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 59
    .local v0, "mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "phoneNumber":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 62
    const-string v2, "+82"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 65
    const-string v2, "+82"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 68
    :cond_0
    return-object v1
.end method

.method protected onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorId"    # Ljava/lang/String;

    .prologue
    .line 47
    const-string v1, "GCMIntentService"

    const-string v2, "onError()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/ibneer/wooriie/BasicInfo;->GCM_INTENT_FILLTER:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "message"

    const-string v2, "\uc5d0\ub7ec \ubc1c\uc0dd"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 52
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 122
    const-string v7, "GCMIntentService"

    const-string v8, "onMessage()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 127
    .local v5, "pref":Landroid/content/SharedPreferences;
    const-string v7, "keycheck"

    invoke-interface {v5, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 128
    .local v2, "check_value":Z
    const-string v7, "screen"

    invoke-interface {v5, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 130
    .local v1, "check_screen":Z
    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 134
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 137
    const-string v7, "GCMIntentService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "onMessage(), bundle: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v4, Landroid/content/Intent;

    sget-object v7, Lcom/ibneer/wooriie/BasicInfo;->GCM_INTENT_FILLTER:Ljava/lang/String;

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v4, "newintent":Landroid/content/Intent;
    const-string v7, "message"

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 140
    const-string v7, "url"

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 141
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 142
    const-string v7, "message"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 143
    .local v3, "msg":Ljava/lang/String;
    const-string v7, "url"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 145
    .local v6, "url":Ljava/lang/String;
    invoke-static {p1, v3, v6}, Lcom/ibneer/wooriie/GCMIntentService;->generateNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "newintent":Landroid/content/Intent;
    .end local v6    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "registrationId"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 77
    const-string v6, "GCMIntentService"

    const-string v7, "onRegistered()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sput-object p2, Lcom/ibneer/wooriie/BasicInfo;->RegistrationId:Ljava/lang/String;

    .line 80
    const-string v6, "pref"

    invoke-virtual {p0, v6, v9}, Lcom/ibneer/wooriie/GCMIntentService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 82
    .local v4, "pref1":Landroid/content/SharedPreferences;
    const-string v6, "serverip"

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "home_url":Ljava/lang/String;
    const-string v6, "myInfo"

    invoke-virtual {p1, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 84
    .local v3, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 85
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "registrationId"

    invoke-interface {v0, v6, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    invoke-virtual {p0}, Lcom/ibneer/wooriie/GCMIntentService;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "myPhoneNumber":Ljava/lang/String;
    new-instance v6, Lcom/ibneer/wooriie/GCMHttpConnect;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http://"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/rb/?m=iBPush&a=regid&phonenum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&regID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/ibneer/wooriie/GCMIntentService;->httpRequest:Lcom/ibneer/wooriie/GCMHttpConnect$Request;

    invoke-direct {v6, v7, v8}, Lcom/ibneer/wooriie/GCMHttpConnect;-><init>(Ljava/lang/String;Lcom/ibneer/wooriie/GCMHttpConnect$Request;)V

    iput-object v6, p0, Lcom/ibneer/wooriie/GCMIntentService;->httpConnect:Lcom/ibneer/wooriie/GCMHttpConnect;

    .line 89
    iget-object v6, p0, Lcom/ibneer/wooriie/GCMIntentService;->httpConnect:Lcom/ibneer/wooriie/GCMHttpConnect;

    invoke-virtual {v6}, Lcom/ibneer/wooriie/GCMHttpConnect;->start()V

    .line 90
    invoke-static {p0, p2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 91
    .local v5, "toast":Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 92
    return-void
.end method

.method protected onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string v1, "GCMIntentService"

    const-string v2, "onUnregistered()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/ibneer/wooriie/BasicInfo;->GCM_INTENT_FILLTER:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "message"

    const-string v2, "\ub4f1\ub85d \ud574\uc81c"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 113
    return-void
.end method

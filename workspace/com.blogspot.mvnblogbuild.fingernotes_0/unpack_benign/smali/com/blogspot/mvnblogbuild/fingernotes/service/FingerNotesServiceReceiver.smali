.class public Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FingerNotesServiceReceiver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final dateTypeFormat:Ljava/text/SimpleDateFormat;

.field private static lastCheckDate:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-class v0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesServiceReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesServiceReceiver;->LOG_TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 42
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 41
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesServiceReceiver;->dateTypeFormat:Ljava/text/SimpleDateFormat;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesServiceReceiver;->lastCheckDate:Ljava/util/Date;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    .line 49
    .local v18, "nowDate":Ljava/util/Date;
    sget-object v3, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesServiceReceiver;->lastCheckDate:Ljava/util/Date;

    if-nez v3, :cond_0

    .line 50
    sput-object v18, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesServiceReceiver;->lastCheckDate:Ljava/util/Date;

    .line 143
    :goto_0
    return-void

    .line 54
    :cond_0
    const-string v3, "content://com.blogspot.mvnblogbuild.FingerNotesProvider/notes"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 57
    .local v4, "NOTES_URI":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 58
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "jsonSettings"

    aput-object v7, v5, v6

    .line 59
    const-string v6, "alarm_date is not null and alarm_date>? and alarm_date<=?"

    .line 60
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    sget-object v26, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesServiceReceiver;->dateTypeFormat:Ljava/text/SimpleDateFormat;

    sget-object v27, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesServiceReceiver;->lastCheckDate:Ljava/util/Date;

    invoke-virtual/range {v26 .. v27}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v7, v8

    const/4 v8, 0x1

    .line 61
    sget-object v26, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesServiceReceiver;->dateTypeFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v7, v8

    const/4 v8, 0x0

    .line 57
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 62
    .local v13, "cursor":Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 63
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    .line 64
    .local v25, "vibroOn":Ljava/lang/Boolean;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    .line 65
    .local v21, "soundOn":Ljava/lang/Boolean;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 68
    .local v10, "alarmedNotesCount":Ljava/lang/Integer;
    :cond_1
    const/16 v19, 0x0

    .line 69
    .local v19, "settings":Lorg/json/JSONObject;
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 71
    :try_start_0
    new-instance v20, Lorg/json/JSONObject;

    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v19    # "settings":Lorg/json/JSONObject;
    .local v20, "settings":Lorg/json/JSONObject;
    :try_start_1
    sget-object v3, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->SETT_ALARM_MODE:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 75
    sget-object v3, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->SETT_ALARM_MODE:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 74
    check-cast v9, Ljava/lang/String;

    .line 76
    .local v9, "alarmMode":Ljava/lang/String;
    sget-object v3, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;->VIBRO:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;

    invoke-virtual {v3}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 77
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    .line 85
    :goto_1
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 86
    .local v14, "cv":Landroid/content/ContentValues;
    const-string v3, "alarm_armed"

    const-string v5, "1"

    invoke-virtual {v14, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v3, "updated_date"

    sget-object v5, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesServiceReceiver;->dateTypeFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v5, v3

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    .line 89
    .local v23, "uri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v3, v0, v14, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 91
    .local v11, "cnt":I
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    move-object/from16 v19, v20

    .line 97
    .end local v9    # "alarmMode":Ljava/lang/String;
    .end local v11    # "cnt":I
    .end local v14    # "cv":Landroid/content/ContentValues;
    .end local v20    # "settings":Lorg/json/JSONObject;
    .end local v23    # "uri":Landroid/net/Uri;
    .restart local v19    # "settings":Lorg/json/JSONObject;
    :cond_2
    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 67
    if-nez v3, :cond_1

    .line 99
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    const-string v3, "vibrator"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    .line 100
    check-cast v24, Landroid/os/Vibrator;

    .line 102
    .local v24, "v":Landroid/os/Vibrator;
    const-wide/16 v5, 0x12c

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    .line 104
    .end local v24    # "v":Landroid/os/Vibrator;
    :cond_3
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 105
    const/high16 v3, 0x7f040000

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v15

    .line 106
    .local v15, "mp":Landroid/media/MediaPlayer;
    new-instance v3, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesServiceReceiver$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesServiceReceiver$1;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesServiceReceiver;)V

    invoke-virtual {v15, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 113
    invoke-virtual {v15}, Landroid/media/MediaPlayer;->start()V

    .line 116
    .end local v15    # "mp":Landroid/media/MediaPlayer;
    :cond_4
    const-string v3, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/NotificationManager;

    .line 117
    .local v16, "nm":Landroid/app/NotificationManager;
    const v3, 0x7f060001

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 121
    const v3, 0x7f060001

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    .line 123
    .local v22, "text":Ljava/lang/CharSequence;
    new-instance v17, Landroid/app/Notification;

    .line 124
    const v3, 0x7f020003

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 123
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v3, v1, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 127
    .local v17, "notification":Landroid/app/Notification;
    const/4 v3, 0x0

    .line 128
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v6, 0x0

    .line 127
    move-object/from16 v0, p1

    invoke-static {v0, v3, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 130
    .local v12, "contentIntent":Landroid/app/PendingIntent;
    const/high16 v3, 0x7f060000

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v3, v2, v12}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 135
    const v3, 0x7f060001

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "You have "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " notification(s) from notes"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    const/4 v5, 0x0

    .line 137
    move-object/from16 v0, p1

    invoke-static {v0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 139
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 141
    .end local v10    # "alarmedNotesCount":Ljava/lang/Integer;
    .end local v12    # "contentIntent":Landroid/app/PendingIntent;
    .end local v16    # "nm":Landroid/app/NotificationManager;
    .end local v17    # "notification":Landroid/app/Notification;
    .end local v19    # "settings":Lorg/json/JSONObject;
    .end local v21    # "soundOn":Ljava/lang/Boolean;
    .end local v22    # "text":Ljava/lang/CharSequence;
    .end local v25    # "vibroOn":Ljava/lang/Boolean;
    :cond_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 142
    sput-object v18, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesServiceReceiver;->lastCheckDate:Ljava/util/Date;

    goto/16 :goto_0

    .line 78
    .restart local v9    # "alarmMode":Ljava/lang/String;
    .restart local v10    # "alarmedNotesCount":Ljava/lang/Integer;
    .restart local v20    # "settings":Lorg/json/JSONObject;
    .restart local v21    # "soundOn":Ljava/lang/Boolean;
    .restart local v25    # "vibroOn":Ljava/lang/Boolean;
    :cond_6
    :try_start_2
    sget-object v3, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;->SOUND:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;

    invoke-virtual {v3}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AlarmMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 79
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    goto/16 :goto_1

    .line 81
    :cond_7
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    .line 82
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v21

    goto/16 :goto_1

    .line 94
    .end local v9    # "alarmMode":Ljava/lang/String;
    .end local v20    # "settings":Lorg/json/JSONObject;
    .restart local v19    # "settings":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    goto/16 :goto_2

    .end local v19    # "settings":Lorg/json/JSONObject;
    .restart local v20    # "settings":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    move-object/from16 v19, v20

    .end local v20    # "settings":Lorg/json/JSONObject;
    .restart local v19    # "settings":Lorg/json/JSONObject;
    goto/16 :goto_2

    .end local v19    # "settings":Lorg/json/JSONObject;
    .restart local v20    # "settings":Lorg/json/JSONObject;
    :cond_8
    move-object/from16 v19, v20

    .end local v20    # "settings":Lorg/json/JSONObject;
    .restart local v19    # "settings":Lorg/json/JSONObject;
    goto/16 :goto_2
.end method

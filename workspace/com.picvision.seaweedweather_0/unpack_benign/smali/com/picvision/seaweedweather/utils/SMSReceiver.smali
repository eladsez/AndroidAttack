.class public Lcom/picvision/seaweedweather/utils/SMSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SMSReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v12, "phone"

    const-string v10, "SEND_INFOR"

    .line 24
    const-string v7, "SEND_INFOR"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/picvision/seaweedweather/utils/SMSReceiver;->getResultCode()I

    move-result v1

    .line 26
    .local v1, "i":I
    packed-switch v1, :pswitch_data_0

    .line 54
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/picvision/seaweedweather/utils/SMSReceiver;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 28
    .restart local v1    # "i":I
    .restart local p0    # "this":Lcom/picvision/seaweedweather/utils/SMSReceiver;
    :pswitch_1
    const-string v7, "phone"

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 29
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "imsi":Ljava/lang/String;
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "SEND_INFOR"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 39
    .end local v1    # "i":I
    .end local v2    # "imsi":Ljava/lang/String;
    .end local v6    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    const-string v7, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 41
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 42
    const-string v7, "pdus"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    .line 43
    .local v5, "myOBJpdus":[Ljava/lang/Object;
    array-length v7, v5

    new-array v4, v7, [Landroid/telephony/gsm/SmsMessage;

    .line 44
    .local v4, "messages":[Landroid/telephony/gsm/SmsMessage;
    const/4 v1, 0x0

    .end local p0    # "this":Lcom/picvision/seaweedweather/utils/SMSReceiver;
    .restart local v1    # "i":I
    :goto_1
    array-length v7, v5

    if-lt v1, v7, :cond_2

    .line 47
    array-length v7, v4

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_0

    aget-object v3, v4, v8

    .line 48
    .local v3, "message":Landroid/telephony/gsm/SmsMessage;
    const-string v9, "phone"

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 49
    .restart local v6    # "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 50
    .restart local v2    # "imsi":Ljava/lang/String;
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "SEND_CENTER_CODE"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Landroid/telephony/gsm/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 45
    .end local v2    # "imsi":Ljava/lang/String;
    .end local v3    # "message":Landroid/telephony/gsm/SmsMessage;
    .end local v6    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    aget-object p0, v5, v1

    check-cast p0, [B

    invoke-static {p0}, Landroid/telephony/gsm/SmsMessage;->createFromPdu([B)Landroid/telephony/gsm/SmsMessage;

    move-result-object v7

    aput-object v7, v4, v1

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 26
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

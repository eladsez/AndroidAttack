.class public Lanywheresoftware/b4a/phone/Phone$PhoneSms;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "PhoneSms"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/phone/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneSms"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Send(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "PhoneNumber"    # Ljava/lang/String;
    .param p1, "Text"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 609
    invoke-static {p0, p1, v0, v0}, Lanywheresoftware/b4a/phone/Phone$PhoneSms;->Send2(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 610
    return-void
.end method

.method public static Send2(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 10
    .param p0, "PhoneNumber"    # Ljava/lang/String;
    .param p1, "Text"    # Ljava/lang/String;
    .param p2, "ReceiveSentNotification"    # Z
    .param p3, "ReceiveDeliveredNotification"    # Z

    .prologue
    const/high16 v8, 0x8000000

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v9, "phone"

    .line 620
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 621
    .local v0, "sm":Landroid/telephony/SmsManager;
    new-instance v6, Landroid/content/Intent;

    const-string v1, "b4a.smssent"

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 622
    .local v6, "i1":Landroid/content/Intent;
    const-string v1, "phone"

    invoke-virtual {v6, v9, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    if-eqz p2, :cond_0

    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-static {v1, v3, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    move-object v4, v1

    .line 624
    .local v4, "pi":Landroid/app/PendingIntent;
    :goto_0
    new-instance v7, Landroid/content/Intent;

    const-string v1, "b4a.smsdelivered"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 625
    .local v7, "i2":Landroid/content/Intent;
    const-string v1, "phone"

    invoke-virtual {v7, v9, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    if-eqz p3, :cond_1

    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-static {v1, v3, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    move-object v5, v1

    .local v5, "pi2":Landroid/app/PendingIntent;
    :goto_1
    move-object v1, p0

    move-object v3, p1

    .line 627
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 628
    return-void

    .end local v4    # "pi":Landroid/app/PendingIntent;
    .end local v5    # "pi2":Landroid/app/PendingIntent;
    .end local v7    # "i2":Landroid/content/Intent;
    :cond_0
    move-object v4, v2

    .line 623
    goto :goto_0

    .restart local v4    # "pi":Landroid/app/PendingIntent;
    .restart local v7    # "i2":Landroid/content/Intent;
    :cond_1
    move-object v5, v2

    .line 626
    goto :goto_1
.end method

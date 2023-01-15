.class public Lanywheresoftware/b4a/phone/Phone$PhoneId;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "PhoneId"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/phone/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneId"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetDeviceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 423
    sget-object v2, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 424
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    move-object v2, v0

    goto :goto_0
.end method

.method public static GetLine1Number()Ljava/lang/String;
    .locals 4

    .prologue
    .line 432
    sget-object v2, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 433
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    move-object v2, v0

    goto :goto_0
.end method

.method public static GetSimSerialNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 450
    sget-object v2, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 451
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    move-object v2, v0

    goto :goto_0
.end method

.method public static GetSubscriberId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 441
    sget-object v2, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 442
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    move-object v2, v0

    goto :goto_0
.end method

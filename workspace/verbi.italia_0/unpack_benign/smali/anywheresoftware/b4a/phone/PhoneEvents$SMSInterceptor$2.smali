.class Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor$2;
.super Landroid/content/BroadcastReceiver;
.source "PhoneEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;->Initialize2(Ljava/lang/String;Lanywheresoftware/b4a/BA;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;

.field private final synthetic val$ba:Lanywheresoftware/b4a/BA;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;Lanywheresoftware/b4a/BA;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor$2;->this$1:Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;

    iput-object p2, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor$2;->val$ba:Lanywheresoftware/b4a/BA;

    .line 387
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 391
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 403
    :cond_0
    return-void

    .line 393
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 394
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 395
    const-string v5, "pdus"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 396
    .local v2, "pduObj":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_0

    .line 397
    aget-object v5, v2, v1

    check-cast v5, [B

    invoke-static {v5}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 398
    .local v4, "sm":Landroid/telephony/SmsMessage;
    iget-object v5, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor$2;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v6, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor$2;->this$1:Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor$2;->this$1:Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;

    invoke-static {v8}, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;->access$1(Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "_messagereceived"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 399
    .local v3, "res":Ljava/lang/Boolean;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 400
    invoke-virtual {p0}, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor$2;->abortBroadcast()V

    .line 396
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

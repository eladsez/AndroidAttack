.class public Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;
.super Ljava/lang/Object;
.source "PhoneEvents.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "SmsInterceptor"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/phone/PhoneEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMSInterceptor"
.end annotation


# instance fields
.field private ba:Lanywheresoftware/b4a/BA;

.field private br:Landroid/content/BroadcastReceiver;

.field private eventName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;)Lanywheresoftware/b4a/BA;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;->ba:Lanywheresoftware/b4a/BA;

    return-object v0
.end method

.method static synthetic access$1(Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;->eventName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public Initialize(Ljava/lang/String;Lanywheresoftware/b4a/BA;)V
    .locals 1
    .param p1, "EventName"    # Ljava/lang/String;
    .param p2, "ba"    # Lanywheresoftware/b4a/BA;

    .prologue
    .line 350
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;->Initialize2(Ljava/lang/String;Lanywheresoftware/b4a/BA;I)V

    .line 351
    return-void
.end method

.method public Initialize2(Ljava/lang/String;Lanywheresoftware/b4a/BA;I)V
    .locals 3
    .param p1, "EventName"    # Ljava/lang/String;
    .param p2, "ba"    # Lanywheresoftware/b4a/BA;
    .param p3, "Priority"    # I

    .prologue
    .line 385
    iput-object p2, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;->ba:Lanywheresoftware/b4a/BA;

    .line 386
    sget-object v1, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;->eventName:Ljava/lang/String;

    .line 387
    new-instance v1, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor$2;

    invoke-direct {v1, p0, p2}, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor$2;-><init>(Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;Lanywheresoftware/b4a/BA;)V

    iput-object v1, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;->br:Landroid/content/BroadcastReceiver;

    .line 405
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 406
    .local v0, "fil":Landroid/content/IntentFilter;
    invoke-virtual {v0, p3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 407
    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    iget-object v2, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 408
    return-void
.end method

.method public ListenToOutgoingMessages()V
    .locals 4

    .prologue
    .line 357
    const-string v3, "content://sms"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 358
    .local v1, "content":Landroid/net/Uri;
    new-instance v0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v3, v1}, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor$1;-><init>(Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;Landroid/os/Handler;Landroid/net/Uri;)V

    .line 375
    .local v0, "co":Landroid/database/ContentObserver;
    sget-object v3, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 376
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 377
    return-void
.end method

.method public StopListening()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;->br:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 415
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    iget-object v1, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 416
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;->br:Landroid/content/BroadcastReceiver;

    .line 417
    return-void
.end method

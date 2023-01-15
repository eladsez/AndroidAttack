.class public Lanywheresoftware/b4a/phone/PhoneEvents;
.super Ljava/lang/Object;
.source "PhoneEvents.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "PhoneEvents"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;,
        Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;
    }
.end annotation


# instance fields
.field private ba:Lanywheresoftware/b4a/BA;

.field private br:Landroid/content/BroadcastReceiver;

.field private ev:Ljava/lang/String;

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->map:Ljava/util/HashMap;

    .line 96
    iget-object v1, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->map:Ljava/util/HashMap;

    const-string v2, "android.speech.tts.TTS_QUEUE_PROCESSING_COMPLETED"

    new-instance v3, Lanywheresoftware/b4a/phone/PhoneEvents$1;

    invoke-direct {v3, p0}, Lanywheresoftware/b4a/phone/PhoneEvents$1;-><init>(Lanywheresoftware/b4a/phone/PhoneEvents;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->map:Ljava/util/HashMap;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    new-instance v3, Lanywheresoftware/b4a/phone/PhoneEvents$2;

    invoke-direct {v3, p0}, Lanywheresoftware/b4a/phone/PhoneEvents$2;-><init>(Lanywheresoftware/b4a/phone/PhoneEvents;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v1, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->map:Ljava/util/HashMap;

    const-string v2, "android.intent.action.USER_PRESENT"

    new-instance v3, Lanywheresoftware/b4a/phone/PhoneEvents$3;

    invoke-direct {v3, p0}, Lanywheresoftware/b4a/phone/PhoneEvents$3;-><init>(Lanywheresoftware/b4a/phone/PhoneEvents;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->map:Ljava/util/HashMap;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    new-instance v3, Lanywheresoftware/b4a/phone/PhoneEvents$4;

    invoke-direct {v3, p0}, Lanywheresoftware/b4a/phone/PhoneEvents$4;-><init>(Lanywheresoftware/b4a/phone/PhoneEvents;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v1, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->map:Ljava/util/HashMap;

    const-string v2, "android.intent.action.SCREEN_ON"

    new-instance v3, Lanywheresoftware/b4a/phone/PhoneEvents$5;

    invoke-direct {v3, p0}, Lanywheresoftware/b4a/phone/PhoneEvents$5;-><init>(Lanywheresoftware/b4a/phone/PhoneEvents;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v1, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->map:Ljava/util/HashMap;

    const-string v2, "android.intent.action.SCREEN_OFF"

    new-instance v3, Lanywheresoftware/b4a/phone/PhoneEvents$6;

    invoke-direct {v3, p0}, Lanywheresoftware/b4a/phone/PhoneEvents$6;-><init>(Lanywheresoftware/b4a/phone/PhoneEvents;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v1, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->map:Ljava/util/HashMap;

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    new-instance v3, Lanywheresoftware/b4a/phone/PhoneEvents$7;

    invoke-direct {v3, p0}, Lanywheresoftware/b4a/phone/PhoneEvents$7;-><init>(Lanywheresoftware/b4a/phone/PhoneEvents;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v1, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->map:Ljava/util/HashMap;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    new-instance v3, Lanywheresoftware/b4a/phone/PhoneEvents$8;

    invoke-direct {v3, p0}, Lanywheresoftware/b4a/phone/PhoneEvents$8;-><init>(Lanywheresoftware/b4a/phone/PhoneEvents;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v1, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->map:Ljava/util/HashMap;

    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    new-instance v3, Lanywheresoftware/b4a/phone/PhoneEvents$9;

    invoke-direct {v3, p0}, Lanywheresoftware/b4a/phone/PhoneEvents$9;-><init>(Lanywheresoftware/b4a/phone/PhoneEvents;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v1, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->map:Ljava/util/HashMap;

    const-string v2, "b4a.smssent"

    new-instance v3, Lanywheresoftware/b4a/phone/PhoneEvents$10;

    invoke-direct {v3, p0}, Lanywheresoftware/b4a/phone/PhoneEvents$10;-><init>(Lanywheresoftware/b4a/phone/PhoneEvents;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v1, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->map:Ljava/util/HashMap;

    const-string v2, "b4a.smsdelivered"

    new-instance v3, Lanywheresoftware/b4a/phone/PhoneEvents$11;

    invoke-direct {v3, p0}, Lanywheresoftware/b4a/phone/PhoneEvents$11;-><init>(Lanywheresoftware/b4a/phone/PhoneEvents;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v1, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->map:Ljava/util/HashMap;

    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    new-instance v3, Lanywheresoftware/b4a/phone/PhoneEvents$12;

    invoke-direct {v3, p0}, Lanywheresoftware/b4a/phone/PhoneEvents$12;-><init>(Lanywheresoftware/b4a/phone/PhoneEvents;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v1, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->map:Ljava/util/HashMap;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    new-instance v3, Lanywheresoftware/b4a/phone/PhoneEvents$13;

    invoke-direct {v3, p0}, Lanywheresoftware/b4a/phone/PhoneEvents$13;-><init>(Lanywheresoftware/b4a/phone/PhoneEvents;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v1, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->map:Ljava/util/HashMap;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    new-instance v3, Lanywheresoftware/b4a/phone/PhoneEvents$14;

    invoke-direct {v3, p0}, Lanywheresoftware/b4a/phone/PhoneEvents$14;-><init>(Lanywheresoftware/b4a/phone/PhoneEvents;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v1, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p0    # "this":Lanywheresoftware/b4a/phone/PhoneEvents;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    return-void

    .line 224
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 225
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;->action:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$0(Lanywheresoftware/b4a/phone/PhoneEvents;)Lanywheresoftware/b4a/BA;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->ba:Lanywheresoftware/b4a/BA;

    return-object v0
.end method

.method static synthetic access$1(Lanywheresoftware/b4a/phone/PhoneEvents;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->ev:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lanywheresoftware/b4a/phone/PhoneEvents;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->map:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 6
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "EventName"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->ba:Lanywheresoftware/b4a/BA;

    .line 257
    sget-object v3, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->ev:Ljava/lang/String;

    .line 258
    invoke-virtual {p0}, Lanywheresoftware/b4a/phone/PhoneEvents;->StopListening()V

    .line 259
    new-instance v3, Lanywheresoftware/b4a/phone/PhoneEvents$16;

    invoke-direct {v3, p0}, Lanywheresoftware/b4a/phone/PhoneEvents$16;-><init>(Lanywheresoftware/b4a/phone/PhoneEvents;)V

    iput-object v3, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->br:Landroid/content/BroadcastReceiver;

    .line 272
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 273
    .local v1, "f1":Landroid/content/IntentFilter;
    const/4 v2, 0x0

    .line 274
    .local v2, "f2":Landroid/content/IntentFilter;
    iget-object v3, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->map:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 286
    sget-object v3, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    iget-object v4, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 287
    if-eqz v2, :cond_1

    .line 288
    sget-object v3, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    iget-object v4, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 293
    :cond_1
    return-void

    .line 274
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;

    .line 275
    .local v0, "ah":Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->ev:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;->event:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    iget-object v4, v0, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;->action:Ljava/lang/String;

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    if-eq v4, v5, :cond_3

    iget-object v4, v0, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;->action:Ljava/lang/String;

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    if-ne v4, v5, :cond_5

    .line 277
    :cond_3
    if-nez v2, :cond_4

    .line 278
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "f2":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 279
    .restart local v2    # "f2":Landroid/content/IntentFilter;
    const-string v4, "package"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 281
    :cond_4
    iget-object v4, v0, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;->action:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    :cond_5
    iget-object v4, v0, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;->action:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public InitializeWithPhoneState(Lanywheresoftware/b4a/BA;Ljava/lang/String;Lanywheresoftware/b4a/phone/Phone$PhoneId;)V
    .locals 3
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "EventName"    # Ljava/lang/String;
    .param p3, "PhoneId"    # Lanywheresoftware/b4a/phone/Phone$PhoneId;

    .prologue
    const-string v2, "android.intent.action.PHONE_STATE"

    .line 237
    iget-object v0, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->map:Ljava/util/HashMap;

    const-string v1, "android.intent.action.PHONE_STATE"

    new-instance v1, Lanywheresoftware/b4a/phone/PhoneEvents$15;

    invoke-direct {v1, p0}, Lanywheresoftware/b4a/phone/PhoneEvents$15;-><init>(Lanywheresoftware/b4a/phone/PhoneEvents;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->map:Ljava/util/HashMap;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;

    const-string v1, "android.intent.action.PHONE_STATE"

    iput-object v2, v0, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;->action:Ljava/lang/String;

    .line 249
    invoke-virtual {p0, p1, p2}, Lanywheresoftware/b4a/phone/PhoneEvents;->Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public StopListening()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->br:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 299
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    iget-object v1, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 300
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lanywheresoftware/b4a/phone/PhoneEvents;->br:Landroid/content/BroadcastReceiver;

    .line 301
    return-void
.end method

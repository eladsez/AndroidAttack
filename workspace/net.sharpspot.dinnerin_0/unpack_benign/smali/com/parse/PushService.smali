.class public final Lcom/parse/PushService;
.super Landroid/app/Service;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/PushService$ServiceState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.PushService"

.field static connection:Lcom/parse/PushConnection;

.field static consecutiveFailures:I

.field private static defaultPushPort:I

.field private static delaySeconds:I

.field private static pushServer:Ljava/lang/String;

.field static sleepSemaphore:Ljava/util/concurrent/Semaphore;


# instance fields
.field private keepAliveTimer:Ljava/util/Timer;

.field private state:Lcom/parse/PushService$ServiceState;

.field private task:Lcom/parse/os/ParseAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/os/ParseAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "push.parse.com"

    sput-object v0, Lcom/parse/PushService;->pushServer:Ljava/lang/String;

    .line 64
    const/16 v0, 0x203d

    sput v0, Lcom/parse/PushService;->defaultPushPort:I

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 83
    sget-object v0, Lcom/parse/PushService$ServiceState;->STOPPED:Lcom/parse/PushService$ServiceState;

    iput-object v0, p0, Lcom/parse/PushService;->state:Lcom/parse/PushService$ServiceState;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/PushService;->keepAliveTimer:Ljava/util/Timer;

    .line 100
    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 103
    invoke-static {p0}, Lcom/parse/PushService;->startService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1(Lcom/parse/PushService;)V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/parse/PushService;->sendKeepAlive()V

    return-void
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 77
    sget v0, Lcom/parse/PushService;->delaySeconds:I

    return v0
.end method

.method static synthetic access$3(Lcom/parse/PushService;)V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/parse/PushService;->increaseDelay()V

    return-void
.end method

.method static synthetic access$4(Lcom/parse/PushService;)Lcom/parse/PushService$ServiceState;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/parse/PushService;->state:Lcom/parse/PushService$ServiceState;

    return-object v0
.end method

.method static synthetic access$5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/parse/PushService;->pushServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/parse/PushService;->defaultPushPort:I

    return v0
.end method

.method static synthetic access$7(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 357
    invoke-static {p0}, Lcom/parse/PushService;->sendSubscriptionInformation(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lcom/parse/PushService;Lcom/parse/PushService$ServiceState;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/parse/PushService;->state:Lcom/parse/PushService$ServiceState;

    return-void
.end method

.method static synthetic access$9(Lcom/parse/PushService;Z)V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/parse/PushService;->readInBackground(Z)V

    return-void
.end method

.method public static declared-synchronized getSubscriptions(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    const-class v0, Lcom/parse/PushService;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->getSubscriptions(Landroid/content/Context;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private increaseDelay()V
    .locals 8

    .prologue
    .line 308
    sget v0, Lcom/parse/PushService;->consecutiveFailures:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/parse/PushService;->consecutiveFailures:I

    .line 312
    sget v0, Lcom/parse/PushService;->delaySeconds:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/parse/PushService;->delaySeconds:I

    .line 313
    const/16 v0, 0xf

    sget v1, Lcom/parse/PushService;->delaySeconds:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/parse/PushService;->delaySeconds:I

    .line 314
    sget v0, Lcom/parse/PushService;->delaySeconds:I

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/parse/PushService;->delaySeconds:I

    .line 315
    return-void
.end method

.method private readInBackground(Z)V
    .locals 3
    .param p1, "forceReconnect"    # Z

    .prologue
    .line 389
    move-object v0, p0

    .line 390
    .local v0, "finalService":Lcom/parse/PushService;
    iget-object v1, p0, Lcom/parse/PushService;->state:Lcom/parse/PushService$ServiceState;

    sget-object v2, Lcom/parse/PushService$ServiceState;->DESTRUCTING:Lcom/parse/PushService$ServiceState;

    if-ne v1, v2, :cond_0

    .line 479
    :goto_0
    return-void

    .line 394
    :cond_0
    new-instance v1, Lcom/parse/PushService$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/parse/PushService$3;-><init>(Lcom/parse/PushService;ZLcom/parse/PushService;)V

    iput-object v1, p0, Lcom/parse/PushService;->task:Lcom/parse/os/ParseAsyncTask;

    .line 478
    iget-object v1, p0, Lcom/parse/PushService;->task:Lcom/parse/os/ParseAsyncTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/parse/os/ParseAsyncTask;->execute([Ljava/lang/Object;)Lcom/parse/os/ParseAsyncTask;

    goto :goto_0
.end method

.method static resetDelay()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 302
    sput v0, Lcom/parse/PushService;->delaySeconds:I

    .line 303
    sput v0, Lcom/parse/PushService;->consecutiveFailures:I

    .line 304
    return-void
.end method

.method private sendKeepAlive()V
    .locals 1

    .prologue
    .line 372
    const-string v0, "{}"

    invoke-static {v0}, Lcom/parse/PushService;->sendMessage(Ljava/lang/String;)Z

    .line 373
    return-void
.end method

.method static sendMessage(Ljava/lang/String;)Z
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 352
    sget-object v0, Lcom/parse/PushService;->connection:Lcom/parse/PushConnection;

    invoke-virtual {v0, p0}, Lcom/parse/PushConnection;->trySend(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static sendSubscriptionInformation(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 364
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->getPushRequestJSON(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 365
    .local v0, "request":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/parse/PushService;->sendMessage(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static setDefaultPushCallback(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 227
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 232
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p0, p1, v4}, Lcom/parse/PushService;->setDefaultPushCallback(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 233
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "com.parse.PushService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "missing package "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setDefaultPushCallback(Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "icon"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-static {p0, p1, p2}, Lcom/parse/ParsePushRouter;->setDefaultRoute(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 253
    if-eqz p1, :cond_1

    .line 254
    invoke-static {p0}, Lcom/parse/PushService;->startService(Landroid/content/Context;)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->hasRoutes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    const-string v0, "com.parse.PushService"

    const-string v1, "Shutting down push service. No remaining channels"

    invoke-static {v0, v1}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parse/PushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method static sleep(I)V
    .locals 3
    .param p0, "millis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x64

    .line 278
    sget-object v0, Lcom/parse/PushService;->sleepSemaphore:Ljava/util/concurrent/Semaphore;

    .line 279
    .local v0, "semaphore":Ljava/util/concurrent/Semaphore;
    if-nez v0, :cond_1

    .line 280
    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 291
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    .line 287
    add-int/lit8 p0, p0, -0x64

    .line 285
    :cond_1
    if-gt p0, v1, :cond_0

    .line 289
    invoke-virtual {v0, p0}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    goto :goto_0
.end method

.method private static declared-synchronized startService(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    const-class v2, Lcom/parse/PushService;

    monitor-enter v2

    :try_start_0
    const-string v1, "com.parse.PushService"

    const-string v3, "ensuring push service is started"

    invoke-static {v1, v3}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/parse/PushService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 107
    .local v0, "name":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 108
    const-string v1, "com.parse.PushService"

    const-string v3, "Could not start the push service. Make sure that the XML tag <service android:name=\"com.parse.PushService\" /> is in your AndroidManifest.xml as a child of the <application> element."

    invoke-static {v1, v3}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_0
    monitor-exit v2

    return-void

    .line 104
    .end local v0    # "name":Landroid/content/ComponentName;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static startServiceIfRequired(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    new-instance v0, Lcom/parse/PushService$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/parse/PushService$1;-><init>(Lcom/parse/ParseCallback;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 129
    invoke-virtual {v0, v1}, Lcom/parse/PushService$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 130
    return-void
.end method

.method public static subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 155
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 160
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p0, p1, p2, v4}, Lcom/parse/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;I)V

    .line 161
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "com.parse.PushService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "missing package "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channel"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    const-class v1, Lcom/parse/PushService;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/parse/PushService;->startService(Landroid/content/Context;)V

    .line 191
    invoke-static {p0, p1, p2, p3}, Lcom/parse/ParsePushRouter;->addChannelRoute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit v1

    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized unsubscribe(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 204
    const-class v0, Lcom/parse/PushService;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lcom/parse/ParsePushRouter;->removeChannelRoute(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit v0

    return-void

    .line 204
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static usePort(I)V
    .locals 0
    .param p0, "newPort"    # I

    .prologue
    .line 298
    sput p0, Lcom/parse/PushService;->defaultPushPort:I

    .line 299
    return-void
.end method

.method static useServer(Ljava/lang/String;)V
    .locals 0
    .param p0, "newServer"    # Ljava/lang/String;

    .prologue
    .line 294
    sput-object p0, Lcom/parse/PushService;->pushServer:Ljava/lang/String;

    .line 295
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 486
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot bind directly to the PushService. Use PushService.subscribe instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 322
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 323
    sget-object v1, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 324
    const-string v1, "com.parse.PushService"

    const-string v4, "The Parse push service cannot start because Parse.initialize has not yet been called. If you call Parse.initialize from an Activity\'s onCreate, that call should instead be in the Application.onCreate. Be sure your Application class is registered in your AndroidManifest.xml with the android:name property of your <application> tag."

    invoke-static {v1, v4}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    sget-object v1, Lcom/parse/PushService$ServiceState;->ABORTING:Lcom/parse/PushService$ServiceState;

    iput-object v1, p0, Lcom/parse/PushService;->state:Lcom/parse/PushService$ServiceState;

    .line 331
    invoke-virtual {p0}, Lcom/parse/PushService;->stopSelf()V

    .line 349
    :goto_0
    return-void

    .line 334
    :cond_0
    sget-object v1, Lcom/parse/PushService$ServiceState;->RUNNING:Lcom/parse/PushService$ServiceState;

    iput-object v1, p0, Lcom/parse/PushService;->state:Lcom/parse/PushService$ServiceState;

    .line 335
    const-string v1, "com.parse.PushService"

    const-string v4, "creating push service"

    invoke-static {v1, v4}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    new-instance v0, Ljava/util/Timer;

    const-string v1, "com.parse.PushService.keepAliveTimer"

    invoke-direct {v0, v1, v6}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    .line 337
    .local v0, "newTimer":Ljava/util/Timer;
    const-wide/32 v2, 0x124f80

    .line 338
    .local v2, "msKeepAlive":J
    new-instance v1, Lcom/parse/PushService$2;

    invoke-direct {v1, p0}, Lcom/parse/PushService$2;-><init>(Lcom/parse/PushService;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 344
    iput-object v0, p0, Lcom/parse/PushService;->keepAliveTimer:Ljava/util/Timer;

    .line 345
    invoke-static {}, Lcom/parse/PushService;->resetDelay()V

    .line 347
    new-instance v1, Lcom/parse/PushConnection;

    invoke-direct {v1, p0}, Lcom/parse/PushConnection;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/parse/PushService;->connection:Lcom/parse/PushConnection;

    .line 348
    invoke-direct {p0, v6}, Lcom/parse/PushService;->readInBackground(Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 500
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 501
    const-string v0, "com.parse.PushService"

    const-string v1, "destroying push service"

    invoke-static {v0, v1}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/parse/PushService;->state:Lcom/parse/PushService$ServiceState;

    sget-object v1, Lcom/parse/PushService$ServiceState;->ABORTING:Lcom/parse/PushService$ServiceState;

    if-ne v0, v1, :cond_0

    .line 503
    sget-object v0, Lcom/parse/PushService$ServiceState;->STOPPED:Lcom/parse/PushService$ServiceState;

    iput-object v0, p0, Lcom/parse/PushService;->state:Lcom/parse/PushService$ServiceState;

    .line 511
    :goto_0
    return-void

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/parse/PushService;->task:Lcom/parse/os/ParseAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parse/os/ParseAsyncTask;->cancel(Z)Z

    .line 507
    iget-object v0, p0, Lcom/parse/PushService;->keepAliveTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 509
    sget-object v0, Lcom/parse/PushService$ServiceState;->DESTRUCTING:Lcom/parse/PushService$ServiceState;

    iput-object v0, p0, Lcom/parse/PushService;->state:Lcom/parse/PushService$ServiceState;

    .line 510
    sget-object v0, Lcom/parse/PushService;->connection:Lcom/parse/PushConnection;

    invoke-virtual {v0}, Lcom/parse/PushConnection;->close()V

    goto :goto_0
.end method

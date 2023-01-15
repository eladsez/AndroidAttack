.class Lcom/parse/ParsePushRouter;
.super Ljava/lang/Object;
.source "ParsePushRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParsePushRouter$CallbackFactory;,
        Lcom/parse/ParsePushRouter$SingletonFactory;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CHANNEL_PATTERN:Ljava/util/regex/Pattern;

.field private static final LEGACY_ROUTE_LOCATION:Ljava/lang/String; = "persistentCallbacks"

.field private static final STATE_LOCATION:Ljava/lang/String; = "pushState"

.field private static final TAG:Ljava/lang/String; = "com.parse.ParsePushRouter"

.field static channelRoutes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParsePushRouter$CallbackFactory;",
            ">;"
        }
    .end annotation
.end field

.field static channels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static defaultRoute:Lcom/parse/ParsePushRouter$CallbackFactory;

.field private static hasLoadedStateFromDisk:Z

.field static history:Lorg/json/JSONObject;

.field static ignoreAfter:Ljava/lang/String;

.field static lastTime:Ljava/lang/String;

.field static maxHistory:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 25
    const-class v0, Lcom/parse/ParsePushRouter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/parse/ParsePushRouter;->$assertionsDisabled:Z

    .line 27
    const-string v0, "^$|^[a-zA-Z][A-Za-z0-9_-]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/parse/ParsePushRouter;->CHANNEL_PATTERN:Ljava/util/regex/Pattern;

    .line 74
    sput-object v2, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    .line 75
    sput-object v2, Lcom/parse/ParsePushRouter;->defaultRoute:Lcom/parse/ParsePushRouter$CallbackFactory;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    .line 82
    sput-object v2, Lcom/parse/ParsePushRouter;->lastTime:Ljava/lang/String;

    .line 85
    sput-object v2, Lcom/parse/ParsePushRouter;->ignoreAfter:Ljava/lang/String;

    .line 88
    sput-object v2, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;

    .line 89
    const/16 v0, 0xa

    sput v0, Lcom/parse/ParsePushRouter;->maxHistory:I

    .line 189
    sput-boolean v1, Lcom/parse/ParsePushRouter;->hasLoadedStateFromDisk:Z

    return-void

    :cond_0
    move v0, v1

    .line 25
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 304
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->saveStateToDisk(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 623
    invoke-static {p0, p1}, Lcom/parse/ParsePushRouter;->isSubscribedToChannel(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static addChannelRoute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;I)Z
    .locals 4
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
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 393
    .local p2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-nez p1, :cond_0

    .line 394
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "invalid channel: you cannot subscribe to null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 395
    :cond_0
    sget-object v1, Lcom/parse/ParsePushRouter;->CHANNEL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    .line 396
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid channel name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 399
    :cond_1
    invoke-static {p0, p2, p3}, Lcom/parse/ParsePushRouter;->dataForActivity(Landroid/content/Context;Ljava/lang/Class;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 400
    .local v0, "localData":Lorg/json/JSONObject;
    if-nez v0, :cond_2

    .line 401
    const/4 v1, 0x0

    .line 404
    :goto_0
    return v1

    :cond_2
    const-class v1, Lcom/parse/StandardPushCallback;

    invoke-static {p0, p1, v0, v1}, Lcom/parse/ParsePushRouter;->addChannelRoute(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;)Z

    move-result v1

    goto :goto_0
.end method

.method static declared-synchronized addChannelRoute(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "localData"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/PushCallback;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parse/PushCallback;>;"
    const/4 v4, 0x0

    .line 373
    const-class v5, Lcom/parse/ParsePushRouter;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->ensureStateIsLoaded(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 377
    .local v3, "localDataCopy":Lorg/json/JSONObject;
    sget-object v6, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    new-instance v7, Lcom/parse/ParsePushRouter$CallbackFactory;

    invoke-direct {v7, p3, v3}, Lcom/parse/ParsePushRouter$CallbackFactory;-><init>(Ljava/lang/Class;Lorg/json/JSONObject;)V

    invoke-interface {v6, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    const/4 v2, 0x1

    .line 378
    .local v2, "isNew":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 379
    new-instance v1, Lcom/parse/ParseInstallation;

    invoke-direct {v1}, Lcom/parse/ParseInstallation;-><init>()V

    .line 380
    .local v1, "installation":Lcom/parse/ParseInstallation;
    const-string v6, "channels"

    invoke-virtual {v1, v6, p1}, Lcom/parse/ParseInstallation;->addUnique(Ljava/lang/String;Ljava/lang/Object;)V

    .line 381
    invoke-static {p0, v1}, Lcom/parse/ParsePushRouter;->saveEventually(Landroid/content/Context;Lcom/parse/ParseInstallation;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    .end local v1    # "installation":Lcom/parse/ParseInstallation;
    .end local v2    # "isNew":Z
    .end local v3    # "localDataCopy":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    monitor-exit v5

    return v2

    .restart local v3    # "localDataCopy":Lorg/json/JSONObject;
    :cond_1
    move v2, v4

    .line 377
    goto :goto_0

    .line 384
    .end local v3    # "localDataCopy":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    const-string v6, "com.parse.ParsePushRouter"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Impossible exception when deserializing a serialized JSON string: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v4

    .line 386
    goto :goto_1

    .line 373
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method static addSingletonRoute(Landroid/content/Context;Ljava/lang/String;Lcom/parse/PushCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/parse/PushCallback;

    .prologue
    .line 655
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->ensureStateIsLoaded(Landroid/content/Context;)V

    .line 656
    if-eqz p1, :cond_0

    .line 657
    sget-object v0, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    new-instance v1, Lcom/parse/ParsePushRouter$SingletonFactory;

    invoke-direct {v1, p2}, Lcom/parse/ParsePushRouter$SingletonFactory;-><init>(Lcom/parse/PushCallback;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    :goto_0
    return-void

    .line 659
    :cond_0
    new-instance v0, Lcom/parse/ParsePushRouter$SingletonFactory;

    invoke-direct {v0, p2}, Lcom/parse/ParsePushRouter$SingletonFactory;-><init>(Lcom/parse/PushCallback;)V

    sput-object v0, Lcom/parse/ParsePushRouter;->defaultRoute:Lcom/parse/ParsePushRouter$CallbackFactory;

    goto :goto_0
.end method

.method static clearStateFromDisk(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 709
    invoke-static {}, Lcom/parse/ParsePushRouter;->clearStateFromMemory()V

    .line 710
    const-string v0, "persistentCallbacks"

    invoke-static {p0, v0}, Lcom/parse/ParseObject;->deleteDiskObject(Landroid/content/Context;Ljava/lang/String;)V

    .line 711
    const-string v0, "pushState"

    invoke-static {p0, v0}, Lcom/parse/ParseObject;->deleteDiskObject(Landroid/content/Context;Ljava/lang/String;)V

    .line 712
    return-void
.end method

.method static clearStateFromMemory()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 696
    const/4 v0, 0x0

    sput-boolean v0, Lcom/parse/ParsePushRouter;->hasLoadedStateFromDisk:Z

    .line 697
    sput-object v1, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    .line 698
    sput-object v1, Lcom/parse/ParsePushRouter;->defaultRoute:Lcom/parse/ParsePushRouter$CallbackFactory;

    .line 699
    sput-object v1, Lcom/parse/ParsePushRouter;->lastTime:Ljava/lang/String;

    .line 700
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    .line 701
    sput-object v1, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;

    .line 702
    return-void
.end method

.method static dataForActivity(Landroid/content/Context;Ljava/lang/Class;I)Lorg/json/JSONObject;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "icon"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->getApplicationId(Landroid/content/Context;)Ljava/lang/String;

    .line 412
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 413
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 416
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v9, v8, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 423
    .local v6, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v6, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 425
    .local v2, "appChars":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 426
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 433
    .local v3, "appName":Ljava/lang/String;
    :goto_0
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 434
    .local v4, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "activityClass":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "activityPackage":Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 440
    .local v7, "localData":Lorg/json/JSONObject;
    :try_start_1
    const-string v10, "icon"

    invoke-virtual {v7, v10, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 441
    const-string v10, "appName"

    invoke-virtual {v7, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 442
    const-string v10, "activityClass"

    invoke-virtual {v7, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 443
    const-string v10, "activityPackage"

    invoke-virtual {v7, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 449
    .end local v0    # "activityClass":Ljava/lang/String;
    .end local v1    # "activityPackage":Ljava/lang/String;
    .end local v2    # "appChars":Ljava/lang/CharSequence;
    .end local v3    # "appName":Ljava/lang/String;
    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "localData":Lorg/json/JSONObject;
    :goto_1
    return-object v7

    .line 417
    :catch_0
    move-exception v5

    .line 418
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "com.parse.ParsePushRouter"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "missing package "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v5}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 419
    const/4 v7, 0x0

    goto :goto_1

    .line 428
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "appChars":Ljava/lang/CharSequence;
    .restart local v6    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "appName":Ljava/lang/String;
    goto :goto_0

    .line 444
    .restart local v0    # "activityClass":Ljava/lang/String;
    .restart local v1    # "activityPackage":Ljava/lang/String;
    .restart local v4    # "componentName":Landroid/content/ComponentName;
    .restart local v7    # "localData":Lorg/json/JSONObject;
    :catch_1
    move-exception v5

    .line 446
    .local v5, "e":Lorg/json/JSONException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method static declared-synchronized ensureStateIsLoaded(Landroid/content/Context;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 193
    const-class v11, Lcom/parse/ParsePushRouter;

    monitor-enter v11

    :try_start_0
    sget-boolean v12, Lcom/parse/ParsePushRouter;->hasLoadedStateFromDisk:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v12, :cond_1

    .line 279
    :cond_0
    :goto_0
    monitor-exit v11

    return-void

    .line 197
    :cond_1
    const/4 v12, 0x1

    :try_start_1
    sput-boolean v12, Lcom/parse/ParsePushRouter;->hasLoadedStateFromDisk:Z

    .line 198
    const/4 v12, 0x0

    sput-object v12, Lcom/parse/ParsePushRouter;->defaultRoute:Lcom/parse/ParsePushRouter$CallbackFactory;

    .line 199
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    sput-object v12, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    .line 200
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    sput-object v12, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;

    .line 203
    const-string v12, "persistentCallbacks"

    invoke-static {p0, v12}, Lcom/parse/ParseObject;->getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 204
    .local v8, "jsonData":Lorg/json/JSONObject;
    if-eqz v8, :cond_2

    .line 205
    const-string v12, "com.parse.ParsePushRouter"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Loading legacy route map: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {v8}, Lcom/parse/ParsePushRouter;->parseChannelRoutes(Lorg/json/JSONObject;)V

    .line 209
    sget-object v12, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    monitor-enter v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    :try_start_2
    sget-object v13, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->clear()V

    .line 211
    sget-object v13, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    sget-object v14, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 209
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 213
    :try_start_3
    new-instance v7, Lcom/parse/ParseInstallation;

    invoke-direct {v7}, Lcom/parse/ParseInstallation;-><init>()V

    .line 214
    .local v7, "installation":Lcom/parse/ParseInstallation;
    const-string v12, "channels"

    sget-object v13, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lcom/parse/ParseInstallation;->addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V

    .line 215
    invoke-static {p0, v7}, Lcom/parse/ParsePushRouter;->saveEventually(Landroid/content/Context;Lcom/parse/ParseInstallation;)V

    .line 216
    const-string v12, "persistentCallbacks"

    invoke-static {p0, v12}, Lcom/parse/ParseObject;->deleteDiskObject(Landroid/content/Context;Ljava/lang/String;)V

    .line 220
    .end local v7    # "installation":Lcom/parse/ParseInstallation;
    :cond_2
    const-string v12, "pushState"

    invoke-static {p0, v12}, Lcom/parse/ParseObject;->getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 221
    if-eqz v8, :cond_0

    .line 222
    const-string v12, "routes"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lcom/parse/ParsePushRouter;->parseChannelRoutes(Lorg/json/JSONObject;)V

    .line 224
    const-string v12, "defaultRoute"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 226
    .local v3, "defaultDefinition":Lorg/json/JSONObject;
    if-eqz v3, :cond_3

    :try_start_4
    new-instance v10, Lcom/parse/ParsePushRouter$CallbackFactory;

    invoke-direct {v10, v3}, Lcom/parse/ParsePushRouter$CallbackFactory;-><init>(Lorg/json/JSONObject;)V

    :cond_3
    sput-object v10, Lcom/parse/ParsePushRouter;->defaultRoute:Lcom/parse/ParsePushRouter$CallbackFactory;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 233
    :goto_1
    :try_start_5
    const-string v10, "lastTime"

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/parse/ParsePushRouter;->lastTime:Ljava/lang/String;

    .line 234
    const-string v10, "ignoreAfter"

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/parse/ParsePushRouter;->ignoreAfter:Ljava/lang/String;

    .line 235
    const-string v10, "addChannels"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 236
    .local v0, "added":Lorg/json/JSONArray;
    if-eqz v0, :cond_4

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v1, "channels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v6, v10, :cond_7

    .line 241
    new-instance v7, Lcom/parse/ParseInstallation;

    invoke-direct {v7}, Lcom/parse/ParseInstallation;-><init>()V

    .line 242
    .restart local v7    # "installation":Lcom/parse/ParseInstallation;
    const-string v10, "channels"

    invoke-virtual {v7, v10, v1}, Lcom/parse/ParseInstallation;->addUnique(Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    invoke-static {p0, v7}, Lcom/parse/ParsePushRouter;->saveEventually(Landroid/content/Context;Lcom/parse/ParseInstallation;)V

    .line 245
    .end local v1    # "channels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "i":I
    .end local v7    # "installation":Lcom/parse/ParseInstallation;
    :cond_4
    const-string v10, "removeChannels"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 246
    .local v9, "removed":Lorg/json/JSONArray;
    if-eqz v9, :cond_5

    .line 247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .restart local v1    # "channels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v6, v10, :cond_8

    .line 251
    new-instance v7, Lcom/parse/ParseInstallation;

    invoke-direct {v7}, Lcom/parse/ParseInstallation;-><init>()V

    .line 252
    .restart local v7    # "installation":Lcom/parse/ParseInstallation;
    const-string v10, "channels"

    invoke-virtual {v7, v10, v1}, Lcom/parse/ParseInstallation;->removeAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 253
    invoke-static {p0, v7}, Lcom/parse/ParsePushRouter;->saveEventually(Landroid/content/Context;Lcom/parse/ParseInstallation;)V

    .line 256
    .end local v1    # "channels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "i":I
    .end local v7    # "installation":Lcom/parse/ParseInstallation;
    :cond_5
    const-string v10, "installation"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 257
    new-instance v7, Lcom/parse/ParseInstallation;

    invoke-direct {v7}, Lcom/parse/ParseInstallation;-><init>()V

    .line 258
    .restart local v7    # "installation":Lcom/parse/ParseInstallation;
    const-string v10, "installation"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/parse/ParseInstallation;->mergeAfterFetch(Lorg/json/JSONObject;)V

    .line 260
    const-string v10, "channels"

    invoke-virtual {v7, v10}, Lcom/parse/ParseInstallation;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 261
    .local v5, "fromJSON":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_6

    .line 262
    sget-object v12, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    monitor-enter v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 263
    :try_start_6
    sget-object v10, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->clear()V

    .line 264
    sget-object v10, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    invoke-interface {v10, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 262
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 275
    .end local v5    # "fromJSON":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "installation":Lcom/parse/ParseInstallation;
    :cond_6
    :goto_4
    :try_start_7
    const-string v10, "history"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 276
    const-string v10, "history"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    sput-object v10, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 193
    .end local v0    # "added":Lorg/json/JSONArray;
    .end local v3    # "defaultDefinition":Lorg/json/JSONObject;
    .end local v8    # "jsonData":Lorg/json/JSONObject;
    .end local v9    # "removed":Lorg/json/JSONArray;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 209
    .restart local v8    # "jsonData":Lorg/json/JSONObject;
    :catchall_1
    move-exception v10

    :try_start_8
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v10

    .line 227
    .restart local v3    # "defaultDefinition":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 228
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    const-string v10, "com.parse.ParsePushRouter"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Default route references undefined class: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 229
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v4

    .line 230
    .local v4, "e":Ljava/lang/ClassCastException;
    const-string v10, "com.parse.ParsePushRouter"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Default route references class which is not a PushCallback: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 239
    .end local v4    # "e":Ljava/lang/ClassCastException;
    .restart local v0    # "added":Lorg/json/JSONArray;
    .restart local v1    # "channels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "i":I
    :cond_7
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 249
    .restart local v9    # "removed":Lorg/json/JSONArray;
    :cond_8
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 248
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 262
    .end local v1    # "channels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "i":I
    .restart local v5    # "fromJSON":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "installation":Lcom/parse/ParseInstallation;
    :catchall_2
    move-exception v10

    :try_start_a
    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v10

    .line 267
    .end local v5    # "fromJSON":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "installation":Lcom/parse/ParseInstallation;
    :cond_9
    const-string v10, "channels"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 268
    const-string v10, "channels"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 269
    .local v2, "channelsArray":Lorg/json/JSONArray;
    sget-object v12, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    monitor-enter v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 270
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_5
    :try_start_c
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v6, v10, :cond_a

    .line 269
    monitor-exit v12

    goto :goto_4

    :catchall_3
    move-exception v10

    monitor-exit v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 271
    :cond_a
    :try_start_e
    sget-object v10, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 270
    add-int/lit8 v6, v6, 0x1

    goto :goto_5
.end method

.method static declared-synchronized getApplicationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 484
    const-class v5, Lcom/parse/ParsePushRouter;

    monitor-enter v5

    :try_start_0
    const-string v4, "oauth"

    invoke-static {p0, v4}, Lcom/parse/ParseObject;->getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 485
    .local v3, "oauth":Lorg/json/JSONObject;
    if-nez v3, :cond_0

    .line 486
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "oauth":Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 488
    .restart local v3    # "oauth":Lorg/json/JSONObject;
    :cond_0
    const-string v4, "key"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "cached":Ljava/lang/String;
    const-string v4, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v4, :cond_1

    .line 499
    .end local v1    # "cached":Ljava/lang/String;
    :goto_0
    monitor-exit v5

    return-object v1

    .line 492
    .restart local v1    # "cached":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/parse/ParseObject;->getApplicationId()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 494
    .local v0, "applicationId":Ljava/lang/String;
    :try_start_2
    const-string v4, "key"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 498
    :goto_1
    :try_start_3
    const-string v4, "oauth"

    invoke-static {p0, v4, v3}, Lcom/parse/ParseObject;->saveDiskObject(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object v1, v0

    .line 499
    goto :goto_0

    .line 495
    :catch_0
    move-exception v2

    .line 496
    .local v2, "e":Lorg/json/JSONException;
    const-string v4, "com.parse.ParsePushRouter"

    const-string v6, "JSONException in getApplicationId()"

    invoke-static {v4, v6, v2}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 484
    .end local v0    # "applicationId":Ljava/lang/String;
    .end local v1    # "cached":Ljava/lang/String;
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "oauth":Lorg/json/JSONObject;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method static declared-synchronized getPushRequestJSON(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 664
    const-class v5, Lcom/parse/ParsePushRouter;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->ensureStateIsLoaded(Landroid/content/Context;)V

    .line 665
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    .local v3, "request":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "installation_id"

    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parse/ParseInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 668
    const-string v4, "oauth_key"

    invoke-static {p0}, Lcom/parse/ParsePushRouter;->getApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 669
    const-string v4, "v"

    const-string v6, "a1.2.2"

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 670
    sget-object v4, Lcom/parse/ParsePushRouter;->lastTime:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 671
    const-string v4, "last"

    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 675
    :goto_0
    sget-object v4, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 676
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 677
    .local v2, "knownIds":Lorg/json/JSONArray;
    sget-object v4, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 678
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 681
    const-string v4, "last_seen"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 683
    .end local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "knownIds":Lorg/json/JSONArray;
    :cond_0
    const-string v4, "ignore_after"

    sget-object v6, Lcom/parse/ParsePushRouter;->ignoreAfter:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 688
    .end local v3    # "request":Lorg/json/JSONObject;
    :goto_2
    monitor-exit v5

    return-object v3

    .line 673
    .restart local v3    # "request":Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    const-string v4, "last"

    sget-object v6, Lcom/parse/ParsePushRouter;->lastTime:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, "e":Lorg/json/JSONException;
    :try_start_3
    const-string v4, "com.parse.ParsePushRouter"

    const-string v6, "unexpected JSONException"

    invoke-static {v4, v6, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 686
    const/4 v3, 0x0

    goto :goto_2

    .line 679
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "knownIds":Lorg/json/JSONArray;
    :cond_2
    :try_start_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 664
    .end local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "knownIds":Lorg/json/JSONArray;
    .end local v3    # "request":Lorg/json/JSONObject;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method static declared-synchronized getSubscriptions(Landroid/content/Context;)Ljava/util/Set;
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
    .line 478
    const-class v1, Lcom/parse/ParsePushRouter;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->ensureStateIsLoaded(Landroid/content/Context;)V

    .line 479
    sget-object v0, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static handlePushData(Lcom/parse/PushService;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7
    .param p0, "service"    # Lcom/parse/PushService;
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "pushData"    # Lorg/json/JSONObject;

    .prologue
    .line 511
    const/4 v0, 0x0

    .line 512
    .local v0, "callback":Lcom/parse/PushCallback;
    const-class v4, Lcom/parse/PushService;

    monitor-enter v4

    .line 513
    :try_start_0
    sget-object v3, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParsePushRouter$CallbackFactory;

    .line 514
    .local v2, "factory":Lcom/parse/ParsePushRouter$CallbackFactory;
    if-nez v2, :cond_1

    .line 515
    sget-object v3, Lcom/parse/ParsePushRouter;->defaultRoute:Lcom/parse/ParsePushRouter$CallbackFactory;

    if-nez v3, :cond_0

    .line 516
    const-string v3, "com.parse.ParsePushRouter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Received push "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " that has no handler"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    monitor-exit v4

    .line 539
    :goto_0
    return-void

    .line 519
    :cond_0
    sget-object v2, Lcom/parse/ParsePushRouter;->defaultRoute:Lcom/parse/ParsePushRouter$CallbackFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/parse/ParsePushRouter$CallbackFactory;->newCallback()Lcom/parse/PushCallback;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 512
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 534
    const-string v3, "com.parse.ParsePushRouter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "received push on channel "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-virtual {v0, p0}, Lcom/parse/PushCallback;->setService(Landroid/app/Service;)V

    .line 536
    invoke-virtual {v0, p2}, Lcom/parse/PushCallback;->setPushData(Lorg/json/JSONObject;)V

    .line 537
    invoke-virtual {v0, p1}, Lcom/parse/PushCallback;->setChannel(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v0}, Lcom/parse/PushCallback;->run()V

    goto :goto_0

    .line 524
    :catch_0
    move-exception v1

    .line 525
    .local v1, "e":Ljava/lang/IllegalAccessException;
    :try_start_3
    const-string v3, "com.parse.ParsePushRouter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "illegal access to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/parse/ParsePushRouter$CallbackFactory;->klass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 526
    monitor-exit v4

    goto :goto_0

    .line 512
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "factory":Lcom/parse/ParsePushRouter$CallbackFactory;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 527
    .restart local v2    # "factory":Lcom/parse/ParsePushRouter$CallbackFactory;
    :catch_1
    move-exception v1

    .line 528
    .local v1, "e":Ljava/lang/InstantiationException;
    :try_start_4
    const-string v3, "com.parse.ParsePushRouter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "could not instantiate "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/parse/ParsePushRouter$CallbackFactory;->klass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 529
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized hasRoutes(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    const-class v1, Lcom/parse/ParsePushRouter;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->ensureStateIsLoaded(Landroid/content/Context;)V

    .line 131
    sget-object v0, Lcom/parse/ParsePushRouter;->defaultRoute:Lcom/parse/ParsePushRouter$CallbackFactory;

    if-nez v0, :cond_1

    .line 132
    sget-object v0, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->getSubscriptions(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x1

    .line 131
    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized insertIntoHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "newId"    # Ljava/lang/String;
    .param p1, "newTimestamp"    # Ljava/lang/String;

    .prologue
    .line 336
    const-class v7, Lcom/parse/ParsePushRouter;

    monitor-enter v7

    :try_start_0
    sget-object v6, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;

    invoke-virtual {v6, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    :goto_0
    const/4 v5, 0x0

    .line 342
    .local v5, "youngestCut":Ljava/lang/String;
    :try_start_1
    sget-boolean v6, Lcom/parse/ParsePushRouter;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    sget v6, Lcom/parse/ParsePushRouter;->maxHistory:I

    if-gtz v6, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    .end local v5    # "youngestCut":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 344
    .restart local v5    # "youngestCut":Ljava/lang/String;
    :cond_0
    :try_start_2
    sget-object v6, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 345
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 346
    .local v2, "oldestId":Ljava/lang/String;
    sget-object v6, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "oldestTime":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 355
    sget-object v6, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 358
    move-object v5, v3

    .line 343
    .end local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "oldestId":Ljava/lang/String;
    .end local v3    # "oldestTime":Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v6

    sget v8, Lcom/parse/ParsePushRouter;->maxHistory:I

    if-gt v6, v8, :cond_0

    .line 361
    if-eqz v5, :cond_3

    .line 362
    sput-object v5, Lcom/parse/ParsePushRouter;->ignoreAfter:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 364
    :cond_3
    monitor-exit v7

    return-void

    .line 348
    .restart local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "oldestId":Ljava/lang/String;
    .restart local v3    # "oldestTime":Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 349
    .local v0, "id":Ljava/lang/String;
    sget-object v6, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 350
    .local v4, "time":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    if-gez v6, :cond_1

    .line 351
    move-object v2, v0

    .line 352
    move-object v3, v4

    goto :goto_1

    .line 337
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "oldestId":Ljava/lang/String;
    .end local v3    # "oldestTime":Ljava/lang/String;
    .end local v4    # "time":Ljava/lang/String;
    .end local v5    # "youngestCut":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private static declared-synchronized isSubscribedToChannel(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 625
    const-class v2, Lcom/parse/ParsePushRouter;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 634
    :cond_0
    :goto_0
    monitor-exit v2

    return v1

    .line 630
    :cond_1
    :try_start_1
    sget-object v3, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParsePushRouter$CallbackFactory;

    .line 631
    .local v0, "factory":Lcom/parse/ParsePushRouter$CallbackFactory;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/parse/ParsePushRouter$CallbackFactory;->requiresSubscription()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 632
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 625
    .end local v0    # "factory":Lcom/parse/ParsePushRouter$CallbackFactory;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static parseChannelRoutes(Lorg/json/JSONObject;)V
    .locals 7
    .param p0, "channelMap"    # Lorg/json/JSONObject;

    .prologue
    .line 282
    if-nez p0, :cond_1

    .line 302
    :cond_0
    return-void

    .line 286
    :cond_1
    sget-object v4, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 287
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 288
    .local v1, "channels":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 289
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 290
    .local v0, "channel":Ljava/lang/String;
    const/4 v2, 0x0

    .line 292
    .local v2, "definition":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 293
    sget-object v4, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    new-instance v5, Lcom/parse/ParsePushRouter$CallbackFactory;

    invoke-direct {v5, v2}, Lcom/parse/ParsePushRouter$CallbackFactory;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 294
    :catch_0
    move-exception v3

    .line 295
    .local v3, "e":Lorg/json/JSONException;
    const-string v4, "com.parse.ParsePushRouter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to parse push route "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 296
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v3

    .line 297
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "com.parse.ParsePushRouter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Route references missing class: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v3

    .line 299
    .local v3, "e":Ljava/lang/ClassCastException;
    const-string v4, "com.parse.ParsePushRouter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Route references class which is not a PushCallback: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static declared-synchronized removeChannelRoute(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 467
    const-class v3, Lcom/parse/ParsePushRouter;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->ensureStateIsLoaded(Landroid/content/Context;)V

    .line 468
    sget-object v4, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 469
    new-instance v0, Lcom/parse/ParseInstallation;

    invoke-direct {v0}, Lcom/parse/ParseInstallation;-><init>()V

    .line 470
    .local v0, "installation":Lcom/parse/ParseInstallation;
    const-string v2, "channels"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/parse/ParseInstallation;->removeAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 471
    invoke-static {p0, v0}, Lcom/parse/ParsePushRouter;->saveEventually(Landroid/content/Context;Lcom/parse/ParseInstallation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    .end local v0    # "installation":Lcom/parse/ParseInstallation;
    :goto_0
    monitor-exit v3

    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 467
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method static routePush(Lcom/parse/PushService;Lorg/json/JSONObject;)V
    .locals 8
    .param p0, "service"    # Lcom/parse/PushService;
    .param p1, "message"    # Lorg/json/JSONObject;

    .prologue
    .line 542
    const/4 v1, 0x0

    .line 543
    .local v1, "dirty":Z
    const-string v5, "channel"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "channel":Ljava/lang/String;
    :try_start_0
    const-string v5, "time"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 546
    sget-object v5, Lcom/parse/ParsePushRouter;->lastTime:Ljava/lang/String;

    if-eqz v5, :cond_0

    const-string v5, "time"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/parse/ParsePushRouter;->lastTime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    .line 547
    :cond_0
    const-string v5, "time"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/parse/ParsePushRouter;->lastTime:Ljava/lang/String;

    .line 548
    const/4 v1, 0x1

    .line 550
    :cond_1
    sget-object v5, Lcom/parse/ParsePushRouter;->ignoreAfter:Ljava/lang/String;

    if-eqz v5, :cond_3

    const-string v5, "time"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/parse/ParsePushRouter;->ignoreAfter:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_3

    .line 551
    const-string v5, "com.parse.ParsePushRouter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Ignoring very old push "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    if-eqz v1, :cond_2

    .line 615
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->saveStateToDisk(Landroid/content/Context;)V

    .line 621
    :cond_2
    :goto_0
    return-void

    .line 556
    :cond_3
    if-eqz v0, :cond_4

    :try_start_1
    invoke-static {p0, v0}, Lcom/parse/ParsePushRouter;->isSubscribedToChannel(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 562
    new-instance v3, Lcom/parse/ParsePushRouter$2;

    invoke-direct {v3, p0, p1}, Lcom/parse/ParsePushRouter$2;-><init>(Lcom/parse/PushService;Lorg/json/JSONObject;)V

    .line 572
    .local v3, "maybeResubmit":Lcom/parse/ParseCallback;, "Lcom/parse/ParseCallback<Ljava/lang/Boolean;>;"
    new-instance v5, Lcom/parse/ParsePushRouter$3;

    invoke-direct {v5, v3, v0, p0}, Lcom/parse/ParsePushRouter$3;-><init>(Lcom/parse/ParseCallback;Ljava/lang/String;Lcom/parse/PushService;)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    .line 593
    invoke-virtual {v5, v6}, Lcom/parse/ParsePushRouter$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    if-eqz v1, :cond_2

    .line 615
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->saveStateToDisk(Landroid/content/Context;)V

    goto :goto_0

    .line 599
    .end local v3    # "maybeResubmit":Lcom/parse/ParseCallback;, "Lcom/parse/ParseCallback<Ljava/lang/Boolean;>;"
    :cond_4
    :try_start_2
    const-string v5, "push_id"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 600
    const-string v5, "push_id"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 601
    .local v2, "id":Ljava/lang/String;
    sget-object v5, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 602
    const-string v5, "com.parse.ParsePushRouter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Ignoring redundant push "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 614
    if-eqz v1, :cond_2

    .line 615
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->saveStateToDisk(Landroid/content/Context;)V

    goto :goto_0

    .line 605
    :cond_5
    :try_start_3
    const-string v5, "time"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/parse/ParsePushRouter;->insertIntoHistory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 606
    const/4 v1, 0x1

    .line 614
    .end local v2    # "id":Ljava/lang/String;
    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    .line 615
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->saveStateToDisk(Landroid/content/Context;)V

    .line 619
    :cond_7
    const-string v5, "data"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 620
    .local v4, "pushData":Lorg/json/JSONObject;
    invoke-static {p0, v0, v4}, Lcom/parse/ParsePushRouter;->handlePushData(Lcom/parse/PushService;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 607
    .end local v4    # "pushData":Lorg/json/JSONObject;
    :cond_8
    :try_start_4
    const-string v5, "time"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 608
    sget-object v5, Lcom/parse/ParsePushRouter;->lastTime:Ljava/lang/String;

    if-eqz v5, :cond_9

    const-string v5, "time"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/parse/ParsePushRouter;->lastTime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_6

    .line 609
    :cond_9
    const-string v5, "time"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/parse/ParsePushRouter;->lastTime:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 610
    const/4 v1, 0x1

    goto :goto_1

    .line 613
    :catchall_0
    move-exception v5

    .line 614
    if-eqz v1, :cond_a

    .line 615
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->saveStateToDisk(Landroid/content/Context;)V

    .line 617
    :cond_a
    throw v5
.end method

.method private static saveEventually(Landroid/content/Context;Lcom/parse/ParseInstallation;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "installation"    # Lcom/parse/ParseInstallation;

    .prologue
    .line 98
    new-instance v0, Lcom/parse/ParsePushRouter$1;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParsePushRouter$1;-><init>(Landroid/content/Context;Lcom/parse/ParseInstallation;)V

    invoke-virtual {p1, v0}, Lcom/parse/ParseInstallation;->saveEventually(Lcom/parse/SaveCallback;)V

    .line 125
    return-void
.end method

.method private static declared-synchronized saveStateToDisk(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 307
    const-class v5, Lcom/parse/ParsePushRouter;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->ensureStateIsLoaded(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 311
    .local v3, "serializedData":Lorg/json/JSONObject;
    const-string v4, "version"

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 312
    sget-object v4, Lcom/parse/ParsePushRouter;->defaultRoute:Lcom/parse/ParsePushRouter$CallbackFactory;

    if-eqz v4, :cond_0

    .line 313
    const-string v4, "defaultRoute"

    sget-object v6, Lcom/parse/ParsePushRouter;->defaultRoute:Lcom/parse/ParsePushRouter$CallbackFactory;

    invoke-virtual {v6}, Lcom/parse/ParsePushRouter$CallbackFactory;->toJSON()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 316
    .local v1, "channelMap":Lorg/json/JSONObject;
    sget-object v4, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 319
    const-string v4, "routes"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    const-string v4, "channels"

    new-instance v6, Lorg/json/JSONArray;

    sget-object v7, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    const-string v4, "lastTime"

    sget-object v6, Lcom/parse/ParsePushRouter;->lastTime:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    const-string v4, "history"

    sget-object v6, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    const-string v4, "ignoreAfter"

    sget-object v6, Lcom/parse/ParsePushRouter;->ignoreAfter:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    const-string v4, "pushState"

    invoke-static {p0, v4, v3}, Lcom/parse/ParseObject;->saveDiskObject(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    .end local v1    # "channelMap":Lorg/json/JSONObject;
    .end local v3    # "serializedData":Lorg/json/JSONObject;
    :goto_1
    monitor-exit v5

    return-void

    .line 316
    .restart local v1    # "channelMap":Lorg/json/JSONObject;
    .restart local v3    # "serializedData":Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 317
    .local v0, "channel":Ljava/lang/String;
    sget-object v4, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParsePushRouter$CallbackFactory;

    invoke-virtual {v4}, Lcom/parse/ParsePushRouter$CallbackFactory;->toJSON()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 325
    .end local v0    # "channel":Ljava/lang/String;
    .end local v1    # "channelMap":Lorg/json/JSONObject;
    .end local v3    # "serializedData":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 326
    .local v2, "e":Lorg/json/JSONException;
    :try_start_3
    const-string v4, "com.parse.ParsePushRouter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to save push routes to disk"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 307
    .end local v2    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method static setDefaultRoute(Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 3
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
    .line 453
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->ensureStateIsLoaded(Landroid/content/Context;)V

    .line 454
    if-nez p1, :cond_0

    .line 455
    const/4 v1, 0x0

    sput-object v1, Lcom/parse/ParsePushRouter;->defaultRoute:Lcom/parse/ParsePushRouter$CallbackFactory;

    .line 463
    :goto_0
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->saveStateToDisk(Landroid/content/Context;)V

    .line 464
    return-void

    .line 457
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/parse/ParsePushRouter;->dataForActivity(Landroid/content/Context;Ljava/lang/Class;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 458
    .local v0, "localData":Lorg/json/JSONObject;
    if-nez v0, :cond_1

    .line 459
    new-instance v0, Lorg/json/JSONObject;

    .end local v0    # "localData":Lorg/json/JSONObject;
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 461
    .restart local v0    # "localData":Lorg/json/JSONObject;
    :cond_1
    new-instance v1, Lcom/parse/ParsePushRouter$CallbackFactory;

    const-class v2, Lcom/parse/StandardPushCallback;

    invoke-direct {v1, v2, v0}, Lcom/parse/ParsePushRouter$CallbackFactory;-><init>(Ljava/lang/Class;Lorg/json/JSONObject;)V

    sput-object v1, Lcom/parse/ParsePushRouter;->defaultRoute:Lcom/parse/ParsePushRouter$CallbackFactory;

    goto :goto_0
.end method

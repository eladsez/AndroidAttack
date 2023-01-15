.class public Lcom/parse/ParseUser;
.super Lcom/parse/ParseObject;
.source "ParseUser.java"


# static fields
.field static final CLASS_NAME:Ljava/lang/String; = "_User"

.field private static final CURRENT_USER_FILENAME:Ljava/lang/String; = "currentUser"

.field private static authenticationProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/auth/ParseAuthenticationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static autoUserEnabled:Z

.field private static currentUser:Lcom/parse/ParseUser;

.field private static currentUserMatchesDisk:Z

.field private static final currentUserMutex:Ljava/lang/Object;


# instance fields
.field private final authData:Lorg/json/JSONObject;

.field private isCurrentUser:Z

.field private isLazy:Z

.field private isNew:Z

.field private final linkedServiceNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private password:Ljava/lang/String;

.field private final readOnlyLinkedServiceNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sessionToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    sput-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseUser;->currentUserMutex:Ljava/lang/Object;

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parse/ParseUser;-><init>(Z)V

    .line 60
    return-void
.end method

.method constructor <init>(Z)V
    .locals 2
    .param p1, "isPointer"    # Z

    .prologue
    const/4 v1, 0x0

    .line 46
    const-string v0, "_User"

    invoke-direct {p0, v0, p1}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;Z)V

    .line 47
    iput-boolean v1, p0, Lcom/parse/ParseUser;->isLazy:Z

    .line 48
    iput-boolean v1, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 49
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    .line 51
    iget-object v0, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseUser;->readOnlyLinkedServiceNames:Ljava/util/Set;

    .line 52
    return-void
.end method

.method static synthetic access$10(Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/parse/ParseUser;->stripAnonymity()V

    return-void
.end method

.method static synthetic access$11(Lcom/parse/ParseUser;Lcom/parse/Task;)Lcom/parse/Task;
    .locals 1

    .prologue
    .line 1036
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->resolveLazinessAsync(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12(Lcom/parse/ParseUser;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->restoreAnonymity(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$13(Lcom/parse/ParseUser;Z)V
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/parse/ParseUser;->isLazy:Z

    return-void
.end method

.method static synthetic access$14(Lcom/parse/ParseUser;Ljava/lang/String;Lorg/json/JSONObject;Lcom/parse/Task;)Lcom/parse/Task;
    .locals 1

    .prologue
    .line 1121
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 769
    invoke-static {p0}, Lcom/parse/ParseUser;->saveCurrentUser(Lcom/parse/ParseUser;)V

    return-void
.end method

.method static synthetic access$3(Lcom/parse/ParseUser;Lcom/parse/Task;)Lcom/parse/Task;
    .locals 1

    .prologue
    .line 513
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->signUpAsync(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/parse/ParseUser;Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseUser;->constructSignUpCommand(Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/parse/ParseUser;Z)V
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/parse/ParseUser;->isNew:Z

    return-void
.end method

.method static synthetic access$6(Lcom/parse/ParseUser;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$7(Lcom/parse/ParseUser;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$8(Lcom/parse/ParseUser;Ljava/util/Map;)Lcom/parse/ParseCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 463
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->constructSignUpOrLoginCommand(Ljava/util/Map;)Lcom/parse/ParseCommand;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Lcom/parse/ParseUser;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 874
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V

    return-void
.end method

.method private static authenticateAsync(Lcom/parse/auth/ParseAuthenticationProvider;)Lcom/parse/Task;
    .locals 2
    .param p0, "authenticator"    # Lcom/parse/auth/ParseAuthenticationProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/auth/ParseAuthenticationProvider;",
            ")",
            "Lcom/parse/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1095
    invoke-static {}, Lcom/parse/Task;->create()Lcom/parse/Task$TaskCompletionSource;

    move-result-object v0

    .line 1096
    .local v0, "tcs":Lcom/parse/Task$TaskCompletionSource;, "Lcom/parse/Task<Lorg/json/JSONObject;>.TaskCompletionSource;"
    new-instance v1, Lcom/parse/ParseUser$16;

    invoke-direct {v1, v0}, Lcom/parse/ParseUser$16;-><init>(Lcom/parse/Task$TaskCompletionSource;)V

    invoke-interface {p0, v1}, Lcom/parse/auth/ParseAuthenticationProvider;->authenticate(Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V

    .line 1109
    invoke-virtual {v0}, Lcom/parse/Task$TaskCompletionSource;->getTask()Lcom/parse/Task;

    move-result-object v1

    return-object v1
.end method

.method private static checkApplicationContext()V
    .locals 2

    .prologue
    .line 857
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 858
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must call Parse.initialize(context, oauthKey, oauthSecret) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 861
    :cond_0
    return-void
.end method

.method static clearCurrentUserFromMemory()V
    .locals 2

    .prologue
    .line 1230
    sget-object v1, Lcom/parse/ParseUser;->currentUserMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1231
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 1232
    const/4 v0, 0x0

    sput-boolean v0, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    .line 1230
    monitor-exit v1

    .line 1234
    return-void

    .line 1230
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static constructLogInCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 3
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 651
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v1, "user_login"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    .local v0, "command":Lcom/parse/ParseCommand;
    const-string v1, "username"

    invoke-virtual {v0, v1, p0}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v1, "user_password"

    invoke-virtual {v0, v1, p1}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    return-object v0
.end method

.method private static constructPasswordResetCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 2
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 500
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v1, "user_request_password_reset"

    invoke-direct {v0, v1, p1}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .local v0, "command":Lcom/parse/ParseCommand;
    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    return-object v0
.end method

.method private constructSignUpCommand(Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 2
    .param p2, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseFieldOperation;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseCommand;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 458
    .local p1, "operations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseUser;->constructSaveCommand(Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 459
    .local v0, "command":Lcom/parse/ParseCommand;
    const-string v1, "user_signup"

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommand;->setOp(Ljava/lang/String;)V

    .line 460
    return-object v0
.end method

.method private constructSignUpOrLoginCommand(Ljava/util/Map;)Lcom/parse/ParseCommand;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseFieldOperation;",
            ">;)",
            "Lcom/parse/ParseCommand;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 465
    .local p1, "operations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    iget-object v6, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v6

    .line 466
    :try_start_0
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v5, "user_signup_or_login"

    const/4 v7, 0x0

    invoke-direct {v0, v5, v7}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    .local v0, "command":Lcom/parse/ParseCommand;
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser;->toJSONObjectForSaving(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v3

    .line 471
    .local v3, "params":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 472
    .local v2, "keys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 491
    iget-object v5, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 492
    const-string v5, "user_password"

    iget-object v7, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_0
    monitor-exit v6

    return-object v0

    .line 473
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    .local v1, "key":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 476
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_2

    .line 477
    check-cast v4, Lorg/json/JSONObject;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v1, v4}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 485
    :catch_0
    move-exception v5

    goto :goto_0

    .line 478
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_3

    .line 479
    check-cast v4, Lorg/json/JSONArray;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v1, v4}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 465
    .end local v0    # "command":Lcom/parse/ParseCommand;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Iterator;
    .end local v3    # "params":Lorg/json/JSONObject;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 480
    .restart local v0    # "command":Lcom/parse/ParseCommand;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "keys":Ljava/util/Iterator;
    .restart local v3    # "params":Lorg/json/JSONObject;
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_3
    :try_start_3
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 481
    check-cast v4, Ljava/lang/String;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v1, v4}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 483
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method static disableAutomaticUser()V
    .locals 1

    .prologue
    .line 1203
    const/4 v0, 0x0

    sput-boolean v0, Lcom/parse/ParseUser;->autoUserEnabled:Z

    .line 1204
    return-void
.end method

.method public static enableAutomaticUser()V
    .locals 1

    .prologue
    .line 1214
    const/4 v0, 0x1

    sput-boolean v0, Lcom/parse/ParseUser;->autoUserEnabled:Z

    .line 1215
    return-void
.end method

.method static getCurrentSessionToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 760
    sget-object v1, Lcom/parse/ParseUser;->currentUserMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 761
    :try_start_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 762
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 764
    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    .line 760
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getCurrentUser()Lcom/parse/ParseUser;
    .locals 4

    .prologue
    .line 730
    sget-object v2, Lcom/parse/ParseUser;->currentUserMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 731
    :try_start_0
    invoke-static {}, Lcom/parse/ParseUser;->checkApplicationContext()V

    .line 733
    sget-object v1, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    if-eqz v1, :cond_0

    .line 734
    sget-object v1, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    monitor-exit v2

    .line 755
    :goto_0
    return-object v1

    .line 736
    :cond_0
    sget-boolean v1, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    if-eqz v1, :cond_2

    .line 737
    invoke-static {}, Lcom/parse/ParseUser;->isAutomaticUserEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 738
    invoke-static {}, Lcom/parse/ParseAnonymousUtils;->lazyLogIn()V

    .line 740
    :cond_1
    sget-object v1, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    monitor-exit v2

    goto :goto_0

    .line 730
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 745
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    .line 746
    sget-object v1, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v3, "currentUser"

    invoke-static {v1, v3}, Lcom/parse/ParseUser;->getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    .line 747
    .local v0, "user":Lcom/parse/ParseObject;
    if-nez v0, :cond_4

    .line 748
    invoke-static {}, Lcom/parse/ParseUser;->isAutomaticUserEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 749
    invoke-static {}, Lcom/parse/ParseAnonymousUtils;->lazyLogIn()V

    .line 751
    :cond_3
    sget-object v1, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    monitor-exit v2

    goto :goto_0

    .line 753
    :cond_4
    check-cast v0, Lcom/parse/ParseUser;

    .end local v0    # "user":Lcom/parse/ParseObject;
    sput-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 754
    sget-object v1, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 755
    sget-object v1, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static getQuery()Lcom/parse/ParseQuery;
    .locals 2

    .prologue
    .line 1225
    new-instance v0, Lcom/parse/ParseQuery;

    const-string v1, "_User"

    invoke-direct {v0, v1}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static isAutomaticUserEnabled()Z
    .locals 1

    .prologue
    .line 1218
    sget-boolean v0, Lcom/parse/ParseUser;->autoUserEnabled:Z

    return v0
.end method

.method private linkWithAsync(Lcom/parse/auth/ParseAuthenticationProvider;)Lcom/parse/Task;
    .locals 2
    .param p1, "authenticator"    # Lcom/parse/auth/ParseAuthenticationProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/auth/ParseAuthenticationProvider;",
            ")",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1172
    invoke-static {p1}, Lcom/parse/ParseUser;->authenticateAsync(Lcom/parse/auth/ParseAuthenticationProvider;)Lcom/parse/Task;

    move-result-object v0

    .line 1173
    new-instance v1, Lcom/parse/ParseUser$22;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseUser$22;-><init>(Lcom/parse/ParseUser;Lcom/parse/auth/ParseAuthenticationProvider;)V

    .line 1172
    invoke-virtual {v0, v1}, Lcom/parse/Task;->onSuccessTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method private linkWithAsync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/parse/Task;)Lcom/parse/Task;
    .locals 4
    .param p1, "authType"    # Ljava/lang/String;
    .param p2, "authData"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1123
    .local p3, "toAwait":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    const-string v1, "anonymous"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1124
    .local v0, "oldAnonymousData":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1125
    :try_start_0
    new-instance v1, Lcom/parse/ParseUser$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/parse/ParseUser$18;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v1}, Lcom/parse/Task;->call(Ljava/util/concurrent/Callable;)Lcom/parse/Task;

    move-result-object v1

    .line 1137
    new-instance v3, Lcom/parse/ParseUser$19;

    invoke-direct {v3, p0, p3}, Lcom/parse/ParseUser$19;-><init>(Lcom/parse/ParseUser;Lcom/parse/Task;)V

    invoke-virtual {v1, v3}, Lcom/parse/Task;->onSuccessTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v1

    .line 1141
    new-instance v3, Lcom/parse/ParseUser$20;

    invoke-direct {v3, p0, v0, p1}, Lcom/parse/ParseUser$20;-><init>(Lcom/parse/ParseUser;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v1

    .line 1125
    monitor-exit v2

    return-object v1

    .line 1124
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static logIn(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseUser;
    .locals 1
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 700
    invoke-static {p0, p1}, Lcom/parse/ParseUser;->logInAsync(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lcom/parse/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method private static logInAsync(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/Task;
    .locals 3
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 659
    if-nez p0, :cond_0

    .line 660
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must specify a username for the user to log in with"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 663
    :cond_0
    if-nez p1, :cond_1

    .line 664
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must specify a password for the user to log in with"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 667
    :cond_1
    invoke-static {p0, p1}, Lcom/parse/ParseUser;->constructLogInCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 669
    .local v0, "command":Lcom/parse/ParseCommand;
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->performAsync()Lcom/parse/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$7;

    invoke-direct {v2}, Lcom/parse/ParseUser$7;-><init>()V

    invoke-virtual {v1, v2}, Lcom/parse/Task;->onSuccess(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v1

    return-object v1
.end method

.method public static logInInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/parse/LogInCallback;)V
    .locals 1
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/parse/LogInCallback;

    .prologue
    .line 720
    invoke-static {p0, p1}, Lcom/parse/ParseUser;->logInAsync(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;

    .line 721
    return-void
.end method

.method static logInLazyUser(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/parse/ParseUser;
    .locals 4
    .param p0, "authType"    # Ljava/lang/String;
    .param p1, "authData"    # Lorg/json/JSONObject;

    .prologue
    .line 63
    sget-object v3, Lcom/parse/ParseUser;->currentUserMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 64
    :try_start_0
    new-instance v1, Lcom/parse/ParseUser;

    invoke-direct {v1}, Lcom/parse/ParseUser;-><init>()V

    .line 65
    .local v1, "user":Lcom/parse/ParseUser;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 66
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/parse/ParseUser;->isLazy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :try_start_1
    iget-object v2, v1, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    iget-object v2, v1, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :try_start_2
    sput-object v1, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 74
    const/4 v2, 0x0

    sput-boolean v2, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    .line 75
    monitor-exit v3

    return-object v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 63
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "user":Lcom/parse/ParseUser;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private static logInWithAsync(Lcom/parse/auth/ParseAuthenticationProvider;)Lcom/parse/Task;
    .locals 2
    .param p0, "authenticator"    # Lcom/parse/auth/ParseAuthenticationProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/auth/ParseAuthenticationProvider;",
            ")",
            "Lcom/parse/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1113
    invoke-static {p0}, Lcom/parse/ParseUser;->authenticateAsync(Lcom/parse/auth/ParseAuthenticationProvider;)Lcom/parse/Task;

    move-result-object v0

    .line 1114
    new-instance v1, Lcom/parse/ParseUser$17;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$17;-><init>(Lcom/parse/auth/ParseAuthenticationProvider;)V

    .line 1113
    invoke-virtual {v0, v1}, Lcom/parse/Task;->onSuccessTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method static logInWithAsync(Ljava/lang/String;)Lcom/parse/Task;
    .locals 2
    .param p0, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 935
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 936
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 937
    const-string v1, "No authentication provider could be found for the provided authType"

    .line 936
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_0
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/auth/ParseAuthenticationProvider;

    invoke-static {v0}, Lcom/parse/ParseUser;->logInWithAsync(Lcom/parse/auth/ParseAuthenticationProvider;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method static logInWithAsync(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/parse/Task;
    .locals 6
    .param p0, "authType"    # Ljava/lang/String;
    .param p1, "authData"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/parse/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 943
    new-instance v0, Lcom/parse/ParseUser$9;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseUser$9;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 973
    .local v0, "logInWithTask":Lcom/parse/Continuation;, "Lcom/parse/Continuation<Ljava/lang/Void;Lcom/parse/Task<Lcom/parse/ParseUser;>;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    .line 974
    .local v2, "user":Lcom/parse/ParseUser;
    if-eqz v2, :cond_2

    .line 975
    iget-object v4, v2, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 976
    :try_start_0
    invoke-static {v2}, Lcom/parse/ParseAnonymousUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 977
    invoke-virtual {v2}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 978
    iget-object v3, v2, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    const-string v5, "anonymous"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 979
    .local v1, "oldAnonymousData":Lorg/json/JSONObject;
    iget-object v3, v2, Lcom/parse/ParseUser;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v5, Lcom/parse/ParseUser$10;

    invoke-direct {v5, v2, p0, p1, v1}, Lcom/parse/ParseUser$10;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {v3, v5}, Lcom/parse/TaskQueue;->enqueue(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v3

    monitor-exit v4

    .line 1033
    .end local v1    # "oldAnonymousData":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 1012
    :cond_0
    invoke-virtual {v2, p0, p1}, Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/parse/Task;

    move-result-object v3

    .line 1013
    new-instance v5, Lcom/parse/ParseUser$11;

    invoke-direct {v5, v0, v2}, Lcom/parse/ParseUser$11;-><init>(Lcom/parse/Continuation;Lcom/parse/ParseUser;)V

    .line 1012
    invoke-virtual {v3, v5}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v3

    monitor-exit v4

    goto :goto_0

    .line 975
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1033
    :cond_2
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v3

    goto :goto_0
.end method

.method public static logOut()V
    .locals 6

    .prologue
    .line 790
    sget-object v3, Lcom/parse/ParseUser;->currentUserMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 791
    :try_start_0
    invoke-static {}, Lcom/parse/ParseUser;->checkApplicationContext()V

    .line 793
    sget-object v2, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    if-eqz v2, :cond_0

    .line 794
    sget-object v2, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    iget-object v4, v2, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 795
    :try_start_1
    sget-object v2, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    invoke-virtual {v2}, Lcom/parse/ParseUser;->getLinkedServiceNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v0, "authType":Ljava/lang/String;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 798
    sget-object v2, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 799
    sget-object v2, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    .line 794
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 803
    :cond_0
    const/4 v2, 0x1

    :try_start_2
    sput-boolean v2, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    .line 804
    const/4 v2, 0x0

    sput-object v2, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 805
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v2

    const-string v4, "currentUser"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 806
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 790
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 808
    return-void

    .line 795
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "authType":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 796
    .restart local v0    # "authType":Ljava/lang/String;
    sget-object v5, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    invoke-virtual {v5, v0}, Lcom/parse/ParseUser;->logOutWith(Ljava/lang/String;)V

    goto :goto_0

    .line 794
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 790
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method private logOutWith(Lcom/parse/auth/ParseAuthenticationProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/parse/auth/ParseAuthenticationProvider;

    .prologue
    .line 1189
    invoke-interface {p1}, Lcom/parse/auth/ParseAuthenticationProvider;->deauthenticate()V

    .line 1190
    return-void
.end method

.method static registerAuthenticationProvider(Lcom/parse/auth/ParseAuthenticationProvider;)V
    .locals 2
    .param p0, "provider"    # Lcom/parse/auth/ParseAuthenticationProvider;

    .prologue
    .line 927
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {p0}, Lcom/parse/auth/ParseAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 930
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    invoke-interface {p0}, Lcom/parse/auth/ParseAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V

    .line 932
    :cond_0
    return-void
.end method

.method public static requestPasswordReset(Ljava/lang/String;)V
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 830
    invoke-static {p0}, Lcom/parse/ParseUser;->requestPasswordResetAsync(Ljava/lang/String;)Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lcom/parse/Task;)Ljava/lang/Object;

    .line 831
    return-void
.end method

.method private static requestPasswordResetAsync(Ljava/lang/String;)Lcom/parse/Task;
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 811
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/parse/ParseUser;->constructPasswordResetCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCommand;->performAsync()Lcom/parse/Task;

    move-result-object v0

    .line 812
    invoke-virtual {v0}, Lcom/parse/Task;->makeVoid()Lcom/parse/Task;

    move-result-object v0

    .line 811
    return-object v0
.end method

.method public static requestPasswordResetInBackground(Ljava/lang/String;Lcom/parse/RequestPasswordResetCallback;)V
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/parse/RequestPasswordResetCallback;

    .prologue
    .line 849
    invoke-static {p0}, Lcom/parse/ParseUser;->requestPasswordResetAsync(Ljava/lang/String;)Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;

    .line 850
    return-void
.end method

.method private resolveLazinessAsync(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1037
    .local p1, "toAwait":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1038
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1039
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;

    move-result-object v1

    monitor-exit v2

    .line 1056
    :goto_0
    return-object v1

    .line 1041
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1043
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->signUpAsync(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v1

    new-instance v3, Lcom/parse/ParseUser$12;

    invoke-direct {v3, p0}, Lcom/parse/ParseUser$12;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v1, v3}, Lcom/parse/Task;->onSuccess(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 1037
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1054
    :cond_1
    :try_start_1
    new-instance v0, Lcom/parse/Capture;

    invoke-direct {v0}, Lcom/parse/Capture;-><init>()V

    .line 1056
    .local v0, "operations":Lcom/parse/Capture;, "Lcom/parse/Capture<Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;>;"
    new-instance v1, Lcom/parse/ParseUser$13;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$13;-><init>(Lcom/parse/ParseUser;)V

    invoke-static {v1}, Lcom/parse/Task;->call(Ljava/util/concurrent/Callable;)Lcom/parse/Task;

    move-result-object v1

    .line 1060
    invoke-static {p1}, Lcom/parse/TaskQueue;->waitFor(Lcom/parse/Task;)Lcom/parse/Continuation;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/parse/Task;->onSuccessTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v1

    .line 1061
    new-instance v3, Lcom/parse/ParseUser$14;

    invoke-direct {v3, p0, v0}, Lcom/parse/ParseUser$14;-><init>(Lcom/parse/ParseUser;Lcom/parse/Capture;)V

    invoke-virtual {v1, v3}, Lcom/parse/Task;->onSuccessTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v1

    .line 1067
    new-instance v3, Lcom/parse/ParseUser$15;

    invoke-direct {v3, p0, v0}, Lcom/parse/ParseUser$15;-><init>(Lcom/parse/ParseUser;Lcom/parse/Capture;)V

    invoke-virtual {v1, v3}, Lcom/parse/Task;->onSuccess(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v1

    .line 1056
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private restoreAnonymity(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "anonymousData"    # Lorg/json/JSONObject;

    .prologue
    .line 340
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 341
    if-eqz p1, :cond_0

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    const-string v3, "anonymous"

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    :try_start_1
    iget-object v1, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    const-string v3, "anonymous"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    :cond_0
    :try_start_2
    monitor-exit v2

    .line 350
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 340
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static saveCurrentUser(Lcom/parse/ParseUser;)V
    .locals 4
    .param p0, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 770
    sget-object v1, Lcom/parse/ParseUser;->currentUserMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 771
    :try_start_0
    invoke-static {}, Lcom/parse/ParseUser;->checkApplicationContext()V

    .line 772
    sget-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    if-eq v0, p0, :cond_0

    .line 773
    invoke-static {}, Lcom/parse/ParseUser;->logOut()V

    .line 775
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 776
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 777
    invoke-direct {p0}, Lcom/parse/ParseUser;->synchronizeAllAuthData()V

    .line 778
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v3, "currentUser"

    invoke-virtual {p0, v0, v3}, Lcom/parse/ParseUser;->saveToDisk(Landroid/content/Context;Ljava/lang/String;)V

    .line 775
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 780
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    .line 781
    sput-object p0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 770
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 783
    return-void

    .line 775
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 770
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private signUpAsync()Lcom/parse/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 506
    iget-object v0, p0, Lcom/parse/ParseUser;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseUser$3;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$3;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method private signUpAsync(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "toAwait":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    const/4 v4, 0x1

    .line 514
    iget-object v3, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 515
    :try_start_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, "sessionToken":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 517
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Username cannot be missing or blank"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 514
    .end local v1    # "sessionToken":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 520
    .restart local v1    # "sessionToken":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 521
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Password cannot be missing or blank"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 524
    :cond_2
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_4

    .line 530
    :try_start_2
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    const-string v4, "anonymous"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    const-string v4, "anonymous"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v2, v4, :cond_3

    .line 531
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser;->saveAsync(Lcom/parse/Task;)Lcom/parse/Task;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    :try_start_3
    monitor-exit v3

    .line 577
    :goto_0
    return-object v2

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 538
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot sign up a user that has already signed up."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 543
    :cond_4
    iget-object v2, p0, Lcom/parse/ParseUser;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v4, :cond_5

    .line 544
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot sign up a user that is already signing up."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 549
    :cond_5
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-static {v2}, Lcom/parse/ParseAnonymousUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 553
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 554
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Attempt to merge currentUser with itself."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 557
    :cond_6
    invoke-virtual {p0}, Lcom/parse/ParseUser;->checkForChangesToMutableContainers()V

    .line 558
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseUser;->checkForChangesToMutableContainers()V

    .line 560
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/parse/ParseUser;->copyChangesFrom(Lcom/parse/ParseObject;)V

    .line 561
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/parse/ParseUser;->dirty:Z

    .line 562
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    iget-object v4, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/parse/ParseUser;->setPassword(Ljava/lang/String;)V

    .line 563
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-virtual {p0}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/parse/ParseUser;->setUsername(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p0}, Lcom/parse/ParseUser;->revert()V

    .line 566
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/parse/ParseUser;->saveAsync(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v2

    new-instance v4, Lcom/parse/ParseUser$4;

    invoke-direct {v4, p0}, Lcom/parse/ParseUser$4;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v2, v4}, Lcom/parse/Task;->onSuccess(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 577
    :cond_7
    new-instance v2, Lcom/parse/ParseUser$5;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$5;-><init>(Lcom/parse/ParseUser;)V

    invoke-static {v2}, Lcom/parse/Task;->call(Ljava/util/concurrent/Callable;)Lcom/parse/Task;

    move-result-object v2

    .line 583
    invoke-static {p1}, Lcom/parse/TaskQueue;->waitFor(Lcom/parse/Task;)Lcom/parse/Continuation;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v2

    .line 584
    new-instance v4, Lcom/parse/ParseUser$6;

    invoke-direct {v4, p0, v1}, Lcom/parse/ParseUser$6;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/parse/Task;->onSuccessTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v2

    .line 577
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private stripAnonymity()V
    .locals 5

    .prologue
    .line 326
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 327
    :try_start_0
    invoke-static {p0}, Lcom/parse/ParseAnonymousUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    const-string v3, "anonymous"

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :try_start_1
    iget-object v1, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    const-string v3, "anonymous"

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/parse/ParseUser;->dirty:Z

    .line 326
    :cond_0
    monitor-exit v2

    .line 337
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 326
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private synchronizeAllAuthData()V
    .locals 3

    .prologue
    .line 896
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 897
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 898
    iget-object v1, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 899
    .local v0, "authTypes":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 896
    .end local v0    # "authTypes":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    monitor-exit v2

    .line 904
    return-void

    .line 900
    .restart local v0    # "authTypes":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V

    goto :goto_0

    .line 896
    .end local v0    # "authTypes":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synchronizeAuthData(Ljava/lang/String;)V
    .locals 5
    .param p1, "authType"    # Ljava/lang/String;

    .prologue
    .line 875
    iget-object v3, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 876
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 877
    monitor-exit v3

    .line 889
    :goto_0
    return-void

    .line 879
    :cond_0
    sget-object v2, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 880
    monitor-exit v3

    goto :goto_0

    .line 875
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 882
    :cond_1
    :try_start_1
    sget-object v2, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/auth/ParseAuthenticationProvider;

    .line 884
    .local v0, "provider":Lcom/parse/auth/ParseAuthenticationProvider;
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-interface {v0}, Lcom/parse/auth/ParseAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/parse/auth/ParseAuthenticationProvider;->restoreAuthentication(Lorg/json/JSONObject;)Z

    move-result v1

    .line 885
    .local v1, "success":Z
    if-nez v1, :cond_2

    .line 886
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser;->unlinkFromAsync(Ljava/lang/String;)Lcom/parse/Task;

    .line 875
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method cleanUpAuthData()V
    .locals 5

    .prologue
    .line 249
    iget-object v3, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 250
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    monitor-exit v3

    .line 265
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 254
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 249
    monitor-exit v3

    goto :goto_0

    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 255
    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 256
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 258
    iget-object v2, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 259
    sget-object v2, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    sget-object v2, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/auth/ParseAuthenticationProvider;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/parse/auth/ParseAuthenticationProvider;->restoreAuthentication(Lorg/json/JSONObject;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method constructSaveCommand(Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 4
    .param p2, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseFieldOperation;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseCommand;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 438
    .local p1, "operations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 439
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->constructSaveCommand(Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 440
    .local v0, "command":Lcom/parse/ParseCommand;
    if-nez v0, :cond_0

    .line 441
    monitor-exit v2

    const/4 v0, 0x0

    .line 452
    .end local v0    # "command":Lcom/parse/ParseCommand;
    :goto_0
    return-object v0

    .line 444
    .restart local v0    # "command":Lcom/parse/ParseCommand;
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 445
    const-string v1, "user_password"

    iget-object v3, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_1
    iget-object v1, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 449
    const-string v1, "auth_data"

    iget-object v3, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v3}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 452
    :cond_2
    monitor-exit v2

    goto :goto_0

    .line 438
    .end local v0    # "command":Lcom/parse/ParseCommand;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic fetch()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/parse/ParseUser;->fetch()Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method

.method public fetch()Lcom/parse/ParseUser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 410
    invoke-super {p0}, Lcom/parse/ParseObject;->fetch()Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method fetchAsync(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/Task",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    .local p1, "toAwait":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 416
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-static {p0}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;

    move-result-object v0

    monitor-exit v1

    .line 419
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->fetchAsync(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    .line 420
    new-instance v2, Lcom/parse/ParseUser$2;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$2;-><init>(Lcom/parse/ParseUser;)V

    .line 419
    invoke-virtual {v0, v2}, Lcom/parse/Task;->onSuccessTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic fetchIfNeeded()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/parse/ParseUser;->fetchIfNeeded()Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method

.method public fetchIfNeeded()Lcom/parse/ParseUser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 865
    invoke-super {p0}, Lcom/parse/ParseObject;->fetchIfNeeded()Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    const-string v0, "email"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLinkedServiceNames()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 869
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 870
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser;->readOnlyLinkedServiceNames:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 869
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 356
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 3

    .prologue
    .line 91
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 92
    :goto_0
    monitor-exit v1

    return v0

    .line 94
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isCurrentUser()Z
    .locals 2

    .prologue
    .line 243
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    monitor-exit v1

    return v0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isLazy()Z
    .locals 2

    .prologue
    .line 80
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseUser;->isLazy:Z

    monitor-exit v1

    return v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isNew()Z
    .locals 2

    .prologue
    .line 1197
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1198
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseUser;->isNew:Z

    monitor-exit v1

    return v0

    .line 1197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method linkWithAsync(Ljava/lang/String;)Lcom/parse/Task;
    .locals 2
    .param p1, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1165
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1167
    const-string v1, "No authentication provider could be found for the provided authType"

    .line 1166
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1168
    :cond_0
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/auth/ParseAuthenticationProvider;

    invoke-direct {p0, v0}, Lcom/parse/ParseUser;->linkWithAsync(Lcom/parse/auth/ParseAuthenticationProvider;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method linkWithAsync(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/parse/Task;
    .locals 2
    .param p1, "authType"    # Ljava/lang/String;
    .param p2, "authData"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/parse/ParseUser;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseUser$21;

    invoke-direct {v1, p0, p1, p2}, Lcom/parse/ParseUser$21;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method logOutWith(Ljava/lang/String;)V
    .locals 2
    .param p1, "authType"    # Ljava/lang/String;

    .prologue
    .line 1181
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1182
    :try_start_0
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1183
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/auth/ParseAuthenticationProvider;

    invoke-direct {p0, v0}, Lcom/parse/ParseUser;->logOutWith(Lcom/parse/auth/ParseAuthenticationProvider;)V

    .line 1181
    :cond_0
    monitor-exit v1

    .line 1186
    return-void

    .line 1181
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method mergeFromObject(Lcom/parse/ParseObject;)V
    .locals 8
    .param p1, "other"    # Lcom/parse/ParseObject;

    .prologue
    .line 167
    iget-object v6, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v6

    .line 168
    :try_start_0
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->mergeFromObject(Lcom/parse/ParseObject;)V

    .line 171
    instance-of v5, p1, Lcom/parse/ParseUser;

    if-eqz v5, :cond_0

    .line 172
    move-object v0, p1

    check-cast v0, Lcom/parse/ParseUser;

    move-object v5, v0

    iget-object v5, v5, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    iput-object v5, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    .line 173
    move-object v0, p1

    check-cast v0, Lcom/parse/ParseUser;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/parse/ParseUser;->isNew()Z

    move-result v5

    iput-boolean v5, p0, Lcom/parse/ParseUser;->isNew:Z

    .line 175
    iget-object v5, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 176
    .local v3, "key":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 180
    move-object v0, p1

    check-cast v0, Lcom/parse/ParseUser;

    move-object v5, v0

    iget-object v5, v5, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 181
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 192
    iget-object v5, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 193
    iget-object v5, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    check-cast p1, Lcom/parse/ParseUser;

    .end local p1    # "other":Lcom/parse/ParseObject;
    iget-object v7, p1, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v5, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 167
    .end local v3    # "key":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    monitor-exit v6

    .line 196
    return-void

    .line 177
    .restart local v3    # "key":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local p1    # "other":Lcom/parse/ParseObject;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 167
    .end local v3    # "key":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local p1    # "other":Lcom/parse/ParseObject;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 182
    .restart local v3    # "key":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local p1    # "other":Lcom/parse/ParseObject;
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    .local v2, "k":Ljava/lang/String;
    :try_start_2
    move-object v0, p1

    check-cast v0, Lcom/parse/ParseUser;

    move-object v5, v0

    iget-object v5, v5, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 186
    .local v4, "v":Ljava/lang/Object;
    iget-object v5, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v5, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 187
    .end local v4    # "v":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Lorg/json/JSONException;
    :try_start_3
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v7, "A JSONException occurred where one was not possible."

    invoke-direct {v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method mergeFromServer(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 201
    iget-object v5, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v5

    .line 202
    :try_start_0
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->mergeFromServer(Lorg/json/JSONObject;)V

    .line 205
    const-string v4, "session_token"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    :try_start_1
    const-string v4, "session_token"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :cond_0
    :try_start_2
    const-string v4, "auth_data"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 216
    :try_start_3
    const-string v4, "auth_data"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 218
    .local v3, "newData":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 219
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-nez v4, :cond_3

    .line 232
    .end local v1    # "i":Ljava/util/Iterator;
    .end local v3    # "newData":Lorg/json/JSONObject;
    :cond_1
    :try_start_4
    const-string v4, "is_new"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 234
    :try_start_5
    const-string v4, "is_new"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/parse/ParseUser;->isNew:Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 201
    :cond_2
    :try_start_6
    monitor-exit v5

    .line 240
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 201
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v4

    .line 220
    .restart local v1    # "i":Ljava/util/Iterator;
    .restart local v3    # "newData":Lorg/json/JSONObject;
    :cond_3
    :try_start_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 221
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 223
    iget-object v4, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_4
    invoke-direct {p0, v2}, Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 227
    .end local v1    # "i":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "newData":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 228
    .restart local v0    # "e":Lorg/json/JSONException;
    :try_start_8
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 235
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 236
    .restart local v0    # "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 316
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 317
    :try_start_0
    const-string v0, "username"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/parse/ParseUser;->stripAnonymity()V

    .line 321
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    monitor-exit v1

    .line 323
    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 100
    const-string v0, "username"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t remove the username key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->remove(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method saveAsync(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, "toAwait":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 379
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->resolveLazinessAsync(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    monitor-exit v1

    .line 382
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->saveAsync(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    new-instance v2, Lcom/parse/ParseUser$1;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$1;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v2}, Lcom/parse/Task;->onSuccess(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 304
    const-string v0, "email"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 291
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 292
    :try_start_0
    iput-object p1, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseUser;->dirty:Z

    .line 291
    monitor-exit v1

    .line 295
    return-void

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 274
    const-string v0, "username"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    return-void
.end method

.method public signUp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/parse/ParseUser;->signUpAsync()Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lcom/parse/Task;)Ljava/lang/Object;

    .line 627
    return-void
.end method

.method public signUpInBackground(Lcom/parse/SignUpCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SignUpCallback;

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/parse/ParseUser;->signUpAsync()Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;

    .line 648
    return-void
.end method

.method toJSONObjectForDataFile()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 141
    iget-object v3, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 142
    :try_start_0
    invoke-super {p0}, Lcom/parse/ParseObject;->toJSONObjectForDataFile()Lorg/json/JSONObject;

    move-result-object v1

    .line 144
    .local v1, "objectJSON":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 146
    :try_start_1
    const-string v2, "session_token"

    iget-object v4, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-lez v2, :cond_1

    .line 154
    :try_start_3
    const-string v2, "auth_data"

    iget-object v4, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 160
    :cond_1
    :try_start_4
    monitor-exit v3

    return-object v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "could not encode value for key: sessionToken"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "objectJSON":Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 155
    .restart local v1    # "objectJSON":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 156
    .restart local v0    # "e":Lorg/json/JSONException;
    :try_start_5
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "could not attach key: auth_data"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method protected toJSONObjectForSaving(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseFieldOperation;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "operations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    iget-object v3, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 113
    :try_start_0
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->toJSONObjectForSaving(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    .line 115
    .local v1, "objectJSON":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 117
    :try_start_1
    const-string v2, "session_token"

    iget-object v4, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-lez v2, :cond_1

    .line 125
    :try_start_3
    const-string v2, "auth_data"

    iget-object v4, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    :cond_1
    :try_start_4
    monitor-exit v3

    return-object v1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "could not encode value for key: sessionToken"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "objectJSON":Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 126
    .restart local v1    # "objectJSON":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 127
    .restart local v0    # "e":Lorg/json/JSONException;
    :try_start_5
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "could not attach key: auth_data"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method unlinkFromAsync(Ljava/lang/String;)Lcom/parse/Task;
    .locals 3
    .param p1, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 907
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 908
    if-nez p1, :cond_0

    .line 909
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;

    move-result-object v0

    monitor-exit v1

    .line 911
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;

    move-result-object v0

    new-instance v2, Lcom/parse/ParseUser$8;

    invoke-direct {v2, p0, p1}, Lcom/parse/ParseUser$8;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 907
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected validateDelete()V
    .locals 3

    .prologue
    .line 400
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 401
    :try_start_0
    invoke-super {p0}, Lcom/parse/ParseObject;->validateDelete()V

    .line 402
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseUser;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot delete a ParseUser that is not authenticated."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    return-void
.end method

.method protected validateSave()V
    .locals 3

    .prologue
    .line 363
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 364
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 366
    const-string v2, "Cannot save a ParseUser until it has been signed up. Call signUp first."

    .line 365
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 369
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/parse/ParseUser;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot save a ParseUser that is not authenticated."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    return-void
.end method

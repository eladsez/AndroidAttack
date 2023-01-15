.class Lcom/parse/ConnectivityNotifier;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ConnectivityNotifier$ConnectivityListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "com.parse.ConnectivityNotifier"

.field private static final singleton:Lcom/parse/ConnectivityNotifier;


# instance fields
.field private hasRegisteredReceiver:Z

.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/parse/ConnectivityNotifier$ConnectivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/parse/ConnectivityNotifier;

    invoke-direct {v0}, Lcom/parse/ConnectivityNotifier;-><init>()V

    sput-object v0, Lcom/parse/ConnectivityNotifier;->singleton:Lcom/parse/ConnectivityNotifier;

    .line 14
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ConnectivityNotifier;->listeners:Ljava/util/Set;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ConnectivityNotifier;->hasRegisteredReceiver:Z

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ConnectivityNotifier;->lock:Ljava/lang/Object;

    .line 14
    return-void
.end method

.method static getNotifier()Lcom/parse/ConnectivityNotifier;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/parse/ConnectivityNotifier;->singleton:Lcom/parse/ConnectivityNotifier;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/parse/ConnectivityNotifier$ConnectivityListener;Landroid/content/Context;)V
    .locals 2
    .param p1, "delegate"    # Lcom/parse/ConnectivityNotifier$ConnectivityListener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    iget-object v1, p0, Lcom/parse/ConnectivityNotifier;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/parse/ConnectivityNotifier;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {p0}, Lcom/parse/ConnectivityNotifier;->tryToRegisterForNetworkStatusNotifications()Z

    .line 30
    monitor-exit v1

    .line 34
    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 73
    sget-object v3, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 74
    const-string v3, "com.parse.ConnectivityNotifier"

    const-string v4, "Trying to check network connectivity without a known context. Has Parse.initialize been called from Application.onCreate? (Not Activity.onCreate)"

    invoke-static {v3, v4}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    :goto_0
    return v2

    .line 81
    :cond_1
    sget-object v3, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 82
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 84
    .local v1, "network":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    iget-object v1, p0, Lcom/parse/ConnectivityNotifier;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    return-void

    .line 67
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    .line 68
    .local v0, "delegate":Lcom/parse/ConnectivityNotifier$ConnectivityListener;
    invoke-interface {v0, p2}, Lcom/parse/ConnectivityNotifier$ConnectivityListener;->networkConnectivityStatusChanged(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public removeListener(Lcom/parse/ConnectivityNotifier$ConnectivityListener;)V
    .locals 2
    .param p1, "delegate"    # Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    .prologue
    .line 37
    iget-object v1, p0, Lcom/parse/ConnectivityNotifier;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/parse/ConnectivityNotifier;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {p0}, Lcom/parse/ConnectivityNotifier;->tryToRegisterForNetworkStatusNotifications()Z

    .line 37
    monitor-exit v1

    .line 41
    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public tryToRegisterForNetworkStatusNotifications()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 44
    iget-object v3, p0, Lcom/parse/ConnectivityNotifier;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 45
    :try_start_0
    iget-boolean v4, p0, Lcom/parse/ConnectivityNotifier;->hasRegisteredReceiver:Z

    if-eqz v4, :cond_0

    .line 46
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :goto_0
    return v1

    .line 50
    :cond_0
    :try_start_1
    sget-object v4, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/ReceiverCallNotAllowedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    .line 51
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v2

    goto :goto_0

    .line 53
    :cond_1
    :try_start_3
    sget-object v4, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/parse/ConnectivityNotifier;->hasRegisteredReceiver:Z
    :try_end_3
    .catch Landroid/content/ReceiverCallNotAllowedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    :try_start_4
    monitor-exit v3

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 56
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Landroid/content/ReceiverCallNotAllowedException;
    :try_start_5
    const-string v1, "com.parse.ConnectivityNotifier"

    const-string v4, "Cannot register a broadcast receiver because the executing thread is currently in a broadcast receiver. Will try again later."

    invoke-static {v1, v4}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v1, v2

    goto :goto_0
.end method

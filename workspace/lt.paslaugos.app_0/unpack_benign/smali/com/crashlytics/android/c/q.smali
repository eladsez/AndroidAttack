.class Lcom/crashlytics/android/c/q;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/content/IntentFilter;

.field private static final b:Landroid/content/IntentFilter;

.field private static final c:Landroid/content/IntentFilter;


# instance fields
.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Landroid/content/Context;

.field private final f:Landroid/content/BroadcastReceiver;

.field private final g:Landroid/content/BroadcastReceiver;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/crashlytics/android/c/q;->a:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/crashlytics/android/c/q;->b:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/crashlytics/android/c/q;->c:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/c/q;->e:Landroid/content/Context;

    sget-object v0, Lcom/crashlytics/android/c/q;->a:Landroid/content/IntentFilter;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x5

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/crashlytics/android/c/q;->h:Z

    new-instance v0, Lcom/crashlytics/android/c/q$1;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/c/q$1;-><init>(Lcom/crashlytics/android/c/q;)V

    iput-object v0, p0, Lcom/crashlytics/android/c/q;->g:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/crashlytics/android/c/q$2;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/c/q$2;-><init>(Lcom/crashlytics/android/c/q;)V

    iput-object v0, p0, Lcom/crashlytics/android/c/q;->f:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/crashlytics/android/c/q;->g:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/crashlytics/android/c/q;->b:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/crashlytics/android/c/q;->f:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/crashlytics/android/c/q;->c:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/crashlytics/android/c/q;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/c/q;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/crashlytics/android/c/q;->h:Z

    return p1
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/crashlytics/android/c/q;->h:Z

    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/crashlytics/android/c/q;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/c/q;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/crashlytics/android/c/q;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/crashlytics/android/c/q;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/crashlytics/android/c/q;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

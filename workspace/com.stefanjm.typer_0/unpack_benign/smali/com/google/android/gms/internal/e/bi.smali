.class Lcom/google/android/gms/internal/e/bi;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final a:Ljava/lang/String; = "com.google.android.gms.internal.e.bi"


# instance fields
.field private final b:Lcom/google/android/gms/internal/e/ce;

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/e/ce;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/e/bi;->b:Lcom/google/android/gms/internal/e/ce;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/e/bi;)Lcom/google/android/gms/internal/e/ce;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/e/bi;->b:Lcom/google/android/gms/internal/e/ce;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/e/bi;->b:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->B()V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/bi;->b:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/e/bi;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/e/bi;->b:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/internal/e/bi;->b:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->s()Lcom/google/android/gms/internal/e/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/bd;->y()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/e/bi;->d:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/e/bi;->b:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "Registering connectivity change receiver. Network connected"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/e/bi;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/e/bi;->c:Z

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/e/bi;->b:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->B()V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/bi;->b:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/bi;->b:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/e/bi;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/e/bi;->b:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "Unregistering connectivity change receiver"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/e/bi;->c:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/e/bi;->d:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/e/bi;->b:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->t()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/e/bi;->b:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Failed to unregister the network broadcast receiver"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/e/bi;->b:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/ce;->B()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/e/bi;->b:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object p2

    const-string v0, "NetworkBroadcastReceiver received action"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/e/bi;->b:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/ce;->s()Lcom/google/android/gms/internal/e/bd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/bd;->y()Z

    move-result p1

    iget-boolean p2, p0, Lcom/google/android/gms/internal/e/bi;->d:Z

    if-eq p2, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/e/bi;->d:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/e/bi;->b:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/e/bj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/e/bj;-><init>(Lcom/google/android/gms/internal/e/bi;Z)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/e/bz;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/e/bi;->b:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object p2

    const-string v0, "NetworkBroadcastReceiver received unknown action"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.class final Lcom/google/android/gms/internal/e/bs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/e/bq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/e/bq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/bs;->a:Lcom/google/android/gms/internal/e/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/e/bq;Lcom/google/android/gms/internal/e/br;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/e/bs;-><init>(Lcom/google/android/gms/internal/e/bq;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/e/bs;->a:Lcom/google/android/gms/internal/e/bq;

    invoke-static {p1}, Lcom/google/android/gms/internal/e/bq;->a(Lcom/google/android/gms/internal/e/bq;)Lcom/google/android/gms/internal/e/ce;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object p1

    const-string p2, "Install Referrer connection returned with null binder"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/e/bs;->a:Lcom/google/android/gms/internal/e/bq;

    invoke-static {p2}, Lcom/google/android/gms/internal/e/gm;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/e/gl;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/e/bq;->a:Lcom/google/android/gms/internal/e/gl;

    iget-object p1, p0, Lcom/google/android/gms/internal/e/bs;->a:Lcom/google/android/gms/internal/e/bq;

    iget-object p1, p1, Lcom/google/android/gms/internal/e/bq;->a:Lcom/google/android/gms/internal/e/gl;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/e/bs;->a:Lcom/google/android/gms/internal/e/bq;

    invoke-static {p1}, Lcom/google/android/gms/internal/e/bq;->a(Lcom/google/android/gms/internal/e/bq;)Lcom/google/android/gms/internal/e/ce;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object p1

    const-string p2, "Install Referrer Service implementation was not found"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/e/bs;->a:Lcom/google/android/gms/internal/e/bq;

    invoke-static {p1}, Lcom/google/android/gms/internal/e/bq;->a(Lcom/google/android/gms/internal/e/bq;)Lcom/google/android/gms/internal/e/ce;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/az;->C()Lcom/google/android/gms/internal/e/bb;

    move-result-object p1

    const-string p2, "Install Referrer Service connected"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/e/bs;->a:Lcom/google/android/gms/internal/e/bq;

    invoke-static {p1}, Lcom/google/android/gms/internal/e/bq;->a(Lcom/google/android/gms/internal/e/bq;)Lcom/google/android/gms/internal/e/ce;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/e/bt;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/e/bt;-><init>(Lcom/google/android/gms/internal/e/bs;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/e/bz;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/e/bs;->a:Lcom/google/android/gms/internal/e/bq;

    invoke-static {p2}, Lcom/google/android/gms/internal/e/bq;->a(Lcom/google/android/gms/internal/e/bq;)Lcom/google/android/gms/internal/e/ce;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object p2

    const-string v0, "Exception occurred while calling Install Referrer API"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/e/bs;->a:Lcom/google/android/gms/internal/e/bq;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/gms/internal/e/bq;->a:Lcom/google/android/gms/internal/e/gl;

    iget-object p1, p0, Lcom/google/android/gms/internal/e/bs;->a:Lcom/google/android/gms/internal/e/bq;

    invoke-static {p1}, Lcom/google/android/gms/internal/e/bq;->a(Lcom/google/android/gms/internal/e/bq;)Lcom/google/android/gms/internal/e/ce;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/az;->C()Lcom/google/android/gms/internal/e/bb;

    move-result-object p1

    const-string v0, "Install Referrer Service disconnected"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    return-void
.end method

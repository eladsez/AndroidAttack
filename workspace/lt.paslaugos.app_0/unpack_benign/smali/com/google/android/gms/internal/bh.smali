.class public final Lcom/google/android/gms/internal/bh;
.super Lcom/google/android/gms/internal/bc;

# interfaces
.implements Lcom/google/android/gms/common/internal/an;
.implements Lcom/google/android/gms/common/internal/ao;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/google/android/gms/internal/km;

.field private c:Lcom/google/android/gms/internal/ls;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ls<",
            "Lcom/google/android/gms/internal/bj;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ba;

.field private final e:Ljava/lang/Object;

.field private f:Lcom/google/android/gms/internal/bi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ba;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/km;",
            "Lcom/google/android/gms/internal/ls<",
            "Lcom/google/android/gms/internal/bj;",
            ">;",
            "Lcom/google/android/gms/internal/ba;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3, p4}, Lcom/google/android/gms/internal/bc;-><init>(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ba;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bh;->e:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/bh;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/bh;->b:Lcom/google/android/gms/internal/km;

    iput-object p3, p0, Lcom/google/android/gms/internal/bh;->c:Lcom/google/android/gms/internal/ls;

    iput-object p4, p0, Lcom/google/android/gms/internal/bh;->d:Lcom/google/android/gms/internal/ba;

    sget-object p2, Lcom/google/android/gms/internal/axt;->C:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->t()Lcom/google/android/gms/internal/jm;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/jm;->a()Landroid/os/Looper;

    move-result-object p2

    :goto_0
    move-object v2, p2

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_0

    :goto_1
    new-instance p2, Lcom/google/android/gms/internal/bi;

    iget-object p3, p0, Lcom/google/android/gms/internal/bh;->b:Lcom/google/android/gms/internal/km;

    iget v5, p3, Lcom/google/android/gms/internal/km;->c:I

    move-object v0, p2

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/bi;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/an;Lcom/google/android/gms/common/internal/ao;I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/bh;->f:Lcom/google/android/gms/internal/bi;

    iget-object p1, p0, Lcom/google/android/gms/internal/bh;->f:Lcom/google/android/gms/internal/bi;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/al;->o()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bh;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/bh;->f:Lcom/google/android/gms/internal/bi;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/al;->b()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/bh;->f:Lcom/google/android/gms/internal/bi;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/al;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/bh;->f:Lcom/google/android/gms/internal/bi;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/al;->a()V

    :cond_1
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(I)V
    .locals 0

    const-string p1, "Disconnected from remote ad request service."

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bc;->d()Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/a;)V
    .locals 9

    const-string p1, "Cannot connect to remote service, fallback to local instance."

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/bg;

    iget-object v0, p0, Lcom/google/android/gms/internal/bh;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/bh;->c:Lcom/google/android/gms/internal/ls;

    iget-object v2, p0, Lcom/google/android/gms/internal/bh;->d:Lcom/google/android/gms/internal/ba;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/bg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ba;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/il;->d()Ljava/lang/Object;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string p1, "action"

    const-string v0, "gms_connection_failed_fallback_to_local"

    invoke-virtual {v7, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/bh;->a:Landroid/content/Context;

    iget-object p1, p0, Lcom/google/android/gms/internal/bh;->b:Lcom/google/android/gms/internal/km;

    iget-object v5, p1, Lcom/google/android/gms/internal/km;->a:Ljava/lang/String;

    const-string v6, "gmob-apps"

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/hs;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/br;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bh;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/bh;->f:Lcom/google/android/gms/internal/bi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bi;->g()Lcom/google/android/gms/internal/br;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.class public abstract Lcom/google/android/gms/internal/ads/de;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/dc;
.implements Lcom/google/android/gms/internal/ads/kp;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dc;",
        "Lcom/google/android/gms/internal/ads/kp<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ob<",
            "Lcom/google/android/gms/internal/ads/dl;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/dc;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ob;Lcom/google/android/gms/internal/ads/dc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ob<",
            "Lcom/google/android/gms/internal/ads/dl;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dc;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/de;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/de;->a:Lcom/google/android/gms/internal/ads/ob;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/de;->b:Lcom/google/android/gms/internal/ads/dc;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dp;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/de;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/de;->b:Lcom/google/android/gms/internal/ads/dc;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/dc;->a(Lcom/google/android/gms/internal/ads/dp;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/de;->a()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final a(Lcom/google/android/gms/internal/ads/dt;Lcom/google/android/gms/internal/ads/dl;)Z
    .locals 1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/do;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/do;-><init>(Lcom/google/android/gms/internal/ads/dc;)V

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/dt;->a(Lcom/google/android/gms/internal/ads/dl;Lcom/google/android/gms/internal/ads/dw;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Could not fetch ad response from ad request service due to an Exception."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object p2

    const-string v0, "AdRequestClientTask.getAdResponseFromService"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/ix;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/de;->b:Lcom/google/android/gms/internal/ads/dc;

    new-instance p2, Lcom/google/android/gms/internal/ads/dp;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/dp;-><init>(I)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/dc;->a(Lcom/google/android/gms/internal/ads/dp;)V

    return v0
.end method

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/de;->a()V

    return-void
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/de;->d()Lcom/google/android/gms/internal/ads/dt;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/de;->b:Lcom/google/android/gms/internal/ads/dc;

    new-instance v2, Lcom/google/android/gms/internal/ads/dp;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/dp;-><init>(I)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/dc;->a(Lcom/google/android/gms/internal/ads/dp;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/de;->a()V

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/de;->a:Lcom/google/android/gms/internal/ads/ob;

    new-instance v3, Lcom/google/android/gms/internal/ads/dg;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/dg;-><init>(Lcom/google/android/gms/internal/ads/de;Lcom/google/android/gms/internal/ads/dt;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/dh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dh;-><init>(Lcom/google/android/gms/internal/ads/de;)V

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/ads/ob;->a(Lcom/google/android/gms/internal/ads/oe;Lcom/google/android/gms/internal/ads/oc;)V

    return-object v1
.end method

.method public abstract d()Lcom/google/android/gms/internal/ads/dt;
.end method

.class final Lcom/google/android/gms/ads/internal/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/atw;

.field private final synthetic b:Lcom/google/android/gms/ads/internal/ae;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/ae;Lcom/google/android/gms/internal/ads/atw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ai;->b:Lcom/google/android/gms/ads/internal/ae;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/ai;->a:Lcom/google/android/gms/internal/ads/atw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ai;->b:Lcom/google/android/gms/ads/internal/ae;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->r:Lcom/google/android/gms/internal/ads/awg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ai;->b:Lcom/google/android/gms/ads/internal/ae;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ae;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->r:Lcom/google/android/gms/internal/ads/awg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ai;->a:Lcom/google/android/gms/internal/ads/atw;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/awg;->a(Lcom/google/android/gms/internal/ads/avu;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ai;->b:Lcom/google/android/gms/ads/internal/ae;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ai;->a:Lcom/google/android/gms/internal/ads/atw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/atw;->j()Lcom/google/android/gms/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/ae;->a(Lcom/google/android/gms/b/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jn;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
.class final Lcom/google/android/gms/internal/ads/gy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bdd;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/aoq;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/he;

.field private final synthetic d:Lcom/google/android/gms/internal/ads/gw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/gw;Lcom/google/android/gms/internal/ads/bdd;Lcom/google/android/gms/internal/ads/aoq;Lcom/google/android/gms/internal/ads/he;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gy;->d:Lcom/google/android/gms/internal/ads/gw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gy;->a:Lcom/google/android/gms/internal/ads/bdd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gy;->b:Lcom/google/android/gms/internal/ads/aoq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/gy;->c:Lcom/google/android/gms/internal/ads/he;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gy;->a:Lcom/google/android/gms/internal/ads/bdd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gy;->d:Lcom/google/android/gms/internal/ads/gw;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/gw;->a(Lcom/google/android/gms/internal/ads/gw;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gy;->b:Lcom/google/android/gms/internal/ads/aoq;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/gy;->c:Lcom/google/android/gms/internal/ads/he;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/gy;->d:Lcom/google/android/gms/internal/ads/gw;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/gw;->b(Lcom/google/android/gms/internal/ads/gw;)Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/bdd;->a(Lcom/google/android/gms/b/a;Lcom/google/android/gms/internal/ads/aoq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/hm;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Fail to initialize adapter "

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gy;->d:Lcom/google/android/gms/internal/ads/gw;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/gw;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gy;->d:Lcom/google/android/gms/internal/ads/gw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gy;->d:Lcom/google/android/gms/internal/ads/gw;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/gw;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/gw;->a(Ljava/lang/String;I)V

    return-void
.end method

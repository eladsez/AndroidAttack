.class final Lcom/google/android/gms/internal/cu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/bj;

.field private synthetic b:Lcom/google/android/gms/internal/bu;

.field private synthetic c:Lcom/google/android/gms/internal/cs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cs;Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/internal/bu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cu;->c:Lcom/google/android/gms/internal/cs;

    iput-object p2, p0, Lcom/google/android/gms/internal/cu;->a:Lcom/google/android/gms/internal/bj;

    iput-object p3, p0, Lcom/google/android/gms/internal/cu;->b:Lcom/google/android/gms/internal/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->c:Lcom/google/android/gms/internal/cs;

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->a:Lcom/google/android/gms/internal/bj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cs;->a(Lcom/google/android/gms/internal/bj;)Lcom/google/android/gms/internal/bn;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object v1

    const-string v2, "AdRequestServiceImpl.loadAdAsync"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/gq;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v1, "Could not fetch ad response due to an Exception."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/bn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/bn;-><init>(I)V

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->b:Lcom/google/android/gms/internal/bu;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/bu;->a(Lcom/google/android/gms/internal/bn;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Fail to forward ad response."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
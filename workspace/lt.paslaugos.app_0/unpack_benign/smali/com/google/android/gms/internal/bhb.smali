.class final Lcom/google/android/gms/internal/bhb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/ads/a$a;

.field private synthetic b:Lcom/google/android/gms/internal/bha;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bha;Lcom/google/ads/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bhb;->b:Lcom/google/android/gms/internal/bha;

    iput-object p2, p0, Lcom/google/android/gms/internal/bhb;->a:Lcom/google/ads/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bhb;->b:Lcom/google/android/gms/internal/bha;

    invoke-static {v0}, Lcom/google/android/gms/internal/bha;->a(Lcom/google/android/gms/internal/bha;)Lcom/google/android/gms/internal/bgc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bhb;->a:Lcom/google/ads/a$a;

    invoke-static {v1}, Lcom/google/android/gms/internal/bhd;->a(Lcom/google/ads/a$a;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bgc;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

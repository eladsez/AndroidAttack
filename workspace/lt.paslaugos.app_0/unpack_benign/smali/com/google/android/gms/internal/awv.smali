.class final Lcom/google/android/gms/internal/awv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/awu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/awu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/awv;->a:Lcom/google/android/gms/internal/awu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/awv;->a:Lcom/google/android/gms/internal/awu;

    iget-object v0, v0, Lcom/google/android/gms/internal/awu;->a:Lcom/google/android/gms/internal/aws;

    invoke-static {v0}, Lcom/google/android/gms/internal/aws;->a(Lcom/google/android/gms/internal/aws;)Lcom/google/android/gms/internal/auy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/awv;->a:Lcom/google/android/gms/internal/awu;

    iget-object v0, v0, Lcom/google/android/gms/internal/awu;->a:Lcom/google/android/gms/internal/aws;

    invoke-static {v0}, Lcom/google/android/gms/internal/aws;->a(Lcom/google/android/gms/internal/aws;)Lcom/google/android/gms/internal/auy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/auy;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not notify onAdFailedToLoad event."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

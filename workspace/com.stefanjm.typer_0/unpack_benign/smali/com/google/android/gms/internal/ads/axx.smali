.class final synthetic Lcom/google/android/gms/internal/ads/axx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/axw;

.field private final b:Lcom/google/android/gms/internal/ads/axn;

.field private final c:Lcom/google/android/gms/internal/ads/nz;

.field private final d:Lcom/google/android/gms/internal/ads/axo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/axw;Lcom/google/android/gms/internal/ads/axn;Lcom/google/android/gms/internal/ads/nz;Lcom/google/android/gms/internal/ads/axo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/axx;->a:Lcom/google/android/gms/internal/ads/axw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/axx;->b:Lcom/google/android/gms/internal/ads/axn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/axx;->c:Lcom/google/android/gms/internal/ads/nz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/axx;->d:Lcom/google/android/gms/internal/ads/axo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axx;->a:Lcom/google/android/gms/internal/ads/axw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/axx;->b:Lcom/google/android/gms/internal/ads/axn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/axx;->c:Lcom/google/android/gms/internal/ads/nz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/axx;->d:Lcom/google/android/gms/internal/ads/axo;

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/axn;->e()Lcom/google/android/gms/internal/ads/axs;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/axs;->a(Lcom/google/android/gms/internal/ads/axo;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/nz;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v3, "Unable to obtain a cache service instance."

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/nz;->a(Ljava/lang/Throwable;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/axw;->a:Lcom/google/android/gms/internal/ads/axu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/axu;->a(Lcom/google/android/gms/internal/ads/axu;)V

    return-void
.end method

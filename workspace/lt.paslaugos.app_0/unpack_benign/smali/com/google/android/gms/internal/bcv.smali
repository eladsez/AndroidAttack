.class final synthetic Lcom/google/android/gms/internal/bcv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/bcu;

.field private final b:Lcom/google/android/gms/internal/bck;

.field private final c:Lcom/google/android/gms/internal/lq;

.field private final d:Lcom/google/android/gms/internal/bcl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bcu;Lcom/google/android/gms/internal/bck;Lcom/google/android/gms/internal/lq;Lcom/google/android/gms/internal/bcl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bcv;->a:Lcom/google/android/gms/internal/bcu;

    iput-object p2, p0, Lcom/google/android/gms/internal/bcv;->b:Lcom/google/android/gms/internal/bck;

    iput-object p3, p0, Lcom/google/android/gms/internal/bcv;->c:Lcom/google/android/gms/internal/lq;

    iput-object p4, p0, Lcom/google/android/gms/internal/bcv;->d:Lcom/google/android/gms/internal/bcl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bcv;->a:Lcom/google/android/gms/internal/bcu;

    iget-object v1, p0, Lcom/google/android/gms/internal/bcv;->b:Lcom/google/android/gms/internal/bck;

    iget-object v2, p0, Lcom/google/android/gms/internal/bcv;->c:Lcom/google/android/gms/internal/lq;

    iget-object v3, p0, Lcom/google/android/gms/internal/bcv;->d:Lcom/google/android/gms/internal/bcl;

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/bck;->g()Lcom/google/android/gms/internal/bcq;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/bcq;->a(Lcom/google/android/gms/internal/bcl;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/lq;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v3, "Unable to obtain a cache service instance."

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/lq;->a(Ljava/lang/Throwable;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/bcu;->a:Lcom/google/android/gms/internal/bcs;

    invoke-static {v0}, Lcom/google/android/gms/internal/bcs;->a(Lcom/google/android/gms/internal/bcs;)V

    return-void
.end method

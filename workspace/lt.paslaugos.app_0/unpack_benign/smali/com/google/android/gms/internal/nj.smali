.class public final Lcom/google/android/gms/internal/nj;
.super Lcom/google/android/gms/internal/ha;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/nb;

.field final b:Lcom/google/android/gms/internal/nm;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nb;Lcom/google/android/gms/internal/nm;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ha;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nj;->a:Lcom/google/android/gms/internal/nb;

    iput-object p2, p0, Lcom/google/android/gms/internal/nj;->b:Lcom/google/android/gms/internal/nm;

    iput-object p3, p0, Lcom/google/android/gms/internal/nj;->c:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->y()Lcom/google/android/gms/internal/nl;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/nl;->a(Lcom/google/android/gms/internal/nj;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/nj;->b:Lcom/google/android/gms/internal/nm;

    iget-object v1, p0, Lcom/google/android/gms/internal/nj;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/nm;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/nk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/nk;-><init>(Lcom/google/android/gms/internal/nj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/nk;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/nk;-><init>(Lcom/google/android/gms/internal/nj;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nj;->b:Lcom/google/android/gms/internal/nm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nm;->b()V

    return-void
.end method

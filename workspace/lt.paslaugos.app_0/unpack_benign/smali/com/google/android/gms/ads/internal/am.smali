.class final Lcom/google/android/gms/ads/internal/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/ref/WeakReference;

.field private synthetic b:Lcom/google/android/gms/ads/internal/al;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/al;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/am;->b:Lcom/google/android/gms/ads/internal/al;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/am;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/am;->b:Lcom/google/android/gms/ads/internal/al;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/al;->a(Lcom/google/android/gms/ads/internal/al;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/am;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/am;->b:Lcom/google/android/gms/ads/internal/al;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/al;->a(Lcom/google/android/gms/ads/internal/al;)Lcom/google/android/gms/internal/aud;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/a;->c(Lcom/google/android/gms/internal/aud;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/a;->b(Lcom/google/android/gms/internal/aud;)Z

    return-void

    :cond_0
    const-string v2, "Ad is not visible. Not refreshing ad."

    invoke-static {v2}, Lcom/google/android/gms/internal/he;->d(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/a;->d:Lcom/google/android/gms/ads/internal/al;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/al;->b(Lcom/google/android/gms/internal/aud;)V

    :cond_1
    return-void
.end method

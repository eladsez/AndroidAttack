.class final Lcom/google/android/gms/ads/internal/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/ads/internal/bw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/bw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/c;->a:Lcom/google/android/gms/ads/internal/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->a:Lcom/google/android/gms/ads/internal/bw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->a:Lcom/google/android/gms/ads/internal/bw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/bw;->d(Lcom/google/android/gms/internal/ads/is;)V

    return-void
.end method

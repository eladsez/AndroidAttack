.class final synthetic Lcom/google/android/gms/ads/internal/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/rz;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aks;

.field private final b:Lcom/google/android/gms/internal/ads/is;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aks;Lcom/google/android/gms/internal/ads/is;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/b;->a:Lcom/google/android/gms/internal/ads/aks;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/b;->b:Lcom/google/android/gms/internal/ads/is;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->a:Lcom/google/android/gms/internal/ads/aks;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->b:Lcom/google/android/gms/internal/ads/is;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/aks;->a(Lcom/google/android/gms/internal/ads/akw;)V

    return-void
.end method

.class final synthetic Lcom/google/android/gms/internal/ads/ba;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/rx;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/nz;

.field private final b:Lcom/google/android/gms/internal/ads/qo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/nz;Lcom/google/android/gms/internal/ads/qo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ba;->a:Lcom/google/android/gms/internal/ads/nz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ba;->b:Lcom/google/android/gms/internal/ads/qo;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ba;->a:Lcom/google/android/gms/internal/ads/nz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ba;->b:Lcom/google/android/gms/internal/ads/qo;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/nz;->b(Ljava/lang/Object;)V

    return-void
.end method

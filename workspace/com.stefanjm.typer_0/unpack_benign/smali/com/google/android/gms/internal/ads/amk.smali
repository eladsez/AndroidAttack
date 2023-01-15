.class final Lcom/google/android/gms/internal/ads/amk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/aln;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ami;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ami;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/amk;->a:Lcom/google/android/gms/internal/ads/ami;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/amk;->a:Lcom/google/android/gms/internal/ads/ami;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ami;->b(Lcom/google/android/gms/internal/ads/ami;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/amk;->a:Lcom/google/android/gms/internal/ads/ami;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ami;->a(Lcom/google/android/gms/internal/ads/ami;)V

    return-void
.end method

.class final Lcom/google/android/gms/internal/ads/gx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/aoq;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/bdd;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/gw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/gw;Lcom/google/android/gms/internal/ads/aoq;Lcom/google/android/gms/internal/ads/bdd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gx;->c:Lcom/google/android/gms/internal/ads/gw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gx;->a:Lcom/google/android/gms/internal/ads/aoq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gx;->b:Lcom/google/android/gms/internal/ads/bdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gx;->c:Lcom/google/android/gms/internal/ads/gw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gx;->a:Lcom/google/android/gms/internal/ads/aoq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gx;->b:Lcom/google/android/gms/internal/ads/bdd;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/gw;->a(Lcom/google/android/gms/internal/ads/gw;Lcom/google/android/gms/internal/ads/aoq;Lcom/google/android/gms/internal/ads/bdd;)V

    return-void
.end method

.class final synthetic Lcom/google/android/gms/ads/internal/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/rx;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/atw;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ads/qo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/atw;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/u;->a:Lcom/google/android/gms/internal/ads/atw;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/u;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/u;->c:Lcom/google/android/gms/internal/ads/qo;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/u;->a:Lcom/google/android/gms/internal/ads/atw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/u;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/u;->c:Lcom/google/android/gms/internal/ads/qo;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/ads/internal/t;->a(Lcom/google/android/gms/internal/ads/atw;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qo;Z)V

    return-void
.end method

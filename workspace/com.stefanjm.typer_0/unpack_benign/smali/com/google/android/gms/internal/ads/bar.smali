.class final synthetic Lcom/google/android/gms/internal/ads/bar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/baq;

.field private final b:Lcom/google/android/gms/internal/ads/ahi;

.field private final c:Lcom/google/android/gms/internal/ads/bbh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/baq;Lcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/bbh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bar;->a:Lcom/google/android/gms/internal/ads/baq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bar;->b:Lcom/google/android/gms/internal/ads/ahi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bar;->c:Lcom/google/android/gms/internal/ads/bbh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bar;->a:Lcom/google/android/gms/internal/ads/baq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bar;->b:Lcom/google/android/gms/internal/ads/ahi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bar;->c:Lcom/google/android/gms/internal/ads/bbh;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/baq;->a(Lcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/bbh;)V

    return-void
.end method
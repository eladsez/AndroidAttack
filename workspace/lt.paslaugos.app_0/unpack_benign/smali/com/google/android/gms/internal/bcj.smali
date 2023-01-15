.class public final Lcom/google/android/gms/internal/bcj;
.super Lcom/google/android/gms/internal/bbx;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/b/k$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b/k$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bbx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bcj;->a:Lcom/google/android/gms/ads/b/k$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/bbz;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bcj;->a:Lcom/google/android/gms/ads/b/k$a;

    new-instance v1, Lcom/google/android/gms/internal/bcc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/bcc;-><init>(Lcom/google/android/gms/internal/bbz;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/b/k$a;->a(Lcom/google/android/gms/ads/b/k;)V

    return-void
.end method

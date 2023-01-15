.class public final Lcom/google/android/gms/internal/ayq;
.super Lcom/google/android/gms/internal/ayo;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/a/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/a/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ayo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ayq;->a:Lcom/google/android/gms/ads/a/c;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ayj;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ayq;->a:Lcom/google/android/gms/ads/a/c;

    new-instance v1, Lcom/google/android/gms/internal/ayi;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ayi;-><init>(Lcom/google/android/gms/internal/ayj;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/a/c;->a(Lcom/google/android/gms/ads/a/b;)V

    return-void
.end method

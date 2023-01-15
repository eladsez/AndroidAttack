.class public final Lcom/google/android/gms/internal/ads/ato;
.super Lcom/google/android/gms/internal/ads/atm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/a/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/a/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/atm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ato;->a:Lcom/google/android/gms/ads/a/c;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ati;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ato;->a:Lcom/google/android/gms/ads/a/c;

    new-instance v1, Lcom/google/android/gms/internal/ads/atg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/atg;-><init>(Lcom/google/android/gms/internal/ads/ati;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/a/c;->a(Lcom/google/android/gms/ads/a/b;)V

    return-void
.end method

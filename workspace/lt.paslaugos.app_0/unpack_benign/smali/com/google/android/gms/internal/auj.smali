.class public final Lcom/google/android/gms/internal/auj;
.super Lcom/google/android/gms/internal/avp;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/a/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/avp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auj;->a:Lcom/google/android/gms/ads/a/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auj;->a:Lcom/google/android/gms/ads/a/a;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

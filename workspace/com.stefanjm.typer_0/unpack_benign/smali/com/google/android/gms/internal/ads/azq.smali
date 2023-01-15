.class final synthetic Lcom/google/android/gms/internal/ads/azq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/sr;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/azp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/azp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azq;->a:Lcom/google/android/gms/internal/ads/azp;

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/so;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azq;->a:Lcom/google/android/gms/internal/ads/azp;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/so;->b:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bac;->a(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

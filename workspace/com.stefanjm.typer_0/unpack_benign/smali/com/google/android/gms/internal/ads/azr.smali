.class final synthetic Lcom/google/android/gms/internal/ads/azr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/st;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/azp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/azp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azr;->a:Lcom/google/android/gms/internal/ads/azp;

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/ads/so;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azr;->a:Lcom/google/android/gms/internal/ads/azp;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/so;->b:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bac;->a(Landroid/net/Uri;)Z

    return-void
.end method

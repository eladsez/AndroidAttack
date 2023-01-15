.class final Lcom/google/android/gms/internal/ads/arp;
.super Lcom/google/android/gms/internal/ads/apr;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/arn;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/arn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/arp;->a:Lcom/google/android/gms/internal/ads/arn;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/apr;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/arn;Lcom/google/android/gms/internal/ads/aro;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/arp;-><init>(Lcom/google/android/gms/internal/ads/arn;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aoq;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/arp;->a(Lcom/google/android/gms/internal/ads/aoq;I)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aoq;I)V
    .locals 0

    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/mt;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/mi;->a:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/internal/ads/arq;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/arq;-><init>(Lcom/google/android/gms/internal/ads/arp;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

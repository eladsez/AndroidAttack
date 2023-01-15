.class public final Lcom/google/android/gms/internal/ads/rh;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<WebViewT::",
        "Lcom/google/android/gms/internal/ads/rk;",
        ":",
        "Lcom/google/android/gms/internal/ads/rs;",
        ":",
        "Lcom/google/android/gms/internal/ads/rv;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/rj;

.field private final b:Lcom/google/android/gms/internal/ads/rk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TWebViewT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/rk;Lcom/google/android/gms/internal/ads/rj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWebViewT;",
            "Lcom/google/android/gms/internal/ads/rj;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rh;->a:Lcom/google/android/gms/internal/ads/rj;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rh;->b:Lcom/google/android/gms/internal/ads/rk;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/qo;)Lcom/google/android/gms/internal/ads/rh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/qo;",
            ")",
            "Lcom/google/android/gms/internal/ads/rh<",
            "Lcom/google/android/gms/internal/ads/qo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/rh;

    new-instance v1, Lcom/google/android/gms/internal/ads/ri;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ri;-><init>(Lcom/google/android/gms/internal/ads/qo;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/rh;-><init>(Lcom/google/android/gms/internal/ads/rk;Lcom/google/android/gms/internal/ads/rj;)V

    return-object v0
.end method

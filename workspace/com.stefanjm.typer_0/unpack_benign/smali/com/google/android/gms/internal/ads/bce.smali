.class final Lcom/google/android/gms/internal/ads/bce;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/oc;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/nz;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/bbd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bcc;Lcom/google/android/gms/internal/ads/nz;Lcom/google/android/gms/internal/ads/bbd;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bce;->a:Lcom/google/android/gms/internal/ads/nz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bce;->b:Lcom/google/android/gms/internal/ads/bbd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bce;->a:Lcom/google/android/gms/internal/ads/nz;

    new-instance v1, Lcom/google/android/gms/internal/ads/bbq;

    const-string v2, "Unable to obtain a JavascriptEngine."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/bbq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/nz;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bce;->b:Lcom/google/android/gms/internal/ads/bbd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bbd;->c()V

    return-void
.end method

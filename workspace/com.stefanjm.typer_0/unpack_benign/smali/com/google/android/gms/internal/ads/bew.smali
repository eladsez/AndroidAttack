.class final Lcom/google/android/gms/internal/ads/bew;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/sy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/sy<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bel;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/bdg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bev;Lcom/google/android/gms/internal/ads/bel;Lcom/google/android/gms/internal/ads/bdg;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bew;->a:Lcom/google/android/gms/internal/ads/bel;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bew;->b:Lcom/google/android/gms/internal/ads/bdg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bew;->a:Lcom/google/android/gms/internal/ads/bel;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/bel;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

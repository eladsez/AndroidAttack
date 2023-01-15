.class final Lcom/google/android/gms/internal/ads/bex;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/sy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/sy<",
        "Lcom/google/android/gms/internal/ads/sz;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ben;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/bdg;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/bev;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bev;Lcom/google/android/gms/internal/ads/ben;Lcom/google/android/gms/internal/ads/bdg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bex;->c:Lcom/google/android/gms/internal/ads/bev;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bex;->a:Lcom/google/android/gms/internal/ads/ben;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bex;->b:Lcom/google/android/gms/internal/ads/bdg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bex;->a:Lcom/google/android/gms/internal/ads/ben;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ben;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

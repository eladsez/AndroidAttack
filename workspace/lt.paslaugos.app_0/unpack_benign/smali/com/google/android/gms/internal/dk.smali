.class final Lcom/google/android/gms/internal/dk;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/gms/internal/dg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/di;Lcom/google/android/gms/internal/dg;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->l()Lcom/google/android/gms/common/util/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/dk;->a:J

    iput-object p2, p0, Lcom/google/android/gms/internal/dk;->b:Lcom/google/android/gms/internal/dg;

    return-void
.end method
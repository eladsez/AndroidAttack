.class final Lcom/google/android/gms/internal/ads/ll;
.super Lcom/google/android/gms/internal/ads/uu;


# instance fields
.field private final synthetic a:[B

.field private final synthetic b:Ljava/util/Map;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/mm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/lg;ILjava/lang/String;Lcom/google/android/gms/internal/ads/beg;Lcom/google/android/gms/internal/ads/bdn;[BLjava/util/Map;Lcom/google/android/gms/internal/ads/mm;)V
    .locals 0

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/ll;->a:[B

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/ll;->b:Ljava/util/Map;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/ll;->c:Lcom/google/android/gms/internal/ads/mm;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/gms/internal/ads/uu;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/beg;Lcom/google/android/gms/internal/ads/bdn;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->c:Lcom/google/android/gms/internal/ads/mm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/mm;->a(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/uu;->a()[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:[B

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/uu;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->b:Ljava/util/Map;

    return-object v0
.end method

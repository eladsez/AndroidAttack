.class final Lcom/google/android/gms/internal/ads/apa;
.super Lcom/google/android/gms/internal/ads/aoy$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/aoy$a<",
        "Lcom/google/android/gms/internal/ads/apy;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/aou;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/google/android/gms/internal/ads/aoy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aoy;Landroid/content/Context;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/apa;->d:Lcom/google/android/gms/internal/ads/aoy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/apa;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/apa;->b:Lcom/google/android/gms/internal/ads/aou;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/apa;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/aoy$a;-><init>(Lcom/google/android/gms/internal/ads/aoy;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apa;->d:Lcom/google/android/gms/internal/ads/aoy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aoy;->b(Lcom/google/android/gms/internal/ads/aoy;)Lcom/google/android/gms/internal/ads/aoo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/apa;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/apa;->b:Lcom/google/android/gms/internal/ads/aou;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/apa;->c:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/aoo;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bda;I)Lcom/google/android/gms/internal/ads/apy;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apa;->d:Lcom/google/android/gms/internal/ads/aoy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/apa;->a:Landroid/content/Context;

    const-string v2, "search"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/aoy;->a(Lcom/google/android/gms/internal/ads/aoy;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/arr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/arr;-><init>()V

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/aqk;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apa;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/apa;->b:Lcom/google/android/gms/internal/ads/aou;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/apa;->c:Ljava/lang/String;

    const v3, 0xbdfcb8

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/aqk;->createSearchAdManager(Lcom/google/android/gms/b/a;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/apy;

    move-result-object p1

    return-object p1
.end method

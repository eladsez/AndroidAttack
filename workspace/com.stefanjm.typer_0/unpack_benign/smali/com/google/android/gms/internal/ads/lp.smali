.class public final Lcom/google/android/gms/internal/ads/lp;
.super Lcom/google/android/gms/internal/ads/awk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/awk<",
        "Lcom/google/android/gms/internal/ads/aui;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/nz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/nz<",
            "Lcom/google/android/gms/internal/ads/aui;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/mm;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/nz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/nz<",
            "Lcom/google/android/gms/internal/ads/aui;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/lp;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/nz;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/nz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/nz<",
            "Lcom/google/android/gms/internal/ads/aui;",
            ">;)V"
        }
    .end annotation

    new-instance p2, Lcom/google/android/gms/internal/ads/lq;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/lq;-><init>(Lcom/google/android/gms/internal/ads/nz;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/awk;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/bdn;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lp;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/lp;->a:Lcom/google/android/gms/internal/ads/nz;

    new-instance p3, Lcom/google/android/gms/internal/ads/mm;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/mm;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/lp;->c:Lcom/google/android/gms/internal/ads/mm;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/lp;->c:Lcom/google/android/gms/internal/ads/mm;

    const-string v0, "GET"

    invoke-virtual {p3, p1, v0, p2, p2}, Lcom/google/android/gms/internal/ads/mm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/ads/aui;)Lcom/google/android/gms/internal/ads/bcm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/aui;",
            ")",
            "Lcom/google/android/gms/internal/ads/bcm<",
            "Lcom/google/android/gms/internal/ads/aui;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/oq;->a(Lcom/google/android/gms/internal/ads/aui;)Lcom/google/android/gms/internal/ads/agz;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/bcm;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/agz;)Lcom/google/android/gms/internal/ads/bcm;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/aui;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp;->c:Lcom/google/android/gms/internal/ads/mm;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/aui;->c:Ljava/util/Map;

    iget v2, p1, Lcom/google/android/gms/internal/ads/aui;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/mm;->a(Ljava/util/Map;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp;->c:Lcom/google/android/gms/internal/ads/mm;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/aui;->b:[B

    invoke-static {}, Lcom/google/android/gms/internal/ads/mm;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/mm;->a([B)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp;->a:Lcom/google/android/gms/internal/ads/nz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/nz;->b(Ljava/lang/Object;)V

    return-void
.end method

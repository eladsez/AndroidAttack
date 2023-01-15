.class final Lcom/google/android/gms/internal/ads/azi;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/google/android/gms/ads/internal/m;

.field b:Lcom/google/android/gms/internal/ads/aoq;

.field c:Lcom/google/android/gms/internal/ads/ayb;

.field d:J

.field e:Z

.field f:Z

.field private final synthetic g:Lcom/google/android/gms/internal/ads/azh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/azh;Lcom/google/android/gms/internal/ads/aya;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azi;->g:Lcom/google/android/gms/internal/ads/azh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/azh;->a(Lcom/google/android/gms/internal/ads/azh;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/aya;->b(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/m;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azi;->a:Lcom/google/android/gms/ads/internal/m;

    new-instance p1, Lcom/google/android/gms/internal/ads/ayb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/ayb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azi;->c:Lcom/google/android/gms/internal/ads/ayb;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/azi;->c:Lcom/google/android/gms/internal/ads/ayb;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/azi;->a:Lcom/google/android/gms/ads/internal/m;

    new-instance v0, Lcom/google/android/gms/internal/ads/ayc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/ayc;-><init>(Lcom/google/android/gms/internal/ads/ayb;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ads/apn;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/ayl;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/ayl;-><init>(Lcom/google/android/gms/internal/ads/ayb;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ads/aqh;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/ayn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/ayn;-><init>(Lcom/google/android/gms/internal/ads/ayb;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ads/atl;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/ayp;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/ayp;-><init>(Lcom/google/android/gms/internal/ads/ayb;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ads/apk;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/ayr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/ayr;-><init>(Lcom/google/android/gms/internal/ads/ayb;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ads/gn;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/azh;Lcom/google/android/gms/internal/ads/aya;Lcom/google/android/gms/internal/ads/aoq;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/azi;-><init>(Lcom/google/android/gms/internal/ads/azh;Lcom/google/android/gms/internal/ads/aya;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/azi;->b:Lcom/google/android/gms/internal/ads/aoq;

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/azi;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azi;->b:Lcom/google/android/gms/internal/ads/aoq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azi;->b:Lcom/google/android/gms/internal/ads/aoq;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azi;->g:Lcom/google/android/gms/internal/ads/azh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/azh;->b(Lcom/google/android/gms/internal/ads/azh;)Lcom/google/android/gms/internal/ads/aoq;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/azf;->b(Lcom/google/android/gms/internal/ads/aoq;)Lcom/google/android/gms/internal/ads/aoq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azi;->a:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/a;->b(Lcom/google/android/gms/internal/ads/aoq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/azi;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/azi;->e:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->l()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/azi;->d:J

    return v0
.end method

.class final Lcom/google/android/gms/internal/beg;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/google/android/gms/ads/internal/l;

.field b:Lcom/google/android/gms/internal/aud;

.field c:Lcom/google/android/gms/internal/bcz;

.field d:J

.field e:Z

.field f:Z

.field private synthetic g:Lcom/google/android/gms/internal/bef;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bef;Lcom/google/android/gms/internal/bcy;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/beg;->g:Lcom/google/android/gms/internal/bef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/bef;->a(Lcom/google/android/gms/internal/bef;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/bcy;->b(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/l;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/beg;->a:Lcom/google/android/gms/ads/internal/l;

    new-instance p1, Lcom/google/android/gms/internal/bcz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/bcz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/beg;->c:Lcom/google/android/gms/internal/bcz;

    iget-object p1, p0, Lcom/google/android/gms/internal/beg;->c:Lcom/google/android/gms/internal/bcz;

    iget-object p2, p0, Lcom/google/android/gms/internal/beg;->a:Lcom/google/android/gms/ads/internal/l;

    new-instance v0, Lcom/google/android/gms/internal/bda;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/bda;-><init>(Lcom/google/android/gms/internal/bcz;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/auy;)V

    new-instance v0, Lcom/google/android/gms/internal/bdi;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/bdi;-><init>(Lcom/google/android/gms/internal/bcz;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/avo;)V

    new-instance v0, Lcom/google/android/gms/internal/bdk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/bdk;-><init>(Lcom/google/android/gms/internal/bcz;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ayn;)V

    new-instance v0, Lcom/google/android/gms/internal/bdm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/bdm;-><init>(Lcom/google/android/gms/internal/bcz;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/auv;)V

    new-instance v0, Lcom/google/android/gms/internal/bdp;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/bdp;-><init>(Lcom/google/android/gms/internal/bcz;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ej;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/bef;Lcom/google/android/gms/internal/bcy;Lcom/google/android/gms/internal/aud;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/beg;-><init>(Lcom/google/android/gms/internal/bef;Lcom/google/android/gms/internal/bcy;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/beg;->b:Lcom/google/android/gms/internal/aud;

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/beg;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/beg;->b:Lcom/google/android/gms/internal/aud;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/beg;->b:Lcom/google/android/gms/internal/aud;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/beg;->g:Lcom/google/android/gms/internal/bef;

    invoke-static {v0}, Lcom/google/android/gms/internal/bef;->b(Lcom/google/android/gms/internal/bef;)Lcom/google/android/gms/internal/aud;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/bed;->b(Lcom/google/android/gms/internal/aud;)Lcom/google/android/gms/internal/aud;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/beg;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/a;->b(Lcom/google/android/gms/internal/aud;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/beg;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/beg;->e:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->l()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/beg;->d:J

    return v0
.end method

.class final Lcom/google/android/gms/ads/internal/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/azj;

.field private synthetic b:I

.field private synthetic c:Ljava/util/List;

.field private synthetic d:Lcom/google/android/gms/ads/internal/ad;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/ad;Lcom/google/android/gms/internal/azj;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ag;->d:Lcom/google/android/gms/ads/internal/ad;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/ag;->a:Lcom/google/android/gms/internal/azj;

    iput p3, p0, Lcom/google/android/gms/ads/internal/ag;->b:I

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/ag;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ag;->a:Lcom/google/android/gms/internal/azj;

    instance-of v0, v0, Lcom/google/android/gms/internal/ayy;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ag;->d:Lcom/google/android/gms/ads/internal/ad;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->s:Lcom/google/android/gms/internal/bbw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ag;->d:Lcom/google/android/gms/ads/internal/ad;

    iget v3, p0, Lcom/google/android/gms/ads/internal/ag;->b:I

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/ag;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-eq v3, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/ad;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ag;->d:Lcom/google/android/gms/ads/internal/ad;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->s:Lcom/google/android/gms/internal/bbw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ag;->a:Lcom/google/android/gms/internal/azj;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/ad;->a(Lcom/google/android/gms/internal/azj;)Lcom/google/android/gms/internal/azd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bbw;->a(Lcom/google/android/gms/internal/bbz;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ag;->a:Lcom/google/android/gms/internal/azj;

    instance-of v0, v0, Lcom/google/android/gms/internal/ayy;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ag;->d:Lcom/google/android/gms/ads/internal/ad;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->r:Lcom/google/android/gms/internal/bbj;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ag;->d:Lcom/google/android/gms/ads/internal/ad;

    iget v3, p0, Lcom/google/android/gms/ads/internal/ag;->b:I

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/ag;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-eq v3, v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/ad;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ag;->d:Lcom/google/android/gms/ads/internal/ad;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->r:Lcom/google/android/gms/internal/bbj;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ag;->a:Lcom/google/android/gms/internal/azj;

    check-cast v1, Lcom/google/android/gms/internal/ayy;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bbj;->a(Lcom/google/android/gms/internal/bay;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ag;->a:Lcom/google/android/gms/internal/azj;

    instance-of v0, v0, Lcom/google/android/gms/internal/ayw;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ag;->d:Lcom/google/android/gms/ads/internal/ad;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->s:Lcom/google/android/gms/internal/bbw;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ag;->d:Lcom/google/android/gms/ads/internal/ad;

    iget v3, p0, Lcom/google/android/gms/ads/internal/ag;->b:I

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/ag;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-eq v3, v4, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/ad;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ag;->d:Lcom/google/android/gms/ads/internal/ad;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->s:Lcom/google/android/gms/internal/bbw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ag;->a:Lcom/google/android/gms/internal/azj;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/ad;->a(Lcom/google/android/gms/internal/azj;)Lcom/google/android/gms/internal/azd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bbw;->a(Lcom/google/android/gms/internal/bbz;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ag;->a:Lcom/google/android/gms/internal/azj;

    instance-of v0, v0, Lcom/google/android/gms/internal/ayw;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ag;->d:Lcom/google/android/gms/ads/internal/ad;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->q:Lcom/google/android/gms/internal/bbg;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ag;->d:Lcom/google/android/gms/ads/internal/ad;

    iget v3, p0, Lcom/google/android/gms/ads/internal/ag;->b:I

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/ag;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-eq v3, v4, :cond_6

    const/4 v1, 0x1

    :cond_6
    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/ad;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ag;->d:Lcom/google/android/gms/ads/internal/ad;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->q:Lcom/google/android/gms/internal/bbg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ag;->a:Lcom/google/android/gms/internal/azj;

    check-cast v1, Lcom/google/android/gms/internal/ayw;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bbg;->a(Lcom/google/android/gms/internal/bau;)V

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ag;->d:Lcom/google/android/gms/ads/internal/ad;

    const/4 v3, 0x3

    iget v4, p0, Lcom/google/android/gms/ads/internal/ag;->b:I

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/ag;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    if-eq v4, v5, :cond_8

    const/4 v1, 0x1

    :cond_8
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/ads/internal/a;->a(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call native ad loaded"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

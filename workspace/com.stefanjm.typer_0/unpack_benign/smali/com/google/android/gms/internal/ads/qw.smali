.class final synthetic Lcom/google/android/gms/internal/ads/qw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/my;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/ahi;

.field private final c:Lcom/google/android/gms/internal/ads/mv;

.field private final d:Lcom/google/android/gms/ads/internal/bu;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/ads/internal/bu;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qw;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qw;->b:Lcom/google/android/gms/internal/ads/ahi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/qw;->c:Lcom/google/android/gms/internal/ads/mv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/qw;->d:Lcom/google/android/gms/ads/internal/bu;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/qw;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/no;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qw;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/qw;->b:Lcom/google/android/gms/internal/ads/ahi;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/qw;->c:Lcom/google/android/gms/internal/ads/mv;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/qw;->d:Lcom/google/android/gms/ads/internal/bu;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qw;->e:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->f()Lcom/google/android/gms/internal/ads/qv;

    invoke-static {}, Lcom/google/android/gms/internal/ads/sc;->a()Lcom/google/android/gms/internal/ads/sc;

    move-result-object v1

    const-string v2, ""

    invoke-static {}, Lcom/google/android/gms/internal/ads/amx;->a()Lcom/google/android/gms/internal/ads/amx;

    move-result-object v10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/qv;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/sc;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/internal/ads/ate;Lcom/google/android/gms/ads/internal/aq;Lcom/google/android/gms/ads/internal/bu;Lcom/google/android/gms/internal/ads/amx;)Lcom/google/android/gms/internal/ads/qo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ny;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ny;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->v()Lcom/google/android/gms/internal/ads/rw;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/qy;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/qy;-><init>(Lcom/google/android/gms/internal/ads/ny;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/rw;->a(Lcom/google/android/gms/internal/ads/rx;)V

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/qo;->loadUrl(Ljava/lang/String;)V

    return-object v1
.end method

.class final synthetic Lcom/google/android/gms/internal/ads/sj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/sc;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Z

.field private final f:Lcom/google/android/gms/internal/ads/ahi;

.field private final g:Lcom/google/android/gms/internal/ads/mv;

.field private final h:Lcom/google/android/gms/internal/ads/ate;

.field private final i:Lcom/google/android/gms/ads/internal/aq;

.field private final j:Lcom/google/android/gms/ads/internal/bu;

.field private final k:Lcom/google/android/gms/internal/ads/amx;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/sc;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/internal/ads/ate;Lcom/google/android/gms/ads/internal/aq;Lcom/google/android/gms/ads/internal/bu;Lcom/google/android/gms/internal/ads/amx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sj;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sj;->b:Lcom/google/android/gms/internal/ads/sc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/sj;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/sj;->d:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/sj;->e:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/sj;->f:Lcom/google/android/gms/internal/ads/ahi;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/sj;->g:Lcom/google/android/gms/internal/ads/mv;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/sj;->h:Lcom/google/android/gms/internal/ads/ate;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/sj;->i:Lcom/google/android/gms/ads/internal/aq;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/sj;->j:Lcom/google/android/gms/ads/internal/bu;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/sj;->k:Lcom/google/android/gms/internal/ads/amx;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sj;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sj;->b:Lcom/google/android/gms/internal/ads/sc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sj;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/sj;->d:Z

    iget-boolean v11, p0, Lcom/google/android/gms/internal/ads/sj;->e:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/sj;->f:Lcom/google/android/gms/internal/ads/ahi;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/sj;->g:Lcom/google/android/gms/internal/ads/mv;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/sj;->h:Lcom/google/android/gms/internal/ads/ate;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/sj;->i:Lcom/google/android/gms/ads/internal/aq;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/sj;->j:Lcom/google/android/gms/ads/internal/bu;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/sj;->k:Lcom/google/android/gms/internal/ads/amx;

    move v4, v11

    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/sk;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/sc;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/internal/ads/ate;Lcom/google/android/gms/ads/internal/aq;Lcom/google/android/gms/ads/internal/bu;Lcom/google/android/gms/internal/ads/amx;)Lcom/google/android/gms/internal/ads/sk;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ra;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/ra;-><init>(Lcom/google/android/gms/internal/ads/qo;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/sd;

    invoke-direct {v2, v1, v11}, Lcom/google/android/gms/internal/ads/sd;-><init>(Lcom/google/android/gms/internal/ads/qo;Z)V

    new-instance v3, Lcom/google/android/gms/internal/ads/qg;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/qg;-><init>(Lcom/google/android/gms/internal/ads/qo;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/sk;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/sm;->a(Lcom/google/android/gms/internal/ads/sr;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/sm;->a(Lcom/google/android/gms/internal/ads/sw;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/sm;->a(Lcom/google/android/gms/internal/ads/sv;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/sm;->a(Lcom/google/android/gms/internal/ads/st;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/sk;->a(Lcom/google/android/gms/internal/ads/sd;)V

    return-object v1
.end method

.class final synthetic Lcom/google/android/gms/internal/ads/qx;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qx;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qx;->b:Lcom/google/android/gms/internal/ads/sc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/qx;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/qx;->d:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/qx;->e:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/qx;->f:Lcom/google/android/gms/internal/ads/ahi;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/qx;->g:Lcom/google/android/gms/internal/ads/mv;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/qx;->h:Lcom/google/android/gms/internal/ads/ate;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/qx;->i:Lcom/google/android/gms/ads/internal/aq;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/qx;->j:Lcom/google/android/gms/ads/internal/bu;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/qx;->k:Lcom/google/android/gms/internal/ads/amx;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qx;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qx;->b:Lcom/google/android/gms/internal/ads/sc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qx;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/qx;->d:Z

    iget-boolean v11, p0, Lcom/google/android/gms/internal/ads/qx;->e:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/qx;->f:Lcom/google/android/gms/internal/ads/ahi;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/qx;->g:Lcom/google/android/gms/internal/ads/mv;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/qx;->h:Lcom/google/android/gms/internal/ads/ate;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/qx;->i:Lcom/google/android/gms/ads/internal/aq;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/qx;->j:Lcom/google/android/gms/ads/internal/bu;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/qx;->k:Lcom/google/android/gms/internal/ads/amx;

    new-instance v12, Lcom/google/android/gms/internal/ads/ra;

    move v4, v11

    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/rb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/sc;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/internal/ads/ate;Lcom/google/android/gms/ads/internal/aq;Lcom/google/android/gms/ads/internal/bu;Lcom/google/android/gms/internal/ads/amx;)Lcom/google/android/gms/internal/ads/rb;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/google/android/gms/internal/ads/ra;-><init>(Lcom/google/android/gms/internal/ads/qo;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->g()Lcom/google/android/gms/internal/ads/kc;

    move-result-object v0

    invoke-virtual {v0, v12, v11}, Lcom/google/android/gms/internal/ads/kc;->a(Lcom/google/android/gms/internal/ads/qo;Z)Lcom/google/android/gms/internal/ads/qp;

    move-result-object v0

    invoke-interface {v12, v0}, Lcom/google/android/gms/internal/ads/qo;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/qg;

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/qg;-><init>(Lcom/google/android/gms/internal/ads/qo;)V

    invoke-interface {v12, v0}, Lcom/google/android/gms/internal/ads/qo;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-object v12
.end method

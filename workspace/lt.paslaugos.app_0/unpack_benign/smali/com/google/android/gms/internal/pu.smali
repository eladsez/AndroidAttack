.class final synthetic Lcom/google/android/gms/internal/pu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/pr;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Z

.field private final f:Lcom/google/android/gms/internal/zk;

.field private final g:Lcom/google/android/gms/internal/km;

.field private final h:Lcom/google/android/gms/internal/ayg;

.field private final i:Lcom/google/android/gms/ads/internal/ao;

.field private final j:Lcom/google/android/gms/ads/internal/br;

.field private final k:Lcom/google/android/gms/internal/asl;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/pr;Ljava/lang/String;ZZLcom/google/android/gms/internal/zk;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/internal/ayg;Lcom/google/android/gms/ads/internal/ao;Lcom/google/android/gms/ads/internal/br;Lcom/google/android/gms/internal/asl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/pu;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/pu;->b:Lcom/google/android/gms/internal/pr;

    iput-object p3, p0, Lcom/google/android/gms/internal/pu;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/pu;->d:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/pu;->e:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/pu;->f:Lcom/google/android/gms/internal/zk;

    iput-object p7, p0, Lcom/google/android/gms/internal/pu;->g:Lcom/google/android/gms/internal/km;

    iput-object p8, p0, Lcom/google/android/gms/internal/pu;->h:Lcom/google/android/gms/internal/ayg;

    iput-object p9, p0, Lcom/google/android/gms/internal/pu;->i:Lcom/google/android/gms/ads/internal/ao;

    iput-object p10, p0, Lcom/google/android/gms/internal/pu;->j:Lcom/google/android/gms/ads/internal/br;

    iput-object p11, p0, Lcom/google/android/gms/internal/pu;->k:Lcom/google/android/gms/internal/asl;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/pu;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/pu;->b:Lcom/google/android/gms/internal/pr;

    iget-object v2, p0, Lcom/google/android/gms/internal/pu;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/pu;->d:Z

    iget-boolean v11, p0, Lcom/google/android/gms/internal/pu;->e:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/pu;->f:Lcom/google/android/gms/internal/zk;

    iget-object v6, p0, Lcom/google/android/gms/internal/pu;->g:Lcom/google/android/gms/internal/km;

    iget-object v7, p0, Lcom/google/android/gms/internal/pu;->h:Lcom/google/android/gms/internal/ayg;

    iget-object v8, p0, Lcom/google/android/gms/internal/pu;->i:Lcom/google/android/gms/ads/internal/ao;

    iget-object v9, p0, Lcom/google/android/gms/internal/pu;->j:Lcom/google/android/gms/ads/internal/br;

    iget-object v10, p0, Lcom/google/android/gms/internal/pu;->k:Lcom/google/android/gms/internal/asl;

    move v4, v11

    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/pv;->a(Landroid/content/Context;Lcom/google/android/gms/internal/pr;Ljava/lang/String;ZZLcom/google/android/gms/internal/zk;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/internal/ayg;Lcom/google/android/gms/ads/internal/ao;Lcom/google/android/gms/ads/internal/br;Lcom/google/android/gms/internal/asl;)Lcom/google/android/gms/internal/pv;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->g()Lcom/google/android/gms/internal/hy;

    move-result-object v1

    invoke-virtual {v1, v0, v11}, Lcom/google/android/gms/internal/hy;->a(Lcom/google/android/gms/internal/nu;Z)Lcom/google/android/gms/internal/nv;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/nu;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->g()Lcom/google/android/gms/internal/hy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/hy;->c(Lcom/google/android/gms/internal/nu;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/nu;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v1, Lcom/google/android/gms/internal/of;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/of;-><init>(Lcom/google/android/gms/internal/nu;)V

    return-object v1
.end method
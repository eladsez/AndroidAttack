.class final Lcom/google/android/gms/internal/od;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/nu;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/google/android/gms/internal/pr;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Z

.field private synthetic e:Z

.field private synthetic f:Lcom/google/android/gms/internal/zk;

.field private synthetic g:Lcom/google/android/gms/internal/km;

.field private synthetic h:Lcom/google/android/gms/internal/ayg;

.field private synthetic i:Lcom/google/android/gms/ads/internal/ao;

.field private synthetic j:Lcom/google/android/gms/ads/internal/br;

.field private synthetic k:Lcom/google/android/gms/internal/asl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/oa;Landroid/content/Context;Lcom/google/android/gms/internal/pr;Ljava/lang/String;ZZLcom/google/android/gms/internal/zk;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/internal/ayg;Lcom/google/android/gms/ads/internal/ao;Lcom/google/android/gms/ads/internal/br;Lcom/google/android/gms/internal/asl;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/od;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/od;->b:Lcom/google/android/gms/internal/pr;

    iput-object p4, p0, Lcom/google/android/gms/internal/od;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/od;->d:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/od;->e:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/od;->f:Lcom/google/android/gms/internal/zk;

    iput-object p8, p0, Lcom/google/android/gms/internal/od;->g:Lcom/google/android/gms/internal/km;

    iput-object p9, p0, Lcom/google/android/gms/internal/od;->h:Lcom/google/android/gms/internal/ayg;

    iput-object p10, p0, Lcom/google/android/gms/internal/od;->i:Lcom/google/android/gms/ads/internal/ao;

    iput-object p11, p0, Lcom/google/android/gms/internal/od;->j:Lcom/google/android/gms/ads/internal/br;

    iput-object p12, p0, Lcom/google/android/gms/internal/od;->k:Lcom/google/android/gms/internal/asl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 12

    new-instance v0, Lcom/google/android/gms/internal/of;

    iget-object v1, p0, Lcom/google/android/gms/internal/od;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/od;->b:Lcom/google/android/gms/internal/pr;

    iget-object v3, p0, Lcom/google/android/gms/internal/od;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/od;->d:Z

    iget-boolean v5, p0, Lcom/google/android/gms/internal/od;->e:Z

    iget-object v6, p0, Lcom/google/android/gms/internal/od;->f:Lcom/google/android/gms/internal/zk;

    iget-object v7, p0, Lcom/google/android/gms/internal/od;->g:Lcom/google/android/gms/internal/km;

    iget-object v8, p0, Lcom/google/android/gms/internal/od;->h:Lcom/google/android/gms/internal/ayg;

    iget-object v9, p0, Lcom/google/android/gms/internal/od;->i:Lcom/google/android/gms/ads/internal/ao;

    iget-object v10, p0, Lcom/google/android/gms/internal/od;->j:Lcom/google/android/gms/ads/internal/br;

    iget-object v11, p0, Lcom/google/android/gms/internal/od;->k:Lcom/google/android/gms/internal/asl;

    invoke-static/range {v1 .. v11}, Lcom/google/android/gms/internal/og;->a(Landroid/content/Context;Lcom/google/android/gms/internal/pr;Ljava/lang/String;ZZLcom/google/android/gms/internal/zk;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/internal/ayg;Lcom/google/android/gms/ads/internal/ao;Lcom/google/android/gms/ads/internal/br;Lcom/google/android/gms/internal/asl;)Lcom/google/android/gms/internal/og;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/of;-><init>(Lcom/google/android/gms/internal/nu;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->g()Lcom/google/android/gms/internal/hy;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/od;->e:Z

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/hy;->a(Lcom/google/android/gms/internal/nu;Z)Lcom/google/android/gms/internal/nv;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/nu;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->g()Lcom/google/android/gms/internal/hy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/hy;->c(Lcom/google/android/gms/internal/nu;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/nu;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-object v0
.end method

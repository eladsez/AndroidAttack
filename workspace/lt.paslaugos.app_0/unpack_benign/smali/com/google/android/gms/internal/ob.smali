.class final synthetic Lcom/google/android/gms/internal/ob;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/kp;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/zk;

.field private final c:Lcom/google/android/gms/internal/km;

.field private final d:Lcom/google/android/gms/ads/internal/br;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zk;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/ads/internal/br;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ob;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ob;->b:Lcom/google/android/gms/internal/zk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ob;->c:Lcom/google/android/gms/internal/km;

    iput-object p4, p0, Lcom/google/android/gms/internal/ob;->d:Lcom/google/android/gms/ads/internal/br;

    iput-object p5, p0, Lcom/google/android/gms/internal/ob;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/lf;
    .locals 12

    iget-object v1, p0, Lcom/google/android/gms/internal/ob;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/internal/ob;->b:Lcom/google/android/gms/internal/zk;

    iget-object v7, p0, Lcom/google/android/gms/internal/ob;->c:Lcom/google/android/gms/internal/km;

    iget-object v10, p0, Lcom/google/android/gms/internal/ob;->d:Lcom/google/android/gms/ads/internal/br;

    iget-object p1, p0, Lcom/google/android/gms/internal/ob;->e:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->f()Lcom/google/android/gms/internal/oa;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/pr;->a()Lcom/google/android/gms/internal/pr;

    move-result-object v2

    const-string v3, ""

    invoke-static {}, Lcom/google/android/gms/internal/asl;->a()Lcom/google/android/gms/internal/asl;

    move-result-object v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/gms/internal/oa;->a(Landroid/content/Context;Lcom/google/android/gms/internal/pr;Ljava/lang/String;ZZLcom/google/android/gms/internal/zk;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/internal/ayg;Lcom/google/android/gms/ads/internal/ao;Lcom/google/android/gms/ads/internal/br;Lcom/google/android/gms/internal/asl;)Lcom/google/android/gms/internal/nu;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/lp;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/lp;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->u()Lcom/google/android/gms/internal/pk;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/oc;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/oc;-><init>(Lcom/google/android/gms/internal/lp;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/pk;->a(Lcom/google/android/gms/internal/pl;)V

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/nu;->loadUrl(Ljava/lang/String;)V

    return-object v1
.end method

.class final Lcom/google/android/gms/internal/auo;
.super Lcom/google/android/gms/internal/aul$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/aul$a<",
        "Lcom/google/android/gms/internal/avj;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/google/android/gms/internal/auh;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lcom/google/android/gms/internal/bfw;

.field private synthetic e:Lcom/google/android/gms/internal/aul;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aul;Landroid/content/Context;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/auo;->e:Lcom/google/android/gms/internal/aul;

    iput-object p2, p0, Lcom/google/android/gms/internal/auo;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/auo;->b:Lcom/google/android/gms/internal/auh;

    iput-object p4, p0, Lcom/google/android/gms/internal/auo;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/auo;->d:Lcom/google/android/gms/internal/bfw;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aul$a;-><init>(Lcom/google/android/gms/internal/aul;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/auo;->e:Lcom/google/android/gms/internal/aul;

    invoke-static {v0}, Lcom/google/android/gms/internal/aul;->b(Lcom/google/android/gms/internal/aul;)Lcom/google/android/gms/internal/auc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/auo;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/auo;->b:Lcom/google/android/gms/internal/auh;

    iget-object v4, p0, Lcom/google/android/gms/internal/auo;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/auo;->d:Lcom/google/android/gms/internal/bfw;

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/auc;->a(Landroid/content/Context;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;I)Lcom/google/android/gms/internal/avj;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/auo;->e:Lcom/google/android/gms/internal/aul;

    iget-object v1, p0, Lcom/google/android/gms/internal/auo;->a:Landroid/content/Context;

    const-string v2, "interstitial"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/aul;->a(Lcom/google/android/gms/internal/aul;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/aww;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aww;-><init>()V

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/avs;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/auo;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/b/c;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/auo;->b:Lcom/google/android/gms/internal/auh;

    iget-object v4, p0, Lcom/google/android/gms/internal/auo;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/auo;->d:Lcom/google/android/gms/internal/bfw;

    const v6, 0xba5338

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/avs;->createInterstitialAdManager(Lcom/google/android/gms/b/a;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;I)Lcom/google/android/gms/internal/avj;

    move-result-object p1

    return-object p1
.end method

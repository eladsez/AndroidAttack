.class final Lcom/google/android/gms/internal/aup;
.super Lcom/google/android/gms/internal/aul$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/aul$a<",
        "Lcom/google/android/gms/internal/ave;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/google/android/gms/internal/bfw;

.field private synthetic d:Lcom/google/android/gms/internal/aul;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aul;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aup;->d:Lcom/google/android/gms/internal/aul;

    iput-object p2, p0, Lcom/google/android/gms/internal/aup;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/aup;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/aup;->c:Lcom/google/android/gms/internal/bfw;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aul$a;-><init>(Lcom/google/android/gms/internal/aul;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/aup;->d:Lcom/google/android/gms/internal/aul;

    invoke-static {v0}, Lcom/google/android/gms/internal/aul;->c(Lcom/google/android/gms/internal/aul;)Lcom/google/android/gms/internal/aub;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aup;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/aup;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/aup;->c:Lcom/google/android/gms/internal/bfw;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/aub;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;)Lcom/google/android/gms/internal/ave;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aup;->d:Lcom/google/android/gms/internal/aul;

    iget-object v1, p0, Lcom/google/android/gms/internal/aup;->a:Landroid/content/Context;

    const-string v2, "native_ad"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/aul;->a(Lcom/google/android/gms/internal/aul;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/aws;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aws;-><init>()V

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/avs;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/aup;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/b/c;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aup;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/aup;->c:Lcom/google/android/gms/internal/bfw;

    const v3, 0xba5338

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/avs;->createAdLoaderBuilder(Lcom/google/android/gms/b/a;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;I)Lcom/google/android/gms/internal/ave;

    move-result-object p1

    return-object p1
.end method

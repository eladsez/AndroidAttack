.class final Lcom/google/android/gms/internal/ch;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/google/android/gms/internal/cf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cf;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ch;->c:Lcom/google/android/gms/internal/cf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ch;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/ch;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ch;->c:Lcom/google/android/gms/internal/cf;

    invoke-static {}, Lcom/google/android/gms/internal/cf;->f()Lcom/google/android/gms/ads/internal/js/z;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/js/z;->b(Lcom/google/android/gms/internal/zk;)Lcom/google/android/gms/ads/internal/js/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cf;->a(Lcom/google/android/gms/internal/cf;Lcom/google/android/gms/ads/internal/js/b;)Lcom/google/android/gms/ads/internal/js/b;

    iget-object v0, p0, Lcom/google/android/gms/internal/ch;->c:Lcom/google/android/gms/internal/cf;

    invoke-static {v0}, Lcom/google/android/gms/internal/cf;->b(Lcom/google/android/gms/internal/cf;)Lcom/google/android/gms/ads/internal/js/b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ci;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ci;-><init>(Lcom/google/android/gms/internal/ch;)V

    new-instance v2, Lcom/google/android/gms/internal/cj;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/cj;-><init>(Lcom/google/android/gms/internal/ch;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/lw;->a(Lcom/google/android/gms/internal/lv;Lcom/google/android/gms/internal/lt;)V

    return-void
.end method

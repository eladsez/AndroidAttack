.class final Lcom/google/android/gms/internal/jd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/kp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/kp<",
        "Ljava/lang/Throwable;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/jh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jb;Lcom/google/android/gms/internal/jh;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/internal/lf;
    .locals 2

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "Error occurred while dispatching http response in getter."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object v0

    const-string v1, "HttpGetter.deliverResponse.1"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/gq;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/jh;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ku;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/le;

    move-result-object p1

    return-object p1
.end method

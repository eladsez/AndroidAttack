.class final Lcom/google/android/gms/internal/nk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/nj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nk;->a:Lcom/google/android/gms/internal/nj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->y()Lcom/google/android/gms/internal/nl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/nk;->a:Lcom/google/android/gms/internal/nj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/nl;->b(Lcom/google/android/gms/internal/nj;)V

    return-void
.end method

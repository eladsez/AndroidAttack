.class final Lcom/google/android/gms/internal/bjj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/lq;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/google/android/gms/internal/bji;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bji;Lcom/google/android/gms/internal/lq;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bjj;->c:Lcom/google/android/gms/internal/bji;

    iput-object p2, p0, Lcom/google/android/gms/internal/bjj;->a:Lcom/google/android/gms/internal/lq;

    iput-object p3, p0, Lcom/google/android/gms/internal/bjj;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bjj;->a:Lcom/google/android/gms/internal/lq;

    iget-object v1, p0, Lcom/google/android/gms/internal/bjj;->c:Lcom/google/android/gms/internal/bji;

    invoke-static {v1}, Lcom/google/android/gms/internal/bji;->a(Lcom/google/android/gms/internal/bji;)Lcom/google/android/gms/ads/internal/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/ad;->K()Landroid/support/v4/g/m;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bjj;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/bbq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lq;->b(Ljava/lang/Object;)V

    return-void
.end method

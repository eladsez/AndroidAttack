.class final Lcom/google/android/gms/internal/wr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/we;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/we;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/wr;->a:Lcom/google/android/gms/internal/we;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/wr;->a:Lcom/google/android/gms/internal/we;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wc;->Q()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->D()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "Resetting analytics data (FE)"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->i()Lcom/google/android/gms/internal/wz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wz;->A()V

    return-void
.end method

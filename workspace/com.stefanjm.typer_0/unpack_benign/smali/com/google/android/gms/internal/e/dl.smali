.class final Lcom/google/android/gms/internal/e/dl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/e/df;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/df;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/dl;->a:Lcom/google/android/gms/internal/e/df;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/e/dl;->a:Lcom/google/android/gms/internal/e/df;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dd;->Q()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->D()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Resetting analytics data (FE)"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/e/df;->q:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/ce;->C()Z

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->v()Lcom/google/android/gms/internal/e/aa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/aa;->x()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->u()Lcom/google/android/gms/internal/e/bk;

    move-result-object v2

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/e/bk;->d(Z)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->i()Lcom/google/android/gms/internal/e/ee;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/ee;->A()V

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/e/df;->b:Z

    return-void
.end method

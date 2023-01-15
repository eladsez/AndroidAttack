.class final Lcom/google/android/gms/internal/e/cg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/e/v;

.field private final synthetic b:Lcom/google/android/gms/internal/e/ce;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/ce;Lcom/google/android/gms/internal/e/v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/cg;->b:Lcom/google/android/gms/internal/e/ce;

    iput-object p2, p0, Lcom/google/android/gms/internal/e/cg;->a:Lcom/google/android/gms/internal/e/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/e/cg;->b:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->c()Lcom/google/android/gms/internal/e/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/e/cg;->a:Lcom/google/android/gms/internal/e/v;

    iget-object v1, v1, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/aa;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/e/cg;->b:Lcom/google/android/gms/internal/e/ce;

    iget-object v1, p0, Lcom/google/android/gms/internal/e/cg;->a:Lcom/google/android/gms/internal/e/v;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/e/ce;->a(Lcom/google/android/gms/internal/e/ce;Lcom/google/android/gms/internal/e/v;)Lcom/google/android/gms/internal/e/u;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/e/cg;->b:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/e/cg;->a:Lcom/google/android/gms/internal/e/v;

    iget-object v1, v1, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/ab;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/e/u;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/cg;->b:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "App info was null when attempting to get app instance id"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/u;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

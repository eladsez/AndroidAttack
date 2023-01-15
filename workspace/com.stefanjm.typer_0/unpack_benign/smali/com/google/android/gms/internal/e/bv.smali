.class final Lcom/google/android/gms/internal/e/bv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/e/ce;

.field private final synthetic b:Lcom/google/android/gms/internal/e/az;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/bu;Lcom/google/android/gms/internal/e/ce;Lcom/google/android/gms/internal/e/az;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/e/bv;->a:Lcom/google/android/gms/internal/e/ce;

    iput-object p3, p0, Lcom/google/android/gms/internal/e/bv;->b:Lcom/google/android/gms/internal/e/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/e/bv;->a:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->j()Lcom/google/android/gms/internal/e/bq;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/e/bv;->b:Lcom/google/android/gms/internal/e/az;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "Install Referrer Reporter is null"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/e/bv;->a:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->j()Lcom/google/android/gms/internal/e/bq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/bq;->a()V

    return-void
.end method

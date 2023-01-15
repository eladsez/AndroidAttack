.class final Lcom/google/android/gms/internal/e/fk;
.super Lcom/google/android/gms/internal/e/af;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/e/ce;

.field private final synthetic b:Lcom/google/android/gms/internal/e/fj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/fj;Lcom/google/android/gms/internal/e/ce;Lcom/google/android/gms/internal/e/ce;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/fk;->b:Lcom/google/android/gms/internal/e/fj;

    iput-object p3, p0, Lcom/google/android/gms/internal/e/fk;->a:Lcom/google/android/gms/internal/e/ce;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/e/af;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/e/fk;->b:Lcom/google/android/gms/internal/e/fj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/fj;->y()V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/fk;->b:Lcom/google/android/gms/internal/e/fj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "Starting upload from DelayedRunnable"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/fk;->a:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->F()V

    return-void
.end method

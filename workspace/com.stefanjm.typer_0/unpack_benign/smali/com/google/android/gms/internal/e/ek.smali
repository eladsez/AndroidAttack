.class final Lcom/google/android/gms/internal/e/ek;
.super Lcom/google/android/gms/internal/e/af;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/e/ee;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/ee;Lcom/google/android/gms/internal/e/ce;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/ek;->a:Lcom/google/android/gms/internal/e/ee;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/e/af;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ek;->a:Lcom/google/android/gms/internal/e/ee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "Tasks have been queued for a long time"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    return-void
.end method

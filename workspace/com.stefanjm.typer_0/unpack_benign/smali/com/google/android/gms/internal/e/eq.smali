.class final Lcom/google/android/gms/internal/e/eq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Lcom/google/android/gms/internal/e/fl;

.field private final synthetic c:Lcom/google/android/gms/internal/e/v;

.field private final synthetic d:Lcom/google/android/gms/internal/e/ee;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/ee;ZLcom/google/android/gms/internal/e/fl;Lcom/google/android/gms/internal/e/v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/eq;->d:Lcom/google/android/gms/internal/e/ee;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/e/eq;->a:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/e/eq;->b:Lcom/google/android/gms/internal/e/fl;

    iput-object p4, p0, Lcom/google/android/gms/internal/e/eq;->c:Lcom/google/android/gms/internal/e/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/e/eq;->d:Lcom/google/android/gms/internal/e/ee;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/ee;->d(Lcom/google/android/gms/internal/e/ee;)Lcom/google/android/gms/internal/e/ar;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/e/eq;->d:Lcom/google/android/gms/internal/e/ee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "Discarding data. Failed to set user attribute"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/e/eq;->d:Lcom/google/android/gms/internal/e/ee;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/e/eq;->a:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/e/eq;->b:Lcom/google/android/gms/internal/e/fl;

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/e/eq;->c:Lcom/google/android/gms/internal/e/v;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/e/ee;->a(Lcom/google/android/gms/internal/e/ar;Lcom/google/android/gms/common/internal/a/a;Lcom/google/android/gms/internal/e/v;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/eq;->d:Lcom/google/android/gms/internal/e/ee;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/ee;->e(Lcom/google/android/gms/internal/e/ee;)V

    return-void
.end method

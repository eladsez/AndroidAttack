.class final Lcom/google/android/gms/internal/e/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/e/ce;

.field private final synthetic b:Lcom/google/android/gms/internal/e/af;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/af;Lcom/google/android/gms/internal/e/ce;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/ag;->b:Lcom/google/android/gms/internal/e/af;

    iput-object p2, p0, Lcom/google/android/gms/internal/e/ag;->a:Lcom/google/android/gms/internal/e/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ag;->a:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    invoke-static {}, Lcom/google/android/gms/internal/e/bz;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ag;->b:Lcom/google/android/gms/internal/e/af;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/af;->a(Lcom/google/android/gms/internal/e/af;)Lcom/google/android/gms/internal/e/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/e/bz;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/e/ag;->b:Lcom/google/android/gms/internal/e/af;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/af;->b()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/e/ag;->b:Lcom/google/android/gms/internal/e/af;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/e/af;->a(Lcom/google/android/gms/internal/e/af;J)J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ag;->b:Lcom/google/android/gms/internal/e/af;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/af;->b(Lcom/google/android/gms/internal/e/af;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ag;->b:Lcom/google/android/gms/internal/e/af;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/af;->a()V

    :cond_1
    return-void
.end method

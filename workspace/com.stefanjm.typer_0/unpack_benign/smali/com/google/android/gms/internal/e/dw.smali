.class final Lcom/google/android/gms/internal/e/dw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:J

.field private final synthetic b:Lcom/google/android/gms/internal/e/df;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/df;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/dw;->b:Lcom/google/android/gms/internal/e/df;

    iput-wide p2, p0, Lcom/google/android/gms/internal/e/dw;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/e/dw;->b:Lcom/google/android/gms/internal/e/df;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->u()Lcom/google/android/gms/internal/e/bk;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/e/bk;->l:Lcom/google/android/gms/internal/e/bn;

    iget-wide v1, p0, Lcom/google/android/gms/internal/e/dw;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/e/bn;->a(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/dw;->b:Lcom/google/android/gms/internal/e/df;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->D()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "Session timeout duration set"

    iget-wide v2, p0, Lcom/google/android/gms/internal/e/dw;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

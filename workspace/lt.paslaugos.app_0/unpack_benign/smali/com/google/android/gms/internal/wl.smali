.class final Lcom/google/android/gms/internal/wl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:J

.field private synthetic b:Lcom/google/android/gms/internal/we;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/we;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/wl;->b:Lcom/google/android/gms/internal/we;

    iput-wide p2, p0, Lcom/google/android/gms/internal/wl;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/wl;->b:Lcom/google/android/gms/internal/we;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->u()Lcom/google/android/gms/internal/um;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/um;->k:Lcom/google/android/gms/internal/up;

    iget-wide v1, p0, Lcom/google/android/gms/internal/wl;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/up;->a(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/wl;->b:Lcom/google/android/gms/internal/we;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->D()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Session timeout duration set"

    iget-wide v2, p0, Lcom/google/android/gms/internal/wl;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.class final Lcom/google/android/gms/internal/xf;
.super Lcom/google/android/gms/internal/tg;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/wz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/vc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/xf;->a:Lcom/google/android/gms/internal/wz;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/tg;-><init>(Lcom/google/android/gms/internal/vc;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->a:Lcom/google/android/gms/internal/wz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Tasks have been queued for a long time"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    return-void
.end method

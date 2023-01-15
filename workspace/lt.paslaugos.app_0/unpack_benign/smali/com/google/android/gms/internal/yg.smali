.class final Lcom/google/android/gms/internal/yg;
.super Lcom/google/android/gms/internal/tg;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/vc;

.field private synthetic b:Lcom/google/android/gms/internal/yf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/yf;Lcom/google/android/gms/internal/vc;Lcom/google/android/gms/internal/vc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/yg;->b:Lcom/google/android/gms/internal/yf;

    iput-object p3, p0, Lcom/google/android/gms/internal/yg;->a:Lcom/google/android/gms/internal/vc;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/tg;-><init>(Lcom/google/android/gms/internal/vc;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/yg;->b:Lcom/google/android/gms/internal/yf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/yf;->y()V

    iget-object v0, p0, Lcom/google/android/gms/internal/yg;->b:Lcom/google/android/gms/internal/yf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Starting upload from DelayedRunnable"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/yg;->a:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->E()V

    return-void
.end method

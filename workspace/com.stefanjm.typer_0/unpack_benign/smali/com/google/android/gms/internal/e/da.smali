.class final Lcom/google/android/gms/internal/e/da;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/e/v;

.field private final synthetic b:Lcom/google/android/gms/internal/e/cj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/cj;Lcom/google/android/gms/internal/e/v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/da;->b:Lcom/google/android/gms/internal/e/cj;

    iput-object p2, p0, Lcom/google/android/gms/internal/e/da;->a:Lcom/google/android/gms/internal/e/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/e/da;->b:Lcom/google/android/gms/internal/e/cj;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/cj;->a(Lcom/google/android/gms/internal/e/cj;)Lcom/google/android/gms/internal/e/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->H()V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/da;->b:Lcom/google/android/gms/internal/e/cj;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/cj;->a(Lcom/google/android/gms/internal/e/cj;)Lcom/google/android/gms/internal/e/ce;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/e/da;->a:Lcom/google/android/gms/internal/e/v;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/ce;->d(Lcom/google/android/gms/internal/e/v;)V

    return-void
.end method

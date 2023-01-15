.class final Lcom/google/android/gms/internal/e/cx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/e/fl;

.field private final synthetic b:Lcom/google/android/gms/internal/e/v;

.field private final synthetic c:Lcom/google/android/gms/internal/e/cj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/cj;Lcom/google/android/gms/internal/e/fl;Lcom/google/android/gms/internal/e/v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/cx;->c:Lcom/google/android/gms/internal/e/cj;

    iput-object p2, p0, Lcom/google/android/gms/internal/e/cx;->a:Lcom/google/android/gms/internal/e/fl;

    iput-object p3, p0, Lcom/google/android/gms/internal/e/cx;->b:Lcom/google/android/gms/internal/e/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/e/cx;->c:Lcom/google/android/gms/internal/e/cj;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/cj;->a(Lcom/google/android/gms/internal/e/cj;)Lcom/google/android/gms/internal/e/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->H()V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/cx;->c:Lcom/google/android/gms/internal/e/cj;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/cj;->a(Lcom/google/android/gms/internal/e/cj;)Lcom/google/android/gms/internal/e/ce;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/e/cx;->a:Lcom/google/android/gms/internal/e/fl;

    iget-object v2, p0, Lcom/google/android/gms/internal/e/cx;->b:Lcom/google/android/gms/internal/e/v;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/e/ce;->b(Lcom/google/android/gms/internal/e/fl;Lcom/google/android/gms/internal/e/v;)V

    return-void
.end method

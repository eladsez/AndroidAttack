.class final Lcom/google/android/gms/internal/e/cw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/e/an;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/google/android/gms/internal/e/cj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/cj;Lcom/google/android/gms/internal/e/an;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/cw;->c:Lcom/google/android/gms/internal/e/cj;

    iput-object p2, p0, Lcom/google/android/gms/internal/e/cw;->a:Lcom/google/android/gms/internal/e/an;

    iput-object p3, p0, Lcom/google/android/gms/internal/e/cw;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/e/cw;->c:Lcom/google/android/gms/internal/e/cj;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/cj;->a(Lcom/google/android/gms/internal/e/cj;)Lcom/google/android/gms/internal/e/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->H()V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/cw;->c:Lcom/google/android/gms/internal/e/cj;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/cj;->a(Lcom/google/android/gms/internal/e/cj;)Lcom/google/android/gms/internal/e/ce;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/e/cw;->a:Lcom/google/android/gms/internal/e/an;

    iget-object v2, p0, Lcom/google/android/gms/internal/e/cw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/e/ce;->b(Lcom/google/android/gms/internal/e/an;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

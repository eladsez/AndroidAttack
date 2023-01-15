.class final Lcom/google/android/gms/internal/e/cr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/google/android/gms/internal/e/y;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/e/v;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/google/android/gms/internal/e/cj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/cj;Lcom/google/android/gms/internal/e/v;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/cr;->d:Lcom/google/android/gms/internal/e/cj;

    iput-object p2, p0, Lcom/google/android/gms/internal/e/cr;->a:Lcom/google/android/gms/internal/e/v;

    iput-object p3, p0, Lcom/google/android/gms/internal/e/cr;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/e/cr;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/e/cr;->d:Lcom/google/android/gms/internal/e/cj;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/cj;->a(Lcom/google/android/gms/internal/e/cj;)Lcom/google/android/gms/internal/e/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->H()V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/cr;->d:Lcom/google/android/gms/internal/e/cj;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/cj;->a(Lcom/google/android/gms/internal/e/cj;)Lcom/google/android/gms/internal/e/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/e/cr;->a:Lcom/google/android/gms/internal/e/v;

    iget-object v1, v1, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/e/cr;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/e/cr;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/e/ab;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

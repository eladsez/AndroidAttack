.class final Lcom/google/android/gms/common/api/internal/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/common/api/internal/ab;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/ac;->a:Lcom/google/android/gms/common/api/internal/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ac;->a:Lcom/google/android/gms/common/api/internal/ab;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ab;->a(Lcom/google/android/gms/common/api/internal/ab;)Lcom/google/android/gms/common/api/internal/ae;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/a;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/a;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/ae;->b(Lcom/google/android/gms/common/a;)V

    return-void
.end method

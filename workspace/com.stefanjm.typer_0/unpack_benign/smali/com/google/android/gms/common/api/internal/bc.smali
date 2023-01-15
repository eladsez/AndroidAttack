.class final Lcom/google/android/gms/common/api/internal/bc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/b;

.field private final synthetic b:Lcom/google/android/gms/common/api/internal/e$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/e$a;Lcom/google/android/gms/common/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bc;->b:Lcom/google/android/gms/common/api/internal/e$a;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/bc;->a:Lcom/google/android/gms/common/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bc;->b:Lcom/google/android/gms/common/api/internal/e$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bc;->a:Lcom/google/android/gms/common/b;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/e$a;->a(Lcom/google/android/gms/common/b;)V

    return-void
.end method

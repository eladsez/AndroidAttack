.class final Lcom/google/android/gms/internal/e/ec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/e/ed;

.field private final synthetic b:Lcom/google/android/gms/internal/e/ea;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/ea;Lcom/google/android/gms/internal/e/ed;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/ec;->b:Lcom/google/android/gms/internal/e/ea;

    iput-object p2, p0, Lcom/google/android/gms/internal/e/ec;->a:Lcom/google/android/gms/internal/e/ed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ec;->b:Lcom/google/android/gms/internal/e/ea;

    iget-object v1, p0, Lcom/google/android/gms/internal/e/ec;->a:Lcom/google/android/gms/internal/e/ed;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/e/ea;->a(Lcom/google/android/gms/internal/e/ea;Lcom/google/android/gms/internal/e/ed;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ec;->b:Lcom/google/android/gms/internal/e/ea;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/e/ea;->a:Lcom/google/android/gms/internal/e/ed;

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ec;->b:Lcom/google/android/gms/internal/e/ea;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->i()Lcom/google/android/gms/internal/e/ee;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/ee;->a(Lcom/google/android/gms/internal/e/dz;)V

    return-void
.end method

.class final Lcom/google/android/gms/internal/e/ex;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/e/es;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/es;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/ex;->a:Lcom/google/android/gms/internal/e/es;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ex;->a:Lcom/google/android/gms/internal/e/es;

    iget-object v0, v0, Lcom/google/android/gms/internal/e/es;->a:Lcom/google/android/gms/internal/e/ee;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/e/ee;->a(Lcom/google/android/gms/internal/e/ee;Lcom/google/android/gms/internal/e/ar;)Lcom/google/android/gms/internal/e/ar;

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ex;->a:Lcom/google/android/gms/internal/e/es;

    iget-object v0, v0, Lcom/google/android/gms/internal/e/es;->a:Lcom/google/android/gms/internal/e/ee;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/ee;->b(Lcom/google/android/gms/internal/e/ee;)V

    return-void
.end method

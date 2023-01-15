.class final Lcom/google/android/gms/internal/e/fb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/e/ce;

.field private final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/ey;Lcom/google/android/gms/internal/e/ce;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/e/fb;->a:Lcom/google/android/gms/internal/e/ce;

    iput-object p3, p0, Lcom/google/android/gms/internal/e/fb;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/e/fb;->a:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->H()V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/fb;->a:Lcom/google/android/gms/internal/e/ce;

    iget-object v1, p0, Lcom/google/android/gms/internal/e/fb;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/ce;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/fb;->a:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->F()V

    return-void
.end method

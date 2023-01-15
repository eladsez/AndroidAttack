.class final synthetic Lcom/google/android/gms/internal/e/ez;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/e/ey;

.field private final b:I

.field private final c:Lcom/google/android/gms/internal/e/az;

.field private final d:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/ey;ILcom/google/android/gms/internal/e/az;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/e/ez;->a:Lcom/google/android/gms/internal/e/ey;

    iput p2, p0, Lcom/google/android/gms/internal/e/ez;->b:I

    iput-object p3, p0, Lcom/google/android/gms/internal/e/ez;->c:Lcom/google/android/gms/internal/e/az;

    iput-object p4, p0, Lcom/google/android/gms/internal/e/ez;->d:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ez;->a:Lcom/google/android/gms/internal/e/ey;

    iget v1, p0, Lcom/google/android/gms/internal/e/ez;->b:I

    iget-object v2, p0, Lcom/google/android/gms/internal/e/ez;->c:Lcom/google/android/gms/internal/e/az;

    iget-object v3, p0, Lcom/google/android/gms/internal/e/ez;->d:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/e/ey;->a(ILcom/google/android/gms/internal/e/az;Landroid/content/Intent;)V

    return-void
.end method

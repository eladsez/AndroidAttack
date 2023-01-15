.class final Lcom/google/android/gms/internal/baa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/azf;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Lcom/google/android/gms/internal/azy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/azy;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/baa;->b:Lcom/google/android/gms/internal/azy;

    iput-object p2, p0, Lcom/google/android/gms/internal/baa;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/baa;->b:Lcom/google/android/gms/internal/azy;

    sget-object v1, Lcom/google/android/gms/internal/azy;->a:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/azy;->a(Lcom/google/android/gms/internal/azy;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/baa;->b:Lcom/google/android/gms/internal/azy;

    iget-object v1, p0, Lcom/google/android/gms/internal/baa;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/azy;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/baa;->b:Lcom/google/android/gms/internal/azy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/azy;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return-void
.end method

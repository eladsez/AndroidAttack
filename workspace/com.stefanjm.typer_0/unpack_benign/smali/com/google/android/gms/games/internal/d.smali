.class public Lcom/google/android/gms/games/internal/d;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/google/android/gms/games/internal/j;

.field protected b:Lcom/google/android/gms/games/internal/f;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/games/internal/j;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/d;->a:Lcom/google/android/gms/games/internal/j;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/games/internal/d;->a(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/internal/j;ILcom/google/android/gms/games/internal/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/internal/d;-><init>(Lcom/google/android/gms/games/internal/j;I)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/games/internal/j;I)Lcom/google/android/gms/games/internal/d;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/util/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/games/internal/g;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/g;-><init>(Lcom/google/android/gms/games/internal/j;I)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/games/internal/d;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/d;-><init>(Lcom/google/android/gms/games/internal/j;I)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/d;->a:Lcom/google/android/gms/games/internal/j;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/d;->b:Lcom/google/android/gms/games/internal/f;

    iget-object v1, v1, Lcom/google/android/gms/games/internal/f;->a:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/d;->b:Lcom/google/android/gms/games/internal/f;

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/f;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/games/internal/j;->a(Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method protected a(I)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/games/internal/f;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/games/internal/f;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/games/internal/e;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/d;->b:Lcom/google/android/gms/games/internal/f;

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.class final Lcom/google/android/gms/d/e;
.super Landroid/database/ContentObserver;


# instance fields
.field private synthetic a:Lcom/google/android/gms/d/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/d/d;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/d/e;->a:Lcom/google/android/gms/d/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/d/e;->a:Lcom/google/android/gms/d/d;

    invoke-virtual {p1}, Lcom/google/android/gms/d/d;->b()V

    return-void
.end method

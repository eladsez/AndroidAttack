.class final Lcom/google/android/gms/common/api/internal/cl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/internal/cj;

.field private final b:Lcom/google/android/gms/common/api/internal/ck;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/cj;Lcom/google/android/gms/common/api/internal/ck;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/cl;->a:Lcom/google/android/gms/common/api/internal/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/cl;->b:Lcom/google/android/gms/common/api/internal/ck;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cl;->a:Lcom/google/android/gms/common/api/internal/cj;

    iget-boolean v0, v0, Lcom/google/android/gms/common/api/internal/cj;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cl;->b:Lcom/google/android/gms/common/api/internal/ck;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ck;->b()Lcom/google/android/gms/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cl;->a:Lcom/google/android/gms/common/api/internal/cj;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/cj;->a:Lcom/google/android/gms/common/api/internal/i;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/cl;->a:Lcom/google/android/gms/common/api/internal/cj;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/b;->d()Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/cl;->b:Lcom/google/android/gms/common/api/internal/ck;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/ck;->a()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/i;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cl;->a:Lcom/google/android/gms/common/api/internal/cj;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/cj;->d:Lcom/google/android/gms/common/g;

    invoke-virtual {v0}, Lcom/google/android/gms/common/b;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/h;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cl;->a:Lcom/google/android/gms/common/api/internal/cj;

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/cj;->d:Lcom/google/android/gms/common/g;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cl;->a:Lcom/google/android/gms/common/api/internal/cj;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a()Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cl;->a:Lcom/google/android/gms/common/api/internal/cj;

    iget-object v4, v1, Lcom/google/android/gms/common/api/internal/cj;->a:Lcom/google/android/gms/common/api/internal/i;

    invoke-virtual {v0}, Lcom/google/android/gms/common/b;->c()I

    move-result v5

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/cl;->a:Lcom/google/android/gms/common/api/internal/cj;

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/common/g;->a(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/i;IILandroid/content/DialogInterface$OnCancelListener;)Z

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/common/b;->c()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cl;->a:Lcom/google/android/gms/common/api/internal/cj;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/cj;->d:Lcom/google/android/gms/common/g;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cl;->a:Lcom/google/android/gms/common/api/internal/cj;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/cl;->a:Lcom/google/android/gms/common/api/internal/cj;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/g;->a(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cl;->a:Lcom/google/android/gms/common/api/internal/cj;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/cj;->d:Lcom/google/android/gms/common/g;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/cl;->a:Lcom/google/android/gms/common/api/internal/cj;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/api/internal/cm;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/common/api/internal/cm;-><init>(Lcom/google/android/gms/common/api/internal/cl;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/g;->a(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/f$a;)Lcom/google/android/gms/common/api/internal/f;

    return-void

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cl;->a:Lcom/google/android/gms/common/api/internal/cj;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/cl;->b:Lcom/google/android/gms/common/api/internal/ck;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/ck;->a()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/cj;->a(Lcom/google/android/gms/common/b;I)V

    return-void
.end method

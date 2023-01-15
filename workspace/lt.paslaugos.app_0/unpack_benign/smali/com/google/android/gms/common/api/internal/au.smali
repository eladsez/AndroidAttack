.class final Lcom/google/android/gms/common/api/internal/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/internal/as;

.field private final b:Lcom/google/android/gms/common/api/internal/at;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/as;Lcom/google/android/gms/common/api/internal/at;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/au;->a:Lcom/google/android/gms/common/api/internal/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/au;->b:Lcom/google/android/gms/common/api/internal/at;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/au;->a:Lcom/google/android/gms/common/api/internal/as;

    iget-boolean v0, v0, Lcom/google/android/gms/common/api/internal/as;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/au;->b:Lcom/google/android/gms/common/api/internal/at;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/at;->b()Lcom/google/android/gms/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/au;->a:Lcom/google/android/gms/common/api/internal/as;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/as;->a:Lcom/google/android/gms/common/api/internal/v;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/au;->a:Lcom/google/android/gms/common/api/internal/as;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/a;->d()Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/au;->b:Lcom/google/android/gms/common/api/internal/at;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/at;->a()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/v;->a(Landroid/content/Intent;I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/au;->a:Lcom/google/android/gms/common/api/internal/as;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/as;->d:Lcom/google/android/gms/common/c;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/l;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/au;->a:Lcom/google/android/gms/common/api/internal/as;

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/as;->d:Lcom/google/android/gms/common/c;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/au;->a:Lcom/google/android/gms/common/api/internal/as;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a()Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/au;->a:Lcom/google/android/gms/common/api/internal/as;

    iget-object v4, v1, Lcom/google/android/gms/common/api/internal/as;->a:Lcom/google/android/gms/common/api/internal/v;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a;->c()I

    move-result v5

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/au;->a:Lcom/google/android/gms/common/api/internal/as;

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/common/c;->a(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/v;IILandroid/content/DialogInterface$OnCancelListener;)Z

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/common/a;->c()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/au;->a:Lcom/google/android/gms/common/api/internal/as;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/au;->a:Lcom/google/android/gms/common/api/internal/as;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/c;->a(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/au;->a:Lcom/google/android/gms/common/api/internal/as;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/internal/av;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/common/api/internal/av;-><init>(Lcom/google/android/gms/common/api/internal/au;Landroid/app/Dialog;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/common/c;->a(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/r;)Lcom/google/android/gms/common/api/internal/q;

    return-void

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/au;->a:Lcom/google/android/gms/common/api/internal/as;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/au;->b:Lcom/google/android/gms/common/api/internal/at;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/at;->a()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/as;->a(Lcom/google/android/gms/common/a;I)V

    return-void
.end method

.class final Lcom/google/android/gms/common/api/internal/av;
.super Lcom/google/android/gms/common/api/internal/r;


# instance fields
.field private synthetic a:Landroid/app/Dialog;

.field private synthetic b:Lcom/google/android/gms/common/api/internal/au;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/au;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/av;->b:Lcom/google/android/gms/common/api/internal/au;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/av;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/av;->b:Lcom/google/android/gms/common/api/internal/au;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/au;->a:Lcom/google/android/gms/common/api/internal/as;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/as;->c()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/av;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/av;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

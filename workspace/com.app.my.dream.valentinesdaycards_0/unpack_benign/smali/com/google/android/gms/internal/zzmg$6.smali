.class Lcom/google/android/gms/internal/zzmg$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzmg;->stopAutoManage(Landroid/support/v4/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzagC:Landroid/support/v4/app/FragmentActivity;

.field final synthetic zzagy:Lcom/google/android/gms/internal/zzmg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmg;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmg$6;->zzagy:Lcom/google/android/gms/internal/zzmg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzmg$6;->zzagC:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmg$6;->zzagC:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmg$6;->zzagC:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmg$6;->zzagC:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmr;->zzb(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/internal/zzmr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmg$6;->zzagy:Lcom/google/android/gms/internal/zzmg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzmg;->zze(Lcom/google/android/gms/internal/zzmg;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzmr;->zzbE(I)V

    goto :goto_0
.end method

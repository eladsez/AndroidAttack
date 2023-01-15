.class final Lcom/google/android/gms/internal/xr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/xn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/xr;->a:Lcom/google/android/gms/internal/xn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/xr;->a:Lcom/google/android/gms/internal/xn;

    iget-object v0, v0, Lcom/google/android/gms/internal/xn;->a:Lcom/google/android/gms/internal/wz;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/google/android/gms/internal/xr;->a:Lcom/google/android/gms/internal/xn;

    iget-object v2, v2, Lcom/google/android/gms/internal/xn;->a:Lcom/google/android/gms/internal/wz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wb;->l()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/wz;->a(Lcom/google/android/gms/internal/wz;Landroid/content/ComponentName;)V

    return-void
.end method

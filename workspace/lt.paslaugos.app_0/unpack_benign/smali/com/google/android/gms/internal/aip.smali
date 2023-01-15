.class public final Lcom/google/android/gms/internal/aip;
.super Lcom/google/android/gms/internal/aix;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ajk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ajk;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aix;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/aip;->a:Lcom/google/android/gms/internal/ajk;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/aip;->a:Lcom/google/android/gms/internal/ajk;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "FirebasePerformance"

    const-string v3, "ApplicationInfo is null"

    :goto_0
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aip;->a:Lcom/google/android/gms/internal/ajk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajk;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "FirebasePerformance"

    const-string v3, "GoogleAppId is null"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aip;->a:Lcom/google/android/gms/internal/ajk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajk;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "FirebasePerformance"

    const-string v3, "AppInstanceId is null"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/aip;->a:Lcom/google/android/gms/internal/ajk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajk;->d:Ljava/lang/Integer;

    if-nez v0, :cond_3

    const-string v0, "FirebasePerformance"

    const-string v3, "ApplicationProcessState is null"

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/aip;->a:Lcom/google/android/gms/internal/ajk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajk;->c:Lcom/google/android/gms/internal/ajj;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/aip;->a:Lcom/google/android/gms/internal/ajk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajk;->c:Lcom/google/android/gms/internal/ajj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajj;->a:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "FirebasePerformance"

    const-string v3, "AndroidAppInfo.packageName is null"

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/aip;->a:Lcom/google/android/gms/internal/ajk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajk;->c:Lcom/google/android/gms/internal/ajj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajj;->b:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, "FirebasePerformance"

    const-string v3, "AndroidAppInfo.sdkVersion is null"

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_6

    const-string v0, "FirebasePerformance"

    const-string v1, "ApplicationInfo is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6
    return v1
.end method

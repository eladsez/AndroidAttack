.class public final Lcom/google/android/gms/common/n;
.super Lcom/google/android/gms/common/o;


# static fields
.field public static final a:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/gms/common/o;->b:I

    sput v0, Lcom/google/android/gms/common/n;->a:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/common/o;->d(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

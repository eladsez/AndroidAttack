.class public final Lcom/google/android/gms/internal/jt;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# static fields
.field private static b:Lcom/google/android/gms/internal/jt;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/jt;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/jt;->b:Lcom/google/android/gms/internal/jt;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/jt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jt;->b:Lcom/google/android/gms/internal/jt;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/jt;->b:Lcom/google/android/gms/internal/jt;

    return-object v0
.end method

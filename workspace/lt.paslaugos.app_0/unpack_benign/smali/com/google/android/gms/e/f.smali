.class public final Lcom/google/android/gms/e/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/e/f$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/e/f$a;

    invoke-direct {v0}, Lcom/google/android/gms/e/f$a;-><init>()V

    sput-object v0, Lcom/google/android/gms/e/f;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/e/n;

    invoke-direct {v0}, Lcom/google/android/gms/e/n;-><init>()V

    sput-object v0, Lcom/google/android/gms/e/f;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

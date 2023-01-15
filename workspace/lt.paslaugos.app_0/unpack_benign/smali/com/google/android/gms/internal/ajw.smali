.class public abstract Lcom/google/android/gms/internal/ajw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/amg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/google/android/gms/internal/alx;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/amg<",
        "TMessageType;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/akq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/akq;->a()Lcom/google/android/gms/internal/akq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ajw;->a:Lcom/google/android/gms/internal/akq;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

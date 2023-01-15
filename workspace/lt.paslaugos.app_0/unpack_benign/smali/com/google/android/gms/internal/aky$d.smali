.class public abstract Lcom/google/android/gms/internal/aky$d;
.super Lcom/google/android/gms/internal/aky;

# interfaces
.implements Lcom/google/android/gms/internal/alz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/aky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/aky$d<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/aky<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/alz;"
    }
.end annotation


# instance fields
.field protected d:Lcom/google/android/gms/internal/aku;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/aku<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/aky;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/aku;->a()Lcom/google/android/gms/internal/aku;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aky$d;->d:Lcom/google/android/gms/internal/aku;

    return-void
.end method

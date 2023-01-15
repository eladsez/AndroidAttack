.class public Lcom/ievyhrdnoniovof/AdController$Properties;
.super Lcom/ievyhrdnoniovof/AdController$ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ievyhrdnoniovof/AdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final M:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ievyhrdnoniovof/AdController$Properties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public k:Z

.field public l:I

.field public m:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ievyhrdnoniovof/AdController$Properties$1;

    invoke-direct {v0}, Lcom/ievyhrdnoniovof/AdController$Properties$1;-><init>()V

    sput-object v0, Lcom/ievyhrdnoniovof/AdController$Properties;->M:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController$ReflectedParcelable;-><init>()V

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdController$Properties;->k:Z

    iput v1, p0, Lcom/ievyhrdnoniovof/AdController$Properties;->l:I

    iput v0, p0, Lcom/ievyhrdnoniovof/AdController$Properties;->m:F

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/ievyhrdnoniovof/AdController$ReflectedParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

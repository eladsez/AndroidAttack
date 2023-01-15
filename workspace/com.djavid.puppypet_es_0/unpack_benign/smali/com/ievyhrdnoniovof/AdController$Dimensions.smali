.class public Lcom/ievyhrdnoniovof/AdController$Dimensions;
.super Lcom/ievyhrdnoniovof/AdController$ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ievyhrdnoniovof/AdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dimensions"
.end annotation


# static fields
.field public static final l:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ievyhrdnoniovof/AdController$Dimensions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public E:I

.field public M:I

.field public k:I

.field public m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ievyhrdnoniovof/AdController$Dimensions$1;

    invoke-direct {v0}, Lcom/ievyhrdnoniovof/AdController$Dimensions$1;-><init>()V

    sput-object v0, Lcom/ievyhrdnoniovof/AdController$Dimensions;->l:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdController$ReflectedParcelable;-><init>()V

    iput v0, p0, Lcom/ievyhrdnoniovof/AdController$Dimensions;->k:I

    iput v0, p0, Lcom/ievyhrdnoniovof/AdController$Dimensions;->E:I

    iput v0, p0, Lcom/ievyhrdnoniovof/AdController$Dimensions;->M:I

    iput v0, p0, Lcom/ievyhrdnoniovof/AdController$Dimensions;->m:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/ievyhrdnoniovof/AdController$ReflectedParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

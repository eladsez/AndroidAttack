.class final Lcom/ievyhrdnoniovof/AdController$Properties$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ievyhrdnoniovof/AdController$Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/ievyhrdnoniovof/AdController$Properties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ievyhrdnoniovof/AdController$Properties;
    .locals 1
    .param p1, "arg0"    # Landroid/os/Parcel;

    .prologue
    new-instance v0, Lcom/ievyhrdnoniovof/AdController$Properties;

    invoke-direct {v0, p1}, Lcom/ievyhrdnoniovof/AdController$Properties;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/ievyhrdnoniovof/AdController$Properties$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ievyhrdnoniovof/AdController$Properties;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ievyhrdnoniovof/AdController$Properties;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    new-array v0, p1, [Lcom/ievyhrdnoniovof/AdController$Properties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/ievyhrdnoniovof/AdController$Properties$1;->newArray(I)[Lcom/ievyhrdnoniovof/AdController$Properties;

    move-result-object v0

    return-object v0
.end method

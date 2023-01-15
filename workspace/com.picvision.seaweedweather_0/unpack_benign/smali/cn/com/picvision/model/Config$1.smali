.class Lcn/com/picvision/model/Config$1;
.super Ljava/lang/Object;
.source "Config.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/picvision/model/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcn/com/picvision/model/Config;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcn/com/picvision/model/Config;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 269
    new-instance v0, Lcn/com/picvision/model/Config;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcn/com/picvision/model/Config;-><init>(Landroid/os/Parcel;Lcn/com/picvision/model/Config;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcn/com/picvision/model/Config$1;->createFromParcel(Landroid/os/Parcel;)Lcn/com/picvision/model/Config;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcn/com/picvision/model/Config;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 274
    new-array v0, p1, [Lcn/com/picvision/model/Config;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcn/com/picvision/model/Config$1;->newArray(I)[Lcn/com/picvision/model/Config;

    move-result-object v0

    return-object v0
.end method

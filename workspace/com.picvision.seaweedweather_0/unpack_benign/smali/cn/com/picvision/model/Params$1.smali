.class Lcn/com/picvision/model/Params$1;
.super Ljava/lang/Object;
.source "Params.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/picvision/model/Params;
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
        "Lcn/com/picvision/model/Params;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcn/com/picvision/model/Params;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 216
    new-instance v0, Lcn/com/picvision/model/Params;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcn/com/picvision/model/Params;-><init>(Landroid/os/Parcel;Lcn/com/picvision/model/Params;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcn/com/picvision/model/Params$1;->createFromParcel(Landroid/os/Parcel;)Lcn/com/picvision/model/Params;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcn/com/picvision/model/Params;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 221
    new-array v0, p1, [Lcn/com/picvision/model/Params;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcn/com/picvision/model/Params$1;->newArray(I)[Lcn/com/picvision/model/Params;

    move-result-object v0

    return-object v0
.end method

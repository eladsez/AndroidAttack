.class final Landroid/support/v7/internal/widget/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;
    .locals 2

    new-instance v0, Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;-><init>(Landroid/os/Parcel;Landroid/support/v7/internal/widget/ad;)V

    return-object v0
.end method

.method public a(I)[Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;
    .locals 1

    new-array v0, p1, [Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/af;->a(Landroid/os/Parcel;)Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/af;->a(I)[Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;

    move-result-object v0

    return-object v0
.end method

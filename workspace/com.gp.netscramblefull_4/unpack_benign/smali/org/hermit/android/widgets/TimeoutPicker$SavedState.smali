.class Lorg/hermit/android/widgets/TimeoutPicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TimeoutPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/android/widgets/TimeoutPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# instance fields
.field private final mHour:I

.field private final mMinute:I

.field private final mSecond:I


# direct methods
.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 275
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/hermit/android/widgets/TimeoutPicker$SavedState;->mHour:I

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/hermit/android/widgets/TimeoutPicker$SavedState;->mMinute:I

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/hermit/android/widgets/TimeoutPicker$SavedState;->mSecond:I

    .line 279
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "hour"    # I
    .param p3, "minute"    # I
    .param p4, "sec"    # I

    .prologue
    .line 268
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 269
    iput p2, p0, Lorg/hermit/android/widgets/TimeoutPicker$SavedState;->mHour:I

    .line 270
    iput p3, p0, Lorg/hermit/android/widgets/TimeoutPicker$SavedState;->mMinute:I

    .line 271
    iput p4, p0, Lorg/hermit/android/widgets/TimeoutPicker$SavedState;->mSecond:I

    .line 272
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILorg/hermit/android/widgets/TimeoutPicker$SavedState;)V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/hermit/android/widgets/TimeoutPicker$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method


# virtual methods
.method public getHour()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lorg/hermit/android/widgets/TimeoutPicker$SavedState;->mHour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lorg/hermit/android/widgets/TimeoutPicker$SavedState;->mMinute:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lorg/hermit/android/widgets/TimeoutPicker$SavedState;->mSecond:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 295
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 296
    iget v0, p0, Lorg/hermit/android/widgets/TimeoutPicker$SavedState;->mHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget v0, p0, Lorg/hermit/android/widgets/TimeoutPicker$SavedState;->mMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget v0, p0, Lorg/hermit/android/widgets/TimeoutPicker$SavedState;->mSecond:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    return-void
.end method

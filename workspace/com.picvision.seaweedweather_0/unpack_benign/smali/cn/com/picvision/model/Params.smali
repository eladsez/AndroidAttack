.class public Lcn/com/picvision/model/Params;
.super Ljava/lang/Object;
.source "Params.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/com/picvision/model/Params;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private background:I

.field private backgroundColor:I

.field private isFloat:Z

.field private isTest:Z

.field private refreshInterval:I

.field private textColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcn/com/picvision/model/Params;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/picvision/model/Params;->TAG:Ljava/lang/String;

    .line 213
    new-instance v0, Lcn/com/picvision/model/Params$1;

    invoke-direct {v0}, Lcn/com/picvision/model/Params$1;-><init>()V

    sput-object v0, Lcn/com/picvision/model/Params;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "read"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 173
    .local v0, "bools":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 174
    aget-boolean v1, v0, v2

    iput-boolean v1, p0, Lcn/com/picvision/model/Params;->isTest:Z

    .line 175
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 176
    aget-boolean v1, v0, v2

    iput-boolean v1, p0, Lcn/com/picvision/model/Params;->isFloat:Z

    .line 177
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcn/com/picvision/model/Params;->refreshInterval:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcn/com/picvision/model/Params;->backgroundColor:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcn/com/picvision/model/Params;->textColor:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcn/com/picvision/model/Params;->background:I

    .line 182
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/com/picvision/model/Params;)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcn/com/picvision/model/Params;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(ZZZIIII)V
    .locals 0
    .param p1, "isTest"    # Z
    .param p2, "isFloat"    # Z
    .param p3, "isAnimation"    # Z
    .param p4, "background"    # I
    .param p5, "backgroundColor"    # I
    .param p6, "textColor"    # I
    .param p7, "refreshInterval"    # I

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-boolean p1, p0, Lcn/com/picvision/model/Params;->isTest:Z

    .line 157
    iput-boolean p2, p0, Lcn/com/picvision/model/Params;->isFloat:Z

    .line 159
    iput p4, p0, Lcn/com/picvision/model/Params;->background:I

    .line 160
    iput p5, p0, Lcn/com/picvision/model/Params;->backgroundColor:I

    .line 161
    iput p6, p0, Lcn/com/picvision/model/Params;->textColor:I

    .line 162
    iput p7, p0, Lcn/com/picvision/model/Params;->refreshInterval:I

    .line 163
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public getBackground()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcn/com/picvision/model/Params;->background:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcn/com/picvision/model/Params;->backgroundColor:I

    return v0
.end method

.method public getRefreshInterval()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcn/com/picvision/model/Params;->refreshInterval:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcn/com/picvision/model/Params;->textColor:I

    return v0
.end method

.method public isFloat()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcn/com/picvision/model/Params;->isFloat:Z

    return v0
.end method

.method public isTest()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcn/com/picvision/model/Params;->isTest:Z

    return v0
.end method

.method public setBackground(I)V
    .locals 0
    .param p1, "background"    # I

    .prologue
    .line 78
    iput p1, p0, Lcn/com/picvision/model/Params;->background:I

    .line 79
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "backgroundColor"    # I

    .prologue
    .line 94
    iput p1, p0, Lcn/com/picvision/model/Params;->backgroundColor:I

    .line 95
    return-void
.end method

.method public setFloat(Z)V
    .locals 0
    .param p1, "isFloat"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcn/com/picvision/model/Params;->isFloat:Z

    .line 61
    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 0
    .param p1, "refreshInterval"    # I

    .prologue
    .line 126
    iput p1, p0, Lcn/com/picvision/model/Params;->refreshInterval:I

    .line 127
    return-void
.end method

.method public setTest(Z)V
    .locals 0
    .param p1, "isTest"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcn/com/picvision/model/Params;->isTest:Z

    .line 45
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 110
    iput p1, p0, Lcn/com/picvision/model/Params;->textColor:I

    .line 111
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "write"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v2, 0x0

    .line 199
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 200
    .local v0, "bools":[Z
    iget-boolean v1, p0, Lcn/com/picvision/model/Params;->isTest:Z

    aput-boolean v1, v0, v2

    .line 201
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 202
    iget-boolean v1, p0, Lcn/com/picvision/model/Params;->isFloat:Z

    aput-boolean v1, v0, v2

    .line 203
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 204
    iget v1, p0, Lcn/com/picvision/model/Params;->refreshInterval:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget v1, p0, Lcn/com/picvision/model/Params;->backgroundColor:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget v1, p0, Lcn/com/picvision/model/Params;->textColor:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget v1, p0, Lcn/com/picvision/model/Params;->background:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    return-void
.end method

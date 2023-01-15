.class public Lcn/com/picvision/model/HandleInfo;
.super Ljava/lang/Object;
.source "HandleInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/com/picvision/model/HandleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private byteKey:Ljava/lang/String;

.field private completeKey:Ljava/lang/String;

.field private currentkey:Ljava/lang/String;

.field private dataKey:Ljava/lang/String;

.field private state:I

.field private totalKey:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcn/com/picvision/model/HandleInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/picvision/model/HandleInfo;->TAG:Ljava/lang/String;

    .line 175
    new-instance v0, Lcn/com/picvision/model/HandleInfo$1;

    invoke-direct {v0}, Lcn/com/picvision/model/HandleInfo$1;-><init>()V

    sput-object v0, Lcn/com/picvision/model/HandleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "dataKey"    # Ljava/lang/String;
    .param p4, "totalKey"    # Ljava/lang/String;
    .param p5, "currentkey"    # Ljava/lang/String;
    .param p6, "byteKey"    # Ljava/lang/String;
    .param p7, "completeKey"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcn/com/picvision/model/HandleInfo;->type:I

    .line 45
    iput p2, p0, Lcn/com/picvision/model/HandleInfo;->state:I

    .line 46
    iput-object p3, p0, Lcn/com/picvision/model/HandleInfo;->dataKey:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcn/com/picvision/model/HandleInfo;->totalKey:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcn/com/picvision/model/HandleInfo;->currentkey:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lcn/com/picvision/model/HandleInfo;->byteKey:Ljava/lang/String;

    .line 50
    iput-object p7, p0, Lcn/com/picvision/model/HandleInfo;->completeKey:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 226
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/com/picvision/model/HandleInfo;)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcn/com/picvision/model/HandleInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public getByteKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcn/com/picvision/model/HandleInfo;->byteKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCompleteKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcn/com/picvision/model/HandleInfo;->completeKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcn/com/picvision/model/HandleInfo;->currentkey:Ljava/lang/String;

    return-object v0
.end method

.method public getDataKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcn/com/picvision/model/HandleInfo;->dataKey:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcn/com/picvision/model/HandleInfo;->state:I

    return v0
.end method

.method public getTotalKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcn/com/picvision/model/HandleInfo;->totalKey:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcn/com/picvision/model/HandleInfo;->type:I

    return v0
.end method

.method public setByteKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "byteKey"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcn/com/picvision/model/HandleInfo;->byteKey:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setCompleteKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "completeKey"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcn/com/picvision/model/HandleInfo;->completeKey:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setCurrentkey(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentkey"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcn/com/picvision/model/HandleInfo;->currentkey:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setDataKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataKey"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcn/com/picvision/model/HandleInfo;->dataKey:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 66
    iput p1, p0, Lcn/com/picvision/model/HandleInfo;->state:I

    .line 67
    return-void
.end method

.method public setTotalKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalKey"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcn/com/picvision/model/HandleInfo;->totalKey:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 105
    iput p1, p0, Lcn/com/picvision/model/HandleInfo;->type:I

    .line 106
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 205
    iget v0, p0, Lcn/com/picvision/model/HandleInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget v0, p0, Lcn/com/picvision/model/HandleInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget-object v0, p0, Lcn/com/picvision/model/HandleInfo;->dataKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcn/com/picvision/model/HandleInfo;->currentkey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcn/com/picvision/model/HandleInfo;->totalKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcn/com/picvision/model/HandleInfo;->byteKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcn/com/picvision/model/HandleInfo;->completeKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.class public Lcn/com/picvision/model/Config;
.super Ljava/lang/Object;
.source "Config.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/com/picvision/model/Config;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_CODE:I = 0x1

.field public static final RIGHT_CODE:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_ANIM:I = 0x7

.field public static final TYPE_ANIM_AUDIO:I = 0x8

.field public static final TYPE_IMAGE:I = 0x3

.field public static final TYPE_IMAGE_AUDIO:I = 0x6

.field public static final TYPE_LOGO:I = 0x2

.field public static final TYPE_LOGO_AUDIO:I = 0x5

.field public static final TYPE_TEXT:I = 0x1

.field public static final TYPE_TEXT_AUDIO:I = 0x4


# instance fields
.field private adapter:Z

.field private bgMusic:Ljava/lang/String;

.field private errorCode:I

.field private id:J

.field private image:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private logo:Ljava/lang/String;

.field private message:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcn/com/picvision/model/Config;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/picvision/model/Config;->TAG:Ljava/lang/String;

    .line 265
    new-instance v0, Lcn/com/picvision/model/Config$1;

    invoke-direct {v0}, Lcn/com/picvision/model/Config$1;-><init>()V

    sput-object v0, Lcn/com/picvision/model/Config;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/com/picvision/model/Config;->id:J

    .line 65
    iput v3, p0, Lcn/com/picvision/model/Config;->errorCode:I

    .line 67
    iput v3, p0, Lcn/com/picvision/model/Config;->type:I

    .line 69
    iput-boolean v3, p0, Lcn/com/picvision/model/Config;->adapter:Z

    .line 71
    iput-object v2, p0, Lcn/com/picvision/model/Config;->link:Ljava/lang/String;

    .line 73
    iput-object v2, p0, Lcn/com/picvision/model/Config;->bgMusic:Ljava/lang/String;

    .line 75
    iput-object v2, p0, Lcn/com/picvision/model/Config;->logo:Ljava/lang/String;

    .line 77
    iput-object v2, p0, Lcn/com/picvision/model/Config;->image:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/picvision/model/Config;->message:Ljava/util/ArrayList;

    .line 259
    return-void
.end method

.method public constructor <init>(JIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "id"    # J
    .param p3, "errorCode"    # I
    .param p4, "type"    # I
    .param p5, "adapter"    # Z
    .param p6, "link"    # Ljava/lang/String;
    .param p7, "bgMusic"    # Ljava/lang/String;
    .param p8, "logo"    # Ljava/lang/String;
    .param p9, "image"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIIZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p10, "message":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/com/picvision/model/Config;->id:J

    .line 65
    iput v3, p0, Lcn/com/picvision/model/Config;->errorCode:I

    .line 67
    iput v3, p0, Lcn/com/picvision/model/Config;->type:I

    .line 69
    iput-boolean v3, p0, Lcn/com/picvision/model/Config;->adapter:Z

    .line 71
    iput-object v2, p0, Lcn/com/picvision/model/Config;->link:Ljava/lang/String;

    .line 73
    iput-object v2, p0, Lcn/com/picvision/model/Config;->bgMusic:Ljava/lang/String;

    .line 75
    iput-object v2, p0, Lcn/com/picvision/model/Config;->logo:Ljava/lang/String;

    .line 77
    iput-object v2, p0, Lcn/com/picvision/model/Config;->image:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/picvision/model/Config;->message:Ljava/util/ArrayList;

    .line 243
    iput-wide p1, p0, Lcn/com/picvision/model/Config;->id:J

    .line 244
    iput p3, p0, Lcn/com/picvision/model/Config;->errorCode:I

    .line 245
    iput p4, p0, Lcn/com/picvision/model/Config;->type:I

    .line 246
    iput-boolean p5, p0, Lcn/com/picvision/model/Config;->adapter:Z

    .line 247
    iput-object p6, p0, Lcn/com/picvision/model/Config;->link:Ljava/lang/String;

    .line 248
    iput-object p7, p0, Lcn/com/picvision/model/Config;->bgMusic:Ljava/lang/String;

    .line 249
    iput-object p8, p0, Lcn/com/picvision/model/Config;->logo:Ljava/lang/String;

    .line 250
    iput-object p9, p0, Lcn/com/picvision/model/Config;->image:Ljava/lang/String;

    .line 251
    iput-object p10, p0, Lcn/com/picvision/model/Config;->message:Ljava/util/ArrayList;

    .line 252
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "read"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcn/com/picvision/model/Config;->id:J

    .line 65
    iput v5, p0, Lcn/com/picvision/model/Config;->errorCode:I

    .line 67
    iput v5, p0, Lcn/com/picvision/model/Config;->type:I

    .line 69
    iput-boolean v5, p0, Lcn/com/picvision/model/Config;->adapter:Z

    .line 71
    iput-object v2, p0, Lcn/com/picvision/model/Config;->link:Ljava/lang/String;

    .line 73
    iput-object v2, p0, Lcn/com/picvision/model/Config;->bgMusic:Ljava/lang/String;

    .line 75
    iput-object v2, p0, Lcn/com/picvision/model/Config;->logo:Ljava/lang/String;

    .line 77
    iput-object v2, p0, Lcn/com/picvision/model/Config;->image:Ljava/lang/String;

    .line 79
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcn/com/picvision/model/Config;->message:Ljava/util/ArrayList;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcn/com/picvision/model/Config;->id:J

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcn/com/picvision/model/Config;->errorCode:I

    .line 215
    const/4 v3, 0x1

    new-array v1, v3, [Z

    .line 216
    .local v1, "bool":[Z
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 217
    aget-boolean v3, v1, v5

    iput-boolean v3, p0, Lcn/com/picvision/model/Config;->adapter:Z

    .line 218
    move-object v0, v2

    check-cast v0, [Z

    move-object v1, v0

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcn/com/picvision/model/Config;->type:I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/com/picvision/model/Config;->link:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/com/picvision/model/Config;->bgMusic:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/com/picvision/model/Config;->logo:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/com/picvision/model/Config;->image:Ljava/lang/String;

    .line 224
    const-class v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcn/com/picvision/model/Config;->message:Ljava/util/ArrayList;

    .line 225
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/com/picvision/model/Config;)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcn/com/picvision/model/Config;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v0, p0, Lcn/com/picvision/model/Config;->message:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public getBgMusic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcn/com/picvision/model/Config;->bgMusic:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcn/com/picvision/model/Config;->errorCode:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcn/com/picvision/model/Config;->id:J

    return-wide v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcn/com/picvision/model/Config;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcn/com/picvision/model/Config;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcn/com/picvision/model/Config;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcn/com/picvision/model/Config;->message:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcn/com/picvision/model/Config;->type:I

    return v0
.end method

.method public isAdapter()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcn/com/picvision/model/Config;->adapter:Z

    return v0
.end method

.method public setAdapter(Z)V
    .locals 0
    .param p1, "adapter"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcn/com/picvision/model/Config;->adapter:Z

    .line 110
    return-void
.end method

.method public setBgMusic(Ljava/lang/String;)V
    .locals 0
    .param p1, "bgMusic"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcn/com/picvision/model/Config;->bgMusic:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 93
    iput p1, p0, Lcn/com/picvision/model/Config;->errorCode:I

    .line 94
    return-void
.end method

.method public setId(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 85
    iput-wide p1, p0, Lcn/com/picvision/model/Config;->id:J

    .line 86
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcn/com/picvision/model/Config;->image:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcn/com/picvision/model/Config;->link:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0
    .param p1, "logo"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcn/com/picvision/model/Config;->logo:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setMessage(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcn/com/picvision/model/Config;->message:Ljava/util/ArrayList;

    .line 174
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 101
    iput p1, p0, Lcn/com/picvision/model/Config;->type:I

    .line 102
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "write"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 195
    iget-wide v1, p0, Lcn/com/picvision/model/Config;->id:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 196
    iget v1, p0, Lcn/com/picvision/model/Config;->errorCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 198
    .local v0, "bools":[Z
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcn/com/picvision/model/Config;->adapter:Z

    aput-boolean v2, v0, v1

    .line 199
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 200
    iget v1, p0, Lcn/com/picvision/model/Config;->type:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-object v1, p0, Lcn/com/picvision/model/Config;->link:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcn/com/picvision/model/Config;->bgMusic:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcn/com/picvision/model/Config;->logo:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcn/com/picvision/model/Config;->image:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcn/com/picvision/model/Config;->message:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 206
    return-void
.end method

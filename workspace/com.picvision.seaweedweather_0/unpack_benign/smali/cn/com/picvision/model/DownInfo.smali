.class public Lcn/com/picvision/model/DownInfo;
.super Ljava/lang/Object;
.source "DownInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/com/picvision/model/DownInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private encrypt:Z

.field private fileName:Ljava/lang/String;

.field private method:I

.field private params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reqUrl:Ljava/lang/String;

.field private saveDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcn/com/picvision/model/DownInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/picvision/model/DownInfo;->TAG:Ljava/lang/String;

    .line 175
    new-instance v0, Lcn/com/picvision/model/DownInfo$1;

    invoke-direct {v0}, Lcn/com/picvision/model/DownInfo$1;-><init>()V

    sput-object v0, Lcn/com/picvision/model/DownInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "read"    # Landroid/os/Parcel;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/com/picvision/model/DownInfo;->reqUrl:Ljava/lang/String;

    .line 80
    const-class v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, p0, Lcn/com/picvision/model/DownInfo;->params:Ljava/util/HashMap;

    .line 81
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 82
    .local v0, "bool":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 83
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcn/com/picvision/model/DownInfo;->encrypt:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/com/picvision/model/DownInfo;->fileName:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcn/com/picvision/model/DownInfo;->method:I

    .line 86
    const-class v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iput-object v1, p0, Lcn/com/picvision/model/DownInfo;->saveDir:Ljava/io/File;

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/com/picvision/model/DownInfo;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcn/com/picvision/model/DownInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcn/com/picvision/model/DownInfo;->params:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcn/com/picvision/model/DownInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcn/com/picvision/model/DownInfo;->method:I

    return v0
.end method

.method public getParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcn/com/picvision/model/DownInfo;->params:Ljava/util/HashMap;

    return-object v0
.end method

.method public getReqUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/com/picvision/model/DownInfo;->reqUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcn/com/picvision/model/DownInfo;->saveDir:Ljava/io/File;

    return-object v0
.end method

.method public isEncrypt()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcn/com/picvision/model/DownInfo;->encrypt:Z

    return v0
.end method

.method public setEncrypt(Z)V
    .locals 0
    .param p1, "encrypt"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcn/com/picvision/model/DownInfo;->encrypt:Z

    .line 107
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcn/com/picvision/model/DownInfo;->fileName:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setMethod(I)V
    .locals 0
    .param p1, "method"    # I

    .prologue
    .line 138
    iput p1, p0, Lcn/com/picvision/model/DownInfo;->method:I

    .line 139
    return-void
.end method

.method public setParams(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcn/com/picvision/model/DownInfo;->params:Ljava/util/HashMap;

    .line 57
    return-void
.end method

.method public setReqUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "reqUrl"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcn/com/picvision/model/DownInfo;->reqUrl:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setSaveDir(Ljava/io/File;)V
    .locals 0
    .param p1, "saveDir"    # Ljava/io/File;

    .prologue
    .line 154
    iput-object p1, p0, Lcn/com/picvision/model/DownInfo;->saveDir:Ljava/io/File;

    .line 155
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "write"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcn/com/picvision/model/DownInfo;->reqUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcn/com/picvision/model/DownInfo;->params:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 166
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcn/com/picvision/model/DownInfo;->encrypt:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 167
    iget-object v0, p0, Lcn/com/picvision/model/DownInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget v0, p0, Lcn/com/picvision/model/DownInfo;->method:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object v0, p0, Lcn/com/picvision/model/DownInfo;->saveDir:Ljava/io/File;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 170
    return-void
.end method

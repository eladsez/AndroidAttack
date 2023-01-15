.class public Lanywheresoftware/b4a/keywords/Common;
.super Ljava/lang/Object;
.source "Common.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$Version;
    value = 3.21f
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/keywords/Common$DesignerCustomView;
    }
.end annotation


# static fields
.field public static final Bit:Lanywheresoftware/b4a/keywords/Bit;

.field public static final CRLF:Ljava/lang/String; = "\n"

.field public static final Colors:Lanywheresoftware/b4a/keywords/constants/Colors;

.field public static final DateTime:Lanywheresoftware/b4a/keywords/DateTime;

.field public static final Density:F

.field public static final DialogResponse:Lanywheresoftware/b4a/keywords/constants/DialogResponse;

.field public static final False:Z = false

.field public static final File:Lanywheresoftware/b4a/objects/streams/File;

.field public static final Gravity:Lanywheresoftware/b4a/keywords/constants/Gravity;

.field public static KeyCodes:Lanywheresoftware/b4a/keywords/constants/KeyCodes; = null

.field public static final Null:Ljava/lang/Object;

.field public static final QUOTE:Ljava/lang/String; = "\""

.field public static final Regex:Lanywheresoftware/b4a/keywords/Regex;

.field public static final TAB:Ljava/lang/String; = "\t"

.field public static final True:Z = true

.field public static final Typeface:Lanywheresoftware/b4a/keywords/constants/TypefaceWrapper;

.field public static final cE:D = 2.718281828459045

.field public static final cPI:D = 3.141592653589793

.field private static random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    sput-object v1, Lanywheresoftware/b4a/keywords/Common;->Null:Ljava/lang/Object;

    .line 84
    sput-object v1, Lanywheresoftware/b4a/keywords/Common;->KeyCodes:Lanywheresoftware/b4a/keywords/constants/KeyCodes;

    .line 89
    sget v0, Lanywheresoftware/b4a/BA;->density:F

    sput v0, Lanywheresoftware/b4a/keywords/Common;->Density:F

    .line 93
    sput-object v1, Lanywheresoftware/b4a/keywords/Common;->Colors:Lanywheresoftware/b4a/keywords/constants/Colors;

    .line 97
    sput-object v1, Lanywheresoftware/b4a/keywords/Common;->Gravity:Lanywheresoftware/b4a/keywords/constants/Gravity;

    .line 101
    sput-object v1, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    .line 105
    sput-object v1, Lanywheresoftware/b4a/keywords/Common;->Bit:Lanywheresoftware/b4a/keywords/Bit;

    .line 109
    sput-object v1, Lanywheresoftware/b4a/keywords/Common;->Typeface:Lanywheresoftware/b4a/keywords/constants/TypefaceWrapper;

    .line 113
    sput-object v1, Lanywheresoftware/b4a/keywords/Common;->DateTime:Lanywheresoftware/b4a/keywords/DateTime;

    .line 117
    sput-object v1, Lanywheresoftware/b4a/keywords/Common;->DialogResponse:Lanywheresoftware/b4a/keywords/constants/DialogResponse;

    .line 121
    sput-object v1, Lanywheresoftware/b4a/keywords/Common;->Regex:Lanywheresoftware/b4a/keywords/Regex;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ACos(D)D
    .locals 2
    .param p0, "Value"    # D

    .prologue
    .line 299
    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ACosD(D)D
    .locals 4
    .param p0, "Value"    # D

    .prologue
    .line 305
    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static ASin(D)D
    .locals 2
    .param p0, "Value"    # D

    .prologue
    .line 287
    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ASinD(D)D
    .locals 4
    .param p0, "Value"    # D

    .prologue
    .line 293
    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static ATan(D)D
    .locals 2
    .param p0, "Value"    # D

    .prologue
    .line 311
    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ATan2(DD)D
    .locals 2
    .param p0, "Y"    # D
    .param p2, "X"    # D

    .prologue
    .line 323
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ATan2D(DD)D
    .locals 4
    .param p0, "Y"    # D
    .param p2, "X"    # D

    .prologue
    .line 329
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static ATanD(D)D
    .locals 4
    .param p0, "Value"    # D

    .prologue
    .line 317
    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static Abs(D)D
    .locals 2
    .param p0, "Number"    # D

    .prologue
    .line 209
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Abs(I)I
    .locals 1
    .param p0, "Number"    # I
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 213
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public static Array()V
    .locals 0

    .prologue
    .line 1136
    return-void
.end method

.method public static ArrayToList([B)Lanywheresoftware/b4a/objects/collections/List;
    .locals 4
    .param p0, "Array"    # [B
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 1087
    new-instance v1, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 1088
    .local v1, "list":Lanywheresoftware/b4a/objects/collections/List;
    array-length v3, p0

    new-array v2, v3, [Ljava/lang/Object;

    .line 1089
    .local v2, "o":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 1092
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/objects/collections/List;->setObject(Ljava/lang/Object;)V

    .line 1093
    return-object v1

    .line 1090
    :cond_0
    aget-byte v3, p0, v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1089
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static ArrayToList([D)Lanywheresoftware/b4a/objects/collections/List;
    .locals 5
    .param p0, "Array"    # [D
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 1057
    new-instance v1, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 1058
    .local v1, "list":Lanywheresoftware/b4a/objects/collections/List;
    array-length v3, p0

    new-array v2, v3, [Ljava/lang/Object;

    .line 1059
    .local v2, "o":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 1062
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/objects/collections/List;->setObject(Ljava/lang/Object;)V

    .line 1063
    return-object v1

    .line 1060
    :cond_0
    aget-wide v3, p0, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1059
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static ArrayToList([F)Lanywheresoftware/b4a/objects/collections/List;
    .locals 4
    .param p0, "Array"    # [F
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 1047
    new-instance v1, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 1048
    .local v1, "list":Lanywheresoftware/b4a/objects/collections/List;
    array-length v3, p0

    new-array v2, v3, [Ljava/lang/Object;

    .line 1049
    .local v2, "o":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 1052
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/objects/collections/List;->setObject(Ljava/lang/Object;)V

    .line 1053
    return-object v1

    .line 1050
    :cond_0
    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1049
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static ArrayToList([I)Lanywheresoftware/b4a/objects/collections/List;
    .locals 4
    .param p0, "Array"    # [I
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 1027
    new-instance v1, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 1028
    .local v1, "list":Lanywheresoftware/b4a/objects/collections/List;
    array-length v3, p0

    new-array v2, v3, [Ljava/lang/Object;

    .line 1029
    .local v2, "o":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 1032
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/objects/collections/List;->setObject(Ljava/lang/Object;)V

    .line 1033
    return-object v1

    .line 1030
    :cond_0
    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1029
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static ArrayToList([J)Lanywheresoftware/b4a/objects/collections/List;
    .locals 5
    .param p0, "Array"    # [J
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 1037
    new-instance v1, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 1038
    .local v1, "list":Lanywheresoftware/b4a/objects/collections/List;
    array-length v3, p0

    new-array v2, v3, [Ljava/lang/Object;

    .line 1039
    .local v2, "o":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 1042
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/objects/collections/List;->setObject(Ljava/lang/Object;)V

    .line 1043
    return-object v1

    .line 1040
    :cond_0
    aget-wide v3, p0, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1039
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static ArrayToList([Ljava/lang/Object;)Lanywheresoftware/b4a/objects/collections/List;
    .locals 2
    .param p0, "Array"    # [Ljava/lang/Object;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 1021
    new-instance v0, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 1022
    .local v0, "list":Lanywheresoftware/b4a/objects/collections/List;
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/collections/List;->setObject(Ljava/lang/Object;)V

    .line 1023
    return-object v0
.end method

.method public static ArrayToList([S)Lanywheresoftware/b4a/objects/collections/List;
    .locals 4
    .param p0, "Array"    # [S
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 1077
    new-instance v1, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 1078
    .local v1, "list":Lanywheresoftware/b4a/objects/collections/List;
    array-length v3, p0

    new-array v2, v3, [Ljava/lang/Object;

    .line 1079
    .local v2, "o":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 1082
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/objects/collections/List;->setObject(Ljava/lang/Object;)V

    .line 1083
    return-object v1

    .line 1080
    :cond_0
    aget-short v3, p0, v0

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1079
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static ArrayToList([Z)Lanywheresoftware/b4a/objects/collections/List;
    .locals 4
    .param p0, "Array"    # [Z
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 1067
    new-instance v1, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 1068
    .local v1, "list":Lanywheresoftware/b4a/objects/collections/List;
    array-length v3, p0

    new-array v2, v3, [Ljava/lang/Object;

    .line 1069
    .local v2, "o":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 1072
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/objects/collections/List;->setObject(Ljava/lang/Object;)V

    .line 1073
    return-object v1

    .line 1070
    :cond_0
    aget-boolean v3, p0, v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1069
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static Asc(C)I
    .locals 0
    .param p0, "Char"    # C

    .prologue
    .line 364
    return p0
.end method

.method public static BytesToString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "Data"    # [B
    .param p1, "StartOffset"    # I
    .param p2, "Length"    # I
    .param p3, "CharSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1017
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public static CallSub(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "mine"    # Lanywheresoftware/b4a/BA;
    .param p1, "Component"    # Ljava/lang/Object;
    .param p2, "Sub"    # Ljava/lang/String;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 828
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lanywheresoftware/b4a/keywords/Common;->CallSub4(ZLanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "mine":Lanywheresoftware/b4a/BA;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static CallSub2(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "mine"    # Lanywheresoftware/b4a/BA;
    .param p1, "Component"    # Ljava/lang/Object;
    .param p2, "Sub"    # Ljava/lang/String;
    .param p3, "Argument"    # Ljava/lang/Object;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 832
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {v2, p0, p1, p2, v0}, Lanywheresoftware/b4a/keywords/Common;->CallSub4(ZLanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "mine":Lanywheresoftware/b4a/BA;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static CallSub3(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "mine"    # Lanywheresoftware/b4a/BA;
    .param p1, "Component"    # Ljava/lang/Object;
    .param p2, "Sub"    # Ljava/lang/String;
    .param p3, "Argument1"    # Ljava/lang/Object;
    .param p4, "Argument2"    # Ljava/lang/Object;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 836
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    aput-object p4, v0, v2

    invoke-static {v2, p0, p1, p2, v0}, Lanywheresoftware/b4a/keywords/Common;->CallSub4(ZLanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "mine":Lanywheresoftware/b4a/BA;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static CallSub4(ZLanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p0, "old"    # Z
    .param p1, "mine"    # Lanywheresoftware/b4a/BA;
    .param p2, "Component"    # Ljava/lang/Object;
    .param p3, "Sub"    # Ljava/lang/String;
    .param p4, "Arguments"    # [Ljava/lang/Object;

    .prologue
    .line 840
    const/4 v8, 0x0

    .line 841
    .local v8, "o":Ljava/lang/Object;
    :try_start_0
    instance-of v2, p2, Lanywheresoftware/b4a/BA$SubDelegator;

    if-eqz v2, :cond_2

    .line 842
    move-object v0, p2

    check-cast v0, Lanywheresoftware/b4a/BA$SubDelegator;

    move-object v2, v0

    iget-object v4, p1, Lanywheresoftware/b4a/BA;->eventsTarget:Ljava/lang/Object;

    invoke-interface {v2, p3, v4, p4}, Lanywheresoftware/b4a/BA$SubDelegator;->callSub(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 843
    sget-object v2, Lanywheresoftware/b4a/BA$SubDelegator;->SubNotFound:Ljava/lang/Object;

    if-eq v8, v2, :cond_1

    .line 845
    if-eqz v8, :cond_0

    instance-of v2, v8, Lanywheresoftware/b4a/ObjectWrapper;

    if-eqz v2, :cond_0

    .line 846
    check-cast v8, Lanywheresoftware/b4a/ObjectWrapper;

    .end local v8    # "o":Ljava/lang/Object;
    invoke-interface {v8}, Lanywheresoftware/b4a/ObjectWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    .line 869
    :goto_0
    return-object v2

    .restart local v8    # "o":Ljava/lang/Object;
    :cond_0
    move-object v2, v8

    .line 848
    goto :goto_0

    .line 851
    :cond_1
    const/4 v8, 0x0

    .line 854
    :cond_2
    invoke-static {p1, p2}, Lanywheresoftware/b4a/keywords/Common;->getComponentBA(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Lanywheresoftware/b4a/BA;

    move-result-object v1

    .line 855
    .local v1, "ba":Lanywheresoftware/b4a/BA;
    if-eqz v1, :cond_3

    .line 856
    instance-of v3, p2, Lanywheresoftware/b4a/B4AClass;

    .line 858
    .local v3, "isTargetClass":Z
    iget-object v2, p1, Lanywheresoftware/b4a/BA;->eventsTarget:Ljava/lang/Object;

    .line 859
    sget-object v4, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move v5, v3

    move-object v6, p4

    .line 858
    invoke-virtual/range {v1 .. v6}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 861
    .end local v3    # "isTargetClass":Z
    .end local v8    # "o":Ljava/lang/Object;
    :cond_3
    if-eqz p0, :cond_4

    .line 862
    if-nez v8, :cond_6

    .line 863
    const-string v8, ""

    .local v8, "o":Ljava/lang/String;
    move-object v2, v8

    .line 864
    .end local v8    # "o":Ljava/lang/String;
    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 866
    :cond_4
    if-eqz v8, :cond_5

    instance-of v2, v8, Lanywheresoftware/b4a/ObjectWrapper;

    if-eqz v2, :cond_5

    .line 867
    check-cast v8, Lanywheresoftware/b4a/ObjectWrapper;

    invoke-interface {v8}, Lanywheresoftware/b4a/ObjectWrapper;->getObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :cond_5
    move-object v2, v8

    .line 869
    goto :goto_0

    .line 870
    .end local v1    # "ba":Lanywheresoftware/b4a/BA;
    :catch_0
    move-exception v2

    move-object v7, v2

    .line 871
    .local v7, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v1    # "ba":Lanywheresoftware/b4a/BA;
    :cond_6
    move-object v2, v8

    goto :goto_1
.end method

.method public static CallSubDelayed(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "mine"    # Lanywheresoftware/b4a/BA;
    .param p1, "Component"    # Ljava/lang/Object;
    .param p2, "Sub"    # Ljava/lang/String;

    .prologue
    .line 882
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lanywheresoftware/b4a/keywords/Common;->CallSubDelayed4(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 883
    return-void
.end method

.method public static CallSubDelayed2(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "mine"    # Lanywheresoftware/b4a/BA;
    .param p1, "Component"    # Ljava/lang/Object;
    .param p2, "Sub"    # Ljava/lang/String;
    .param p3, "Argument"    # Ljava/lang/Object;

    .prologue
    .line 888
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p0, p1, p2, v0}, Lanywheresoftware/b4a/keywords/Common;->CallSubDelayed4(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 889
    return-void
.end method

.method public static CallSubDelayed3(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "mine"    # Lanywheresoftware/b4a/BA;
    .param p1, "Component"    # Ljava/lang/Object;
    .param p2, "Sub"    # Ljava/lang/String;
    .param p3, "Argument1"    # Ljava/lang/Object;
    .param p4, "Argument2"    # Ljava/lang/Object;

    .prologue
    .line 894
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p0, p1, p2, v0}, Lanywheresoftware/b4a/keywords/Common;->CallSubDelayed4(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    return-void
.end method

.method private static CallSubDelayed4(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "mine"    # Lanywheresoftware/b4a/BA;
    .param p1, "Component"    # Ljava/lang/Object;
    .param p2, "Sub"    # Ljava/lang/String;
    .param p3, "Arguments"    # [Ljava/lang/Object;

    .prologue
    .line 899
    new-instance v0, Lanywheresoftware/b4a/keywords/Common$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lanywheresoftware/b4a/keywords/Common$5;-><init>(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 965
    .local v0, "runnable":Ljava/lang/Runnable;
    sget-boolean v1, Lanywheresoftware/b4a/BA;->shellMode:Z

    if-nez v1, :cond_0

    .line 966
    sget-object v1, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 976
    :goto_0
    return-void

    .line 968
    :cond_0
    sget-object v1, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    new-instance v2, Lanywheresoftware/b4a/keywords/Common$6;

    invoke-direct {v2, v0}, Lanywheresoftware/b4a/keywords/Common$6;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static CallSubNew(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "mine"    # Lanywheresoftware/b4a/BA;
    .param p1, "Component"    # Ljava/lang/Object;
    .param p2, "Sub"    # Ljava/lang/String;
    .annotation build Lanywheresoftware/b4a/BA$DesignerName;
        value = "CallSub"
    .end annotation

    .annotation build Lanywheresoftware/b4a/BA$RaisesSynchronousEvents;
    .end annotation

    .prologue
    .line 807
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lanywheresoftware/b4a/keywords/Common;->CallSub4(ZLanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static CallSubNew2(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "mine"    # Lanywheresoftware/b4a/BA;
    .param p1, "Component"    # Ljava/lang/Object;
    .param p2, "Sub"    # Ljava/lang/String;
    .param p3, "Argument"    # Ljava/lang/Object;
    .annotation build Lanywheresoftware/b4a/BA$DesignerName;
        value = "CallSub2"
    .end annotation

    .annotation build Lanywheresoftware/b4a/BA$RaisesSynchronousEvents;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 815
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v1

    invoke-static {v1, p0, p1, p2, v0}, Lanywheresoftware/b4a/keywords/Common;->CallSub4(ZLanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static CallSubNew3(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "mine"    # Lanywheresoftware/b4a/BA;
    .param p1, "Component"    # Ljava/lang/Object;
    .param p2, "Sub"    # Ljava/lang/String;
    .param p3, "Argument1"    # Ljava/lang/Object;
    .param p4, "Argument2"    # Ljava/lang/Object;
    .annotation build Lanywheresoftware/b4a/BA$DesignerName;
        value = "CallSub3"
    .end annotation

    .annotation build Lanywheresoftware/b4a/BA$RaisesSynchronousEvents;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 823
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v2

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {v2, p0, p1, p2, v0}, Lanywheresoftware/b4a/keywords/Common;->CallSub4(ZLanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static CancelScheduledService(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)V
    .locals 6
    .param p0, "mine"    # Lanywheresoftware/b4a/BA;
    .param p1, "Service"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 741
    sget-object v2, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 742
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {p0, p1}, Lanywheresoftware/b4a/keywords/Common;->getComponentIntent(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v4

    .line 743
    const/high16 v5, 0x8000000

    .line 742
    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 744
    .local v1, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 745
    return-void
.end method

.method public static Catch()V
    .locals 0

    .prologue
    .line 1178
    return-void
.end method

.method public static Ceil(D)D
    .locals 2
    .param p0, "Number"    # D

    .prologue
    .line 358
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static CharsToString([CII)Ljava/lang/String;
    .locals 1
    .param p0, "Chars"    # [C
    .param p1, "StartOffset"    # I
    .param p2, "Length"    # I

    .prologue
    .line 1004
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static Chr(I)C
    .locals 1
    .param p0, "UnicodeValue"    # I

    .prologue
    .line 370
    int-to-char v0, p0

    return v0
.end method

.method public static ConfigureHomeWidget(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "LayoutFile"    # Ljava/lang/String;
    .param p1, "EventName"    # Ljava/lang/String;
    .param p2, "UpdateIntervalMinutes"    # I
    .param p3, "WidgetName"    # Ljava/lang/String;
    .param p4, "CenterWidget"    # Z

    .prologue
    .line 1354
    const/4 v0, 0x0

    return-object v0
.end method

.method public static Continue()V
    .locals 0

    .prologue
    .line 1301
    return-void
.end method

.method public static Cos(D)D
    .locals 2
    .param p0, "Radians"    # D

    .prologue
    .line 251
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static CosD(D)D
    .locals 4
    .param p0, "Degrees"    # D

    .prologue
    .line 257
    const-wide v0, 0x4066800000000000L    # 180.0

    div-double v0, p0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Dim()V
    .locals 0

    .prologue
    .line 1198
    return-void
.end method

.method public static DipToCurrent(I)I
    .locals 2
    .param p0, "Length"    # I

    .prologue
    .line 604
    sget v0, Lanywheresoftware/b4a/keywords/Common;->Density:F

    int-to-float v1, p0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static DoEvents()V
    .locals 2
    .annotation build Lanywheresoftware/b4a/BA$RaisesSynchronousEvents;
    .end annotation

    .prologue
    .line 379
    invoke-static {}, Lanywheresoftware/b4a/Msgbox;->sendCloseMyLoopMessage()V

    .line 380
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lanywheresoftware/b4a/Msgbox;->waitForMessage(ZZ)V

    .line 382
    return-void
.end method

.method public static Each()V
    .locals 0

    .prologue
    .line 1289
    return-void
.end method

.method public static Exit()V
    .locals 0

    .prologue
    .line 1286
    return-void
.end method

.method public static ExitApplication()V
    .locals 1

    .prologue
    .line 1340
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 1341
    return-void
.end method

.method public static Floor(D)D
    .locals 2
    .param p0, "Number"    # D

    .prologue
    .line 352
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static For()V
    .locals 0

    .prologue
    .line 1242
    return-void
.end method

.method public static GetDeviceLayoutValues(Lanywheresoftware/b4a/BA;)Lanywheresoftware/b4a/keywords/LayoutValues;
    .locals 3
    .param p0, "ba"    # Lanywheresoftware/b4a/BA;

    .prologue
    .line 660
    sget-object v2, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 662
    .local v1, "dm":Landroid/util/DisplayMetrics;
    new-instance v0, Lanywheresoftware/b4a/keywords/LayoutValues;

    invoke-direct {v0}, Lanywheresoftware/b4a/keywords/LayoutValues;-><init>()V

    .line 663
    .local v0, "deviceValues":Lanywheresoftware/b4a/keywords/LayoutValues;
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    iput v2, v0, Lanywheresoftware/b4a/keywords/LayoutValues;->Scale:F

    .line 664
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v0, Lanywheresoftware/b4a/keywords/LayoutValues;->Width:I

    .line 665
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, v0, Lanywheresoftware/b4a/keywords/LayoutValues;->Height:I

    .line 666
    return-object v0
.end method

.method public static GetType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 587
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static If()V
    .locals 0

    .prologue
    .line 1152
    return-void
.end method

.method public static InputList(Lanywheresoftware/b4a/objects/collections/List;Ljava/lang/String;ILanywheresoftware/b4a/BA;)I
    .locals 7
    .param p0, "Items"    # Lanywheresoftware/b4a/objects/collections/List;
    .param p1, "Title"    # Ljava/lang/String;
    .param p2, "CheckedItem"    # I
    .param p3, "ba"    # Lanywheresoftware/b4a/BA;
    .annotation build Lanywheresoftware/b4a/BA$RaisesSynchronousEvents;
    .end annotation

    .prologue
    .line 446
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p3, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 447
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getSize()I

    move-result v5

    new-array v3, v5, [Ljava/lang/CharSequence;

    .line 448
    .local v3, "items":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getSize()I

    move-result v5

    if-lt v2, v5, :cond_0

    .line 455
    new-instance v1, Lanywheresoftware/b4a/Msgbox$DialogResponse;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Lanywheresoftware/b4a/Msgbox$DialogResponse;-><init>(Z)V

    .line 456
    .local v1, "dr":Lanywheresoftware/b4a/Msgbox$DialogResponse;
    invoke-virtual {v0, v3, p2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 457
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 458
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lanywheresoftware/b4a/Msgbox;->msgbox(Landroid/app/AlertDialog;Z)V

    .line 459
    iget v5, v1, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    return v5

    .line 449
    .end local v1    # "dr":Lanywheresoftware/b4a/Msgbox$DialogResponse;
    :cond_0
    invoke-virtual {p0, v2}, Lanywheresoftware/b4a/objects/collections/List;->Get(I)Ljava/lang/Object;

    move-result-object v4

    .line 450
    .local v4, "o":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    .line 451
    check-cast v4, Ljava/lang/CharSequence;

    .end local v4    # "o":Ljava/lang/Object;
    aput-object v4, v3, v2

    .line 448
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 453
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    goto :goto_1
.end method

.method public static InputMap(Lanywheresoftware/b4a/objects/collections/Map;Ljava/lang/String;Lanywheresoftware/b4a/BA;)V
    .locals 10
    .param p0, "Items"    # Lanywheresoftware/b4a/objects/collections/Map;
    .param p1, "Title"    # Ljava/lang/String;
    .param p2, "ba"    # Lanywheresoftware/b4a/BA;
    .annotation build Lanywheresoftware/b4a/BA$RaisesSynchronousEvents;
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 478
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p2, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 479
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getSize()I

    move-result v7

    new-array v5, v7, [Ljava/lang/CharSequence;

    .line 480
    .local v5, "items":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getSize()I

    move-result v7

    new-array v1, v7, [Z

    .line 481
    .local v1, "checked":[Z
    const/4 v4, 0x0

    .line 482
    .local v4, "i":I
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lanywheresoftware/b4a/objects/collections/Map$MyMap;

    invoke-virtual {v7}, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 493
    new-instance v2, Lanywheresoftware/b4a/Msgbox$DialogResponse;

    invoke-direct {v2, v9}, Lanywheresoftware/b4a/Msgbox$DialogResponse;-><init>(Z)V

    .line 494
    .local v2, "dr":Lanywheresoftware/b4a/Msgbox$DialogResponse;
    new-instance v7, Lanywheresoftware/b4a/keywords/Common$1;

    invoke-direct {v7, p0, v5}, Lanywheresoftware/b4a/keywords/Common$1;-><init>(Lanywheresoftware/b4a/objects/collections/Map;[Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5, v1, v7}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 508
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 509
    const-string v7, "Ok"

    invoke-virtual {v0, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 510
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-static {v7, v9}, Lanywheresoftware/b4a/Msgbox;->msgbox(Landroid/app/AlertDialog;Z)V

    .line 511
    return-void

    .line 482
    .end local v2    # "dr":Lanywheresoftware/b4a/Msgbox$DialogResponse;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 483
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/String;

    if-nez v7, :cond_1

    .line 484
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Keys must be strings."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 485
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v4

    .line 486
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 487
    .local v6, "o":Ljava/lang/Object;
    instance-of v7, v6, Ljava/lang/Boolean;

    if-eqz v7, :cond_2

    .line 488
    check-cast v6, Ljava/lang/Boolean;

    .end local v6    # "o":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    aput-boolean v7, v1, v4

    .line 491
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 490
    .restart local v6    # "o":Ljava/lang/Object;
    :cond_2
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    aput-boolean v7, v1, v4

    goto :goto_1
.end method

.method public static InputMultiList(Lanywheresoftware/b4a/objects/collections/List;Ljava/lang/String;Lanywheresoftware/b4a/BA;)Lanywheresoftware/b4a/objects/collections/List;
    .locals 9
    .param p0, "Items"    # Lanywheresoftware/b4a/objects/collections/List;
    .param p1, "Title"    # Ljava/lang/String;
    .param p2, "ba"    # Lanywheresoftware/b4a/BA;
    .annotation build Lanywheresoftware/b4a/BA$RaisesSynchronousEvents;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 520
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p2, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 521
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getSize()I

    move-result v6

    new-array v3, v6, [Ljava/lang/CharSequence;

    .line 522
    .local v3, "items":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getSize()I

    move-result v6

    if-lt v2, v6, :cond_0

    .line 529
    new-instance v1, Lanywheresoftware/b4a/Msgbox$DialogResponse;

    invoke-direct {v1, v8}, Lanywheresoftware/b4a/Msgbox$DialogResponse;-><init>(Z)V

    .line 530
    .local v1, "dr":Lanywheresoftware/b4a/Msgbox$DialogResponse;
    new-instance v5, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v5}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 531
    .local v5, "result":Lanywheresoftware/b4a/objects/collections/List;
    invoke-virtual {v5}, Lanywheresoftware/b4a/objects/collections/List;->Initialize()V

    .line 532
    const/4 v6, 0x0

    new-instance v7, Lanywheresoftware/b4a/keywords/Common$2;

    invoke-direct {v7, v5}, Lanywheresoftware/b4a/keywords/Common$2;-><init>(Lanywheresoftware/b4a/objects/collections/List;)V

    invoke-virtual {v0, v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 547
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 548
    const-string v6, "Ok"

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 549
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-static {v6, v8}, Lanywheresoftware/b4a/Msgbox;->msgbox(Landroid/app/AlertDialog;Z)V

    .line 550
    iget v6, v1, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 551
    invoke-virtual {v5}, Lanywheresoftware/b4a/objects/collections/List;->Clear()V

    .line 555
    :goto_1
    return-object v5

    .line 523
    .end local v1    # "dr":Lanywheresoftware/b4a/Msgbox$DialogResponse;
    .end local v5    # "result":Lanywheresoftware/b4a/objects/collections/List;
    :cond_0
    invoke-virtual {p0, v2}, Lanywheresoftware/b4a/objects/collections/List;->Get(I)Ljava/lang/Object;

    move-result-object v4

    .line 524
    .local v4, "o":Ljava/lang/Object;
    instance-of v6, v4, Ljava/lang/CharSequence;

    if-eqz v6, :cond_1

    .line 525
    check-cast v4, Ljava/lang/CharSequence;

    .end local v4    # "o":Ljava/lang/Object;
    aput-object v4, v3, v2

    .line 522
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 527
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    goto :goto_2

    .line 554
    .end local v4    # "o":Ljava/lang/Object;
    .restart local v1    # "dr":Lanywheresoftware/b4a/Msgbox$DialogResponse;
    .restart local v5    # "result":Lanywheresoftware/b4a/objects/collections/List;
    :cond_2
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lanywheresoftware/b4a/objects/collections/List;->Sort(Z)V

    goto :goto_1
.end method

.method public static Is()V
    .locals 0

    .prologue
    .line 1334
    return-void
.end method

.method public static IsBackgroundTaskRunning(Lanywheresoftware/b4a/BA;Ljava/lang/Object;I)Z
    .locals 1
    .param p0, "ba"    # Lanywheresoftware/b4a/BA;
    .param p1, "ContainerObject"    # Ljava/lang/Object;
    .param p2, "TaskId"    # I

    .prologue
    .line 1099
    invoke-static {p1, p2}, Lanywheresoftware/b4a/BA;->isTaskRunning(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public static IsNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "Text"    # Ljava/lang/String;

    .prologue
    .line 639
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    const/4 v1, 0x1

    .line 642
    :goto_0
    return v1

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static IsPaused(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "mine"    # Lanywheresoftware/b4a/BA;
    .param p1, "Component"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 983
    invoke-static {p0, p1}, Lanywheresoftware/b4a/keywords/Common;->getComponentBA(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Lanywheresoftware/b4a/BA;

    move-result-object v0

    .line 984
    .local v0, "ba":Lanywheresoftware/b4a/BA;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lanywheresoftware/b4a/BA;->isActivityPaused()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static LastException(Lanywheresoftware/b4a/BA;)Lanywheresoftware/b4a/objects/B4AException;
    .locals 2
    .param p0, "ba"    # Lanywheresoftware/b4a/BA;

    .prologue
    .line 649
    new-instance v0, Lanywheresoftware/b4a/objects/B4AException;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/B4AException;-><init>()V

    .line 650
    .local v0, "e":Lanywheresoftware/b4a/objects/B4AException;
    invoke-virtual {p0}, Lanywheresoftware/b4a/BA;->getLastException()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/B4AException;->setObject(Ljava/lang/Object;)V

    .line 651
    return-object v0
.end method

.method public static LoadBitmap(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    .locals 1
    .param p0, "Dir"    # Ljava/lang/String;
    .param p1, "FileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1110
    new-instance v0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;-><init>()V

    .line 1111
    .local v0, "bw":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    invoke-virtual {v0, p0, p1}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->Initialize(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    return-object v0
.end method

.method public static LoadBitmapSample(Ljava/lang/String;Ljava/lang/String;II)Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    .locals 1
    .param p0, "Dir"    # Ljava/lang/String;
    .param p1, "FileName"    # Ljava/lang/String;
    .param p2, "MaxWidth"    # I
    .param p3, "MaxHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1122
    new-instance v0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;-><init>()V

    .line 1123
    .local v0, "bw":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    invoke-virtual {v0, p0, p1, p2, p3}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->InitializeSample(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1124
    return-object v0
.end method

.method public static Log(Ljava/lang/String;)V
    .locals 0
    .param p0, "Message"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-static {p0}, Lanywheresoftware/b4a/BA;->Log(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public static LogColor(Ljava/lang/String;I)V
    .locals 2
    .param p0, "Message"    # Ljava/lang/String;
    .param p1, "Color"    # I

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "c"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lanywheresoftware/b4a/BA;->addLogPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public static Logarithm(DD)D
    .locals 4
    .param p0, "Number"    # D
    .param p2, "Base"    # D

    .prologue
    .line 333
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static Max(DD)D
    .locals 2
    .param p0, "Number1"    # D
    .param p2, "Number2"    # D

    .prologue
    .line 219
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Max(II)D
    .locals 2
    .param p0, "Number1"    # I
    .param p1, "Number2"    # I
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 223
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public static Me(Lanywheresoftware/b4a/BA;)Ljava/lang/Object;
    .locals 1
    .param p0, "ba"    # Lanywheresoftware/b4a/BA;

    .prologue
    .line 1362
    const/4 v0, 0x0

    return-object v0
.end method

.method public static Min(DD)D
    .locals 2
    .param p0, "Number1"    # D
    .param p2, "Number2"    # D

    .prologue
    .line 229
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Min(II)D
    .locals 2
    .param p0, "Number1"    # I
    .param p1, "Number2"    # I
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 233
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public static Msgbox(Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/BA;)V
    .locals 7
    .param p0, "Message"    # Ljava/lang/String;
    .param p1, "Title"    # Ljava/lang/String;
    .param p2, "ba"    # Lanywheresoftware/b4a/BA;
    .annotation build Lanywheresoftware/b4a/BA$RaisesSynchronousEvents;
    .end annotation

    .prologue
    const-string v3, ""

    .line 400
    const-string v2, "OK"

    const-string v0, ""

    const-string v0, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lanywheresoftware/b4a/keywords/Common;->Msgbox2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lanywheresoftware/b4a/BA;)I

    .line 401
    return-void
.end method

.method public static Msgbox2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lanywheresoftware/b4a/BA;)I
    .locals 6
    .param p0, "Message"    # Ljava/lang/String;
    .param p1, "Title"    # Ljava/lang/String;
    .param p2, "Positive"    # Ljava/lang/String;
    .param p3, "Cancel"    # Ljava/lang/String;
    .param p4, "Negative"    # Ljava/lang/String;
    .param p5, "Icon"    # Landroid/graphics/Bitmap;
    .param p6, "ba"    # Lanywheresoftware/b4a/BA;
    .annotation build Lanywheresoftware/b4a/BA$RaisesSynchronousEvents;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 419
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p6, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 420
    .local v1, "b":Landroid/app/AlertDialog$Builder;
    new-instance v3, Lanywheresoftware/b4a/Msgbox$DialogResponse;

    invoke-direct {v3, v5}, Lanywheresoftware/b4a/Msgbox$DialogResponse;-><init>(Z)V

    .line 421
    .local v3, "dr":Lanywheresoftware/b4a/Msgbox$DialogResponse;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 422
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 423
    invoke-virtual {v1, p2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 424
    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 425
    invoke-virtual {v1, p4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 426
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 427
    invoke-virtual {v1, p3, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 428
    :cond_2
    if-eqz p5, :cond_3

    .line 429
    new-instance v2, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;

    invoke-direct {v2}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;-><init>()V

    .line 430
    .local v2, "bd":Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;
    invoke-virtual {v2, p5}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->Initialize(Landroid/graphics/Bitmap;)V

    .line 431
    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "Message":Ljava/lang/String;
    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 433
    .end local v2    # "bd":Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;
    :cond_3
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 434
    .local v0, "ad":Landroid/app/AlertDialog;
    invoke-static {v0, v5}, Lanywheresoftware/b4a/Msgbox;->msgbox(Landroid/app/AlertDialog;Z)V

    .line 435
    iget v4, v3, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    return v4
.end method

.method public static Not(Z)Z
    .locals 1
    .param p0, "Value"    # Z

    .prologue
    .line 184
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static NumberFormat(DII)Ljava/lang/String;
    .locals 1
    .param p0, "Number"    # D
    .param p2, "MinimumIntegers"    # I
    .param p3, "MaximumFractions"    # I

    .prologue
    .line 131
    sget-object v0, Lanywheresoftware/b4a/BA;->numberFormat:Ljava/text/NumberFormat;

    if-nez v0, :cond_0

    .line 132
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lanywheresoftware/b4a/BA;->numberFormat:Ljava/text/NumberFormat;

    .line 133
    :cond_0
    sget-object v0, Lanywheresoftware/b4a/BA;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p3}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 134
    sget-object v0, Lanywheresoftware/b4a/BA;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p2}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 135
    sget-object v0, Lanywheresoftware/b4a/BA;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static NumberFormat2(DIIIZ)Ljava/lang/String;
    .locals 1
    .param p0, "Number"    # D
    .param p2, "MinimumIntegers"    # I
    .param p3, "MaximumFractions"    # I
    .param p4, "MinimumFractions"    # I
    .param p5, "GroupingUsed"    # Z

    .prologue
    .line 146
    sget-object v0, Lanywheresoftware/b4a/BA;->numberFormat:Ljava/text/NumberFormat;

    if-nez v0, :cond_0

    .line 147
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lanywheresoftware/b4a/BA;->numberFormat:Ljava/text/NumberFormat;

    .line 148
    :cond_0
    sget-object v0, Lanywheresoftware/b4a/BA;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p3}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 149
    sget-object v0, Lanywheresoftware/b4a/BA;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p2}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 150
    sget-object v0, Lanywheresoftware/b4a/BA;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p4}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 151
    sget-object v0, Lanywheresoftware/b4a/BA;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p5}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 152
    sget-object v0, Lanywheresoftware/b4a/BA;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static PerXToCurrent(FLanywheresoftware/b4a/BA;)I
    .locals 2
    .param p0, "Percentage"    # F
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;

    .prologue
    .line 618
    const/high16 v0, 0x42c80000    # 100.0f

    div-float v0, p0, v0

    iget-object v1, p1, Lanywheresoftware/b4a/BA;->vg:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {v1}, Lanywheresoftware/b4a/BALayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static PerYToCurrent(FLanywheresoftware/b4a/BA;)I
    .locals 2
    .param p0, "Percentage"    # F
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;

    .prologue
    .line 632
    const/high16 v0, 0x42c80000    # 100.0f

    div-float v0, p0, v0

    iget-object v1, p1, Lanywheresoftware/b4a/BA;->vg:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {v1}, Lanywheresoftware/b4a/BALayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static Power(DD)D
    .locals 2
    .param p0, "Base"    # D
    .param p2, "Exponent"    # D

    .prologue
    .line 275
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Private()V
    .locals 0

    .prologue
    .line 1295
    return-void
.end method

.method public static ProgressDialogHide()V
    .locals 0

    .prologue
    .line 581
    invoke-static {}, Lanywheresoftware/b4a/Msgbox;->dismissProgressDialog()V

    .line 582
    return-void
.end method

.method public static ProgressDialogShow(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 1
    .param p0, "ba"    # Lanywheresoftware/b4a/BA;
    .param p1, "Text"    # Ljava/lang/String;

    .prologue
    .line 564
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lanywheresoftware/b4a/keywords/Common;->ProgressDialogShow2(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 565
    return-void
.end method

.method public static ProgressDialogShow2(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "ba"    # Lanywheresoftware/b4a/BA;
    .param p1, "Text"    # Ljava/lang/String;
    .param p2, "Cancelable"    # Z

    .prologue
    .line 573
    invoke-static {}, Lanywheresoftware/b4a/keywords/Common;->ProgressDialogHide()V

    .line 574
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 575
    iget-object v1, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    const-string v2, ""

    const/4 v3, 0x1

    invoke-static {v1, v2, p1, v3, p2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 574
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lanywheresoftware/b4a/Msgbox;->pd:Ljava/lang/ref/WeakReference;

    .line 576
    return-void
.end method

.method public static Public()V
    .locals 0

    .prologue
    .line 1292
    return-void
.end method

.method public static Return()V
    .locals 0

    .prologue
    .line 1264
    return-void
.end method

.method public static Rnd(II)I
    .locals 2
    .param p0, "Min"    # I
    .param p1, "Max"    # I

    .prologue
    .line 201
    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->random:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lanywheresoftware/b4a/keywords/Common;->random:Ljava/util/Random;

    .line 203
    :cond_0
    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->random:Ljava/util/Random;

    sub-int v1, p1, p0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static RndSeed(J)V
    .locals 1
    .param p0, "Seed"    # J

    .prologue
    .line 191
    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->random:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p0, p1}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lanywheresoftware/b4a/keywords/Common;->random:Ljava/util/Random;

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_0
    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->random:Ljava/util/Random;

    invoke-virtual {v0, p0, p1}, Ljava/util/Random;->setSeed(J)V

    goto :goto_0
.end method

.method public static Round(D)J
    .locals 2
    .param p0, "Number"    # D

    .prologue
    .line 339
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static Round2(DI)D
    .locals 6
    .param p0, "Number"    # D
    .param p2, "DecimalPlaces"    # I

    .prologue
    .line 345
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 346
    .local v0, "shift":D
    mul-double v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public static Select()V
    .locals 0

    .prologue
    .line 1320
    return-void
.end method

.method public static Sender(Lanywheresoftware/b4a/BA;)Ljava/lang/Object;
    .locals 1
    .param p0, "ba"    # Lanywheresoftware/b4a/BA;

    .prologue
    .line 178
    invoke-virtual {p0}, Lanywheresoftware/b4a/BA;->getSender()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static Sin(D)D
    .locals 2
    .param p0, "Radians"    # D

    .prologue
    .line 239
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static SinD(D)D
    .locals 4
    .param p0, "Degrees"    # D

    .prologue
    .line 245
    const-wide v0, 0x4066800000000000L    # 180.0

    div-double v0, p0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Sqrt(D)D
    .locals 2
    .param p0, "Value"    # D

    .prologue
    .line 281
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static StartActivity(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)V
    .locals 2
    .param p0, "mine"    # Lanywheresoftware/b4a/BA;
    .param p1, "Activity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 679
    invoke-static {p0, p1}, Lanywheresoftware/b4a/keywords/Common;->getComponentIntent(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    .line 680
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 681
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 686
    :goto_0
    iget-object v1, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 688
    return-void

    .line 684
    :cond_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static StartService(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)V
    .locals 2
    .param p0, "mine"    # Lanywheresoftware/b4a/BA;
    .param p1, "Service"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 698
    sget-boolean v0, Lanywheresoftware/b4a/BA;->shellMode:Z

    if-eqz v0, :cond_0

    .line 699
    sget-object v0, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    new-instance v1, Lanywheresoftware/b4a/keywords/Common$3;

    invoke-direct {v1, p0, p1}, Lanywheresoftware/b4a/keywords/Common$3;-><init>(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 719
    :goto_0
    return-void

    .line 710
    :cond_0
    sget-object v0, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    new-instance v1, Lanywheresoftware/b4a/keywords/Common$4;

    invoke-direct {v1}, Lanywheresoftware/b4a/keywords/Common$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 716
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-static {p0, p1}, Lanywheresoftware/b4a/keywords/Common;->getComponentIntent(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 717
    const/4 v0, 0x1

    sput-boolean v0, Lanywheresoftware/b4a/Msgbox;->isDismissing:Z

    goto :goto_0
.end method

.method public static StartServiceAt(Lanywheresoftware/b4a/BA;Ljava/lang/Object;JZ)V
    .locals 6
    .param p0, "mine"    # Lanywheresoftware/b4a/BA;
    .param p1, "Service"    # Ljava/lang/Object;
    .param p2, "Time"    # J
    .param p4, "DuringSleep"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 732
    sget-object v2, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 733
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-static {p0, p1}, Lanywheresoftware/b4a/keywords/Common;->getComponentIntent(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v3

    .line 734
    const/high16 v4, 0x8000000

    .line 733
    invoke-static {v2, v5, v3, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 735
    .local v1, "pi":Landroid/app/PendingIntent;
    if-eqz p4, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 736
    return-void

    :cond_0
    move v2, v5

    .line 735
    goto :goto_0
.end method

.method public static StopService(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)V
    .locals 2
    .param p0, "mine"    # Lanywheresoftware/b4a/BA;
    .param p1, "Service"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 772
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-static {p0, p1}, Lanywheresoftware/b4a/keywords/Common;->getComponentIntent(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 773
    return-void
.end method

.method public static Sub()V
    .locals 0

    .prologue
    .line 1280
    return-void
.end method

.method public static SubExists(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2
    .param p0, "mine"    # Lanywheresoftware/b4a/BA;
    .param p1, "Object"    # Ljava/lang/Object;
    .param p2, "Sub"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 784
    if-nez p1, :cond_1

    .line 789
    :cond_0
    :goto_0
    return v1

    .line 786
    :cond_1
    invoke-static {p0, p1}, Lanywheresoftware/b4a/keywords/Common;->getComponentBA(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Lanywheresoftware/b4a/BA;

    move-result-object v0

    .line 787
    .local v0, "ba":Lanywheresoftware/b4a/BA;
    if-eqz v0, :cond_0

    .line 789
    sget-object v1, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static Tan(D)D
    .locals 2
    .param p0, "Radians"    # D

    .prologue
    .line 263
    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static TanD(D)D
    .locals 4
    .param p0, "Degrees"    # D

    .prologue
    .line 269
    const-wide v0, 0x4066800000000000L    # 180.0

    div-double v0, p0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ToastMessageShow(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "Message"    # Ljava/lang/String;
    .param p1, "LongDuration"    # Z

    .prologue
    .line 389
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 390
    return-void

    .line 389
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static Try()V
    .locals 0

    .prologue
    .line 1165
    return-void
.end method

.method public static Type()V
    .locals 0

    .prologue
    .line 1257
    return-void
.end method

.method public static Until()V
    .locals 0

    .prologue
    .line 1218
    return-void
.end method

.method public static While()V
    .locals 0

    .prologue
    .line 1208
    return-void
.end method

.method static synthetic access$0(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Lanywheresoftware/b4a/BA;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 986
    invoke-static {p0, p1}, Lanywheresoftware/b4a/keywords/Common;->getComponentBA(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Lanywheresoftware/b4a/BA;

    move-result-object v0

    return-object v0
.end method

.method private static getComponentBA(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Lanywheresoftware/b4a/BA;
    .locals 4
    .param p0, "mine"    # Lanywheresoftware/b4a/BA;
    .param p1, "Component"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 988
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 989
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    .line 997
    .end local p1    # "Component":Ljava/lang/Object;
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-string v2, "processBA"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "mine":Lanywheresoftware/b4a/BA;
    check-cast p0, Lanywheresoftware/b4a/BA;

    move-object v2, p0

    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    return-object v2

    .line 990
    .restart local p0    # "mine":Lanywheresoftware/b4a/BA;
    .restart local p1    # "Component":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Lanywheresoftware/b4a/B4AClass;

    if-eqz v2, :cond_1

    .line 991
    check-cast p1, Lanywheresoftware/b4a/B4AClass;

    .end local p1    # "Component":Ljava/lang/Object;
    invoke-interface {p1}, Lanywheresoftware/b4a/B4AClass;->getBA()Lanywheresoftware/b4a/BA;

    move-result-object v2

    goto :goto_1

    .line 993
    .restart local p1    # "Component":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move-object v2, p0

    .line 994
    goto :goto_1

    .line 996
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast p1, Ljava/lang/String;

    .end local p1    # "Component":Ljava/lang/Object;
    sget-object v3, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .restart local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0
.end method

.method public static getComponentIntent(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 5
    .param p0, "mine"    # Lanywheresoftware/b4a/BA;
    .param p1, "component"    # Ljava/lang/Object;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 749
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 750
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    check-cast p1, Ljava/lang/Class;

    .end local p1    # "component":Ljava/lang/Object;
    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 763
    .local v1, "i":Landroid/content/Intent;
    :goto_0
    return-object v1

    .line 752
    .end local v1    # "i":Landroid/content/Intent;
    .restart local p1    # "component":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 753
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    iget-object v3, p0, Lanywheresoftware/b4a/BA;->className:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v1    # "i":Landroid/content/Intent;
    goto :goto_0

    .line 755
    .end local v1    # "i":Landroid/content/Intent;
    :cond_2
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 756
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 757
    check-cast p1, Ljava/lang/String;

    .end local p1    # "component":Ljava/lang/Object;
    sget-object v4, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 756
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v1    # "i":Landroid/content/Intent;
    goto :goto_0

    .line 761
    .end local v1    # "i":Landroid/content/Intent;
    .restart local p1    # "component":Ljava/lang/Object;
    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    move-object v1, v0

    .restart local v1    # "i":Landroid/content/Intent;
    goto :goto_0
.end method

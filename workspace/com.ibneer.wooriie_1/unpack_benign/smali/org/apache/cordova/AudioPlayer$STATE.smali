.class public final enum Lorg/apache/cordova/AudioPlayer$STATE;
.super Ljava/lang/Enum;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/cordova/AudioPlayer$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/cordova/AudioPlayer$STATE;

.field public static final enum MEDIA_LOADING:Lorg/apache/cordova/AudioPlayer$STATE;

.field public static final enum MEDIA_NONE:Lorg/apache/cordova/AudioPlayer$STATE;

.field public static final enum MEDIA_PAUSED:Lorg/apache/cordova/AudioPlayer$STATE;

.field public static final enum MEDIA_RUNNING:Lorg/apache/cordova/AudioPlayer$STATE;

.field public static final enum MEDIA_STARTING:Lorg/apache/cordova/AudioPlayer$STATE;

.field public static final enum MEDIA_STOPPED:Lorg/apache/cordova/AudioPlayer$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    new-instance v0, Lorg/apache/cordova/AudioPlayer$STATE;

    const-string v1, "MEDIA_NONE"

    invoke-direct {v0, v1, v3}, Lorg/apache/cordova/AudioPlayer$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_NONE:Lorg/apache/cordova/AudioPlayer$STATE;

    .line 50
    new-instance v0, Lorg/apache/cordova/AudioPlayer$STATE;

    const-string v1, "MEDIA_STARTING"

    invoke-direct {v0, v1, v4}, Lorg/apache/cordova/AudioPlayer$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_STARTING:Lorg/apache/cordova/AudioPlayer$STATE;

    .line 51
    new-instance v0, Lorg/apache/cordova/AudioPlayer$STATE;

    const-string v1, "MEDIA_RUNNING"

    invoke-direct {v0, v1, v5}, Lorg/apache/cordova/AudioPlayer$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_RUNNING:Lorg/apache/cordova/AudioPlayer$STATE;

    .line 52
    new-instance v0, Lorg/apache/cordova/AudioPlayer$STATE;

    const-string v1, "MEDIA_PAUSED"

    invoke-direct {v0, v1, v6}, Lorg/apache/cordova/AudioPlayer$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_PAUSED:Lorg/apache/cordova/AudioPlayer$STATE;

    .line 53
    new-instance v0, Lorg/apache/cordova/AudioPlayer$STATE;

    const-string v1, "MEDIA_STOPPED"

    invoke-direct {v0, v1, v7}, Lorg/apache/cordova/AudioPlayer$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_STOPPED:Lorg/apache/cordova/AudioPlayer$STATE;

    .line 54
    new-instance v0, Lorg/apache/cordova/AudioPlayer$STATE;

    const-string v1, "MEDIA_LOADING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/AudioPlayer$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_LOADING:Lorg/apache/cordova/AudioPlayer$STATE;

    .line 49
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/cordova/AudioPlayer$STATE;

    sget-object v1, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_NONE:Lorg/apache/cordova/AudioPlayer$STATE;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_STARTING:Lorg/apache/cordova/AudioPlayer$STATE;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_RUNNING:Lorg/apache/cordova/AudioPlayer$STATE;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_PAUSED:Lorg/apache/cordova/AudioPlayer$STATE;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_STOPPED:Lorg/apache/cordova/AudioPlayer$STATE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_LOADING:Lorg/apache/cordova/AudioPlayer$STATE;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/cordova/AudioPlayer$STATE;->$VALUES:[Lorg/apache/cordova/AudioPlayer$STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/cordova/AudioPlayer$STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Lorg/apache/cordova/AudioPlayer$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer$STATE;

    return-object v0
.end method

.method public static values()[Lorg/apache/cordova/AudioPlayer$STATE;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lorg/apache/cordova/AudioPlayer$STATE;->$VALUES:[Lorg/apache/cordova/AudioPlayer$STATE;

    invoke-virtual {v0}, [Lorg/apache/cordova/AudioPlayer$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/cordova/AudioPlayer$STATE;

    return-object v0
.end method

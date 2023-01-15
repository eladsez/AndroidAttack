.class public final enum Ljp/Adlantis/Android/AdlantisView$AnimationType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/Adlantis/Android/AdlantisView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljp/Adlantis/Android/AdlantisView$AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljp/Adlantis/Android/AdlantisView$AnimationType;

.field public static final enum FADE:Ljp/Adlantis/Android/AdlantisView$AnimationType;

.field public static final enum NONE:Ljp/Adlantis/Android/AdlantisView$AnimationType;

.field public static final enum SLIDE_FROM_LEFT:Ljp/Adlantis/Android/AdlantisView$AnimationType;

.field public static final enum SLIDE_FROM_RIGHT:Ljp/Adlantis/Android/AdlantisView$AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljp/Adlantis/Android/AdlantisView$AnimationType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Ljp/Adlantis/Android/AdlantisView$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/Adlantis/Android/AdlantisView$AnimationType;->NONE:Ljp/Adlantis/Android/AdlantisView$AnimationType;

    new-instance v0, Ljp/Adlantis/Android/AdlantisView$AnimationType;

    const-string v1, "FADE"

    invoke-direct {v0, v1, v3}, Ljp/Adlantis/Android/AdlantisView$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/Adlantis/Android/AdlantisView$AnimationType;->FADE:Ljp/Adlantis/Android/AdlantisView$AnimationType;

    new-instance v0, Ljp/Adlantis/Android/AdlantisView$AnimationType;

    const-string v1, "SLIDE_FROM_RIGHT"

    invoke-direct {v0, v1, v4}, Ljp/Adlantis/Android/AdlantisView$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/Adlantis/Android/AdlantisView$AnimationType;->SLIDE_FROM_RIGHT:Ljp/Adlantis/Android/AdlantisView$AnimationType;

    new-instance v0, Ljp/Adlantis/Android/AdlantisView$AnimationType;

    const-string v1, "SLIDE_FROM_LEFT"

    invoke-direct {v0, v1, v5}, Ljp/Adlantis/Android/AdlantisView$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/Adlantis/Android/AdlantisView$AnimationType;->SLIDE_FROM_LEFT:Ljp/Adlantis/Android/AdlantisView$AnimationType;

    const/4 v0, 0x4

    new-array v0, v0, [Ljp/Adlantis/Android/AdlantisView$AnimationType;

    sget-object v1, Ljp/Adlantis/Android/AdlantisView$AnimationType;->NONE:Ljp/Adlantis/Android/AdlantisView$AnimationType;

    aput-object v1, v0, v2

    sget-object v1, Ljp/Adlantis/Android/AdlantisView$AnimationType;->FADE:Ljp/Adlantis/Android/AdlantisView$AnimationType;

    aput-object v1, v0, v3

    sget-object v1, Ljp/Adlantis/Android/AdlantisView$AnimationType;->SLIDE_FROM_RIGHT:Ljp/Adlantis/Android/AdlantisView$AnimationType;

    aput-object v1, v0, v4

    sget-object v1, Ljp/Adlantis/Android/AdlantisView$AnimationType;->SLIDE_FROM_LEFT:Ljp/Adlantis/Android/AdlantisView$AnimationType;

    aput-object v1, v0, v5

    sput-object v0, Ljp/Adlantis/Android/AdlantisView$AnimationType;->$VALUES:[Ljp/Adlantis/Android/AdlantisView$AnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/Adlantis/Android/AdlantisView$AnimationType;
    .locals 1

    const-class v0, Ljp/Adlantis/Android/AdlantisView$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljp/Adlantis/Android/AdlantisView$AnimationType;

    return-object p0
.end method

.method public static values()[Ljp/Adlantis/Android/AdlantisView$AnimationType;
    .locals 1

    sget-object v0, Ljp/Adlantis/Android/AdlantisView$AnimationType;->$VALUES:[Ljp/Adlantis/Android/AdlantisView$AnimationType;

    invoke-virtual {v0}, [Ljp/Adlantis/Android/AdlantisView$AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/Adlantis/Android/AdlantisView$AnimationType;

    return-object v0
.end method

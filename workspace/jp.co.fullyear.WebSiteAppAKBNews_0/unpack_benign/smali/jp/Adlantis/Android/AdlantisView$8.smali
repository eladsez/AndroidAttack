.class synthetic Ljp/Adlantis/Android/AdlantisView$8;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/Adlantis/Android/AdlantisView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$jp$Adlantis$Android$AdlantisView$AnimationType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljp/Adlantis/Android/AdlantisView$AnimationType;->values()[Ljp/Adlantis/Android/AdlantisView$AnimationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ljp/Adlantis/Android/AdlantisView$8;->$SwitchMap$jp$Adlantis$Android$AdlantisView$AnimationType:[I

    :try_start_0
    sget-object v0, Ljp/Adlantis/Android/AdlantisView$8;->$SwitchMap$jp$Adlantis$Android$AdlantisView$AnimationType:[I

    sget-object v1, Ljp/Adlantis/Android/AdlantisView$AnimationType;->NONE:Ljp/Adlantis/Android/AdlantisView$AnimationType;

    invoke-virtual {v1}, Ljp/Adlantis/Android/AdlantisView$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Ljp/Adlantis/Android/AdlantisView$8;->$SwitchMap$jp$Adlantis$Android$AdlantisView$AnimationType:[I

    sget-object v1, Ljp/Adlantis/Android/AdlantisView$AnimationType;->FADE:Ljp/Adlantis/Android/AdlantisView$AnimationType;

    invoke-virtual {v1}, Ljp/Adlantis/Android/AdlantisView$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Ljp/Adlantis/Android/AdlantisView$8;->$SwitchMap$jp$Adlantis$Android$AdlantisView$AnimationType:[I

    sget-object v1, Ljp/Adlantis/Android/AdlantisView$AnimationType;->SLIDE_FROM_RIGHT:Ljp/Adlantis/Android/AdlantisView$AnimationType;

    invoke-virtual {v1}, Ljp/Adlantis/Android/AdlantisView$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Ljp/Adlantis/Android/AdlantisView$8;->$SwitchMap$jp$Adlantis$Android$AdlantisView$AnimationType:[I

    sget-object v1, Ljp/Adlantis/Android/AdlantisView$AnimationType;->SLIDE_FROM_LEFT:Ljp/Adlantis/Android/AdlantisView$AnimationType;

    invoke-virtual {v1}, Ljp/Adlantis/Android/AdlantisView$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method

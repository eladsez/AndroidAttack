.class public final Lorg/hermit/dsp/Window;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hermit/dsp/Window$Function;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$hermit$dsp$Window$Function:[I = null

.field private static final BH_A0:D = 0.35875

.field private static final BH_A1:D = 0.48829

.field private static final BH_A2:D = 0.14128

.field private static final BH_A3:D = 0.01168

.field private static final DEFAULT_FUNC:Lorg/hermit/dsp/Window$Function;


# instance fields
.field private final blockSize:I

.field private final kernel:[D


# direct methods
.method static synthetic $SWITCH_TABLE$org$hermit$dsp$Window$Function()[I
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lorg/hermit/dsp/Window;->$SWITCH_TABLE$org$hermit$dsp$Window$Function:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/hermit/dsp/Window$Function;->values()[Lorg/hermit/dsp/Window$Function;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/hermit/dsp/Window$Function;->BLACKMAN_HARRIS:Lorg/hermit/dsp/Window$Function;

    invoke-virtual {v1}, Lorg/hermit/dsp/Window$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lorg/hermit/dsp/Window$Function;->GAUSS:Lorg/hermit/dsp/Window$Function;

    invoke-virtual {v1}, Lorg/hermit/dsp/Window$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lorg/hermit/dsp/Window$Function;->RECTANGULAR:Lorg/hermit/dsp/Window$Function;

    invoke-virtual {v1}, Lorg/hermit/dsp/Window$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lorg/hermit/dsp/Window$Function;->WEEDON_GAUSS:Lorg/hermit/dsp/Window$Function;

    invoke-virtual {v1}, Lorg/hermit/dsp/Window$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lorg/hermit/dsp/Window;->$SWITCH_TABLE$org$hermit$dsp$Window$Function:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lorg/hermit/dsp/Window$Function;->BLACKMAN_HARRIS:Lorg/hermit/dsp/Window$Function;

    sput-object v0, Lorg/hermit/dsp/Window;->DEFAULT_FUNC:Lorg/hermit/dsp/Window$Function;

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 63
    sget-object v0, Lorg/hermit/dsp/Window;->DEFAULT_FUNC:Lorg/hermit/dsp/Window$Function;

    invoke-direct {p0, p1, v0}, Lorg/hermit/dsp/Window;-><init>(ILorg/hermit/dsp/Window$Function;)V

    .line 64
    return-void
.end method

.method public constructor <init>(ILorg/hermit/dsp/Window$Function;)V
    .locals 2
    .param p1, "size"    # I
    .param p2, "function"    # Lorg/hermit/dsp/Window$Function;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Lorg/hermit/dsp/Window;->blockSize:I

    .line 82
    sget-object v0, Lorg/hermit/dsp/Window$Function;->RECTANGULAR:Lorg/hermit/dsp/Window$Function;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/hermit/dsp/Window;->kernel:[D

    .line 84
    invoke-static {}, Lorg/hermit/dsp/Window;->$SWITCH_TABLE$org$hermit$dsp$Window$Function()[I

    move-result-object v0

    invoke-virtual {p2}, Lorg/hermit/dsp/Window$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 98
    :goto_1
    :pswitch_0
    return-void

    .line 82
    :cond_0
    new-array v0, p1, [D

    goto :goto_0

    .line 89
    :pswitch_1
    iget-object v0, p0, Lorg/hermit/dsp/Window;->kernel:[D

    invoke-direct {p0, v0, p1}, Lorg/hermit/dsp/Window;->makeBlackmanHarris([DI)V

    goto :goto_1

    .line 92
    :pswitch_2
    iget-object v0, p0, Lorg/hermit/dsp/Window;->kernel:[D

    invoke-direct {p0, v0, p1}, Lorg/hermit/dsp/Window;->makeGauss([DI)V

    goto :goto_1

    .line 95
    :pswitch_3
    iget-object v0, p0, Lorg/hermit/dsp/Window;->kernel:[D

    invoke-direct {p0, v0, p1}, Lorg/hermit/dsp/Window;->makeWeedonGauss([DI)V

    goto :goto_1

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private makeBlackmanHarris([DI)V
    .locals 11
    .param p1, "buf"    # [D
    .param p2, "len"    # I

    .prologue
    .line 106
    const/4 v5, 0x1

    sub-int v5, p2, v5

    int-to-double v3, v5

    .line 107
    .local v3, "n":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, p2, :cond_0

    .line 114
    return-void

    .line 108
    :cond_0
    const-wide v5, 0x400921fb54442d18L    # Math.PI

    int-to-double v7, v2

    mul-double/2addr v5, v7

    div-double v0, v5, v3

    .line 109
    .local v0, "f":D
    const-wide v5, 0x3fd6f5c28f5c28f6L    # 0.35875

    .line 110
    const-wide v7, 0x3fdf4024b33daf8eL    # 0.48829

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    .line 111
    const-wide v7, 0x3fc2157689ca18bdL    # 0.14128

    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    mul-double/2addr v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    .line 112
    const-wide v7, 0x3f87ebaf102363b2L    # 0.01168

    const-wide/high16 v9, 0x4018000000000000L    # 6.0

    mul-double/2addr v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    .line 109
    aput-wide v5, p1, v2

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private makeGauss([DI)V
    .locals 9
    .param p1, "buf"    # [D
    .param p2, "len"    # I

    .prologue
    .line 118
    const/4 v5, 0x1

    sub-int v5, p2, v5

    int-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double v3, v5, v7

    .line 120
    .local v3, "k":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, p2, :cond_0

    .line 124
    return-void

    .line 121
    :cond_0
    int-to-double v5, v2

    sub-double/2addr v5, v3

    const-wide v7, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v7, v3

    div-double v0, v5, v7

    .line 122
    .local v0, "d":D
    const-wide/high16 v5, -0x4020000000000000L    # -0.5

    mul-double/2addr v5, v0

    mul-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    aput-wide v5, p1, v2

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private makeWeedonGauss([DI)V
    .locals 11
    .param p1, "buf"    # [D
    .param p2, "len"    # I

    .prologue
    .line 128
    const-wide v7, -0x3fa3380000000000L    # -115.125

    mul-int v9, p2, p2

    int-to-double v9, v9

    div-double v3, v7, v9

    .line 129
    .local v3, "k":D
    int-to-double v7, p2

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double v0, v7, v9

    .line 131
    .local v0, "d":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, p2, :cond_0

    .line 135
    return-void

    .line 132
    :cond_0
    int-to-double v7, v2

    sub-double v5, v7, v0

    .line 133
    .local v5, "n":D
    mul-double v7, v5, v5

    mul-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    aput-wide v7, p1, v2

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final transform([D)V
    .locals 2
    .param p1, "input"    # [D

    .prologue
    .line 151
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/hermit/dsp/Window;->transform([DII)V

    .line 152
    return-void
.end method

.method public final transform([DII)V
    .locals 6
    .param p1, "input"    # [D
    .param p2, "off"    # I
    .param p3, "count"    # I

    .prologue
    .line 169
    iget v1, p0, Lorg/hermit/dsp/Window;->blockSize:I

    if-eq p3, v1, :cond_0

    .line 170
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bad input count in Window: constructed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    iget v3, p0, Lorg/hermit/dsp/Window;->blockSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 172
    const-string v3, "; given "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_0
    iget-object v1, p0, Lorg/hermit/dsp/Window;->kernel:[D

    if-eqz v1, :cond_1

    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/hermit/dsp/Window;->blockSize:I

    if-lt v0, v1, :cond_2

    .line 176
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 175
    .restart local v0    # "i":I
    :cond_2
    add-int v1, p2, v0

    aget-wide v2, p1, v1

    iget-object v4, p0, Lorg/hermit/dsp/Window;->kernel:[D

    aget-wide v4, v4, v0

    mul-double/2addr v2, v4

    aput-wide v2, p1, v1

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

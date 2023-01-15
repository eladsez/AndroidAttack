.class Lcom/gp/netscramblefull/Cell;
.super Ljava/lang/Object;
.source "Cell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gp/netscramblefull/Cell$Dir;,
        Lcom/gp/netscramblefull/Cell$Image;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$gp$netscramblefull$Cell$Dir:[I = null

.field private static final BLIP_G_IMAGES:[Lcom/gp/netscramblefull/Cell$Image;

.field private static final BLIP_IMAGES:[Lcom/gp/netscramblefull/Cell$Image;

.field private static final BLIP_T_IMAGES:[Lcom/gp/netscramblefull/Cell$Image;

.field private static final HIGHLIGHT_TIME:J = 0xc8L

.field private static final ROTATE_DFLT_TIME:J = 0xfaL

.field private static final TAG:Ljava/lang/String; = "netscramble"


# instance fields
.field private blipsIncoming:I

.field private blipsOutgoing:I

.field private blipsTransfer:I

.field private cellHeight:I

.field private cellLeft:I

.field private cellPaint:Landroid/graphics/Paint;

.field private cellTop:I

.field private cellWidth:I

.field private connectedDirs:Lcom/gp/netscramblefull/Cell$Dir;

.field private haveFocus:Z

.field private highlightOn:Z

.field private highlightPos:I

.field private highlightStart:J

.field private isBlind:Z

.field private isConnected:Z

.field private isFullyConnected:Z

.field private isLocked:Z

.field private isRoot:Z

.field private nextD:Lcom/gp/netscramblefull/Cell;

.field private nextL:Lcom/gp/netscramblefull/Cell;

.field private nextR:Lcom/gp/netscramblefull/Cell;

.field private nextU:Lcom/gp/netscramblefull/Cell;

.field private rotateAngle:F

.field private rotateStart:J

.field private rotateTarget:F

.field private rotateTime:J

.field private stateValid:Z

.field private final xindex:I

.field private final yindex:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$gp$netscramblefull$Cell$Dir()[I
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lcom/gp/netscramblefull/Cell;->$SWITCH_TABLE$com$gp$netscramblefull$Cell$Dir:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/gp/netscramblefull/Cell$Dir;->values()[Lcom/gp/netscramblefull/Cell$Dir;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->FREE:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_10

    :goto_1
    :try_start_1
    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->NONE:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_f

    :goto_2
    :try_start_2
    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->URDL:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_e

    :goto_3
    :try_start_3
    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->URD_:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_d

    :goto_4
    :try_start_4
    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->UR_L:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_c

    :goto_5
    :try_start_5
    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->UR__:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_b

    :goto_6
    :try_start_6
    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->U_DL:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_a

    :goto_7
    :try_start_7
    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->U_D_:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_9

    :goto_8
    :try_start_8
    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->U__L:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :goto_9
    :try_start_9
    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->U___:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_7

    :goto_a
    :try_start_a
    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->_RDL:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_6

    :goto_b
    :try_start_b
    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->_RD_:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_5

    :goto_c
    :try_start_c
    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->_R_L:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_4

    :goto_d
    :try_start_d
    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->_R__:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_3

    :goto_e
    :try_start_e
    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->__DL:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_2

    :goto_f
    :try_start_f
    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->__D_:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_1

    :goto_10
    :try_start_10
    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->___L:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_0

    :goto_11
    sput-object v0, Lcom/gp/netscramblefull/Cell;->$SWITCH_TABLE$com$gp$netscramblefull$Cell$Dir:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_11

    :catch_1
    move-exception v1

    goto :goto_10

    :catch_2
    move-exception v1

    goto :goto_f

    :catch_3
    move-exception v1

    goto :goto_e

    :catch_4
    move-exception v1

    goto :goto_d

    :catch_5
    move-exception v1

    goto :goto_c

    :catch_6
    move-exception v1

    goto :goto_b

    :catch_7
    move-exception v1

    goto :goto_a

    :catch_8
    move-exception v1

    goto :goto_9

    :catch_9
    move-exception v1

    goto :goto_8

    :catch_a
    move-exception v1

    goto :goto_7

    :catch_b
    move-exception v1

    goto/16 :goto_6

    :catch_c
    move-exception v1

    goto/16 :goto_5

    :catch_d
    move-exception v1

    goto/16 :goto_4

    :catch_e
    move-exception v1

    goto/16 :goto_3

    :catch_f
    move-exception v1

    goto/16 :goto_2

    :catch_10
    move-exception v1

    goto/16 :goto_1
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1068
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/gp/netscramblefull/Cell$Image;

    .line 1069
    sget-object v1, Lcom/gp/netscramblefull/Cell$Image;->BLOB_14:Lcom/gp/netscramblefull/Cell$Image;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gp/netscramblefull/Cell$Image;->BLOB_15:Lcom/gp/netscramblefull/Cell$Image;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gp/netscramblefull/Cell$Image;->BLOB_16:Lcom/gp/netscramblefull/Cell$Image;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gp/netscramblefull/Cell$Image;->BLOB_17:Lcom/gp/netscramblefull/Cell$Image;

    aput-object v1, v0, v6

    .line 1070
    sget-object v1, Lcom/gp/netscramblefull/Cell$Image;->BLOB_18:Lcom/gp/netscramblefull/Cell$Image;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/gp/netscramblefull/Cell$Image;->BLOB_19:Lcom/gp/netscramblefull/Cell$Image;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/gp/netscramblefull/Cell$Image;->BLOB_20:Lcom/gp/netscramblefull/Cell$Image;

    aput-object v2, v0, v1

    .line 1068
    sput-object v0, Lcom/gp/netscramblefull/Cell;->BLIP_IMAGES:[Lcom/gp/netscramblefull/Cell$Image;

    .line 1074
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/gp/netscramblefull/Cell$Image;

    .line 1075
    sget-object v1, Lcom/gp/netscramblefull/Cell$Image;->BLOBG_14:Lcom/gp/netscramblefull/Cell$Image;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gp/netscramblefull/Cell$Image;->BLOBG_15:Lcom/gp/netscramblefull/Cell$Image;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gp/netscramblefull/Cell$Image;->BLOBG_16:Lcom/gp/netscramblefull/Cell$Image;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gp/netscramblefull/Cell$Image;->BLOBG_17:Lcom/gp/netscramblefull/Cell$Image;

    aput-object v1, v0, v6

    .line 1076
    sget-object v1, Lcom/gp/netscramblefull/Cell$Image;->BLOBG_18:Lcom/gp/netscramblefull/Cell$Image;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/gp/netscramblefull/Cell$Image;->BLOBG_19:Lcom/gp/netscramblefull/Cell$Image;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/gp/netscramblefull/Cell$Image;->BLOBG_20:Lcom/gp/netscramblefull/Cell$Image;

    aput-object v2, v0, v1

    .line 1074
    sput-object v0, Lcom/gp/netscramblefull/Cell;->BLIP_G_IMAGES:[Lcom/gp/netscramblefull/Cell$Image;

    .line 1080
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/gp/netscramblefull/Cell$Image;

    .line 1081
    sget-object v1, Lcom/gp/netscramblefull/Cell$Image;->BLIP_T01:Lcom/gp/netscramblefull/Cell$Image;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gp/netscramblefull/Cell$Image;->BLIP_T03:Lcom/gp/netscramblefull/Cell$Image;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gp/netscramblefull/Cell$Image;->BLIP_T05:Lcom/gp/netscramblefull/Cell$Image;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gp/netscramblefull/Cell$Image;->BLIP_T07:Lcom/gp/netscramblefull/Cell$Image;

    aput-object v1, v0, v6

    .line 1082
    sget-object v1, Lcom/gp/netscramblefull/Cell$Image;->BLIP_T08:Lcom/gp/netscramblefull/Cell$Image;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/gp/netscramblefull/Cell$Image;->BLIP_T09:Lcom/gp/netscramblefull/Cell$Image;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/gp/netscramblefull/Cell$Image;->BLIP_T10:Lcom/gp/netscramblefull/Cell$Image;

    aput-object v2, v0, v1

    .line 1080
    sput-object v0, Lcom/gp/netscramblefull/Cell;->BLIP_T_IMAGES:[Lcom/gp/netscramblefull/Cell$Image;

    .line 40
    return-void
.end method

.method constructor <init>(Lcom/gp/netscramblefull/NetScramble;Lcom/gp/netscramblefull/BoardView;II)V
    .locals 5
    .param p1, "parent"    # Lcom/gp/netscramblefull/NetScramble;
    .param p2, "board"    # Lcom/gp/netscramblefull/BoardView;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1128
    iput v0, p0, Lcom/gp/netscramblefull/Cell;->rotateTarget:F

    .line 1129
    iput-wide v3, p0, Lcom/gp/netscramblefull/Cell;->rotateStart:J

    .line 1130
    iput v0, p0, Lcom/gp/netscramblefull/Cell;->rotateAngle:F

    .line 1133
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/gp/netscramblefull/Cell;->rotateTime:J

    .line 1141
    iput-boolean v2, p0, Lcom/gp/netscramblefull/Cell;->highlightOn:Z

    .line 1142
    iput-wide v3, p0, Lcom/gp/netscramblefull/Cell;->highlightStart:J

    .line 1152
    iput v2, p0, Lcom/gp/netscramblefull/Cell;->blipsIncoming:I

    .line 1153
    iput v2, p0, Lcom/gp/netscramblefull/Cell;->blipsOutgoing:I

    .line 1157
    iput v2, p0, Lcom/gp/netscramblefull/Cell;->blipsTransfer:I

    .line 1195
    iput-boolean v2, p0, Lcom/gp/netscramblefull/Cell;->stateValid:Z

    .line 123
    iput p3, p0, Lcom/gp/netscramblefull/Cell;->xindex:I

    .line 124
    iput p4, p0, Lcom/gp/netscramblefull/Cell;->yindex:I

    .line 127
    iput v2, p0, Lcom/gp/netscramblefull/Cell;->cellLeft:I

    .line 128
    iput v2, p0, Lcom/gp/netscramblefull/Cell;->cellTop:I

    .line 129
    iput v2, p0, Lcom/gp/netscramblefull/Cell;->cellWidth:I

    .line 130
    iput v2, p0, Lcom/gp/netscramblefull/Cell;->cellHeight:I

    .line 131
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/gp/netscramblefull/Cell;->cellPaint:Landroid/graphics/Paint;

    .line 134
    sget-object v0, Lcom/gp/netscramblefull/Cell$Dir;->NONE:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-virtual {p0, v0}, Lcom/gp/netscramblefull/Cell;->reset(Lcom/gp/netscramblefull/Cell$Dir;)V

    .line 135
    return-void
.end method

.method private static greyOut(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "pixmap"    # Landroid/graphics/Bitmap;
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v2, 0x0

    .line 187
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 188
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 189
    .local v7, "h":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixels":[I
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 190
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 193
    const/4 v13, 0x0

    .local v13, "y":I
    :goto_0
    if-lt v13, v7, :cond_0

    .line 204
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 194
    :cond_0
    const/4 v12, 0x0

    .local v12, "x":I
    :goto_1
    if-lt v12, v3, :cond_1

    .line 193
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 195
    :cond_1
    mul-int v0, v13, v3

    add-int/2addr v0, v12

    aget v10, v1, v0

    .line 196
    .local v10, "pix":I
    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v11, v0, 0x64

    .line 197
    .local v11, "r":I
    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v9, v0, 0x64

    .line 198
    .local v9, "g":I
    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v8, v0, 0x64

    .line 199
    .local v8, "b":I
    mul-int v0, v13, v3

    add-int/2addr v0, v12

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-static {v2, v11, v9, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v1, v0

    .line 194
    add-int/lit8 v12, v12, 0x1

    goto :goto_1
.end method

.method static initPixmaps(Landroid/content/res/Resources;IILandroid/graphics/Bitmap$Config;)V
    .locals 10
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 154
    sget-object v4, Lcom/gp/netscramblefull/Cell$Dir;->dirs:[Lcom/gp/netscramblefull/Cell$Dir;

    array-length v5, v4

    move v6, v8

    :goto_0
    if-lt v6, v5, :cond_0

    .line 170
    invoke-static {}, Lcom/gp/netscramblefull/Cell$Image;->values()[Lcom/gp/netscramblefull/Cell$Image;

    move-result-object v4

    array-length v5, v4

    move v6, v8

    :goto_1
    if-lt v6, v5, :cond_2

    .line 175
    return-void

    .line 154
    :cond_0
    aget-object v1, v4, v6

    .line 155
    .local v1, "d":Lcom/gp/netscramblefull/Cell$Dir;
    iget v7, v1, Lcom/gp/netscramblefull/Cell$Dir;->imageId:I

    if-nez v7, :cond_1

    .line 154
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 160
    :cond_1
    iget v7, v1, Lcom/gp/netscramblefull/Cell$Dir;->imageId:I

    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 161
    .local v0, "base":Landroid/graphics/Bitmap;
    invoke-static {v0, p1, p2, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 162
    .local v3, "pixmap":Landroid/graphics/Bitmap;
    invoke-static {v1, v3}, Lcom/gp/netscramblefull/Cell$Dir;->access$2(Lcom/gp/netscramblefull/Cell$Dir;Landroid/graphics/Bitmap;)V

    .line 166
    invoke-static {v3, p3}, Lcom/gp/netscramblefull/Cell;->greyOut(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/gp/netscramblefull/Cell$Dir;->access$3(Lcom/gp/netscramblefull/Cell$Dir;Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 170
    .end local v0    # "base":Landroid/graphics/Bitmap;
    .end local v1    # "d":Lcom/gp/netscramblefull/Cell$Dir;
    .end local v3    # "pixmap":Landroid/graphics/Bitmap;
    :cond_2
    aget-object v2, v4, v6

    .line 171
    .local v2, "i":Lcom/gp/netscramblefull/Cell$Image;
    iget v7, v2, Lcom/gp/netscramblefull/Cell$Image;->resid:I

    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 172
    .restart local v0    # "base":Landroid/graphics/Bitmap;
    invoke-static {v0, p1, p2, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 173
    .restart local v3    # "pixmap":Landroid/graphics/Bitmap;
    iput-object v3, v2, Lcom/gp/netscramblefull/Cell$Image;->bitmap:Landroid/graphics/Bitmap;

    .line 170
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method


# virtual methods
.method addDir(Lcom/gp/netscramblefull/Cell$Dir;)V
    .locals 3
    .param p1, "d"    # Lcom/gp/netscramblefull/Cell$Dir;

    .prologue
    .line 419
    iget-object v1, p0, Lcom/gp/netscramblefull/Cell;->connectedDirs:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v0

    .line 420
    .local v0, "bits":I
    invoke-virtual {p1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v1

    and-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    invoke-virtual {p1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v1

    or-int/2addr v0, v1

    .line 424
    invoke-static {v0}, Lcom/gp/netscramblefull/Cell$Dir;->access$4(I)Lcom/gp/netscramblefull/Cell$Dir;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gp/netscramblefull/Cell;->setDirs(Lcom/gp/netscramblefull/Cell$Dir;)V

    goto :goto_0
.end method

.method advanceBlips(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 734
    iput v4, p0, Lcom/gp/netscramblefull/Cell;->blipsTransfer:I

    .line 735
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_0
    sget-object v3, Lcom/gp/netscramblefull/Cell$Dir;->cardinals:[Lcom/gp/netscramblefull/Cell$Dir;

    array-length v3, v3

    if-lt v0, v3, :cond_2

    .line 741
    iput v4, p0, Lcom/gp/netscramblefull/Cell;->blipsOutgoing:I

    .line 745
    iget v3, p0, Lcom/gp/netscramblefull/Cell;->blipsIncoming:I

    if-eqz v3, :cond_0

    .line 746
    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lcom/gp/netscramblefull/Cell$Dir;->cardinals:[Lcom/gp/netscramblefull/Cell$Dir;

    array-length v3, v3

    if-lt v0, v3, :cond_4

    .line 753
    :cond_0
    iput v4, p0, Lcom/gp/netscramblefull/Cell;->blipsIncoming:I

    .line 756
    iget-boolean v3, p0, Lcom/gp/netscramblefull/Cell;->isRoot:Z

    if-eqz v3, :cond_1

    rem-int/lit8 v3, p1, 0x6

    if-nez v3, :cond_1

    .line 757
    const/4 v0, 0x0

    :goto_2
    sget-object v3, Lcom/gp/netscramblefull/Cell$Dir;->cardinals:[Lcom/gp/netscramblefull/Cell$Dir;

    array-length v3, v3

    if-lt v0, v3, :cond_6

    .line 767
    :cond_1
    return-void

    .line 736
    :cond_2
    sget-object v3, Lcom/gp/netscramblefull/Cell$Dir;->cardinals:[Lcom/gp/netscramblefull/Cell$Dir;

    aget-object v1, v3, v0

    .line 737
    .local v1, "d":Lcom/gp/netscramblefull/Cell$Dir;
    invoke-virtual {v1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v2

    .line 738
    .local v2, "ord":I
    iget v3, p0, Lcom/gp/netscramblefull/Cell;->blipsOutgoing:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/gp/netscramblefull/Cell;->hasConnection(Lcom/gp/netscramblefull/Cell$Dir;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 739
    iget v3, p0, Lcom/gp/netscramblefull/Cell;->blipsTransfer:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/gp/netscramblefull/Cell;->blipsTransfer:I

    .line 735
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 747
    .end local v1    # "d":Lcom/gp/netscramblefull/Cell$Dir;
    .end local v2    # "ord":I
    :cond_4
    sget-object v3, Lcom/gp/netscramblefull/Cell$Dir;->cardinals:[Lcom/gp/netscramblefull/Cell$Dir;

    aget-object v1, v3, v0

    .line 748
    .restart local v1    # "d":Lcom/gp/netscramblefull/Cell$Dir;
    invoke-virtual {v1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v2

    .line 749
    .restart local v2    # "ord":I
    iget v3, p0, Lcom/gp/netscramblefull/Cell;->blipsIncoming:I

    and-int/2addr v3, v2

    if-nez v3, :cond_5

    invoke-virtual {p0, v1}, Lcom/gp/netscramblefull/Cell;->hasConnection(Lcom/gp/netscramblefull/Cell$Dir;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 750
    iget v3, p0, Lcom/gp/netscramblefull/Cell;->blipsOutgoing:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/gp/netscramblefull/Cell;->blipsOutgoing:I

    .line 746
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 758
    .end local v1    # "d":Lcom/gp/netscramblefull/Cell$Dir;
    .end local v2    # "ord":I
    :cond_6
    sget-object v3, Lcom/gp/netscramblefull/Cell$Dir;->cardinals:[Lcom/gp/netscramblefull/Cell$Dir;

    aget-object v1, v3, v0

    .line 759
    .restart local v1    # "d":Lcom/gp/netscramblefull/Cell$Dir;
    invoke-virtual {v1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v2

    .line 760
    .restart local v2    # "ord":I
    invoke-virtual {p0, v1}, Lcom/gp/netscramblefull/Cell;->hasConnection(Lcom/gp/netscramblefull/Cell$Dir;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 761
    iget v3, p0, Lcom/gp/netscramblefull/Cell;->blipsOutgoing:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/gp/netscramblefull/Cell;->blipsOutgoing:I

    .line 757
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method dirs()Lcom/gp/netscramblefull/Cell$Dir;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/gp/netscramblefull/Cell;->connectedDirs:Lcom/gp/netscramblefull/Cell$Dir;

    return-object v0
.end method

.method protected doDraw(Landroid/graphics/Canvas;J)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "now"    # J

    .prologue
    .line 811
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/gp/netscramblefull/Cell;->stateValid:Z

    move v5, v0

    if-eqz v5, :cond_0

    .line 906
    :goto_0
    return-void

    .line 814
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/netscramblefull/Cell;->cellLeft:I

    move/from16 v19, v0

    .line 815
    .local v19, "sx":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/netscramblefull/Cell;->cellTop:I

    move/from16 v20, v0

    .line 816
    .local v20, "sy":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/netscramblefull/Cell;->cellWidth:I

    move v5, v0

    add-int v13, v19, v5

    .line 817
    .local v13, "ex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/netscramblefull/Cell;->cellHeight:I

    move v5, v0

    add-int v14, v20, v5

    .line 818
    .local v14, "ey":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/netscramblefull/Cell;->cellWidth:I

    move v5, v0

    div-int/lit8 v5, v5, 0x2

    add-int v16, v19, v5

    .line 819
    .local v16, "midx":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/netscramblefull/Cell;->cellHeight:I

    move v5, v0

    div-int/lit8 v5, v5, 0x2

    add-int v17, v20, v5

    .line 821
    .local v17, "midy":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 822
    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move v3, v13

    move v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/netscramblefull/Cell;->cellPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/netscramblefull/Cell;->cellPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 828
    sget-object v11, Lcom/gp/netscramblefull/Cell$Image;->BG:Lcom/gp/netscramblefull/Cell$Image;

    .line 829
    .local v11, "bgImage":Lcom/gp/netscramblefull/Cell$Image;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/netscramblefull/Cell;->connectedDirs:Lcom/gp/netscramblefull/Cell$Dir;

    move-object v5, v0

    sget-object v6, Lcom/gp/netscramblefull/Cell$Dir;->NONE:Lcom/gp/netscramblefull/Cell$Dir;

    if-ne v5, v6, :cond_8

    .line 830
    sget-object v11, Lcom/gp/netscramblefull/Cell$Image;->NOTHING:Lcom/gp/netscramblefull/Cell$Image;

    .line 835
    :cond_1
    :goto_1
    iget-object v5, v11, Lcom/gp/netscramblefull/Cell$Image;->bitmap:Landroid/graphics/Bitmap;

    move/from16 v0, v19

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 839
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/gp/netscramblefull/Cell;->highlightOn:Z

    move v5, v0

    if-eqz v5, :cond_2

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/netscramblefull/Cell;->cellPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/netscramblefull/Cell;->cellPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/netscramblefull/Cell;->cellPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 843
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/netscramblefull/Cell;->highlightPos:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/netscramblefull/Cell;->cellWidth:I

    move v6, v0

    if-ge v5, v6, :cond_a

    .line 844
    move/from16 v0, v19

    int-to-float v0, v0

    move v6, v0

    .line 845
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/netscramblefull/Cell;->highlightPos:I

    move v5, v0

    add-int v5, v5, v20

    int-to-float v7, v5

    .line 846
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/netscramblefull/Cell;->highlightPos:I

    move v5, v0

    add-int v5, v5, v19

    int-to-float v8, v5

    .line 847
    move/from16 v0, v20

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/netscramblefull/Cell;->cellPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    .line 844
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 859
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/netscramblefull/Cell;->connectedDirs:Lcom/gp/netscramblefull/Cell$Dir;

    move-object v5, v0

    sget-object v6, Lcom/gp/netscramblefull/Cell$Dir;->FREE:Lcom/gp/netscramblefull/Cell$Dir;

    if-eq v5, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/netscramblefull/Cell;->connectedDirs:Lcom/gp/netscramblefull/Cell$Dir;

    move-object v5, v0

    sget-object v6, Lcom/gp/netscramblefull/Cell$Dir;->NONE:Lcom/gp/netscramblefull/Cell$Dir;

    if-eq v5, v6, :cond_6

    .line 860
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/gp/netscramblefull/Cell;->isBlind:Z

    move v5, v0

    if-nez v5, :cond_4

    .line 863
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 864
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/netscramblefull/Cell;->rotateTarget:F

    move v5, v0

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    .line 865
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/netscramblefull/Cell;->rotateAngle:F

    move v5, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 868
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/gp/netscramblefull/Cell;->isConnected:Z

    move v5, v0

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/netscramblefull/Cell;->connectedDirs:Lcom/gp/netscramblefull/Cell$Dir;

    move-object v5, v0

    invoke-static {v5}, Lcom/gp/netscramblefull/Cell$Dir;->access$5(Lcom/gp/netscramblefull/Cell$Dir;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v18, v5

    .line 870
    .local v18, "pixmap":Landroid/graphics/Bitmap;
    :goto_3
    move/from16 v0, v19

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move v2, v5

    move v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 871
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 876
    .end local v18    # "pixmap":Landroid/graphics/Bitmap;
    :cond_4
    const/4 v12, 0x0

    .line 877
    .local v12, "equipImage":Lcom/gp/netscramblefull/Cell$Image;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/gp/netscramblefull/Cell;->isRoot:Z

    move v5, v0

    if-eqz v5, :cond_d

    .line 878
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/gp/netscramblefull/Cell;->isFullyConnected:Z

    move v5, v0

    if-eqz v5, :cond_c

    .line 879
    sget-object v12, Lcom/gp/netscramblefull/Cell$Image;->SERVER1:Lcom/gp/netscramblefull/Cell$Image;

    .line 888
    :cond_5
    :goto_4
    if-eqz v12, :cond_6

    .line 889
    iget-object v5, v12, Lcom/gp/netscramblefull/Cell$Image;->bitmap:Landroid/graphics/Bitmap;

    move/from16 v0, v19

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 895
    .end local v12    # "equipImage":Lcom/gp/netscramblefull/Cell$Image;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/gp/netscramblefull/Cell;->haveFocus:Z

    move v5, v0

    if-eqz v5, :cond_7

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/netscramblefull/Cell;->cellPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/netscramblefull/Cell;->cellPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/high16 v6, 0x60ff0000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/netscramblefull/Cell;->cellPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/netscramblefull/Cell;->cellWidth:I

    move v6, v0

    div-int/lit8 v6, v6, 0x8

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 900
    move/from16 v0, v19

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    const/4 v5, 0x1

    sub-int v5, v13, v5

    int-to-float v8, v5

    const/4 v5, 0x1

    sub-int v5, v14, v5

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/netscramblefull/Cell;->cellPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 903
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 905
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/gp/netscramblefull/Cell;->stateValid:Z

    goto/16 :goto_0

    .line 831
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/netscramblefull/Cell;->connectedDirs:Lcom/gp/netscramblefull/Cell$Dir;

    move-object v5, v0

    sget-object v6, Lcom/gp/netscramblefull/Cell$Dir;->FREE:Lcom/gp/netscramblefull/Cell$Dir;

    if-ne v5, v6, :cond_9

    .line 832
    sget-object v11, Lcom/gp/netscramblefull/Cell$Image;->EMPTY:Lcom/gp/netscramblefull/Cell$Image;

    goto/16 :goto_1

    .line 833
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/gp/netscramblefull/Cell;->isLocked:Z

    move v5, v0

    if-eqz v5, :cond_1

    .line 834
    sget-object v11, Lcom/gp/netscramblefull/Cell$Image;->LOCKED:Lcom/gp/netscramblefull/Cell$Image;

    goto/16 :goto_1

    .line 849
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/netscramblefull/Cell;->highlightPos:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/netscramblefull/Cell;->cellWidth:I

    move v6, v0

    sub-int v15, v5, v6

    .line 850
    .local v15, "hp":I
    add-int v5, v19, v15

    int-to-float v6, v5

    .line 851
    int-to-float v7, v14

    .line 852
    int-to-float v8, v13

    .line 853
    add-int v5, v20, v15

    int-to-float v9, v5

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/netscramblefull/Cell;->cellPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    .line 850
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 869
    .end local v15    # "hp":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/netscramblefull/Cell;->connectedDirs:Lcom/gp/netscramblefull/Cell$Dir;

    move-object v5, v0

    invoke-static {v5}, Lcom/gp/netscramblefull/Cell$Dir;->access$6(Lcom/gp/netscramblefull/Cell$Dir;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v18, v5

    goto/16 :goto_3

    .line 881
    .restart local v12    # "equipImage":Lcom/gp/netscramblefull/Cell$Image;
    :cond_c
    sget-object v12, Lcom/gp/netscramblefull/Cell$Image;->SERVER:Lcom/gp/netscramblefull/Cell$Image;

    goto/16 :goto_4

    .line 882
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/gp/netscramblefull/Cell;->numDirs()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 883
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/gp/netscramblefull/Cell;->isConnected:Z

    move v5, v0

    if-eqz v5, :cond_e

    .line 884
    sget-object v12, Lcom/gp/netscramblefull/Cell$Image;->COMP2:Lcom/gp/netscramblefull/Cell$Image;

    goto/16 :goto_4

    .line 886
    :cond_e
    sget-object v12, Lcom/gp/netscramblefull/Cell$Image;->COMP1:Lcom/gp/netscramblefull/Cell$Image;

    goto/16 :goto_4
.end method

.method protected doDrawBlips(Landroid/graphics/Canvas;JF)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "now"    # J
    .param p4, "frac"    # F

    .prologue
    .line 925
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/gp/netscramblefull/Cell;->isBlind:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 967
    :cond_0
    return-void

    .line 928
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/netscramblefull/Cell;->cellLeft:I

    move/from16 v16, v0

    .line 929
    .local v16, "sx":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/netscramblefull/Cell;->cellTop:I

    move/from16 v17, v0

    .line 937
    .local v17, "sy":I
    invoke-virtual/range {p0 .. p0}, Lcom/gp/netscramblefull/Cell;->numDirs()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/gp/netscramblefull/Cell;->isRoot:Z

    move/from16 v22, v0

    if-nez v22, :cond_6

    const/16 v22, 0x0

    move/from16 v12, v22

    .line 938
    .local v12, "isTerm":Z
    :goto_0
    if-eqz v12, :cond_7

    sget-object v22, Lcom/gp/netscramblefull/Cell;->BLIP_T_IMAGES:[Lcom/gp/netscramblefull/Cell$Image;

    move-object/from16 v6, v22

    .line 940
    .local v6, "blips":[Lcom/gp/netscramblefull/Cell$Image;
    :goto_1
    array-length v13, v6

    .line 941
    .local v13, "nblips":I
    const/16 v22, 0x1

    sub-int v22, v13, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, p4

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    rem-int v9, v22, v13

    .line 942
    .local v9, "indexIn":I
    if-gez v9, :cond_2

    .line 943
    const/4 v9, 0x0

    .line 944
    :cond_2
    const/16 v22, 0x1

    sub-int v22, v13, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, p4

    mul-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    rem-int v10, v22, v13

    .line 945
    .local v10, "indexOut":I
    if-gez v10, :cond_3

    .line 946
    const/4 v10, 0x0

    .line 947
    :cond_3
    const/4 v7, 0x0

    .local v7, "c":I
    :goto_2
    sget-object v22, Lcom/gp/netscramblefull/Cell$Dir;->cardinals:[Lcom/gp/netscramblefull/Cell$Dir;

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move v0, v7

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 948
    sget-object v22, Lcom/gp/netscramblefull/Cell$Dir;->cardinals:[Lcom/gp/netscramblefull/Cell$Dir;

    aget-object v8, v22, v7

    .line 949
    .local v8, "d":Lcom/gp/netscramblefull/Cell$Dir;
    invoke-virtual {v8}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v14

    .line 950
    .local v14, "ord":I
    sget-object v22, Lcom/gp/netscramblefull/Cell$Dir;->cardinalOffs:[[I

    aget-object v22, v22, v7

    const/16 v23, 0x0

    aget v19, v22, v23

    .line 951
    .local v19, "xoff":I
    sget-object v22, Lcom/gp/netscramblefull/Cell$Dir;->cardinalOffs:[[I

    aget-object v22, v22, v7

    const/16 v23, 0x1

    aget v21, v22, v23

    .line 952
    .local v21, "yoff":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/netscramblefull/Cell;->blipsIncoming:I

    move/from16 v22, v0

    and-int v22, v22, v14

    if-eqz v22, :cond_4

    .line 953
    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v22, p4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/netscramblefull/Cell;->cellWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v11, v22, v23

    .line 954
    .local v11, "inp":F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v11

    add-float v18, v22, v23

    .line 955
    .local v18, "x":F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v11

    add-float v20, v22, v23

    .line 956
    .local v20, "y":F
    aget-object v5, v6, v9

    .line 957
    .local v5, "blipImage":Lcom/gp/netscramblefull/Cell$Image;
    move-object v0, v5

    iget-object v0, v0, Lcom/gp/netscramblefull/Cell$Image;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/netscramblefull/Cell;->cellPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v18

    move/from16 v3, v20

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 959
    .end local v5    # "blipImage":Lcom/gp/netscramblefull/Cell$Image;
    .end local v11    # "inp":F
    .end local v18    # "x":F
    .end local v20    # "y":F
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/netscramblefull/Cell;->blipsOutgoing:I

    move/from16 v22, v0

    and-int v22, v22, v14

    if-eqz v22, :cond_5

    .line 960
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/netscramblefull/Cell;->cellWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, p4

    const/high16 v23, 0x40000000    # 2.0f

    div-float v15, v22, v23

    .line 961
    .local v15, "outp":F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v15

    add-float v18, v22, v23

    .line 962
    .restart local v18    # "x":F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v15

    add-float v20, v22, v23

    .line 963
    .restart local v20    # "y":F
    aget-object v5, v6, v10

    .line 964
    .restart local v5    # "blipImage":Lcom/gp/netscramblefull/Cell$Image;
    move-object v0, v5

    iget-object v0, v0, Lcom/gp/netscramblefull/Cell$Image;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/netscramblefull/Cell;->cellPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v18

    move/from16 v3, v20

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 947
    .end local v5    # "blipImage":Lcom/gp/netscramblefull/Cell$Image;
    .end local v15    # "outp":F
    .end local v18    # "x":F
    .end local v20    # "y":F
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 937
    .end local v6    # "blips":[Lcom/gp/netscramblefull/Cell$Image;
    .end local v7    # "c":I
    .end local v8    # "d":Lcom/gp/netscramblefull/Cell$Dir;
    .end local v9    # "indexIn":I
    .end local v10    # "indexOut":I
    .end local v12    # "isTerm":Z
    .end local v13    # "nblips":I
    .end local v14    # "ord":I
    .end local v19    # "xoff":I
    .end local v21    # "yoff":I
    :cond_6
    const/16 v22, 0x1

    move/from16 v12, v22

    goto/16 :goto_0

    .line 939
    .restart local v12    # "isTerm":Z
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/gp/netscramblefull/Cell;->isConnected:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    sget-object v22, Lcom/gp/netscramblefull/Cell;->BLIP_IMAGES:[Lcom/gp/netscramblefull/Cell$Image;

    move-object/from16 v6, v22

    goto/16 :goto_1

    :cond_8
    sget-object v22, Lcom/gp/netscramblefull/Cell;->BLIP_G_IMAGES:[Lcom/gp/netscramblefull/Cell$Image;

    move-object/from16 v6, v22

    goto/16 :goto_1
.end method

.method doHighlight()V
    .locals 2

    .prologue
    .line 642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gp/netscramblefull/Cell;->highlightOn:Z

    .line 643
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gp/netscramblefull/Cell;->highlightStart:J

    .line 644
    const/4 v0, 0x0

    iput v0, p0, Lcom/gp/netscramblefull/Cell;->highlightPos:I

    .line 645
    return-void
.end method

.method protected doUpdate(J)Z
    .locals 9
    .param p1, "now"    # J

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x42b40000    # 90.0f

    .line 664
    const/4 v0, 0x0

    .line 667
    .local v0, "changed":Z
    iget v3, p0, Lcom/gp/netscramblefull/Cell;->rotateTarget:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_2

    .line 669
    iget-wide v3, p0, Lcom/gp/netscramblefull/Cell;->rotateStart:J

    sub-long v3, p1, v3

    long-to-float v3, v3

    iget-wide v4, p0, Lcom/gp/netscramblefull/Cell;->rotateTime:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, v6

    iput v3, p0, Lcom/gp/netscramblefull/Cell;->rotateAngle:F

    .line 670
    iget v3, p0, Lcom/gp/netscramblefull/Cell;->rotateTarget:F

    cmpg-float v3, v3, v7

    if-gez v3, :cond_0

    .line 671
    iget v3, p0, Lcom/gp/netscramblefull/Cell;->rotateAngle:F

    neg-float v3, v3

    iput v3, p0, Lcom/gp/netscramblefull/Cell;->rotateAngle:F

    .line 676
    :cond_0
    iget v3, p0, Lcom/gp/netscramblefull/Cell;->rotateAngle:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_1

    .line 677
    const/4 v1, 0x0

    .line 678
    .local v1, "dir":Lcom/gp/netscramblefull/Cell$Dir;
    iget v3, p0, Lcom/gp/netscramblefull/Cell;->rotateTarget:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_6

    .line 679
    const/16 v3, 0x5a

    invoke-virtual {p0, v3}, Lcom/gp/netscramblefull/Cell;->rotatedDirs(I)Lcom/gp/netscramblefull/Cell$Dir;

    move-result-object v1

    .line 680
    iget v3, p0, Lcom/gp/netscramblefull/Cell;->rotateAngle:F

    iget v4, p0, Lcom/gp/netscramblefull/Cell;->rotateTarget:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_5

    .line 681
    iput v7, p0, Lcom/gp/netscramblefull/Cell;->rotateTarget:F

    iput v7, p0, Lcom/gp/netscramblefull/Cell;->rotateAngle:F

    .line 697
    :goto_0
    invoke-virtual {p0, v1}, Lcom/gp/netscramblefull/Cell;->setDirs(Lcom/gp/netscramblefull/Cell$Dir;)V

    .line 698
    const/4 v0, 0x1

    .line 701
    .end local v1    # "dir":Lcom/gp/netscramblefull/Cell$Dir;
    :cond_1
    invoke-virtual {p0}, Lcom/gp/netscramblefull/Cell;->invalidate()V

    .line 705
    :cond_2
    iget-boolean v3, p0, Lcom/gp/netscramblefull/Cell;->highlightOn:Z

    if-eqz v3, :cond_4

    .line 707
    iget-wide v3, p0, Lcom/gp/netscramblefull/Cell;->highlightStart:J

    sub-long v3, p1, v3

    long-to-float v3, v3

    const/high16 v4, 0x43480000    # 200.0f

    div-float v2, v3, v4

    .line 708
    .local v2, "frac":F
    iget v3, p0, Lcom/gp/netscramblefull/Cell;->cellWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/gp/netscramblefull/Cell;->highlightPos:I

    .line 711
    iget v3, p0, Lcom/gp/netscramblefull/Cell;->highlightPos:I

    iget v4, p0, Lcom/gp/netscramblefull/Cell;->cellWidth:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_3

    .line 712
    iput-boolean v8, p0, Lcom/gp/netscramblefull/Cell;->highlightOn:Z

    .line 713
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/gp/netscramblefull/Cell;->highlightStart:J

    .line 714
    iput v8, p0, Lcom/gp/netscramblefull/Cell;->highlightPos:I

    .line 717
    :cond_3
    invoke-virtual {p0}, Lcom/gp/netscramblefull/Cell;->invalidate()V

    .line 720
    .end local v2    # "frac":F
    :cond_4
    return v0

    .line 683
    .restart local v1    # "dir":Lcom/gp/netscramblefull/Cell$Dir;
    :cond_5
    iget v3, p0, Lcom/gp/netscramblefull/Cell;->rotateAngle:F

    sub-float/2addr v3, v6

    iput v3, p0, Lcom/gp/netscramblefull/Cell;->rotateAngle:F

    .line 684
    iget v3, p0, Lcom/gp/netscramblefull/Cell;->rotateTarget:F

    sub-float/2addr v3, v6

    iput v3, p0, Lcom/gp/netscramblefull/Cell;->rotateTarget:F

    .line 685
    iget-wide v3, p0, Lcom/gp/netscramblefull/Cell;->rotateStart:J

    iget-wide v5, p0, Lcom/gp/netscramblefull/Cell;->rotateTime:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/gp/netscramblefull/Cell;->rotateStart:J

    goto :goto_0

    .line 688
    :cond_6
    const/16 v3, -0x5a

    invoke-virtual {p0, v3}, Lcom/gp/netscramblefull/Cell;->rotatedDirs(I)Lcom/gp/netscramblefull/Cell$Dir;

    move-result-object v1

    .line 689
    iget v3, p0, Lcom/gp/netscramblefull/Cell;->rotateAngle:F

    iget v4, p0, Lcom/gp/netscramblefull/Cell;->rotateTarget:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_7

    .line 690
    iput v7, p0, Lcom/gp/netscramblefull/Cell;->rotateTarget:F

    iput v7, p0, Lcom/gp/netscramblefull/Cell;->rotateAngle:F

    goto :goto_0

    .line 692
    :cond_7
    iget v3, p0, Lcom/gp/netscramblefull/Cell;->rotateAngle:F

    add-float/2addr v3, v6

    iput v3, p0, Lcom/gp/netscramblefull/Cell;->rotateAngle:F

    .line 693
    iget v3, p0, Lcom/gp/netscramblefull/Cell;->rotateTarget:F

    add-float/2addr v3, v6

    iput v3, p0, Lcom/gp/netscramblefull/Cell;->rotateTarget:F

    .line 694
    iget-wide v3, p0, Lcom/gp/netscramblefull/Cell;->rotateStart:J

    iget-wide v5, p0, Lcom/gp/netscramblefull/Cell;->rotateTime:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/gp/netscramblefull/Cell;->rotateStart:J

    goto :goto_0
.end method

.method hasConnection(Lcom/gp/netscramblefull/Cell$Dir;)Z
    .locals 2
    .param p1, "d"    # Lcom/gp/netscramblefull/Cell$Dir;

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/gp/netscramblefull/Cell;->isRotated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/gp/netscramblefull/Cell;->connectedDirs:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-virtual {v0}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v1

    and-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 386
    goto :goto_0
.end method

.method invalidate()V
    .locals 1

    .prologue
    .line 798
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gp/netscramblefull/Cell;->stateValid:Z

    .line 799
    return-void
.end method

.method isConnected()Z
    .locals 1

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/gp/netscramblefull/Cell;->isConnected:Z

    return v0
.end method

.method isLocked()Z
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/gp/netscramblefull/Cell;->isLocked:Z

    return v0
.end method

.method isRotated()Z
    .locals 2

    .prologue
    .line 633
    iget v0, p0, Lcom/gp/netscramblefull/Cell;->rotateTarget:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method next(Lcom/gp/netscramblefull/Cell$Dir;)Lcom/gp/netscramblefull/Cell;
    .locals 2
    .param p1, "d"    # Lcom/gp/netscramblefull/Cell$Dir;

    .prologue
    .line 321
    invoke-static {}, Lcom/gp/netscramblefull/Cell;->$SWITCH_TABLE$com$gp$netscramblefull$Cell$Dir()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 331
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cell.next() called with bad dir"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :pswitch_1
    iget-object v0, p0, Lcom/gp/netscramblefull/Cell;->nextU:Lcom/gp/netscramblefull/Cell;

    .line 329
    :goto_0
    return-object v0

    .line 325
    :pswitch_2
    iget-object v0, p0, Lcom/gp/netscramblefull/Cell;->nextR:Lcom/gp/netscramblefull/Cell;

    goto :goto_0

    .line 327
    :pswitch_3
    iget-object v0, p0, Lcom/gp/netscramblefull/Cell;->nextD:Lcom/gp/netscramblefull/Cell;

    goto :goto_0

    .line 329
    :pswitch_4
    iget-object v0, p0, Lcom/gp/netscramblefull/Cell;->nextL:Lcom/gp/netscramblefull/Cell;

    goto :goto_0

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method numDirs()I
    .locals 5

    .prologue
    .line 398
    iget-object v3, p0, Lcom/gp/netscramblefull/Cell;->connectedDirs:Lcom/gp/netscramblefull/Cell$Dir;

    sget-object v4, Lcom/gp/netscramblefull/Cell$Dir;->NONE:Lcom/gp/netscramblefull/Cell$Dir;

    if-ne v3, v4, :cond_0

    .line 399
    const/4 v3, 0x0

    .line 407
    :goto_0
    return v3

    .line 401
    :cond_0
    iget-object v3, p0, Lcom/gp/netscramblefull/Cell;->connectedDirs:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-virtual {v3}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v0

    .line 402
    .local v0, "bits":I
    const/4 v2, 0x0

    .line 403
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v3, 0x4

    if-lt v1, v3, :cond_1

    move v3, v2

    .line 407
    goto :goto_0

    .line 404
    :cond_1
    and-int/lit8 v3, v0, 0x1

    add-int/2addr v2, v3

    .line 405
    shr-int/lit8 v0, v0, 0x1

    .line 403
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method reset(Lcom/gp/netscramblefull/Cell$Dir;)V
    .locals 4
    .param p1, "d"    # Lcom/gp/netscramblefull/Cell$Dir;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 219
    iput-object p1, p0, Lcom/gp/netscramblefull/Cell;->connectedDirs:Lcom/gp/netscramblefull/Cell$Dir;

    .line 220
    iput-boolean v0, p0, Lcom/gp/netscramblefull/Cell;->isConnected:Z

    .line 221
    iput-boolean v0, p0, Lcom/gp/netscramblefull/Cell;->isFullyConnected:Z

    .line 222
    iput-boolean v0, p0, Lcom/gp/netscramblefull/Cell;->isRoot:Z

    .line 223
    iput-boolean v0, p0, Lcom/gp/netscramblefull/Cell;->isLocked:Z

    .line 224
    iput-boolean v0, p0, Lcom/gp/netscramblefull/Cell;->isBlind:Z

    .line 225
    iput v1, p0, Lcom/gp/netscramblefull/Cell;->rotateTarget:F

    .line 226
    iput-wide v2, p0, Lcom/gp/netscramblefull/Cell;->rotateStart:J

    .line 227
    iput v1, p0, Lcom/gp/netscramblefull/Cell;->rotateAngle:F

    .line 228
    iput-boolean v0, p0, Lcom/gp/netscramblefull/Cell;->highlightOn:Z

    .line 229
    iput-wide v2, p0, Lcom/gp/netscramblefull/Cell;->highlightStart:J

    .line 230
    iput v0, p0, Lcom/gp/netscramblefull/Cell;->highlightPos:I

    .line 231
    iput v0, p0, Lcom/gp/netscramblefull/Cell;->blipsIncoming:I

    .line 232
    iput v0, p0, Lcom/gp/netscramblefull/Cell;->blipsOutgoing:I

    .line 233
    iput v0, p0, Lcom/gp/netscramblefull/Cell;->blipsTransfer:I

    .line 234
    iput-boolean v0, p0, Lcom/gp/netscramblefull/Cell;->haveFocus:Z

    .line 236
    invoke-virtual {p0}, Lcom/gp/netscramblefull/Cell;->invalidate()V

    .line 237
    return-void
.end method

.method restoreState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 1008
    const-string v0, "connectedDirs"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gp/netscramblefull/Cell$Dir;->valueOf(Ljava/lang/String;)Lcom/gp/netscramblefull/Cell$Dir;

    move-result-object v0

    iput-object v0, p0, Lcom/gp/netscramblefull/Cell;->connectedDirs:Lcom/gp/netscramblefull/Cell$Dir;

    .line 1009
    const-string v0, "currentAngle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/gp/netscramblefull/Cell;->rotateAngle:F

    .line 1010
    const-string v0, "highlightPos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gp/netscramblefull/Cell;->highlightPos:I

    .line 1011
    const-string v0, "isConnected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gp/netscramblefull/Cell;->isConnected:Z

    .line 1012
    const-string v0, "isFullyConnected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gp/netscramblefull/Cell;->isFullyConnected:Z

    .line 1013
    const-string v0, "isBlind"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gp/netscramblefull/Cell;->isBlind:Z

    .line 1014
    const-string v0, "isRoot"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gp/netscramblefull/Cell;->isRoot:Z

    .line 1015
    const-string v0, "isLocked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gp/netscramblefull/Cell;->isLocked:Z

    .line 1019
    return-void
.end method

.method rotate(I)V
    .locals 2
    .param p1, "a"    # I

    .prologue
    .line 593
    const-wide/16 v0, 0xfa

    invoke-virtual {p0, p1, v0, v1}, Lcom/gp/netscramblefull/Cell;->rotate(IJ)V

    .line 594
    return-void
.end method

.method rotate(IJ)V
    .locals 4
    .param p1, "a"    # I
    .param p2, "time"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 611
    iget v0, p0, Lcom/gp/netscramblefull/Cell;->rotateTarget:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 612
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gp/netscramblefull/Cell;->rotateStart:J

    .line 613
    iput v3, p0, Lcom/gp/netscramblefull/Cell;->rotateAngle:F

    .line 614
    iput-wide p2, p0, Lcom/gp/netscramblefull/Cell;->rotateTime:J

    .line 618
    :cond_0
    iget v0, p0, Lcom/gp/netscramblefull/Cell;->rotateTarget:F

    int-to-float v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/gp/netscramblefull/Cell;->rotateTarget:F

    .line 621
    iput v2, p0, Lcom/gp/netscramblefull/Cell;->blipsIncoming:I

    .line 622
    iput v2, p0, Lcom/gp/netscramblefull/Cell;->blipsOutgoing:I

    .line 623
    iput v2, p0, Lcom/gp/netscramblefull/Cell;->blipsTransfer:I

    .line 624
    return-void
.end method

.method rotateImmediate(I)V
    .locals 1
    .param p1, "a"    # I

    .prologue
    .line 483
    invoke-virtual {p0, p1}, Lcom/gp/netscramblefull/Cell;->rotatedDirs(I)Lcom/gp/netscramblefull/Cell$Dir;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gp/netscramblefull/Cell;->setDirs(Lcom/gp/netscramblefull/Cell$Dir;)V

    .line 484
    invoke-virtual {p0}, Lcom/gp/netscramblefull/Cell;->invalidate()V

    .line 485
    return-void
.end method

.method rotatedDirs(I)Lcom/gp/netscramblefull/Cell$Dir;
    .locals 3
    .param p1, "a"    # I

    .prologue
    .line 363
    iget-object v1, p0, Lcom/gp/netscramblefull/Cell;->connectedDirs:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v0

    .line 365
    .local v0, "bits":I
    const/16 v1, 0x5a

    if-ne p1, v1, :cond_0

    .line 366
    and-int/lit8 v1, v0, 0x1

    shl-int/lit8 v1, v1, 0x3

    and-int/lit8 v2, v0, 0xe

    shr-int/lit8 v2, v2, 0x1

    or-int v0, v1, v2

    .line 374
    :goto_0
    invoke-static {v0}, Lcom/gp/netscramblefull/Cell$Dir;->access$4(I)Lcom/gp/netscramblefull/Cell$Dir;

    move-result-object v1

    :goto_1
    return-object v1

    .line 367
    :cond_0
    const/16 v1, -0x5a

    if-ne p1, v1, :cond_1

    .line 368
    and-int/lit8 v1, v0, 0x8

    shr-int/lit8 v1, v1, 0x3

    and-int/lit8 v2, v0, 0x7

    shl-int/lit8 v2, v2, 0x1

    or-int v0, v1, v2

    goto :goto_0

    .line 369
    :cond_1
    const/16 v1, 0xb4

    if-eq p1, v1, :cond_2

    const/16 v1, -0xb4

    if-ne p1, v1, :cond_3

    .line 370
    :cond_2
    and-int/lit8 v1, v0, 0xc

    shr-int/lit8 v1, v1, 0x2

    and-int/lit8 v2, v0, 0x3

    shl-int/lit8 v2, v2, 0x2

    or-int v0, v1, v2

    goto :goto_0

    .line 372
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method saveState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 981
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 985
    .local v0, "map":Landroid/os/Bundle;
    const-string v1, "connectedDirs"

    iget-object v2, p0, Lcom/gp/netscramblefull/Cell;->connectedDirs:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-virtual {v2}, Lcom/gp/netscramblefull/Cell$Dir;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    const-string v1, "currentAngle"

    iget v2, p0, Lcom/gp/netscramblefull/Cell;->rotateAngle:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 987
    const-string v1, "highlightPos"

    iget v2, p0, Lcom/gp/netscramblefull/Cell;->highlightPos:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 988
    const-string v1, "isConnected"

    iget-boolean v2, p0, Lcom/gp/netscramblefull/Cell;->isConnected:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 989
    const-string v1, "isFullyConnected"

    iget-boolean v2, p0, Lcom/gp/netscramblefull/Cell;->isFullyConnected:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 990
    const-string v1, "isBlind"

    iget-boolean v2, p0, Lcom/gp/netscramblefull/Cell;->isBlind:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 991
    const-string v1, "isRoot"

    iget-boolean v2, p0, Lcom/gp/netscramblefull/Cell;->isRoot:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 992
    const-string v1, "isLocked"

    iget-boolean v2, p0, Lcom/gp/netscramblefull/Cell;->isLocked:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 997
    return-object v0
.end method

.method setBlind(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/gp/netscramblefull/Cell;->isBlind:Z

    if-eq p1, v0, :cond_0

    .line 468
    iput-boolean p1, p0, Lcom/gp/netscramblefull/Cell;->isBlind:Z

    .line 469
    invoke-virtual {p0}, Lcom/gp/netscramblefull/Cell;->invalidate()V

    .line 471
    :cond_0
    return-void
.end method

.method setBlip(Lcom/gp/netscramblefull/Cell$Dir;)V
    .locals 2
    .param p1, "d"    # Lcom/gp/netscramblefull/Cell$Dir;

    .prologue
    .line 572
    invoke-virtual {p0, p1}, Lcom/gp/netscramblefull/Cell;->hasConnection(Lcom/gp/netscramblefull/Cell$Dir;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget v0, p0, Lcom/gp/netscramblefull/Cell;->blipsIncoming:I

    invoke-virtual {p1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/gp/netscramblefull/Cell;->blipsIncoming:I

    .line 574
    :cond_0
    return-void
.end method

.method setConnected(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/gp/netscramblefull/Cell;->isConnected:Z

    if-ne v0, p1, :cond_0

    .line 533
    :goto_0
    return-void

    .line 530
    :cond_0
    iput-boolean p1, p0, Lcom/gp/netscramblefull/Cell;->isConnected:Z

    .line 532
    invoke-virtual {p0}, Lcom/gp/netscramblefull/Cell;->invalidate()V

    goto :goto_0
.end method

.method setDirs(Lcom/gp/netscramblefull/Cell$Dir;)V
    .locals 1
    .param p1, "d"    # Lcom/gp/netscramblefull/Cell$Dir;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/gp/netscramblefull/Cell;->connectedDirs:Lcom/gp/netscramblefull/Cell$Dir;

    if-ne p1, v0, :cond_0

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_0
    iput-object p1, p0, Lcom/gp/netscramblefull/Cell;->connectedDirs:Lcom/gp/netscramblefull/Cell$Dir;

    .line 437
    invoke-virtual {p0}, Lcom/gp/netscramblefull/Cell;->invalidate()V

    goto :goto_0
.end method

.method setFocused(Z)V
    .locals 0
    .param p1, "focused"    # Z

    .prologue
    .line 559
    iput-boolean p1, p0, Lcom/gp/netscramblefull/Cell;->haveFocus:Z

    .line 560
    invoke-virtual {p0}, Lcom/gp/netscramblefull/Cell;->invalidate()V

    .line 561
    return-void
.end method

.method protected setGeometry(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 255
    iput p1, p0, Lcom/gp/netscramblefull/Cell;->cellLeft:I

    .line 256
    iput p2, p0, Lcom/gp/netscramblefull/Cell;->cellTop:I

    .line 257
    iput p3, p0, Lcom/gp/netscramblefull/Cell;->cellWidth:I

    .line 258
    iput p4, p0, Lcom/gp/netscramblefull/Cell;->cellHeight:I

    .line 259
    invoke-virtual {p0}, Lcom/gp/netscramblefull/Cell;->invalidate()V

    .line 260
    return-void
.end method

.method setLocked(Z)V
    .locals 1
    .param p1, "newlocked"    # Z

    .prologue
    .line 505
    iget-boolean v0, p0, Lcom/gp/netscramblefull/Cell;->isLocked:Z

    if-ne v0, p1, :cond_0

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    iput-boolean p1, p0, Lcom/gp/netscramblefull/Cell;->isLocked:Z

    .line 508
    invoke-virtual {p0}, Lcom/gp/netscramblefull/Cell;->invalidate()V

    goto :goto_0
.end method

.method setNeighbours(Lcom/gp/netscramblefull/Cell;Lcom/gp/netscramblefull/Cell;Lcom/gp/netscramblefull/Cell;Lcom/gp/netscramblefull/Cell;)V
    .locals 0
    .param p1, "u"    # Lcom/gp/netscramblefull/Cell;
    .param p2, "d"    # Lcom/gp/netscramblefull/Cell;
    .param p3, "l"    # Lcom/gp/netscramblefull/Cell;
    .param p4, "r"    # Lcom/gp/netscramblefull/Cell;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/gp/netscramblefull/Cell;->nextU:Lcom/gp/netscramblefull/Cell;

    .line 306
    iput-object p2, p0, Lcom/gp/netscramblefull/Cell;->nextD:Lcom/gp/netscramblefull/Cell;

    .line 307
    iput-object p3, p0, Lcom/gp/netscramblefull/Cell;->nextL:Lcom/gp/netscramblefull/Cell;

    .line 308
    iput-object p4, p0, Lcom/gp/netscramblefull/Cell;->nextR:Lcom/gp/netscramblefull/Cell;

    .line 309
    return-void
.end method

.method setRoot(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/gp/netscramblefull/Cell;->isRoot:Z

    if-ne v0, p1, :cond_0

    .line 456
    :goto_0
    return-void

    .line 454
    :cond_0
    iput-boolean p1, p0, Lcom/gp/netscramblefull/Cell;->isRoot:Z

    .line 455
    invoke-virtual {p0}, Lcom/gp/netscramblefull/Cell;->invalidate()V

    goto :goto_0
.end method

.method setSolved(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/gp/netscramblefull/Cell;->isFullyConnected:Z

    if-ne v0, p1, :cond_0

    .line 546
    :goto_0
    return-void

    .line 544
    :cond_0
    iput-boolean p1, p0, Lcom/gp/netscramblefull/Cell;->isFullyConnected:Z

    .line 545
    invoke-virtual {p0}, Lcom/gp/netscramblefull/Cell;->invalidate()V

    goto :goto_0
.end method

.method transferBlips()V
    .locals 5

    .prologue
    .line 774
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_0
    sget-object v4, Lcom/gp/netscramblefull/Cell$Dir;->cardinals:[Lcom/gp/netscramblefull/Cell$Dir;

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 783
    const/4 v4, 0x0

    iput v4, p0, Lcom/gp/netscramblefull/Cell;->blipsTransfer:I

    .line 787
    return-void

    .line 775
    :cond_0
    sget-object v4, Lcom/gp/netscramblefull/Cell$Dir;->cardinals:[Lcom/gp/netscramblefull/Cell$Dir;

    aget-object v1, v4, v0

    .line 776
    .local v1, "d":Lcom/gp/netscramblefull/Cell$Dir;
    invoke-virtual {v1}, Lcom/gp/netscramblefull/Cell$Dir;->ordinal()I

    move-result v3

    .line 777
    .local v3, "ord":I
    iget v4, p0, Lcom/gp/netscramblefull/Cell;->blipsTransfer:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_1

    .line 778
    invoke-virtual {p0, v1}, Lcom/gp/netscramblefull/Cell;->next(Lcom/gp/netscramblefull/Cell$Dir;)Lcom/gp/netscramblefull/Cell;

    move-result-object v2

    .line 779
    .local v2, "n":Lcom/gp/netscramblefull/Cell;
    if-eqz v2, :cond_1

    .line 780
    iget-object v4, v1, Lcom/gp/netscramblefull/Cell$Dir;->reverse:Lcom/gp/netscramblefull/Cell$Dir;

    invoke-virtual {v2, v4}, Lcom/gp/netscramblefull/Cell;->setBlip(Lcom/gp/netscramblefull/Cell$Dir;)V

    .line 774
    .end local v2    # "n":Lcom/gp/netscramblefull/Cell;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method x()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/gp/netscramblefull/Cell;->xindex:I

    return v0
.end method

.method y()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/gp/netscramblefull/Cell;->yindex:I

    return v0
.end method

.class public final Lorg/hermit/geo/Distance;
.super Ljava/lang/Object;
.source "Distance.java"


# static fields
.field private static final FOOT:D = 0.3048

.field private static final NAUTICAL_MILE:D = 1852.0

.field public static final ZERO:Lorg/hermit/geo/Distance;

.field private static floatFormat:Ljava/text/NumberFormat;


# instance fields
.field private distanceM:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lorg/hermit/geo/Distance;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/hermit/geo/Distance;-><init>(D)V

    sput-object v0, Lorg/hermit/geo/Distance;->ZERO:Lorg/hermit/geo/Distance;

    .line 243
    const/4 v0, 0x0

    sput-object v0, Lorg/hermit/geo/Distance;->floatFormat:Ljava/text/NumberFormat;

    .line 246
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lorg/hermit/geo/Distance;->floatFormat:Ljava/text/NumberFormat;

    .line 247
    sget-object v0, Lorg/hermit/geo/Distance;->floatFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 248
    sget-object v0, Lorg/hermit/geo/Distance;->floatFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(D)V
    .locals 0
    .param p1, "metres"    # D

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p1, p0, Lorg/hermit/geo/Distance;->distanceM:D

    .line 56
    return-void
.end method

.method public static final describeNautical(D)Ljava/lang/String;
    .locals 8
    .param p0, "m"    # D

    .prologue
    const-string v7, " nm"

    .line 192
    const-wide v4, 0x3fd381d7dbf487fdL    # 0.3048

    div-double v0, p0, v4

    .line 193
    .local v0, "feet":D
    const-wide v4, 0x408f400000000000L    # 1000.0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " feet"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 200
    :goto_0
    return-object v4

    .line 195
    :cond_0
    const-wide v4, 0x409cf00000000000L    # 1852.0

    div-double v2, p0, v4

    .line 196
    .local v2, "nm":D
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_1

    .line 197
    sget-object v4, Lorg/hermit/geo/Distance;->floatFormat:Ljava/text/NumberFormat;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lorg/hermit/geo/Distance;->floatFormat:Ljava/text/NumberFormat;

    invoke-virtual {v5, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " nm"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 200
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nm"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static final formatM(D)Ljava/lang/String;
    .locals 2
    .param p0, "m"    # D

    .prologue
    .line 146
    sget-object v0, Lorg/hermit/geo/Distance;->floatFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lorg/hermit/geo/Distance;->floatFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatNm(D)Ljava/lang/String;
    .locals 4
    .param p0, "m"    # D

    .prologue
    .line 168
    sget-object v0, Lorg/hermit/geo/Distance;->floatFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lorg/hermit/geo/Distance;->floatFormat:Ljava/text/NumberFormat;

    const-wide v2, 0x409cf00000000000L    # 1852.0

    div-double v2, p0, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " nm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromFeet(D)Lorg/hermit/geo/Distance;
    .locals 3
    .param p0, "feet"    # D

    .prologue
    .line 70
    new-instance v0, Lorg/hermit/geo/Distance;

    const-wide v1, 0x3fd381d7dbf487fdL    # 0.3048

    mul-double/2addr v1, p0

    invoke-direct {v0, v1, v2}, Lorg/hermit/geo/Distance;-><init>(D)V

    return-object v0
.end method

.method public static fromNm(D)Lorg/hermit/geo/Distance;
    .locals 3
    .param p0, "nmiles"    # D

    .prologue
    .line 81
    new-instance v0, Lorg/hermit/geo/Distance;

    const-wide v1, 0x409cf00000000000L    # 1852.0

    mul-double/2addr v1, p0

    invoke-direct {v0, v1, v2}, Lorg/hermit/geo/Distance;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public add(Lorg/hermit/geo/Distance;)Lorg/hermit/geo/Distance;
    .locals 5
    .param p1, "d"    # Lorg/hermit/geo/Distance;

    .prologue
    .line 127
    if-eqz p1, :cond_0

    sget-object v0, Lorg/hermit/geo/Distance;->ZERO:Lorg/hermit/geo/Distance;

    if-ne p1, v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 131
    :goto_0
    return-object v0

    .line 129
    :cond_1
    sget-object v0, Lorg/hermit/geo/Distance;->ZERO:Lorg/hermit/geo/Distance;

    if-ne p0, v0, :cond_2

    move-object v0, p1

    .line 130
    goto :goto_0

    .line 131
    :cond_2
    new-instance v0, Lorg/hermit/geo/Distance;

    iget-wide v1, p0, Lorg/hermit/geo/Distance;->distanceM:D

    iget-wide v3, p1, Lorg/hermit/geo/Distance;->distanceM:D

    add-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lorg/hermit/geo/Distance;-><init>(D)V

    goto :goto_0
.end method

.method public final describeNautical()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    iget-wide v0, p0, Lorg/hermit/geo/Distance;->distanceM:D

    invoke-static {v0, v1}, Lorg/hermit/geo/Distance;->describeNautical(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final formatM()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lorg/hermit/geo/Distance;->distanceM:D

    invoke-static {v0, v1}, Lorg/hermit/geo/Distance;->formatM(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final formatNm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lorg/hermit/geo/Distance;->distanceM:D

    invoke-static {v0, v1}, Lorg/hermit/geo/Distance;->formatNm(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFeet()D
    .locals 4

    .prologue
    .line 101
    iget-wide v0, p0, Lorg/hermit/geo/Distance;->distanceM:D

    const-wide v2, 0x3fd381d7dbf487fdL    # 0.3048

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final getMetres()D
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lorg/hermit/geo/Distance;->distanceM:D

    return-wide v0
.end method

.method public final getNm()D
    .locals 4

    .prologue
    .line 111
    iget-wide v0, p0, Lorg/hermit/geo/Distance;->distanceM:D

    const-wide v2, 0x409cf00000000000L    # 1852.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lorg/hermit/geo/Distance;->formatNm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/parse/codec/language/Soundex;
.super Ljava/lang/Object;
.source "Soundex.java"

# interfaces
.implements Lcom/parse/codec/StringEncoder;


# static fields
.field public static final US_ENGLISH:Lcom/parse/codec/language/Soundex;

.field private static final US_ENGLISH_MAPPING:[C

.field public static final US_ENGLISH_MAPPING_STRING:Ljava/lang/String; = "01230120022455012623010202"


# instance fields
.field private maxLength:I

.field private final soundexMapping:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "01230120022455012623010202"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/parse/codec/language/Soundex;->US_ENGLISH_MAPPING:[C

    .line 58
    new-instance v0, Lcom/parse/codec/language/Soundex;

    invoke-direct {v0}, Lcom/parse/codec/language/Soundex;-><init>()V

    sput-object v0, Lcom/parse/codec/language/Soundex;->US_ENGLISH:Lcom/parse/codec/language/Soundex;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x4

    iput v0, p0, Lcom/parse/codec/language/Soundex;->maxLength:I

    .line 104
    sget-object v0, Lcom/parse/codec/language/Soundex;->US_ENGLISH_MAPPING:[C

    iput-object v0, p0, Lcom/parse/codec/language/Soundex;->soundexMapping:[C

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "mapping"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x4

    iput v0, p0, Lcom/parse/codec/language/Soundex;->maxLength:I

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/parse/codec/language/Soundex;->soundexMapping:[C

    .line 132
    return-void
.end method

.method public constructor <init>([C)V
    .locals 3
    .param p1, "mapping"    # [C

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x4

    iput v0, p0, Lcom/parse/codec/language/Soundex;->maxLength:I

    .line 118
    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/parse/codec/language/Soundex;->soundexMapping:[C

    .line 119
    iget-object v0, p0, Lcom/parse/codec/language/Soundex;->soundexMapping:[C

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    return-void
.end method

.method private getMappingCode(Ljava/lang/String;I)C
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/16 v6, 0x57

    const/16 v5, 0x48

    .line 182
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/parse/codec/language/Soundex;->map(C)C

    move-result v2

    .line 184
    .local v2, "mappedChar":C
    const/4 v4, 0x1

    if-le p2, v4, :cond_2

    const/16 v4, 0x30

    if-eq v2, v4, :cond_2

    .line 185
    add-int/lit8 v4, p2, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 186
    .local v1, "hwChar":C
    if-eq v5, v1, :cond_0

    if-ne v6, v1, :cond_2

    .line 187
    :cond_0
    add-int/lit8 v4, p2, -0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 188
    .local v3, "preHWChar":C
    invoke-direct {p0, v3}, Lcom/parse/codec/language/Soundex;->map(C)C

    move-result v0

    .line 189
    .local v0, "firstCode":C
    if-eq v0, v2, :cond_1

    if-eq v5, v3, :cond_1

    if-ne v6, v3, :cond_2

    .line 190
    :cond_1
    const/4 v2, 0x0

    .line 194
    .end local v0    # "firstCode":C
    .end local v1    # "hwChar":C
    .end local v2    # "mappedChar":C
    .end local v3    # "preHWChar":C
    :cond_2
    return v2
.end method

.method private getSoundexMapping()[C
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/parse/codec/language/Soundex;->soundexMapping:[C

    return-object v0
.end method

.method private map(C)C
    .locals 4
    .param p1, "ch"    # C

    .prologue
    .line 226
    add-int/lit8 v0, p1, -0x41

    .line 227
    .local v0, "index":I
    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/parse/codec/language/Soundex;->getSoundexMapping()[C

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 228
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The character is not mapped: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_1
    invoke-direct {p0}, Lcom/parse/codec/language/Soundex;->getSoundexMapping()[C

    move-result-object v1

    aget-char v1, v1, v0

    return v1
.end method


# virtual methods
.method public difference(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {p0, p1, p2}, Lcom/parse/codec/language/SoundexUtils;->difference(Lcom/parse/codec/StringEncoder;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 148
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/parse/codec/EncoderException;

    const-string v1, "Parameter supplied to Soundex encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lcom/parse/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    check-cast p1, Ljava/lang/String;

    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/parse/codec/language/Soundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pString"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/parse/codec/language/Soundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxLength()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/parse/codec/language/Soundex;->maxLength:I

    return v0
.end method

.method public setMaxLength(I)V
    .locals 0
    .param p1, "maxLength"    # I

    .prologue
    .line 241
    iput p1, p0, Lcom/parse/codec/language/Soundex;->maxLength:I

    .line 242
    return-void
.end method

.method public soundex(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 254
    if-nez p1, :cond_0

    .line 255
    const/4 v7, 0x0

    .line 276
    :goto_0
    return-object v7

    .line 257
    :cond_0
    invoke-static {p1}, Lcom/parse/codec/language/SoundexUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 258
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    move-object v7, p1

    .line 259
    goto :goto_0

    .line 261
    :cond_1
    const/4 v7, 0x4

    new-array v6, v7, [C

    fill-array-data v6, :array_0

    .line 263
    .local v6, "out":[C
    const/4 v2, 0x1

    .local v2, "incount":I
    const/4 v0, 0x1

    .line 264
    .local v0, "count":I
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput-char v7, v6, v8

    .line 266
    invoke-direct {p0, p1, v8}, Lcom/parse/codec/language/Soundex;->getMappingCode(Ljava/lang/String;I)C

    move-result v4

    .line 267
    .local v4, "last":C
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_2

    array-length v7, v6

    if-lt v0, v7, :cond_3

    .line 276
    :cond_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 268
    :cond_3
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "incount":I
    .local v3, "incount":I
    invoke-direct {p0, p1, v2}, Lcom/parse/codec/language/Soundex;->getMappingCode(Ljava/lang/String;I)C

    move-result v5

    .line 269
    .local v5, "mapped":C
    if-eqz v5, :cond_5

    .line 270
    const/16 v7, 0x30

    if-eq v5, v7, :cond_4

    if-eq v5, v4, :cond_4

    .line 271
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    aput-char v5, v6, v0

    move v0, v1

    .line 273
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_4
    move v4, v5

    move v2, v3

    .end local v3    # "incount":I
    .restart local v2    # "incount":I
    goto :goto_1

    .end local v2    # "incount":I
    .restart local v3    # "incount":I
    :cond_5
    move v2, v3

    .end local v3    # "incount":I
    .restart local v2    # "incount":I
    goto :goto_1

    .line 261
    :array_0
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
    .end array-data
.end method

.class public Lorg/apache/commons/io/FilenameUtils;
.super Ljava/lang/Object;
.source "FilenameUtils.java"


# static fields
.field public static final EXTENSION_SEPARATOR:C = '.'

.field public static final EXTENSION_SEPARATOR_STR:Ljava/lang/String;

.field private static final OTHER_SEPARATOR:C

.field private static final SYSTEM_SEPARATOR:C

.field private static final UNIX_SEPARATOR:C = '/'

.field private static final WINDOWS_SEPARATOR:C = '\\'


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const/16 v0, 0x2e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FilenameUtils;->EXTENSION_SEPARATOR_STR:Ljava/lang/String;

    .line 119
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    .line 126
    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const/16 v0, 0x2f

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    .line 92
    :goto_0
    return-void

    .line 129
    :cond_0
    const/16 v0, 0x5c

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    return-void
.end method

.method public static concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "basePath"    # Ljava/lang/String;
    .param p1, "fullFilenameToAdd"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 491
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v2

    .line 492
    .local v2, "prefix":I
    if-gez v2, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-object v3

    .line 495
    :cond_1
    if-lez v2, :cond_2

    .line 496
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 498
    :cond_2
    if-eqz p0, :cond_0

    .line 501
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 502
    .local v1, "len":I
    if-nez v1, :cond_3

    .line 503
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 505
    :cond_3
    const/4 v3, 0x1

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 506
    .local v0, "ch":C
    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 507
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 509
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "includeSeparator"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 873
    if-nez p0, :cond_1

    .line 895
    :cond_0
    :goto_0
    return-object v3

    .line 876
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v2

    .line 877
    .local v2, "prefix":I
    if-ltz v2, :cond_0

    .line 880
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 881
    if-eqz p1, :cond_2

    .line 882
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, p0

    .line 884
    goto :goto_0

    .line 887
    :cond_3
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v1

    .line 888
    .local v1, "index":I
    if-gez v1, :cond_4

    .line 889
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 891
    :cond_4
    if-eqz p1, :cond_6

    const/4 v3, 0x1

    :goto_1
    add-int v0, v1, v3

    .line 892
    .local v0, "end":I
    if-nez v0, :cond_5

    .line 893
    add-int/lit8 v0, v0, 0x1

    .line 895
    :cond_5
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .end local v0    # "end":I
    :cond_6
    move v3, v4

    .line 891
    goto :goto_1
.end method

.method private static doGetPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "separatorAdd"    # I

    .prologue
    const/4 v3, 0x0

    .line 791
    if-nez p0, :cond_1

    .line 803
    :cond_0
    :goto_0
    return-object v3

    .line 794
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v2

    .line 795
    .local v2, "prefix":I
    if-ltz v2, :cond_0

    .line 798
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v1

    .line 799
    .local v1, "index":I
    add-int v0, v1, p1

    .line 800
    .local v0, "endIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-ltz v1, :cond_2

    if-lt v2, v0, :cond_3

    .line 801
    :cond_2
    const-string v3, ""

    goto :goto_0

    .line 803
    :cond_3
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;
    .locals 9
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "separator"    # C
    .param p2, "keepSeparator"    # Z

    .prologue
    .line 357
    if-nez p0, :cond_1

    .line 358
    const/4 p0, 0x0

    .line 446
    .end local p0    # "filename":Ljava/lang/String;
    .end local p1    # "separator":C
    .end local p2    # "keepSeparator":Z
    :cond_0
    :goto_0
    return-object p0

    .line 360
    .restart local p0    # "filename":Ljava/lang/String;
    .restart local p1    # "separator":C
    .restart local p2    # "keepSeparator":Z
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 361
    .local v2, "size":I
    if-eqz v2, :cond_0

    .line 364
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v3

    .line 365
    .local v3, "prefix":I
    if-gez v3, :cond_2

    .line 366
    const/4 p0, 0x0

    goto :goto_0

    .line 369
    :cond_2
    add-int/lit8 v0, v2, 0x2

    new-array v0, v0, [C

    .line 370
    .local v0, "array":[C
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v4, v0, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 373
    sget-char p0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    .end local p0    # "filename":Ljava/lang/String;
    if-ne p1, p0, :cond_3

    sget-char p0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    move v1, p0

    .line 374
    .local v1, "otherSeparator":C
    :goto_1
    const/4 p0, 0x0

    .local p0, "i":I
    :goto_2
    array-length v4, v0

    if-lt p0, v4, :cond_4

    .line 381
    const/4 p0, 0x1

    .line 382
    .local p0, "lastIsDirectory":Z
    const/4 v1, 0x1

    sub-int v1, v2, v1

    aget-char v1, v0, v1

    .end local v1    # "otherSeparator":C
    if-eq v1, p1, :cond_16

    .line 383
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "size":I
    .local v1, "size":I
    aput-char p1, v0, v2

    .line 384
    const/4 p0, 0x0

    move v2, v1

    .end local v1    # "size":I
    .restart local v2    # "size":I
    move v1, p0

    .line 388
    .end local p0    # "lastIsDirectory":Z
    .local v1, "lastIsDirectory":Z
    :goto_3
    add-int/lit8 p0, v3, 0x1

    .local p0, "i":I
    :goto_4
    if-lt p0, v2, :cond_6

    .line 397
    add-int/lit8 p0, v3, 0x1

    :goto_5
    if-lt p0, v2, :cond_8

    .line 411
    add-int/lit8 p0, v3, 0x2

    move v4, v2

    .end local v2    # "size":I
    .local v4, "size":I
    :goto_6
    if-lt p0, v4, :cond_c

    .line 437
    if-gtz v4, :cond_11

    .line 438
    const-string p0, ""

    goto :goto_0

    .line 373
    .end local v1    # "lastIsDirectory":Z
    .end local v4    # "size":I
    .end local p0    # "i":I
    .restart local v2    # "size":I
    :cond_3
    sget-char p0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    move v1, p0

    goto :goto_1

    .line 375
    .local v1, "otherSeparator":C
    .restart local p0    # "i":I
    :cond_4
    aget-char v4, v0, p0

    if-ne v4, v1, :cond_5

    .line 376
    aput-char p1, v0, p0

    .line 374
    :cond_5
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 389
    .local v1, "lastIsDirectory":Z
    :cond_6
    aget-char v4, v0, p0

    if-ne v4, p1, :cond_7

    const/4 v4, 0x1

    sub-int v4, p0, v4

    aget-char v4, v0, v4

    if-ne v4, p1, :cond_7

    .line 390
    const/4 v4, 0x1

    sub-int v4, p0, v4

    sub-int v5, v2, p0

    invoke-static {v0, p0, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    add-int/lit8 v2, v2, -0x1

    .line 392
    add-int/lit8 p0, p0, -0x1

    .line 388
    :cond_7
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    .line 398
    :cond_8
    aget-char v4, v0, p0

    if-ne v4, p1, :cond_b

    const/4 v4, 0x1

    sub-int v4, p0, v4

    aget-char v4, v0, v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_b

    .line 399
    add-int/lit8 v4, v3, 0x1

    if-eq p0, v4, :cond_9

    const/4 v4, 0x2

    sub-int v4, p0, v4

    aget-char v4, v0, v4

    if-ne v4, p1, :cond_b

    .line 400
    :cond_9
    const/4 v4, 0x1

    sub-int v4, v2, v4

    if-ne p0, v4, :cond_a

    .line 401
    const/4 v1, 0x1

    .line 403
    :cond_a
    add-int/lit8 v4, p0, 0x1

    const/4 v5, 0x1

    sub-int v5, p0, v5

    sub-int v6, v2, p0

    invoke-static {v0, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    add-int/lit8 v2, v2, -0x2

    .line 405
    add-int/lit8 p0, p0, -0x1

    .line 397
    :cond_b
    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    .line 412
    .end local v2    # "size":I
    .restart local v4    # "size":I
    :cond_c
    aget-char v2, v0, p0

    if-ne v2, p1, :cond_15

    const/4 v2, 0x1

    sub-int v2, p0, v2

    aget-char v2, v0, v2

    const/16 v5, 0x2e

    if-ne v2, v5, :cond_15

    const/4 v2, 0x2

    sub-int v2, p0, v2

    aget-char v2, v0, v2

    const/16 v5, 0x2e

    if-ne v2, v5, :cond_15

    .line 413
    add-int/lit8 v2, v3, 0x2

    if-eq p0, v2, :cond_d

    const/4 v2, 0x3

    sub-int v2, p0, v2

    aget-char v2, v0, v2

    if-ne v2, p1, :cond_15

    .line 414
    :cond_d
    add-int/lit8 v2, v3, 0x2

    if-ne p0, v2, :cond_e

    .line 415
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 417
    :cond_e
    const/4 v2, 0x1

    sub-int v2, v4, v2

    if-ne p0, v2, :cond_14

    .line 418
    const/4 v1, 0x1

    move v2, v1

    .line 421
    .end local v1    # "lastIsDirectory":Z
    .local v2, "lastIsDirectory":Z
    :goto_7
    const/4 v1, 0x4

    sub-int v1, p0, v1

    .local v1, "j":I
    :goto_8
    if-ge v1, v3, :cond_f

    .line 431
    add-int/lit8 v1, p0, 0x1

    sub-int v5, v4, p0

    invoke-static {v0, v1, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    .end local v1    # "j":I
    add-int/lit8 p0, p0, 0x1

    sub-int/2addr p0, v3

    sub-int v1, v4, p0

    .line 433
    .end local v4    # "size":I
    .local v1, "size":I
    add-int/lit8 p0, v3, 0x1

    move v8, v2

    .end local v2    # "lastIsDirectory":Z
    .local v8, "lastIsDirectory":Z
    move v2, v1

    .end local v1    # "size":I
    .local v2, "size":I
    move v1, v8

    .line 411
    .end local v8    # "lastIsDirectory":Z
    .local v1, "lastIsDirectory":Z
    :goto_9
    add-int/lit8 p0, p0, 0x1

    move v4, v2

    .end local v2    # "size":I
    .restart local v4    # "size":I
    goto/16 :goto_6

    .line 422
    .local v1, "j":I
    .local v2, "lastIsDirectory":Z
    :cond_f
    aget-char v5, v0, v1

    if-ne v5, p1, :cond_10

    .line 424
    add-int/lit8 v5, p0, 0x1

    add-int/lit8 v6, v1, 0x1

    sub-int v7, v4, p0

    invoke-static {v0, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 425
    sub-int/2addr p0, v1

    sub-int/2addr v4, p0

    .line 426
    add-int/lit8 p0, v1, 0x1

    move v1, v2

    .end local v2    # "lastIsDirectory":Z
    .local v1, "lastIsDirectory":Z
    move v2, v4

    .line 427
    .end local v4    # "size":I
    .local v2, "size":I
    goto :goto_9

    .line 421
    .local v1, "j":I
    .local v2, "lastIsDirectory":Z
    .restart local v4    # "size":I
    :cond_10
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 440
    .end local v2    # "lastIsDirectory":Z
    .local v1, "lastIsDirectory":Z
    :cond_11
    if-gt v4, v3, :cond_12

    .line 441
    new-instance p0, Ljava/lang/String;

    .end local p0    # "i":I
    const/4 p1, 0x0

    invoke-direct {p0, v0, p1, v4}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_0

    .line 443
    .restart local p0    # "i":I
    :cond_12
    if-eqz v1, :cond_13

    if-eqz p2, :cond_13

    .line 444
    new-instance p0, Ljava/lang/String;

    .end local p0    # "i":I
    const/4 p1, 0x0

    invoke-direct {p0, v0, p1, v4}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_0

    .line 446
    .restart local p0    # "i":I
    :cond_13
    new-instance p0, Ljava/lang/String;

    .end local p0    # "i":I
    const/4 p1, 0x0

    const/4 p2, 0x1

    sub-int p2, v4, p2

    invoke-direct {p0, v0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_0

    .restart local p0    # "i":I
    :cond_14
    move v2, v1

    .end local v1    # "lastIsDirectory":Z
    .restart local v2    # "lastIsDirectory":Z
    goto :goto_7

    .end local v2    # "lastIsDirectory":Z
    .restart local v1    # "lastIsDirectory":Z
    :cond_15
    move v2, v4

    .end local v4    # "size":I
    .local v2, "size":I
    goto :goto_9

    .end local v1    # "lastIsDirectory":Z
    .local p0, "lastIsDirectory":Z
    :cond_16
    move v1, p0

    .end local p0    # "lastIsDirectory":Z
    .restart local v1    # "lastIsDirectory":Z
    goto/16 :goto_3
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "filename1"    # Ljava/lang/String;
    .param p1, "filename2"    # Ljava/lang/String;

    .prologue
    .line 1017
    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z
    .locals 2
    .param p0, "filename1"    # Ljava/lang/String;
    .param p1, "filename2"    # Ljava/lang/String;
    .param p2, "normalized"    # Z
    .param p3, "caseSensitivity"    # Lorg/apache/commons/io/IOCase;

    .prologue
    .line 1083
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 1084
    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 1097
    :goto_0
    return v0

    .line 1084
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1086
    :cond_2
    if-eqz p2, :cond_4

    .line 1087
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1088
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1089
    if-eqz p0, :cond_3

    if-nez p1, :cond_4

    .line 1090
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1091
    const-string v1, "Error normalizing one or both of the file names"

    .line 1090
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1094
    :cond_4
    if-nez p3, :cond_5

    .line 1095
    sget-object p3, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    .line 1097
    :cond_5
    invoke-virtual {p3, p0, p1}, Lorg/apache/commons/io/IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static equalsNormalized(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "filename1"    # Ljava/lang/String;
    .param p1, "filename2"    # Ljava/lang/String;

    .prologue
    .line 1048
    const/4 v0, 0x1

    sget-object v1, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static equalsNormalizedOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "filename1"    # Ljava/lang/String;
    .param p1, "filename2"    # Ljava/lang/String;

    .prologue
    .line 1065
    const/4 v0, 0x1

    sget-object v1, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static equalsOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "filename1"    # Ljava/lang/String;
    .param p1, "filename2"    # Ljava/lang/String;

    .prologue
    .line 1032
    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 941
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 963
    if-nez p0, :cond_0

    .line 964
    const/4 v1, 0x0

    .line 970
    :goto_0
    return-object v1

    .line 966
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    .line 967
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 968
    const-string v1, ""

    goto :goto_0

    .line 970
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFullPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 832
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFullPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 862
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 916
    if-nez p0, :cond_0

    .line 917
    const/4 v1, 0x0

    .line 920
    :goto_0
    return-object v1

    .line 919
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    .line 920
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 753
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 780
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 717
    if-nez p0, :cond_1

    .line 727
    :cond_0
    :goto_0
    return-object v1

    .line 720
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v0

    .line 721
    .local v0, "len":I
    if-ltz v0, :cond_0

    .line 724
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 727
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPrefixLength(Ljava/lang/String;)I
    .locals 11
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x2f

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, -0x1

    .line 590
    if-nez p0, :cond_0

    move v5, v6

    .line 638
    :goto_0
    return v5

    .line 593
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 594
    .local v2, "len":I
    if-nez v2, :cond_1

    move v5, v9

    .line 595
    goto :goto_0

    .line 597
    :cond_1
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 598
    .local v0, "ch0":C
    const/16 v5, 0x3a

    if-ne v0, v5, :cond_2

    move v5, v6

    .line 599
    goto :goto_0

    .line 601
    :cond_2
    if-ne v2, v8, :cond_5

    .line 602
    const/16 v5, 0x7e

    if-ne v0, v5, :cond_3

    move v5, v7

    .line 603
    goto :goto_0

    .line 605
    :cond_3
    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v8

    goto :goto_0

    :cond_4
    move v5, v9

    goto :goto_0

    .line 607
    :cond_5
    const/16 v5, 0x7e

    if-ne v0, v5, :cond_9

    .line 608
    invoke-virtual {p0, v10, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 609
    .local v3, "posUnix":I
    const/16 v5, 0x5c

    invoke-virtual {p0, v5, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 610
    .local v4, "posWin":I
    if-ne v3, v6, :cond_6

    if-ne v4, v6, :cond_6

    .line 611
    add-int/lit8 v5, v2, 0x1

    goto :goto_0

    .line 613
    :cond_6
    if-ne v3, v6, :cond_7

    move v3, v4

    .line 614
    :cond_7
    if-ne v4, v6, :cond_8

    move v4, v3

    .line 615
    :cond_8
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 617
    .end local v3    # "posUnix":I
    .end local v4    # "posWin":I
    :cond_9
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 618
    .local v1, "ch1":C
    const/16 v5, 0x3a

    if-ne v1, v5, :cond_d

    .line 619
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 620
    const/16 v5, 0x41

    if-lt v0, v5, :cond_c

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_c

    .line 621
    if-eq v2, v7, :cond_a

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v5

    if-nez v5, :cond_b

    :cond_a
    move v5, v7

    .line 622
    goto :goto_0

    .line 624
    :cond_b
    const/4 v5, 0x3

    goto :goto_0

    :cond_c
    move v5, v6

    .line 626
    goto :goto_0

    .line 628
    :cond_d
    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-static {v1}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 629
    invoke-virtual {p0, v10, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 630
    .restart local v3    # "posUnix":I
    const/16 v5, 0x5c

    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 631
    .restart local v4    # "posWin":I
    if-ne v3, v6, :cond_e

    if-eq v4, v6, :cond_f

    :cond_e
    if-eq v3, v7, :cond_f

    if-ne v4, v7, :cond_10

    :cond_f
    move v5, v6

    .line 632
    goto/16 :goto_0

    .line 634
    :cond_10
    if-ne v3, v6, :cond_11

    move v3, v4

    .line 635
    :cond_11
    if-ne v4, v6, :cond_12

    move v4, v3

    .line 636
    :cond_12
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 638
    .end local v3    # "posUnix":I
    .end local v4    # "posWin":I
    :cond_13
    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_14

    move v5, v8

    goto/16 :goto_0

    :cond_14
    move v5, v9

    goto/16 :goto_0
.end method

.method public static indexOfExtension(Ljava/lang/String;)I
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 678
    if-nez p0, :cond_0

    move v2, v3

    .line 683
    :goto_0
    return v2

    .line 681
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 682
    .local v0, "extensionPos":I
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v1

    .line 683
    .local v1, "lastSeparator":I
    if-le v1, v0, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_0
.end method

.method public static indexOfLastSeparator(Ljava/lang/String;)I
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 656
    if-nez p0, :cond_0

    .line 657
    const/4 v2, -0x1

    .line 661
    :goto_0
    return v2

    .line 659
    :cond_0
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 660
    .local v0, "lastUnixPos":I
    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 661
    .local v1, "lastWindowsPos":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0
.end method

.method public static isExtension(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1113
    if-nez p0, :cond_0

    move v1, v3

    .line 1120
    :goto_0
    return v1

    .line 1116
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 1117
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    .line 1119
    :cond_3
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1120
    .local v0, "fileExt":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isExtension(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "extensions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1162
    if-nez p0, :cond_0

    move v2, v4

    .line 1174
    :goto_0
    return v2

    .line 1165
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1166
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    .line 1168
    :cond_3
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1169
    .local v1, "fileExt":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    move v2, v4

    .line 1174
    goto :goto_0

    .line 1169
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1170
    .local v0, "extension":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v5

    .line 1171
    goto :goto_0
.end method

.method public static isExtension(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "extensions"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1135
    if-nez p0, :cond_0

    move v2, v5

    .line 1147
    :goto_0
    return v2

    .line 1138
    :cond_0
    if-eqz p1, :cond_1

    array-length v2, p1

    if-nez v2, :cond_3

    .line 1139
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    move v2, v6

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_0

    .line 1141
    :cond_3
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1142
    .local v1, "fileExt":Ljava/lang/String;
    array-length v2, p1

    move v3, v5

    :goto_1
    if-lt v3, v2, :cond_4

    move v2, v5

    .line 1147
    goto :goto_0

    .line 1142
    :cond_4
    aget-object v0, p1, v3

    .line 1143
    .local v0, "extension":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v6

    .line 1144
    goto :goto_0

    .line 1142
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static isSeparator(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 158
    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static isSystemWindows()Z
    .locals 2

    .prologue
    .line 147
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 203
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalize(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "unixSeparator"    # Z

    .prologue
    .line 250
    if-eqz p1, :cond_0

    const/16 v1, 0x2f

    move v0, v1

    .line 251
    .local v0, "separator":C
    :goto_0
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 250
    .end local v0    # "separator":C
    :cond_0
    const/16 v1, 0x5c

    move v0, v1

    goto :goto_0
.end method

.method public static normalizeNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 297
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeNoEndSeparator(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "unixSeparator"    # Z

    .prologue
    .line 344
    if-eqz p1, :cond_0

    const/16 v1, 0x2f

    move v0, v1

    .line 345
    .local v0, "separator":C
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 344
    .end local v0    # "separator":C
    :cond_0
    const/16 v1, 0x5c

    move v0, v1

    goto :goto_0
.end method

.method public static removeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 993
    if-nez p0, :cond_0

    .line 994
    const/4 v1, 0x0

    .line 1000
    :goto_0
    return-object v1

    .line 996
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    .line 997
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    move-object v1, p0

    .line 998
    goto :goto_0

    .line 1000
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static separatorsToSystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 547
    if-nez p0, :cond_0

    .line 548
    const/4 v0, 0x0

    .line 553
    :goto_0
    return-object v0

    .line 550
    :cond_0
    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 553
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x5c

    .line 521
    if-eqz p0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    move-object v0, p0

    .line 524
    :goto_0
    return-object v0

    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x2f

    .line 534
    if-eqz p0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    move-object v0, p0

    .line 537
    :goto_0
    return-object v0

    :cond_1
    const/16 v0, 0x5c

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x2a

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/16 v5, 0x3f

    .line 1338
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v6, :cond_0

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 1339
    new-array v4, v8, [Ljava/lang/String;

    aput-object p0, v4, v7

    .line 1365
    .end local p0    # "text":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 1342
    .restart local p0    # "text":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1343
    .local v0, "array":[C
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1344
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1345
    .local v1, "buffer":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .end local p0    # "text":Ljava/lang/String;
    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-lt v2, v4, :cond_2

    .line 1361
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1362
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1365
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    move-object v4, p0

    goto :goto_0

    .line 1346
    :cond_2
    aget-char v4, v0, v2

    if-eq v4, v5, :cond_3

    aget-char v4, v0, v2

    if-ne v4, v9, :cond_8

    .line 1347
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_4

    .line 1348
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1349
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1351
    :cond_4
    aget-char v4, v0, v2

    if-ne v4, v5, :cond_6

    .line 1352
    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1345
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1353
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_7

    .line 1354
    if-lez v2, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v8

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v4, "*"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1355
    :cond_7
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1358
    :cond_8
    aget-char v4, v0, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "wildcardMatcher"    # Ljava/lang/String;

    .prologue
    .line 1201
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z
    .locals 11
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "wildcardMatcher"    # Ljava/lang/String;
    .param p2, "caseSensitivity"    # Lorg/apache/commons/io/IOCase;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1245
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    move v7, v9

    .line 1323
    :goto_0
    return v7

    .line 1248
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v7, v10

    .line 1249
    goto :goto_0

    .line 1251
    :cond_2
    if-nez p2, :cond_3

    .line 1252
    sget-object p2, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    .line 1254
    :cond_3
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1255
    .local v5, "wcs":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1256
    .local v0, "anyChars":Z
    const/4 v4, 0x0

    .line 1257
    .local v4, "textIdx":I
    const/4 v6, 0x0

    .line 1258
    .local v6, "wcsIdx":I
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 1262
    .local v2, "backtrack":Ljava/util/Stack;, "Ljava/util/Stack<[I>;"
    :cond_4
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 1263
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1264
    .local v1, "array":[I
    aget v6, v1, v10

    .line 1265
    aget v4, v1, v9

    .line 1266
    const/4 v0, 0x1

    .line 1270
    .end local v1    # "array":[I
    :cond_5
    :goto_1
    array-length v7, v5

    if-lt v6, v7, :cond_7

    .line 1317
    :cond_6
    :goto_2
    array-length v7, v5

    if-ne v6, v7, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v4, v7, :cond_d

    move v7, v9

    .line 1318
    goto :goto_0

    .line 1272
    :cond_7
    aget-object v7, v5, v6

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1274
    add-int/lit8 v4, v4, 0x1

    .line 1275
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v4, v7, :cond_6

    .line 1278
    const/4 v0, 0x0

    .line 1313
    :cond_8
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1280
    :cond_9
    aget-object v7, v5, v6

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1282
    const/4 v0, 0x1

    .line 1283
    array-length v7, v5

    sub-int/2addr v7, v9

    if-ne v6, v7, :cond_8

    .line 1284
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_3

    .line 1289
    :cond_a
    if-eqz v0, :cond_c

    .line 1291
    aget-object v7, v5, v6

    invoke-virtual {p2, p0, v4, v7}, Lorg/apache/commons/io/IOCase;->checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    .line 1292
    const/4 v7, -0x1

    if-eq v4, v7, :cond_6

    .line 1296
    add-int/lit8 v7, v4, 0x1

    aget-object v8, v5, v6

    invoke-virtual {p2, p0, v7, v8}, Lorg/apache/commons/io/IOCase;->checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 1297
    .local v3, "repeat":I
    if-ltz v3, :cond_b

    .line 1298
    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v6, v7, v10

    aput v3, v7, v9

    invoke-virtual {v2, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    .end local v3    # "repeat":I
    :cond_b
    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v4, v7

    .line 1310
    const/4 v0, 0x0

    goto :goto_3

    .line 1302
    :cond_c
    aget-object v7, v5, v6

    invoke-virtual {p2, p0, v4, v7}, Lorg/apache/commons/io/IOCase;->checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_2

    .line 1321
    :cond_d
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v7

    if-gtz v7, :cond_4

    move v7, v10

    .line 1323
    goto/16 :goto_0
.end method

.method public static wildcardMatchOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "wildcardMatcher"    # Ljava/lang/String;

    .prologue
    .line 1227
    sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

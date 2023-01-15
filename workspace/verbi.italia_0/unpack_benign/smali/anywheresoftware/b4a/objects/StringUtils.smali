.class public Lanywheresoftware/b4a/objects/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "StringUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LoadCSV(Ljava/lang/String;Ljava/lang/String;C)Lanywheresoftware/b4a/objects/collections/List;
    .locals 1
    .param p0, "Dir"    # Ljava/lang/String;
    .param p1, "FileName"    # Ljava/lang/String;
    .param p2, "SeparatorChar"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lanywheresoftware/b4a/objects/StringUtils;->LoadCSV2(Ljava/lang/String;Ljava/lang/String;CLanywheresoftware/b4a/objects/collections/List;)Lanywheresoftware/b4a/objects/collections/List;

    move-result-object v0

    return-object v0
.end method

.method public static LoadCSV2(Ljava/lang/String;Ljava/lang/String;CLanywheresoftware/b4a/objects/collections/List;)Lanywheresoftware/b4a/objects/collections/List;
    .locals 7
    .param p0, "Dir"    # Ljava/lang/String;
    .param p1, "FileName"    # Ljava/lang/String;
    .param p2, "SeparatorChar"    # C
    .param p3, "Headers"    # Lanywheresoftware/b4a/objects/collections/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 142
    .local v1, "i":I
    invoke-static {p0, p1}, Lanywheresoftware/b4a/objects/streams/File;->ReadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 143
    .local p1, "data":Ljava/lang/String;
    new-instance p0, Lanywheresoftware/b4a/objects/collections/List;

    .end local p0    # "Dir":Ljava/lang/String;
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 144
    .local p0, "Table":Lanywheresoftware/b4a/objects/collections/List;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->Initialize()V

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v0, "alFirstLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 147
    .local v4, "unixEnd":Z
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_3

    :cond_1
    move v3, v1

    .line 199
    .end local v1    # "i":I
    .local v3, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_14

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "data":Ljava/lang/String;
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_d

    const-string p1, "\n"

    :goto_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .restart local p1    # "data":Ljava/lang/String;
    move-object v2, p1

    .line 201
    .end local p1    # "data":Ljava/lang/String;
    .local v2, "data":Ljava/lang/String;
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 202
    .local v1, "colCount":I
    if-eqz p3, :cond_f

    .line 203
    invoke-virtual {p3}, Lanywheresoftware/b4a/objects/collections/List;->IsInitialized()Z

    move-result p1

    if-nez p1, :cond_2

    .line 204
    invoke-virtual {p3}, Lanywheresoftware/b4a/objects/collections/List;->Initialize()V

    .line 205
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local v0    # "alFirstLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_e

    .line 216
    .end local p3    # "Headers":Lanywheresoftware/b4a/objects/collections/List;
    :goto_5
    const/4 p1, 0x1

    new-array p3, p1, [I

    .line 217
    .local p3, "ii":[I
    const/4 p1, 0x0

    aput v3, p3, p1

    .line 218
    .end local v3    # "i":I
    :goto_6
    const/4 p1, 0x0

    aget p1, p3, p1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    if-lt p1, v0, :cond_11

    .line 232
    return-object p0

    .line 149
    .end local v2    # "data":Ljava/lang/String;
    .restart local v0    # "alFirstLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v1, "i":I
    .restart local p1    # "data":Ljava/lang/String;
    .local p3, "Headers":Lanywheresoftware/b4a/objects/collections/List;
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_8

    .line 151
    const-string v2, "\""

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 152
    .local v2, "i2":I
    const/4 v3, 0x0

    .line 153
    .local v3, "shouldReplaceQuotes":Z
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    const/4 v5, -0x1

    if-gt v2, v5, :cond_7

    .line 160
    :cond_4
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v1    # "i":I
    move-result-object v1

    .line 161
    .local v1, "ret":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 162
    const-string v3, "\"\""

    .end local v3    # "shouldReplaceQuotes":Z
    const-string v5, "\""

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 163
    :cond_5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v1, v2, 0x2

    .line 165
    .local v1, "i":I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0xd

    if-eq v3, v5, :cond_6

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_0

    .line 167
    :cond_6
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .end local v2    # "i2":I
    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 168
    const/4 v2, 0x0

    .line 169
    .end local v4    # "unixEnd":Z
    .local v2, "unixEnd":Z
    add-int/lit8 v1, v1, 0x1

    move v4, v2

    .end local v2    # "unixEnd":Z
    .restart local v4    # "unixEnd":Z
    move v3, v1

    .line 171
    .end local v1    # "i":I
    .local v3, "i":I
    goto/16 :goto_1

    .line 155
    .restart local v1    # "i":I
    .local v2, "i2":I
    .local v3, "shouldReplaceQuotes":Z
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-eq v2, v5, :cond_4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    .line 157
    const/4 v3, 0x1

    .line 158
    const-string v5, "\""

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .end local v2    # "i2":I
    move-result v2

    .restart local v2    # "i2":I
    goto :goto_7

    .line 176
    .end local v2    # "i2":I
    .end local v3    # "shouldReplaceQuotes":Z
    :cond_8
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 177
    .restart local v2    # "i2":I
    const/16 v3, 0xa

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 178
    .local v3, "i3":I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_9

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "i3":I
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "data":Ljava/lang/String;
    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 180
    .restart local p1    # "data":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    .line 182
    .restart local v3    # "i3":I
    :cond_9
    if-lt v3, v2, :cond_a

    const/4 v5, -0x1

    if-ne v2, v5, :cond_c

    .line 184
    :cond_a
    const/4 v2, 0x1

    sub-int v2, v3, v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .end local v2    # "i2":I
    move-result v2

    const/16 v5, 0xd

    if-ne v2, v5, :cond_15

    .line 185
    const/4 v4, 0x0

    .line 186
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "i3":I
    .local v2, "i3":I
    move v3, v4

    .line 188
    .end local v4    # "unixEnd":Z
    .local v3, "unixEnd":Z
    :goto_8
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "i":I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    if-eqz v3, :cond_b

    const/4 v1, 0x1

    :goto_9
    add-int/2addr v1, v2

    .restart local v1    # "i":I
    move v4, v3

    .end local v3    # "unixEnd":Z
    .restart local v4    # "unixEnd":Z
    move v3, v1

    .line 190
    .end local v1    # "i":I
    .local v3, "i":I
    goto/16 :goto_1

    .line 189
    .end local v4    # "unixEnd":Z
    .local v3, "unixEnd":Z
    :cond_b
    const/4 v1, 0x2

    goto :goto_9

    .line 194
    .restart local v1    # "i":I
    .local v2, "i2":I
    .local v3, "i3":I
    .restart local v4    # "unixEnd":Z
    :cond_c
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "i":I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v1, v2, 0x1

    .restart local v1    # "i":I
    goto/16 :goto_0

    .line 200
    .end local v1    # "i":I
    .end local v2    # "i2":I
    .end local p1    # "data":Ljava/lang/String;
    .local v3, "i":I
    :cond_d
    const-string p1, "\r\n"

    goto/16 :goto_2

    .line 205
    .end local v0    # "alFirstLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v1, "colCount":I
    .local v2, "data":Ljava/lang/String;
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 206
    .local p1, "s":Ljava/lang/String;
    invoke-virtual {p3, p1}, Lanywheresoftware/b4a/objects/collections/List;->Add(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 210
    .end local p1    # "s":Ljava/lang/String;
    .restart local v0    # "alFirstLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_f
    new-array p3, v1, [Ljava/lang/String;

    .line 211
    .local p3, "list":[Ljava/lang/String;
    const/4 p1, 0x0

    .local p1, "a":I
    :goto_a
    array-length v5, p3

    if-lt p1, v5, :cond_10

    .line 214
    invoke-virtual {p0, p3}, Lanywheresoftware/b4a/objects/collections/List;->Add(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 212
    :cond_10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, p3, p1

    .line 211
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 220
    .end local v0    # "alFirstLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local p1    # "a":I
    .local p3, "ii":[I
    :cond_11
    new-array v0, v1, [Ljava/lang/String;

    .line 221
    .local v0, "list":[Ljava/lang/String;
    const/4 p1, 0x0

    .local p1, "i2":I
    :goto_b
    const/4 v3, 0x1

    sub-int v3, v1, v3

    if-lt p1, v3, :cond_12

    .line 224
    if-nez v4, :cond_13

    .line 225
    const/16 v3, 0xd

    invoke-static {v2, p3, v3}, Lanywheresoftware/b4a/objects/StringUtils;->ReadWord(Ljava/lang/String;[IC)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, p1

    .line 226
    const/4 p1, 0x0

    aget v3, p3, p1

    .end local p1    # "i2":I
    add-int/lit8 v3, v3, 0x1

    aput v3, p3, p1

    .line 230
    :goto_c
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/collections/List;->Add(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 222
    .restart local p1    # "i2":I
    :cond_12
    invoke-static {v2, p3, p2}, Lanywheresoftware/b4a/objects/StringUtils;->ReadWord(Ljava/lang/String;[IC)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, p1

    .line 221
    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 229
    :cond_13
    const/16 v3, 0xa

    invoke-static {v2, p3, v3}, Lanywheresoftware/b4a/objects/StringUtils;->ReadWord(Ljava/lang/String;[IC)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, p1

    goto :goto_c

    .end local v1    # "colCount":I
    .end local v2    # "data":Ljava/lang/String;
    .local v0, "alFirstLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "i":I
    .local p1, "data":Ljava/lang/String;
    .local p3, "Headers":Lanywheresoftware/b4a/objects/collections/List;
    :cond_14
    move-object v2, p1

    .end local p1    # "data":Ljava/lang/String;
    .restart local v2    # "data":Ljava/lang/String;
    goto/16 :goto_3

    .end local v2    # "data":Ljava/lang/String;
    .local v1, "i":I
    .local v3, "i3":I
    .restart local p1    # "data":Ljava/lang/String;
    :cond_15
    move v2, v3

    .end local v3    # "i3":I
    .local v2, "i3":I
    move v3, v4

    .end local v4    # "unixEnd":Z
    .local v3, "unixEnd":Z
    goto :goto_8
.end method

.method private static ReadWord(Ljava/lang/String;[IC)Ljava/lang/String;
    .locals 8
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "ii"    # [I
    .param p2, "sep"    # C

    .prologue
    const/16 v7, 0x22

    const/4 v5, 0x0

    const-string v6, "\""

    .line 239
    aget v3, p1, v5

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_3

    .line 241
    const-string v3, "\""

    aget v3, p1, v5

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 242
    .local v0, "i2":I
    const/4 v2, 0x0

    .line 243
    .local v2, "shouldReplaceQuotes":Z
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    const/4 v3, -0x1

    if-gt v0, v3, :cond_2

    .line 250
    :cond_0
    aget v3, p1, v5

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "ret":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 252
    const-string v3, "\"\""

    const-string v4, "\""

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 253
    :cond_1
    add-int/lit8 v3, v0, 0x2

    aput v3, p1, v5

    .line 261
    .end local v2    # "shouldReplaceQuotes":Z
    :goto_1
    return-object v1

    .line 245
    .end local v1    # "ret":Ljava/lang/String;
    .restart local v2    # "shouldReplaceQuotes":Z
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-eq v0, v3, :cond_0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_0

    .line 247
    const/4 v2, 0x1

    .line 248
    const-string v3, "\""

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 257
    .end local v0    # "i2":I
    .end local v2    # "shouldReplaceQuotes":Z
    :cond_3
    aget v3, p1, v5

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 258
    .restart local v0    # "i2":I
    aget v3, p1, v5

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 259
    .restart local v1    # "ret":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    aput v3, p1, v5

    goto :goto_1
.end method

.method public static SaveCSV(Ljava/lang/String;Ljava/lang/String;CLanywheresoftware/b4a/objects/collections/List;)V
    .locals 1
    .param p0, "Dir"    # Ljava/lang/String;
    .param p1, "FileName"    # Ljava/lang/String;
    .param p2, "SeparatorChar"    # C
    .param p3, "Table"    # Lanywheresoftware/b4a/objects/collections/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lanywheresoftware/b4a/objects/StringUtils;->SaveCSV2(Ljava/lang/String;Ljava/lang/String;CLanywheresoftware/b4a/objects/collections/List;Lanywheresoftware/b4a/objects/collections/List;)V

    .line 83
    return-void
.end method

.method public static SaveCSV2(Ljava/lang/String;Ljava/lang/String;CLanywheresoftware/b4a/objects/collections/List;Lanywheresoftware/b4a/objects/collections/List;)V
    .locals 11
    .param p0, "Dir"    # Ljava/lang/String;
    .param p1, "FileName"    # Ljava/lang/String;
    .param p2, "SeparatorChar"    # C
    .param p3, "Table"    # Lanywheresoftware/b4a/objects/collections/List;
    .param p4, "Headers"    # Lanywheresoftware/b4a/objects/collections/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x1

    .line 89
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Lanywheresoftware/b4a/objects/collections/List;->Get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    array-length v0, v7

    .line 90
    .local v0, "colCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v1, "data":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[\"\\r\\n"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 92
    .local v3, "problemChars":Ljava/util/regex/Pattern;
    if-eqz p4, :cond_0

    .line 93
    invoke-virtual {p4}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v9

    invoke-virtual {v1, v7, v10}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 98
    :cond_0
    const/4 v5, 0x0

    .local v5, "rowI":I
    :goto_1
    invoke-virtual {p3}, Lanywheresoftware/b4a/objects/collections/List;->getSize()I

    move-result v7

    if-lt v5, v7, :cond_2

    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, p1, v7}, Lanywheresoftware/b4a/objects/streams/File;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void

    .line 93
    .end local v5    # "rowI":I
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 94
    .local v6, "s":Ljava/lang/Object;
    check-cast v6, Ljava/lang/String;

    .end local v6    # "s":Ljava/lang/Object;
    invoke-static {v6, v3, p2}, Lanywheresoftware/b4a/objects/StringUtils;->Word(Ljava/lang/String;Ljava/util/regex/Pattern;C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 100
    .restart local v5    # "rowI":I
    :cond_2
    invoke-virtual {p3, v5}, Lanywheresoftware/b4a/objects/collections/List;->Get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 101
    .local v4, "row":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-lt v2, v0, :cond_3

    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v9

    invoke-virtual {v1, v7, v10}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 98
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 103
    :cond_3
    aget-object v7, v4, v2

    invoke-static {v7, v3, p2}, Lanywheresoftware/b4a/objects/StringUtils;->Word(Ljava/lang/String;Ljava/util/regex/Pattern;C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private static Word(Ljava/lang/String;Ljava/util/regex/Pattern;C)Ljava/lang/String;
    .locals 5
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "problemChars"    # Ljava/util/regex/Pattern;
    .param p2, "sep"    # C

    .prologue
    const/4 v4, 0x1

    const-string v3, "\""

    .line 112
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 115
    const/16 v1, 0x22

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 116
    .local v0, "i":I
    :goto_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    if-lt v0, v1, :cond_1

    .line 122
    .end local v0    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 118
    .restart local v0    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 119
    const-string v1, "\""

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public DecodeBase64(Ljava/lang/String;)[B
    .locals 1
    .param p1, "Data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {p1}, Lanywheresoftware/b4a/objects/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public DecodeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "Url"    # Ljava/lang/String;
    .param p2, "CharSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {p1, p2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public EncodeBase64([B)Ljava/lang/String;
    .locals 1
    .param p1, "Data"    # [B

    .prologue
    .line 45
    invoke-static {p1}, Lanywheresoftware/b4a/objects/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public EncodeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "Url"    # Ljava/lang/String;
    .param p2, "CharSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {p1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public MeasureMultilineTextHeight(Landroid/widget/TextView;Ljava/lang/String;)I
    .locals 8
    .param p1, "TextView"    # Landroid/widget/TextView;
    .param p2, "Text"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 33
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    sub-int v3, v1, v3

    .line 34
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p2

    .line 32
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 35
    .local v0, "sl":Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v1

    return v1
.end method

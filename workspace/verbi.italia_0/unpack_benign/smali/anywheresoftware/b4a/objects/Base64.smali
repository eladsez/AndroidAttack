.class public Lanywheresoftware/b4a/objects/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/objects/Base64$InputStream;,
        Lanywheresoftware/b4a/objects/Base64$OutputStream;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DECODE:I = 0x0

.field public static final DONT_GUNZIP:I = 0x4

.field public static final DO_BREAK_LINES:I = 0x8

.field public static final ENCODE:I = 0x1

.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field public static final GZIP:I = 0x2

.field private static final MAX_LINE_LENGTH:I = 0x4c

.field private static final NEW_LINE:B = 0xat

.field public static final NO_OPTIONS:I = 0x0

.field public static final ORDERED:I = 0x20

.field private static final PREFERRED_ENCODING:Ljava/lang/String; = "US-ASCII"

.field public static final URL_SAFE:I = 0x10

.field private static final WHITE_SPACE_ENC:B = -0x5t

.field private static final _ORDERED_ALPHABET:[B

.field private static final _ORDERED_DECODABET:[B

.field private static final _STANDARD_ALPHABET:[B

.field private static final _STANDARD_DECODABET:[B

.field private static final _URL_SAFE_ALPHABET:[B

.field private static final _URL_SAFE_DECODABET:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x5

    const/16 v3, -0x9

    .line 153
    const-class v0, Lanywheresoftware/b4a/objects/Base64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v5

    :goto_0
    sput-boolean v0, Lanywheresoftware/b4a/objects/Base64;->$assertionsDisabled:Z

    .line 225
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lanywheresoftware/b4a/objects/Base64;->_STANDARD_ALPHABET:[B

    .line 243
    const/16 v0, 0x100

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 244
    aput-byte v3, v0, v1

    aput-byte v3, v0, v5

    aput-byte v3, v0, v6

    aput-byte v3, v0, v7

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    .line 245
    aput-byte v4, v0, v1

    const/16 v1, 0xa

    aput-byte v4, v0, v1

    const/16 v1, 0xb

    .line 246
    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    .line 247
    aput-byte v4, v0, v1

    const/16 v1, 0xe

    .line 248
    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    .line 249
    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    .line 250
    aput-byte v4, v0, v1

    const/16 v1, 0x21

    .line 251
    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    .line 252
    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    .line 253
    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    aput-byte v3, v0, v1

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    .line 254
    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    .line 255
    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    .line 256
    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    .line 257
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    .line 258
    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    const/16 v1, 0x40

    aput-byte v3, v0, v1

    const/16 v1, 0x42

    .line 259
    aput-byte v5, v0, v1

    const/16 v1, 0x43

    aput-byte v6, v0, v1

    const/16 v1, 0x44

    aput-byte v7, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    .line 260
    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    .line 261
    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    aput-byte v3, v0, v1

    const/16 v1, 0x60

    aput-byte v3, v0, v1

    const/16 v1, 0x61

    .line 262
    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    .line 263
    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    .line 264
    aput-byte v3, v0, v1

    const/16 v1, 0x7c

    aput-byte v3, v0, v1

    const/16 v1, 0x7d

    aput-byte v3, v0, v1

    const/16 v1, 0x7e

    aput-byte v3, v0, v1

    const/16 v1, 0x7f

    aput-byte v3, v0, v1

    const/16 v1, 0x80

    .line 265
    aput-byte v3, v0, v1

    const/16 v1, 0x81

    aput-byte v3, v0, v1

    const/16 v1, 0x82

    aput-byte v3, v0, v1

    const/16 v1, 0x83

    aput-byte v3, v0, v1

    const/16 v1, 0x84

    aput-byte v3, v0, v1

    const/16 v1, 0x85

    aput-byte v3, v0, v1

    const/16 v1, 0x86

    aput-byte v3, v0, v1

    const/16 v1, 0x87

    aput-byte v3, v0, v1

    const/16 v1, 0x88

    aput-byte v3, v0, v1

    const/16 v1, 0x89

    aput-byte v3, v0, v1

    const/16 v1, 0x8a

    aput-byte v3, v0, v1

    const/16 v1, 0x8b

    aput-byte v3, v0, v1

    const/16 v1, 0x8c

    .line 266
    aput-byte v3, v0, v1

    const/16 v1, 0x8d

    aput-byte v3, v0, v1

    const/16 v1, 0x8e

    aput-byte v3, v0, v1

    const/16 v1, 0x8f

    aput-byte v3, v0, v1

    const/16 v1, 0x90

    aput-byte v3, v0, v1

    const/16 v1, 0x91

    aput-byte v3, v0, v1

    const/16 v1, 0x92

    aput-byte v3, v0, v1

    const/16 v1, 0x93

    aput-byte v3, v0, v1

    const/16 v1, 0x94

    aput-byte v3, v0, v1

    const/16 v1, 0x95

    aput-byte v3, v0, v1

    const/16 v1, 0x96

    aput-byte v3, v0, v1

    const/16 v1, 0x97

    aput-byte v3, v0, v1

    const/16 v1, 0x98

    aput-byte v3, v0, v1

    const/16 v1, 0x99

    .line 267
    aput-byte v3, v0, v1

    const/16 v1, 0x9a

    aput-byte v3, v0, v1

    const/16 v1, 0x9b

    aput-byte v3, v0, v1

    const/16 v1, 0x9c

    aput-byte v3, v0, v1

    const/16 v1, 0x9d

    aput-byte v3, v0, v1

    const/16 v1, 0x9e

    aput-byte v3, v0, v1

    const/16 v1, 0x9f

    aput-byte v3, v0, v1

    const/16 v1, 0xa0

    aput-byte v3, v0, v1

    const/16 v1, 0xa1

    aput-byte v3, v0, v1

    const/16 v1, 0xa2

    aput-byte v3, v0, v1

    const/16 v1, 0xa3

    aput-byte v3, v0, v1

    const/16 v1, 0xa4

    aput-byte v3, v0, v1

    const/16 v1, 0xa5

    aput-byte v3, v0, v1

    const/16 v1, 0xa6

    .line 268
    aput-byte v3, v0, v1

    const/16 v1, 0xa7

    aput-byte v3, v0, v1

    const/16 v1, 0xa8

    aput-byte v3, v0, v1

    const/16 v1, 0xa9

    aput-byte v3, v0, v1

    const/16 v1, 0xaa

    aput-byte v3, v0, v1

    const/16 v1, 0xab

    aput-byte v3, v0, v1

    const/16 v1, 0xac

    aput-byte v3, v0, v1

    const/16 v1, 0xad

    aput-byte v3, v0, v1

    const/16 v1, 0xae

    aput-byte v3, v0, v1

    const/16 v1, 0xaf

    aput-byte v3, v0, v1

    const/16 v1, 0xb0

    aput-byte v3, v0, v1

    const/16 v1, 0xb1

    aput-byte v3, v0, v1

    const/16 v1, 0xb2

    aput-byte v3, v0, v1

    const/16 v1, 0xb3

    .line 269
    aput-byte v3, v0, v1

    const/16 v1, 0xb4

    aput-byte v3, v0, v1

    const/16 v1, 0xb5

    aput-byte v3, v0, v1

    const/16 v1, 0xb6

    aput-byte v3, v0, v1

    const/16 v1, 0xb7

    aput-byte v3, v0, v1

    const/16 v1, 0xb8

    aput-byte v3, v0, v1

    const/16 v1, 0xb9

    aput-byte v3, v0, v1

    const/16 v1, 0xba

    aput-byte v3, v0, v1

    const/16 v1, 0xbb

    aput-byte v3, v0, v1

    const/16 v1, 0xbc

    aput-byte v3, v0, v1

    const/16 v1, 0xbd

    aput-byte v3, v0, v1

    const/16 v1, 0xbe

    aput-byte v3, v0, v1

    const/16 v1, 0xbf

    aput-byte v3, v0, v1

    const/16 v1, 0xc0

    .line 270
    aput-byte v3, v0, v1

    const/16 v1, 0xc1

    aput-byte v3, v0, v1

    const/16 v1, 0xc2

    aput-byte v3, v0, v1

    const/16 v1, 0xc3

    aput-byte v3, v0, v1

    const/16 v1, 0xc4

    aput-byte v3, v0, v1

    const/16 v1, 0xc5

    aput-byte v3, v0, v1

    const/16 v1, 0xc6

    aput-byte v3, v0, v1

    const/16 v1, 0xc7

    aput-byte v3, v0, v1

    const/16 v1, 0xc8

    aput-byte v3, v0, v1

    const/16 v1, 0xc9

    aput-byte v3, v0, v1

    const/16 v1, 0xca

    aput-byte v3, v0, v1

    const/16 v1, 0xcb

    aput-byte v3, v0, v1

    const/16 v1, 0xcc

    aput-byte v3, v0, v1

    const/16 v1, 0xcd

    .line 271
    aput-byte v3, v0, v1

    const/16 v1, 0xce

    aput-byte v3, v0, v1

    const/16 v1, 0xcf

    aput-byte v3, v0, v1

    const/16 v1, 0xd0

    aput-byte v3, v0, v1

    const/16 v1, 0xd1

    aput-byte v3, v0, v1

    const/16 v1, 0xd2

    aput-byte v3, v0, v1

    const/16 v1, 0xd3

    aput-byte v3, v0, v1

    const/16 v1, 0xd4

    aput-byte v3, v0, v1

    const/16 v1, 0xd5

    aput-byte v3, v0, v1

    const/16 v1, 0xd6

    aput-byte v3, v0, v1

    const/16 v1, 0xd7

    aput-byte v3, v0, v1

    const/16 v1, 0xd8

    aput-byte v3, v0, v1

    const/16 v1, 0xd9

    aput-byte v3, v0, v1

    const/16 v1, 0xda

    .line 272
    aput-byte v3, v0, v1

    const/16 v1, 0xdb

    aput-byte v3, v0, v1

    const/16 v1, 0xdc

    aput-byte v3, v0, v1

    const/16 v1, 0xdd

    aput-byte v3, v0, v1

    const/16 v1, 0xde

    aput-byte v3, v0, v1

    const/16 v1, 0xdf

    aput-byte v3, v0, v1

    const/16 v1, 0xe0

    aput-byte v3, v0, v1

    const/16 v1, 0xe1

    aput-byte v3, v0, v1

    const/16 v1, 0xe2

    aput-byte v3, v0, v1

    const/16 v1, 0xe3

    aput-byte v3, v0, v1

    const/16 v1, 0xe4

    aput-byte v3, v0, v1

    const/16 v1, 0xe5

    aput-byte v3, v0, v1

    const/16 v1, 0xe6

    aput-byte v3, v0, v1

    const/16 v1, 0xe7

    .line 273
    aput-byte v3, v0, v1

    const/16 v1, 0xe8

    aput-byte v3, v0, v1

    const/16 v1, 0xe9

    aput-byte v3, v0, v1

    const/16 v1, 0xea

    aput-byte v3, v0, v1

    const/16 v1, 0xeb

    aput-byte v3, v0, v1

    const/16 v1, 0xec

    aput-byte v3, v0, v1

    const/16 v1, 0xed

    aput-byte v3, v0, v1

    const/16 v1, 0xee

    aput-byte v3, v0, v1

    const/16 v1, 0xef

    aput-byte v3, v0, v1

    const/16 v1, 0xf0

    aput-byte v3, v0, v1

    const/16 v1, 0xf1

    aput-byte v3, v0, v1

    const/16 v1, 0xf2

    aput-byte v3, v0, v1

    const/16 v1, 0xf3

    aput-byte v3, v0, v1

    const/16 v1, 0xf4

    .line 274
    aput-byte v3, v0, v1

    const/16 v1, 0xf5

    aput-byte v3, v0, v1

    const/16 v1, 0xf6

    aput-byte v3, v0, v1

    const/16 v1, 0xf7

    aput-byte v3, v0, v1

    const/16 v1, 0xf8

    aput-byte v3, v0, v1

    const/16 v1, 0xf9

    aput-byte v3, v0, v1

    const/16 v1, 0xfa

    aput-byte v3, v0, v1

    const/16 v1, 0xfb

    aput-byte v3, v0, v1

    const/16 v1, 0xfc

    aput-byte v3, v0, v1

    const/16 v1, 0xfd

    aput-byte v3, v0, v1

    const/16 v1, 0xfe

    aput-byte v3, v0, v1

    const/16 v1, 0xff

    aput-byte v3, v0, v1

    .line 243
    sput-object v0, Lanywheresoftware/b4a/objects/Base64;->_STANDARD_DECODABET:[B

    .line 285
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lanywheresoftware/b4a/objects/Base64;->_URL_SAFE_ALPHABET:[B

    .line 301
    const/16 v0, 0x100

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 302
    aput-byte v3, v0, v1

    aput-byte v3, v0, v5

    aput-byte v3, v0, v6

    aput-byte v3, v0, v7

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    .line 303
    aput-byte v4, v0, v1

    const/16 v1, 0xa

    aput-byte v4, v0, v1

    const/16 v1, 0xb

    .line 304
    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    .line 305
    aput-byte v4, v0, v1

    const/16 v1, 0xe

    .line 306
    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    .line 307
    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    .line 308
    aput-byte v4, v0, v1

    const/16 v1, 0x21

    .line 309
    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    .line 310
    aput-byte v3, v0, v1

    const/16 v1, 0x2c

    .line 311
    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    .line 312
    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    .line 313
    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    .line 314
    aput-byte v3, v0, v1

    const/16 v1, 0x30

    .line 315
    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    .line 316
    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    .line 317
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    .line 318
    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    const/16 v1, 0x40

    aput-byte v3, v0, v1

    const/16 v1, 0x42

    .line 319
    aput-byte v5, v0, v1

    const/16 v1, 0x43

    aput-byte v6, v0, v1

    const/16 v1, 0x44

    aput-byte v7, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    .line 320
    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    .line 321
    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    .line 322
    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    .line 323
    aput-byte v3, v0, v1

    const/16 v1, 0x61

    .line 324
    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    .line 325
    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    .line 326
    aput-byte v3, v0, v1

    const/16 v1, 0x7c

    aput-byte v3, v0, v1

    const/16 v1, 0x7d

    aput-byte v3, v0, v1

    const/16 v1, 0x7e

    aput-byte v3, v0, v1

    const/16 v1, 0x7f

    aput-byte v3, v0, v1

    const/16 v1, 0x80

    .line 327
    aput-byte v3, v0, v1

    const/16 v1, 0x81

    aput-byte v3, v0, v1

    const/16 v1, 0x82

    aput-byte v3, v0, v1

    const/16 v1, 0x83

    aput-byte v3, v0, v1

    const/16 v1, 0x84

    aput-byte v3, v0, v1

    const/16 v1, 0x85

    aput-byte v3, v0, v1

    const/16 v1, 0x86

    aput-byte v3, v0, v1

    const/16 v1, 0x87

    aput-byte v3, v0, v1

    const/16 v1, 0x88

    aput-byte v3, v0, v1

    const/16 v1, 0x89

    aput-byte v3, v0, v1

    const/16 v1, 0x8a

    aput-byte v3, v0, v1

    const/16 v1, 0x8b

    aput-byte v3, v0, v1

    const/16 v1, 0x8c

    .line 328
    aput-byte v3, v0, v1

    const/16 v1, 0x8d

    aput-byte v3, v0, v1

    const/16 v1, 0x8e

    aput-byte v3, v0, v1

    const/16 v1, 0x8f

    aput-byte v3, v0, v1

    const/16 v1, 0x90

    aput-byte v3, v0, v1

    const/16 v1, 0x91

    aput-byte v3, v0, v1

    const/16 v1, 0x92

    aput-byte v3, v0, v1

    const/16 v1, 0x93

    aput-byte v3, v0, v1

    const/16 v1, 0x94

    aput-byte v3, v0, v1

    const/16 v1, 0x95

    aput-byte v3, v0, v1

    const/16 v1, 0x96

    aput-byte v3, v0, v1

    const/16 v1, 0x97

    aput-byte v3, v0, v1

    const/16 v1, 0x98

    aput-byte v3, v0, v1

    const/16 v1, 0x99

    .line 329
    aput-byte v3, v0, v1

    const/16 v1, 0x9a

    aput-byte v3, v0, v1

    const/16 v1, 0x9b

    aput-byte v3, v0, v1

    const/16 v1, 0x9c

    aput-byte v3, v0, v1

    const/16 v1, 0x9d

    aput-byte v3, v0, v1

    const/16 v1, 0x9e

    aput-byte v3, v0, v1

    const/16 v1, 0x9f

    aput-byte v3, v0, v1

    const/16 v1, 0xa0

    aput-byte v3, v0, v1

    const/16 v1, 0xa1

    aput-byte v3, v0, v1

    const/16 v1, 0xa2

    aput-byte v3, v0, v1

    const/16 v1, 0xa3

    aput-byte v3, v0, v1

    const/16 v1, 0xa4

    aput-byte v3, v0, v1

    const/16 v1, 0xa5

    aput-byte v3, v0, v1

    const/16 v1, 0xa6

    .line 330
    aput-byte v3, v0, v1

    const/16 v1, 0xa7

    aput-byte v3, v0, v1

    const/16 v1, 0xa8

    aput-byte v3, v0, v1

    const/16 v1, 0xa9

    aput-byte v3, v0, v1

    const/16 v1, 0xaa

    aput-byte v3, v0, v1

    const/16 v1, 0xab

    aput-byte v3, v0, v1

    const/16 v1, 0xac

    aput-byte v3, v0, v1

    const/16 v1, 0xad

    aput-byte v3, v0, v1

    const/16 v1, 0xae

    aput-byte v3, v0, v1

    const/16 v1, 0xaf

    aput-byte v3, v0, v1

    const/16 v1, 0xb0

    aput-byte v3, v0, v1

    const/16 v1, 0xb1

    aput-byte v3, v0, v1

    const/16 v1, 0xb2

    aput-byte v3, v0, v1

    const/16 v1, 0xb3

    .line 331
    aput-byte v3, v0, v1

    const/16 v1, 0xb4

    aput-byte v3, v0, v1

    const/16 v1, 0xb5

    aput-byte v3, v0, v1

    const/16 v1, 0xb6

    aput-byte v3, v0, v1

    const/16 v1, 0xb7

    aput-byte v3, v0, v1

    const/16 v1, 0xb8

    aput-byte v3, v0, v1

    const/16 v1, 0xb9

    aput-byte v3, v0, v1

    const/16 v1, 0xba

    aput-byte v3, v0, v1

    const/16 v1, 0xbb

    aput-byte v3, v0, v1

    const/16 v1, 0xbc

    aput-byte v3, v0, v1

    const/16 v1, 0xbd

    aput-byte v3, v0, v1

    const/16 v1, 0xbe

    aput-byte v3, v0, v1

    const/16 v1, 0xbf

    aput-byte v3, v0, v1

    const/16 v1, 0xc0

    .line 332
    aput-byte v3, v0, v1

    const/16 v1, 0xc1

    aput-byte v3, v0, v1

    const/16 v1, 0xc2

    aput-byte v3, v0, v1

    const/16 v1, 0xc3

    aput-byte v3, v0, v1

    const/16 v1, 0xc4

    aput-byte v3, v0, v1

    const/16 v1, 0xc5

    aput-byte v3, v0, v1

    const/16 v1, 0xc6

    aput-byte v3, v0, v1

    const/16 v1, 0xc7

    aput-byte v3, v0, v1

    const/16 v1, 0xc8

    aput-byte v3, v0, v1

    const/16 v1, 0xc9

    aput-byte v3, v0, v1

    const/16 v1, 0xca

    aput-byte v3, v0, v1

    const/16 v1, 0xcb

    aput-byte v3, v0, v1

    const/16 v1, 0xcc

    aput-byte v3, v0, v1

    const/16 v1, 0xcd

    .line 333
    aput-byte v3, v0, v1

    const/16 v1, 0xce

    aput-byte v3, v0, v1

    const/16 v1, 0xcf

    aput-byte v3, v0, v1

    const/16 v1, 0xd0

    aput-byte v3, v0, v1

    const/16 v1, 0xd1

    aput-byte v3, v0, v1

    const/16 v1, 0xd2

    aput-byte v3, v0, v1

    const/16 v1, 0xd3

    aput-byte v3, v0, v1

    const/16 v1, 0xd4

    aput-byte v3, v0, v1

    const/16 v1, 0xd5

    aput-byte v3, v0, v1

    const/16 v1, 0xd6

    aput-byte v3, v0, v1

    const/16 v1, 0xd7

    aput-byte v3, v0, v1

    const/16 v1, 0xd8

    aput-byte v3, v0, v1

    const/16 v1, 0xd9

    aput-byte v3, v0, v1

    const/16 v1, 0xda

    .line 334
    aput-byte v3, v0, v1

    const/16 v1, 0xdb

    aput-byte v3, v0, v1

    const/16 v1, 0xdc

    aput-byte v3, v0, v1

    const/16 v1, 0xdd

    aput-byte v3, v0, v1

    const/16 v1, 0xde

    aput-byte v3, v0, v1

    const/16 v1, 0xdf

    aput-byte v3, v0, v1

    const/16 v1, 0xe0

    aput-byte v3, v0, v1

    const/16 v1, 0xe1

    aput-byte v3, v0, v1

    const/16 v1, 0xe2

    aput-byte v3, v0, v1

    const/16 v1, 0xe3

    aput-byte v3, v0, v1

    const/16 v1, 0xe4

    aput-byte v3, v0, v1

    const/16 v1, 0xe5

    aput-byte v3, v0, v1

    const/16 v1, 0xe6

    aput-byte v3, v0, v1

    const/16 v1, 0xe7

    .line 335
    aput-byte v3, v0, v1

    const/16 v1, 0xe8

    aput-byte v3, v0, v1

    const/16 v1, 0xe9

    aput-byte v3, v0, v1

    const/16 v1, 0xea

    aput-byte v3, v0, v1

    const/16 v1, 0xeb

    aput-byte v3, v0, v1

    const/16 v1, 0xec

    aput-byte v3, v0, v1

    const/16 v1, 0xed

    aput-byte v3, v0, v1

    const/16 v1, 0xee

    aput-byte v3, v0, v1

    const/16 v1, 0xef

    aput-byte v3, v0, v1

    const/16 v1, 0xf0

    aput-byte v3, v0, v1

    const/16 v1, 0xf1

    aput-byte v3, v0, v1

    const/16 v1, 0xf2

    aput-byte v3, v0, v1

    const/16 v1, 0xf3

    aput-byte v3, v0, v1

    const/16 v1, 0xf4

    .line 336
    aput-byte v3, v0, v1

    const/16 v1, 0xf5

    aput-byte v3, v0, v1

    const/16 v1, 0xf6

    aput-byte v3, v0, v1

    const/16 v1, 0xf7

    aput-byte v3, v0, v1

    const/16 v1, 0xf8

    aput-byte v3, v0, v1

    const/16 v1, 0xf9

    aput-byte v3, v0, v1

    const/16 v1, 0xfa

    aput-byte v3, v0, v1

    const/16 v1, 0xfb

    aput-byte v3, v0, v1

    const/16 v1, 0xfc

    aput-byte v3, v0, v1

    const/16 v1, 0xfd

    aput-byte v3, v0, v1

    const/16 v1, 0xfe

    aput-byte v3, v0, v1

    const/16 v1, 0xff

    aput-byte v3, v0, v1

    .line 301
    sput-object v0, Lanywheresoftware/b4a/objects/Base64;->_URL_SAFE_DECODABET:[B

    .line 348
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lanywheresoftware/b4a/objects/Base64;->_ORDERED_ALPHABET:[B

    .line 366
    const/16 v0, 0x101

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 367
    aput-byte v3, v0, v1

    aput-byte v3, v0, v5

    aput-byte v3, v0, v6

    aput-byte v3, v0, v7

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    .line 368
    aput-byte v4, v0, v1

    const/16 v1, 0xa

    aput-byte v4, v0, v1

    const/16 v1, 0xb

    .line 369
    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    .line 370
    aput-byte v4, v0, v1

    const/16 v1, 0xe

    .line 371
    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    .line 372
    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    .line 373
    aput-byte v4, v0, v1

    const/16 v1, 0x21

    .line 374
    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    .line 375
    aput-byte v3, v0, v1

    const/16 v1, 0x2c

    .line 376
    aput-byte v3, v0, v1

    const/16 v1, 0x2e

    .line 378
    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    .line 379
    aput-byte v3, v0, v1

    const/16 v1, 0x30

    .line 380
    aput-byte v5, v0, v1

    const/16 v1, 0x31

    aput-byte v6, v0, v1

    const/16 v1, 0x32

    aput-byte v7, v0, v1

    const/16 v1, 0x33

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    .line 381
    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    .line 382
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    .line 383
    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    const/16 v1, 0x40

    aput-byte v3, v0, v1

    const/16 v1, 0x41

    .line 384
    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    .line 385
    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    .line 386
    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    .line 387
    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    .line 388
    aput-byte v3, v0, v1

    const/16 v1, 0x61

    .line 389
    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    .line 390
    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    .line 391
    aput-byte v3, v0, v1

    const/16 v1, 0x7c

    aput-byte v3, v0, v1

    const/16 v1, 0x7d

    aput-byte v3, v0, v1

    const/16 v1, 0x7e

    aput-byte v3, v0, v1

    const/16 v1, 0x7f

    aput-byte v3, v0, v1

    const/16 v1, 0x80

    .line 392
    aput-byte v3, v0, v1

    const/16 v1, 0x81

    aput-byte v3, v0, v1

    const/16 v1, 0x82

    aput-byte v3, v0, v1

    const/16 v1, 0x83

    aput-byte v3, v0, v1

    const/16 v1, 0x84

    aput-byte v3, v0, v1

    const/16 v1, 0x85

    aput-byte v3, v0, v1

    const/16 v1, 0x86

    aput-byte v3, v0, v1

    const/16 v1, 0x87

    aput-byte v3, v0, v1

    const/16 v1, 0x88

    aput-byte v3, v0, v1

    const/16 v1, 0x89

    aput-byte v3, v0, v1

    const/16 v1, 0x8a

    aput-byte v3, v0, v1

    const/16 v1, 0x8b

    aput-byte v3, v0, v1

    const/16 v1, 0x8c

    aput-byte v3, v0, v1

    const/16 v1, 0x8d

    .line 393
    aput-byte v3, v0, v1

    const/16 v1, 0x8e

    aput-byte v3, v0, v1

    const/16 v1, 0x8f

    aput-byte v3, v0, v1

    const/16 v1, 0x90

    aput-byte v3, v0, v1

    const/16 v1, 0x91

    aput-byte v3, v0, v1

    const/16 v1, 0x92

    aput-byte v3, v0, v1

    const/16 v1, 0x93

    aput-byte v3, v0, v1

    const/16 v1, 0x94

    aput-byte v3, v0, v1

    const/16 v1, 0x95

    aput-byte v3, v0, v1

    const/16 v1, 0x96

    aput-byte v3, v0, v1

    const/16 v1, 0x97

    aput-byte v3, v0, v1

    const/16 v1, 0x98

    aput-byte v3, v0, v1

    const/16 v1, 0x99

    aput-byte v3, v0, v1

    const/16 v1, 0x9a

    .line 394
    aput-byte v3, v0, v1

    const/16 v1, 0x9b

    aput-byte v3, v0, v1

    const/16 v1, 0x9c

    aput-byte v3, v0, v1

    const/16 v1, 0x9d

    aput-byte v3, v0, v1

    const/16 v1, 0x9e

    aput-byte v3, v0, v1

    const/16 v1, 0x9f

    aput-byte v3, v0, v1

    const/16 v1, 0xa0

    aput-byte v3, v0, v1

    const/16 v1, 0xa1

    aput-byte v3, v0, v1

    const/16 v1, 0xa2

    aput-byte v3, v0, v1

    const/16 v1, 0xa3

    aput-byte v3, v0, v1

    const/16 v1, 0xa4

    aput-byte v3, v0, v1

    const/16 v1, 0xa5

    aput-byte v3, v0, v1

    const/16 v1, 0xa6

    aput-byte v3, v0, v1

    const/16 v1, 0xa7

    .line 395
    aput-byte v3, v0, v1

    const/16 v1, 0xa8

    aput-byte v3, v0, v1

    const/16 v1, 0xa9

    aput-byte v3, v0, v1

    const/16 v1, 0xaa

    aput-byte v3, v0, v1

    const/16 v1, 0xab

    aput-byte v3, v0, v1

    const/16 v1, 0xac

    aput-byte v3, v0, v1

    const/16 v1, 0xad

    aput-byte v3, v0, v1

    const/16 v1, 0xae

    aput-byte v3, v0, v1

    const/16 v1, 0xaf

    aput-byte v3, v0, v1

    const/16 v1, 0xb0

    aput-byte v3, v0, v1

    const/16 v1, 0xb1

    aput-byte v3, v0, v1

    const/16 v1, 0xb2

    aput-byte v3, v0, v1

    const/16 v1, 0xb3

    aput-byte v3, v0, v1

    const/16 v1, 0xb4

    .line 396
    aput-byte v3, v0, v1

    const/16 v1, 0xb5

    aput-byte v3, v0, v1

    const/16 v1, 0xb6

    aput-byte v3, v0, v1

    const/16 v1, 0xb7

    aput-byte v3, v0, v1

    const/16 v1, 0xb8

    aput-byte v3, v0, v1

    const/16 v1, 0xb9

    aput-byte v3, v0, v1

    const/16 v1, 0xba

    aput-byte v3, v0, v1

    const/16 v1, 0xbb

    aput-byte v3, v0, v1

    const/16 v1, 0xbc

    aput-byte v3, v0, v1

    const/16 v1, 0xbd

    aput-byte v3, v0, v1

    const/16 v1, 0xbe

    aput-byte v3, v0, v1

    const/16 v1, 0xbf

    aput-byte v3, v0, v1

    const/16 v1, 0xc0

    aput-byte v3, v0, v1

    const/16 v1, 0xc1

    .line 397
    aput-byte v3, v0, v1

    const/16 v1, 0xc2

    aput-byte v3, v0, v1

    const/16 v1, 0xc3

    aput-byte v3, v0, v1

    const/16 v1, 0xc4

    aput-byte v3, v0, v1

    const/16 v1, 0xc5

    aput-byte v3, v0, v1

    const/16 v1, 0xc6

    aput-byte v3, v0, v1

    const/16 v1, 0xc7

    aput-byte v3, v0, v1

    const/16 v1, 0xc8

    aput-byte v3, v0, v1

    const/16 v1, 0xc9

    aput-byte v3, v0, v1

    const/16 v1, 0xca

    aput-byte v3, v0, v1

    const/16 v1, 0xcb

    aput-byte v3, v0, v1

    const/16 v1, 0xcc

    aput-byte v3, v0, v1

    const/16 v1, 0xcd

    aput-byte v3, v0, v1

    const/16 v1, 0xce

    .line 398
    aput-byte v3, v0, v1

    const/16 v1, 0xcf

    aput-byte v3, v0, v1

    const/16 v1, 0xd0

    aput-byte v3, v0, v1

    const/16 v1, 0xd1

    aput-byte v3, v0, v1

    const/16 v1, 0xd2

    aput-byte v3, v0, v1

    const/16 v1, 0xd3

    aput-byte v3, v0, v1

    const/16 v1, 0xd4

    aput-byte v3, v0, v1

    const/16 v1, 0xd5

    aput-byte v3, v0, v1

    const/16 v1, 0xd6

    aput-byte v3, v0, v1

    const/16 v1, 0xd7

    aput-byte v3, v0, v1

    const/16 v1, 0xd8

    aput-byte v3, v0, v1

    const/16 v1, 0xd9

    aput-byte v3, v0, v1

    const/16 v1, 0xda

    aput-byte v3, v0, v1

    const/16 v1, 0xdb

    .line 399
    aput-byte v3, v0, v1

    const/16 v1, 0xdc

    aput-byte v3, v0, v1

    const/16 v1, 0xdd

    aput-byte v3, v0, v1

    const/16 v1, 0xde

    aput-byte v3, v0, v1

    const/16 v1, 0xdf

    aput-byte v3, v0, v1

    const/16 v1, 0xe0

    aput-byte v3, v0, v1

    const/16 v1, 0xe1

    aput-byte v3, v0, v1

    const/16 v1, 0xe2

    aput-byte v3, v0, v1

    const/16 v1, 0xe3

    aput-byte v3, v0, v1

    const/16 v1, 0xe4

    aput-byte v3, v0, v1

    const/16 v1, 0xe5

    aput-byte v3, v0, v1

    const/16 v1, 0xe6

    aput-byte v3, v0, v1

    const/16 v1, 0xe7

    aput-byte v3, v0, v1

    const/16 v1, 0xe8

    .line 400
    aput-byte v3, v0, v1

    const/16 v1, 0xe9

    aput-byte v3, v0, v1

    const/16 v1, 0xea

    aput-byte v3, v0, v1

    const/16 v1, 0xeb

    aput-byte v3, v0, v1

    const/16 v1, 0xec

    aput-byte v3, v0, v1

    const/16 v1, 0xed

    aput-byte v3, v0, v1

    const/16 v1, 0xee

    aput-byte v3, v0, v1

    const/16 v1, 0xef

    aput-byte v3, v0, v1

    const/16 v1, 0xf0

    aput-byte v3, v0, v1

    const/16 v1, 0xf1

    aput-byte v3, v0, v1

    const/16 v1, 0xf2

    aput-byte v3, v0, v1

    const/16 v1, 0xf3

    aput-byte v3, v0, v1

    const/16 v1, 0xf4

    aput-byte v3, v0, v1

    const/16 v1, 0xf5

    .line 401
    aput-byte v3, v0, v1

    const/16 v1, 0xf6

    aput-byte v3, v0, v1

    const/16 v1, 0xf7

    aput-byte v3, v0, v1

    const/16 v1, 0xf8

    aput-byte v3, v0, v1

    const/16 v1, 0xf9

    aput-byte v3, v0, v1

    const/16 v1, 0xfa

    aput-byte v3, v0, v1

    const/16 v1, 0xfb

    aput-byte v3, v0, v1

    const/16 v1, 0xfc

    aput-byte v3, v0, v1

    const/16 v1, 0xfd

    aput-byte v3, v0, v1

    const/16 v1, 0xfe

    aput-byte v3, v0, v1

    const/16 v1, 0xff

    aput-byte v3, v0, v1

    const/16 v1, 0x100

    aput-byte v3, v0, v1

    .line 366
    sput-object v0, Lanywheresoftware/b4a/objects/Base64;->_ORDERED_DECODABET:[B

    return-void

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 225
    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 285
    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    .line 348
    :array_2
    .array-data 1
        0x2dt
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(I)[B
    .locals 1

    .prologue
    .line 433
    invoke-static {p0}, Lanywheresoftware/b4a/objects/Base64;->getDecodabet(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1([BII[BII)[B
    .locals 1

    .prologue
    .line 498
    invoke-static/range {p0 .. p5}, Lanywheresoftware/b4a/objects/Base64;->encode3to4([BII[BII)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2([BI[BII)I
    .locals 1

    .prologue
    .line 1033
    invoke-static {p0, p1, p2, p3, p4}, Lanywheresoftware/b4a/objects/Base64;->decode4to3([BI[BII)I

    move-result v0

    return v0
.end method

.method static synthetic access$3([B[BII)[B
    .locals 1

    .prologue
    .line 469
    invoke-static {p0, p1, p2, p3}, Lanywheresoftware/b4a/objects/Base64;->encode3to4([B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1227
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lanywheresoftware/b4a/objects/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;I)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1245
    if-nez p0, :cond_0

    .line 1246
    new-instance p0, Ljava/lang/NullPointerException;

    .end local p0    # "s":Ljava/lang/String;
    const-string p1, "Input string was null."

    .end local p1    # "options":I
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1251
    .restart local p0    # "s":Ljava/lang/String;
    .restart local p1    # "options":I
    :cond_0
    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 1259
    .local p0, "bytes":[B
    :goto_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lanywheresoftware/b4a/objects/Base64;->decode([BIII)[B

    move-result-object v2

    .line 1263
    .end local p0    # "bytes":[B
    .local v2, "bytes":[B
    and-int/lit8 p0, p1, 0x4

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 1264
    .local p0, "dontGunzip":Z
    :goto_1
    if-eqz v2, :cond_3

    array-length p1, v2

    .end local p1    # "options":I
    const/4 v0, 0x4

    if-lt p1, v0, :cond_3

    if-nez p0, :cond_3

    .line 1266
    const/4 p0, 0x0

    aget-byte p0, v2, p0

    .end local p0    # "dontGunzip":Z
    and-int/lit16 p0, p0, 0xff

    const/4 p1, 0x1

    aget-byte p1, v2, p1

    shl-int/lit8 p1, p1, 0x8

    const v0, 0xff00

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    .line 1267
    .local p0, "head":I
    const p1, 0x8b1f

    if-ne p1, p0, :cond_3

    .line 1268
    const/4 p0, 0x0

    .line 1269
    .local p0, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v3, 0x0

    .line 1270
    .local v3, "gzis":Ljava/util/zip/GZIPInputStream;
    const/4 p1, 0x0

    .line 1271
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v0, 0x800

    new-array v1, v0, [B

    .line 1272
    .local v1, "buffer":[B
    const/4 v5, 0x0

    .line 1275
    .local v5, "length":I
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1276
    .end local p1    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1277
    .end local p0    # "bais":Ljava/io/ByteArrayInputStream;
    .local p1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_3
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v3    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local v4, "gzis":Ljava/util/zip/GZIPInputStream;
    move p0, v5

    .line 1279
    .end local v5    # "length":I
    .local p0, "length":I
    :goto_2
    :try_start_4
    invoke-virtual {v4, v1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result p0

    if-gez p0, :cond_2

    .line 1284
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object p0

    .line 1292
    .end local v2    # "bytes":[B
    .local p0, "bytes":[B
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 1293
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 1294
    :goto_4
    :try_start_7
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    .line 1300
    .end local v1    # "buffer":[B
    .end local v4    # "gzis":Ljava/util/zip/GZIPInputStream;
    .end local p1    # "bais":Ljava/io/ByteArrayInputStream;
    :goto_5
    return-object p0

    .line 1253
    .local p0, "s":Ljava/lang/String;
    .local p1, "options":I
    :catch_0
    move-exception v0

    .line 1254
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .local p0, "bytes":[B
    goto :goto_0

    .line 1263
    .end local v0    # "uee":Ljava/io/UnsupportedEncodingException;
    .end local p0    # "bytes":[B
    .restart local v2    # "bytes":[B
    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    .line 1280
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v4    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local p0, "length":I
    .local p1, "bais":Ljava/io/ByteArrayInputStream;
    :cond_2
    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {v0, v1, v3, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    .line 1287
    :catch_1
    move-exception v1

    move v3, p0

    .end local p0    # "length":I
    .local v3, "length":I
    move-object p0, p1

    .end local p1    # "bais":Ljava/io/ByteArrayInputStream;
    .local p0, "bais":Ljava/io/ByteArrayInputStream;
    move-object p1, v0

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    move-object v1, v4

    .line 1288
    .end local v4    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local v0, "e":Ljava/io/IOException;
    .local v1, "gzis":Ljava/util/zip/GZIPInputStream;
    :goto_6
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1292
    :try_start_a
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 1293
    .end local p1    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_7
    :try_start_b
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 1294
    :goto_8
    :try_start_c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    move-object p0, v2

    .end local v2    # "bytes":[B
    .local p0, "bytes":[B
    goto :goto_5

    .restart local v2    # "bytes":[B
    .local p0, "bais":Ljava/io/ByteArrayInputStream;
    :catch_2
    move-exception p0

    .end local p0    # "bais":Ljava/io/ByteArrayInputStream;
    move-object p0, v2

    .end local v2    # "bytes":[B
    .local p0, "bytes":[B
    goto :goto_5

    .line 1291
    .end local v0    # "e":Ljava/io/IOException;
    .local v1, "buffer":[B
    .restart local v2    # "bytes":[B
    .local v3, "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v5    # "length":I
    .local p0, "bais":Ljava/io/ByteArrayInputStream;
    .restart local p1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v0

    move-object v2, v0

    move v1, v5

    .end local v5    # "length":I
    .local v1, "length":I
    move-object v0, v3

    .line 1292
    .end local v2    # "bytes":[B
    .end local v3    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local v0, "gzis":Ljava/util/zip/GZIPInputStream;
    :goto_9
    :try_start_d
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 1293
    .end local p1    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_a
    :try_start_e
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 1294
    :goto_b
    :try_start_f
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 1295
    .end local p0    # "bais":Ljava/io/ByteArrayInputStream;
    :goto_c
    throw v2

    .line 1292
    .local v0, "e":Ljava/io/IOException;
    .local v1, "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v2    # "bytes":[B
    .local v3, "length":I
    .restart local p0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local p1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception p1

    goto :goto_7

    .line 1293
    .end local p1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception p1

    goto :goto_8

    .line 1292
    .end local v2    # "bytes":[B
    .end local v3    # "length":I
    .local v0, "gzis":Ljava/util/zip/GZIPInputStream;
    .local v1, "length":I
    .restart local p1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_5
    move-exception p1

    goto :goto_a

    .line 1293
    .end local p1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_6
    move-exception p1

    goto :goto_b

    .line 1294
    :catch_7
    move-exception p0

    goto :goto_c

    .line 1292
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "buffer":[B
    .restart local v4    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local p0, "bytes":[B
    .local p1, "bais":Ljava/io/ByteArrayInputStream;
    :catch_8
    move-exception v0

    goto :goto_3

    .line 1293
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_9
    move-exception v0

    goto :goto_4

    .line 1294
    :catch_a
    move-exception p1

    goto :goto_5

    .line 1291
    .end local v4    # "gzis":Ljava/util/zip/GZIPInputStream;
    .end local p1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bytes":[B
    .local v3, "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v5    # "length":I
    .local p0, "bais":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception p1

    move-object v2, p1

    move v1, v5

    .end local v5    # "length":I
    .local v1, "length":I
    move-object p1, v0

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    move-object v0, v3

    .end local v3    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local v0, "gzis":Ljava/util/zip/GZIPInputStream;
    goto :goto_9

    .end local p0    # "bais":Ljava/io/ByteArrayInputStream;
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "buffer":[B
    .restart local v3    # "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v5    # "length":I
    .local p1, "bais":Ljava/io/ByteArrayInputStream;
    :catchall_2
    move-exception p0

    move-object v2, p0

    move v1, v5

    .end local v5    # "length":I
    .local v1, "length":I
    move-object p0, p1

    .end local p1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "bais":Ljava/io/ByteArrayInputStream;
    move-object p1, v0

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    move-object v0, v3

    .end local v3    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local v0, "gzis":Ljava/util/zip/GZIPInputStream;
    goto :goto_9

    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "buffer":[B
    .restart local v4    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local p0, "length":I
    .local p1, "bais":Ljava/io/ByteArrayInputStream;
    :catchall_3
    move-exception v1

    move-object v2, v1

    move v1, p0

    .end local p0    # "length":I
    .local v1, "length":I
    move-object p0, p1

    .end local p1    # "bais":Ljava/io/ByteArrayInputStream;
    .local p0, "bais":Ljava/io/ByteArrayInputStream;
    move-object p1, v0

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    move-object v0, v4

    .end local v4    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local v0, "gzis":Ljava/util/zip/GZIPInputStream;
    goto :goto_9

    .local v0, "e":Ljava/io/IOException;
    .local v1, "gzis":Ljava/util/zip/GZIPInputStream;
    .local v3, "length":I
    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    .end local v1    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local v0, "gzis":Ljava/util/zip/GZIPInputStream;
    move v1, v3

    .end local v3    # "length":I
    .local v1, "length":I
    goto :goto_9

    .line 1287
    .end local v0    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local v1, "buffer":[B
    .local v3, "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v5    # "length":I
    :catch_b
    move-exception v0

    move-object v1, v3

    .end local v3    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local v1, "gzis":Ljava/util/zip/GZIPInputStream;
    move v3, v5

    .end local v5    # "length":I
    .local v3, "length":I
    goto :goto_6

    .end local p1    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "buffer":[B
    .local v3, "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v5    # "length":I
    :catch_c
    move-exception p1

    move-object v1, v3

    .end local v3    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local v1, "gzis":Ljava/util/zip/GZIPInputStream;
    move v3, v5

    .end local v5    # "length":I
    .local v3, "length":I
    move-object v6, v0

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    move-object v0, p1

    move-object p1, v6

    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .end local p0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "buffer":[B
    .local v3, "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v5    # "length":I
    .local p1, "bais":Ljava/io/ByteArrayInputStream;
    :catch_d
    move-exception p0

    move-object v1, v3

    .end local v3    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local v1, "gzis":Ljava/util/zip/GZIPInputStream;
    move v3, v5

    .end local v5    # "length":I
    .local v3, "length":I
    move-object v6, v0

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v0, p0

    move-object p0, p1

    .end local p1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "bais":Ljava/io/ByteArrayInputStream;
    move-object p1, v6

    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .end local v1    # "gzis":Ljava/util/zip/GZIPInputStream;
    .end local v3    # "length":I
    .end local p0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local p1    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_3
    move-object p0, v2

    .end local v2    # "bytes":[B
    .local p0, "bytes":[B
    goto :goto_5
.end method

.method public static decode([B)[B
    .locals 3
    .param p0, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1123
    const/4 v0, 0x0

    check-cast v0, [B

    .line 1125
    .local v0, "decoded":[B
    array-length v1, p0

    invoke-static {p0, v2, v1, v2}, Lanywheresoftware/b4a/objects/Base64;->decode([BIII)[B

    move-result-object v0

    .line 1129
    return-object v0
.end method

.method public static decode([BIII)[B
    .locals 10
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1155
    if-nez p0, :cond_0

    .line 1156
    new-instance p0, Ljava/lang/NullPointerException;

    .end local p0    # "source":[B
    const-string p1, "Cannot decode null source array."

    .end local p1    # "off":I
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1158
    .restart local p0    # "source":[B
    .restart local p1    # "off":I
    :cond_0
    if-ltz p1, :cond_1

    add-int v0, p1, p2

    array-length v1, p0

    if-le v0, v1, :cond_2

    .line 1159
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 1160
    .end local p3    # "options":I
    const-string v0, "Source array with length %d cannot have offset of %d and process %d bytes."

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length p0, p0

    .end local p0    # "source":[B
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .end local p1    # "off":I
    aput-object p1, v1, p0

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1159
    aput-object p1, v1, p0

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1163
    .restart local p0    # "source":[B
    .restart local p1    # "off":I
    .restart local p3    # "options":I
    :cond_2
    if-nez p2, :cond_3

    .line 1164
    const/4 p0, 0x0

    new-array p0, p0, [B

    .line 1211
    .end local p0    # "source":[B
    .end local p1    # "off":I
    .end local p2    # "len":I
    .end local p3    # "options":I
    :goto_0
    return-object p0

    .line 1165
    .restart local p0    # "source":[B
    .restart local p1    # "off":I
    .restart local p2    # "len":I
    .restart local p3    # "options":I
    :cond_3
    const/4 v0, 0x4

    if-ge p2, v0, :cond_4

    .line 1166
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 1167
    .end local p0    # "source":[B
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "off":I
    const-string p3, "Base64-encoded string must have at least four characters, but length specified was "

    .end local p3    # "options":I
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1166
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1170
    .restart local p0    # "source":[B
    .restart local p1    # "off":I
    .restart local p3    # "options":I
    :cond_4
    invoke-static {p3}, Lanywheresoftware/b4a/objects/Base64;->getDecodabet(I)[B

    move-result-object v0

    .line 1172
    .local v0, "DECODABET":[B
    mul-int/lit8 v1, p2, 0x3

    div-int/lit8 v1, v1, 0x4

    .line 1173
    .local v1, "len34":I
    new-array v5, v1, [B

    .line 1174
    .local v5, "outBuff":[B
    const/4 v4, 0x0

    .line 1176
    .local v4, "outBuffPosn":I
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 1177
    .local v1, "b4":[B
    const/4 v2, 0x0

    .line 1178
    .local v2, "b4Posn":I
    const/4 v3, 0x0

    .line 1179
    .local v3, "i":I
    const/4 v6, 0x0

    .line 1181
    .local v6, "sbiDecode":B
    move v3, p1

    move v9, v6

    .end local v6    # "sbiDecode":B
    .local v9, "sbiDecode":B
    move v6, v4

    .end local v4    # "outBuffPosn":I
    .local v6, "outBuffPosn":I
    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    move v3, v2

    .end local v2    # "b4Posn":I
    .local v3, "b4Posn":I
    move v2, v9

    .end local v9    # "sbiDecode":B
    .local v2, "sbiDecode":B
    :goto_1
    add-int v7, p1, p2

    if-lt v4, v7, :cond_5

    move p2, v2

    .end local v2    # "sbiDecode":B
    .local p2, "sbiDecode":B
    move p0, v3

    .end local v3    # "b4Posn":I
    .local p0, "b4Posn":I
    move p1, v6

    .line 1209
    .end local v6    # "outBuffPosn":I
    .local p1, "outBuffPosn":I
    :goto_2
    new-array p0, p1, [B

    .line 1210
    .local p0, "out":[B
    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {v5, p2, p0, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1183
    .restart local v2    # "sbiDecode":B
    .restart local v3    # "b4Posn":I
    .restart local v6    # "outBuffPosn":I
    .local p0, "source":[B
    .local p1, "off":I
    .local p2, "len":I
    :cond_5
    aget-byte v2, p0, v4

    .end local v2    # "sbiDecode":B
    and-int/lit16 v2, v2, 0xff

    aget-byte v7, v0, v2

    .line 1188
    .local v7, "sbiDecode":B
    const/4 v2, -0x5

    if-lt v7, v2, :cond_6

    .line 1189
    const/4 v2, -0x1

    if-lt v7, v2, :cond_9

    .line 1190
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "b4Posn":I
    .local v2, "b4Posn":I
    aget-byte v8, p0, v4

    aput-byte v8, v1, v3

    .line 1191
    const/4 v3, 0x3

    if-le v2, v3, :cond_8

    .line 1192
    const/4 v2, 0x0

    invoke-static {v1, v2, v5, v6, p3}, Lanywheresoftware/b4a/objects/Base64;->decode4to3([BI[BII)I

    .end local v2    # "b4Posn":I
    move-result v2

    add-int v3, v6, v2

    .line 1193
    .end local v6    # "outBuffPosn":I
    .local v3, "outBuffPosn":I
    const/4 v2, 0x0

    .line 1196
    .restart local v2    # "b4Posn":I
    aget-byte v6, p0, v4

    const/16 v8, 0x3d

    if-ne v6, v8, :cond_7

    move p2, v7

    .end local v7    # "sbiDecode":B
    .local p2, "sbiDecode":B
    move p0, v2

    .end local v2    # "b4Posn":I
    .local p0, "b4Posn":I
    move p1, v3

    .line 1197
    .end local v3    # "outBuffPosn":I
    .local p1, "outBuffPosn":I
    goto :goto_2

    .line 1204
    .local v3, "b4Posn":I
    .restart local v6    # "outBuffPosn":I
    .restart local v7    # "sbiDecode":B
    .local p0, "source":[B
    .local p1, "off":I
    .local p2, "len":I
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 1205
    .end local p1    # "off":I
    const-string p2, "Bad Base64 input character decimal %d in array position %d"

    .end local p2    # "len":I
    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    .end local p3    # "options":I
    const/4 v0, 0x0

    aget-byte p0, p0, v4

    .end local v0    # "DECODABET":[B
    .end local p0    # "source":[B
    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, v0

    const/4 p0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1204
    aput-object v0, p3, p0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .end local v6    # "outBuffPosn":I
    .restart local v0    # "DECODABET":[B
    .restart local v2    # "b4Posn":I
    .local v3, "outBuffPosn":I
    .restart local p0    # "source":[B
    .restart local p1    # "off":I
    .restart local p2    # "len":I
    .restart local p3    # "options":I
    :cond_7
    move v6, v3

    .line 1181
    .end local v3    # "outBuffPosn":I
    .restart local v6    # "outBuffPosn":I
    :cond_8
    :goto_3
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .local v3, "i":I
    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    move v3, v2

    .end local v2    # "b4Posn":I
    .local v3, "b4Posn":I
    move v2, v7

    .end local v7    # "sbiDecode":B
    .local v2, "sbiDecode":B
    goto :goto_1

    .end local v2    # "sbiDecode":B
    .restart local v7    # "sbiDecode":B
    :cond_9
    move v2, v3

    .end local v3    # "b4Posn":I
    .local v2, "b4Posn":I
    goto :goto_3
.end method

.method private static decode4to3([BI[BII)I
    .locals 8
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "destination"    # [B
    .param p3, "destOffset"    # I
    .param p4, "options"    # I

    .prologue
    const/16 v5, 0x3d

    const/4 v7, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 1038
    if-nez p0, :cond_0

    .line 1039
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Source array was null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1041
    :cond_0
    if-nez p2, :cond_1

    .line 1042
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Destination array was null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1044
    :cond_1
    if-ltz p1, :cond_2

    add-int/lit8 v2, p1, 0x3

    array-length v3, p0

    if-lt v2, v3, :cond_3

    .line 1045
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1046
    const-string v3, "Source array with length %d cannot have offset of %d and still process four bytes."

    new-array v4, v4, [Ljava/lang/Object;

    array-length v5, p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1045
    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1048
    :cond_3
    if-ltz p3, :cond_4

    add-int/lit8 v2, p3, 0x2

    array-length v3, p2

    if-lt v2, v3, :cond_5

    .line 1049
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1050
    const-string v3, "Destination array with length %d cannot have offset of %d and still store three bytes."

    new-array v4, v4, [Ljava/lang/Object;

    array-length v5, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1049
    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1054
    :cond_5
    invoke-static {p4}, Lanywheresoftware/b4a/objects/Base64;->getDecodabet(I)[B

    move-result-object v0

    .line 1057
    .local v0, "DECODABET":[B
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    if-ne v2, v5, :cond_6

    .line 1061
    aget-byte v2, p0, p1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    .line 1062
    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    .line 1061
    or-int v1, v2, v3

    .line 1064
    .local v1, "outBuff":I
    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    move v2, v6

    .line 1100
    :goto_0
    return v2

    .line 1069
    .end local v1    # "outBuff":I
    :cond_6
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    if-ne v2, v5, :cond_7

    .line 1074
    aget-byte v2, p0, p1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    .line 1075
    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    .line 1074
    or-int/2addr v2, v3

    .line 1076
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x6

    .line 1074
    or-int v1, v2, v3

    .line 1078
    .restart local v1    # "outBuff":I
    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 1079
    add-int/lit8 v2, p3, 0x1

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    move v2, v4

    .line 1080
    goto :goto_0

    .line 1090
    .end local v1    # "outBuff":I
    :cond_7
    aget-byte v2, p0, p1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    .line 1091
    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    .line 1090
    or-int/2addr v2, v3

    .line 1092
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x6

    .line 1090
    or-int/2addr v2, v3

    .line 1093
    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 1090
    or-int v1, v2, v3

    .line 1096
    .restart local v1    # "outBuff":I
    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 1097
    add-int/lit8 v2, p3, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 1098
    add-int/lit8 v2, p3, 0x2

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    .line 1100
    const/4 v2, 0x3

    goto :goto_0
.end method

.method public static decodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "infile"    # Ljava/lang/String;
    .param p1, "outfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1615
    invoke-static {p0}, Lanywheresoftware/b4a/objects/Base64;->decodeFromFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 1616
    .local v0, "decoded":[B
    const/4 v2, 0x0

    .line 1618
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    .line 1619
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1618
    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1620
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1626
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1629
    :goto_0
    return-void

    .line 1622
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1623
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1625
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 1626
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1628
    :goto_3
    throw v4

    .line 1627
    :catch_1
    move-exception v5

    goto :goto_3

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_2
    move-exception v4

    goto :goto_0

    .line 1625
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 1622
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_3
    move-exception v4

    move-object v1, v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static decodeFromFile(Ljava/lang/String;)[B
    .locals 12
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1481
    check-cast v3, [B

    .line 1482
    .local v3, "decodedData":[B
    const/4 v0, 0x0

    .line 1486
    .local v0, "bis":Lanywheresoftware/b4a/objects/Base64$InputStream;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1487
    .local v5, "file":Ljava/io/File;
    const/4 v2, 0x0

    check-cast v2, [B

    .line 1488
    .local v2, "buffer":[B
    const/4 v6, 0x0

    .line 1489
    .local v6, "length":I
    const/4 v7, 0x0

    .line 1492
    .local v7, "numBytes":I
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 1494
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "File is too big for this convenience method ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes)."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1513
    .end local v2    # "buffer":[B
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "length":I
    .end local v7    # "numBytes":I
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 1514
    .local v4, "e":Ljava/io/IOException;
    :goto_0
    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1516
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 1517
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/Base64$InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1518
    :goto_2
    throw v8

    .line 1496
    .restart local v2    # "buffer":[B
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "length":I
    .restart local v7    # "numBytes":I
    :cond_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v2, v8, [B

    .line 1499
    new-instance v1, Lanywheresoftware/b4a/objects/Base64$InputStream;

    .line 1500
    new-instance v8, Ljava/io/BufferedInputStream;

    .line 1501
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1500
    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1501
    const/4 v9, 0x0

    .line 1499
    invoke-direct {v1, v8, v9}, Lanywheresoftware/b4a/objects/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1504
    .end local v0    # "bis":Lanywheresoftware/b4a/objects/Base64$InputStream;
    .local v1, "bis":Lanywheresoftware/b4a/objects/Base64$InputStream;
    :goto_3
    const/16 v8, 0x1000

    :try_start_4
    invoke-virtual {v1, v2, v6, v8}, Lanywheresoftware/b4a/objects/Base64$InputStream;->read([BII)I

    move-result v7

    if-gez v7, :cond_1

    .line 1509
    new-array v3, v6, [B

    .line 1510
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v8, v3, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1517
    :try_start_5
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/Base64$InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1520
    :goto_4
    return-object v3

    .line 1505
    :cond_1
    add-int/2addr v6, v7

    goto :goto_3

    .line 1517
    .end local v1    # "bis":Lanywheresoftware/b4a/objects/Base64$InputStream;
    .end local v2    # "buffer":[B
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "length":I
    .end local v7    # "numBytes":I
    .restart local v0    # "bis":Lanywheresoftware/b4a/objects/Base64$InputStream;
    :catch_1
    move-exception v9

    goto :goto_2

    .end local v0    # "bis":Lanywheresoftware/b4a/objects/Base64$InputStream;
    .restart local v1    # "bis":Lanywheresoftware/b4a/objects/Base64$InputStream;
    .restart local v2    # "buffer":[B
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "length":I
    .restart local v7    # "numBytes":I
    :catch_2
    move-exception v8

    goto :goto_4

    .line 1516
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "bis":Lanywheresoftware/b4a/objects/Base64$InputStream;
    .restart local v0    # "bis":Lanywheresoftware/b4a/objects/Base64$InputStream;
    goto :goto_1

    .line 1513
    .end local v0    # "bis":Lanywheresoftware/b4a/objects/Base64$InputStream;
    .restart local v1    # "bis":Lanywheresoftware/b4a/objects/Base64$InputStream;
    :catch_3
    move-exception v8

    move-object v4, v8

    move-object v0, v1

    .end local v1    # "bis":Lanywheresoftware/b4a/objects/Base64$InputStream;
    .restart local v0    # "bis":Lanywheresoftware/b4a/objects/Base64$InputStream;
    goto :goto_0
.end method

.method public static decodeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "dataToDecode"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1446
    const/4 v0, 0x0

    .line 1448
    .local v0, "bos":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    :try_start_0
    new-instance v1, Lanywheresoftware/b4a/objects/Base64$OutputStream;

    .line 1449
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 1448
    invoke-direct {v1, v3, v4}, Lanywheresoftware/b4a/objects/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1450
    .end local v0    # "bos":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .local v1, "bos":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    :try_start_1
    const-string v3, "US-ASCII"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/objects/Base64$OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1456
    :try_start_2
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/Base64$OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1459
    :goto_0
    return-void

    .line 1452
    .end local v1    # "bos":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .restart local v0    # "bos":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1453
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1455
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 1456
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/Base64$OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1457
    :goto_3
    throw v3

    .line 1456
    :catch_1
    move-exception v4

    goto :goto_3

    .end local v0    # "bos":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .restart local v1    # "bos":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    :catch_2
    move-exception v3

    goto :goto_0

    .line 1455
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "bos":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .restart local v0    # "bos":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    goto :goto_2

    .line 1452
    .end local v0    # "bos":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .restart local v1    # "bos":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    :catch_3
    move-exception v3

    move-object v2, v3

    move-object v0, v1

    .end local v1    # "bos":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .restart local v0    # "bos":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    goto :goto_1
.end method

.method public static decodeToObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "encodedObject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1319
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lanywheresoftware/b4a/objects/Base64;->decodeToObject(Ljava/lang/String;ILjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static decodeToObject(Ljava/lang/String;ILjava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 9
    .param p0, "encodedObject"    # Ljava/lang/String;
    .param p1, "options"    # I
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1344
    invoke-static {p0, p1}, Lanywheresoftware/b4a/objects/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 1346
    .local v4, "objBytes":[B
    const/4 v0, 0x0

    .line 1347
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v5, 0x0

    .line 1348
    .local v5, "ois":Ljava/io/ObjectInputStream;
    const/4 v3, 0x0

    .line 1351
    .local v3, "obj":Ljava/lang/Object;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1354
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    if-nez p2, :cond_0

    .line 1355
    :try_start_1
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .local v6, "ois":Ljava/io/ObjectInputStream;
    move-object v5, v6

    .line 1375
    .end local v6    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :goto_0
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 1384
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 1385
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 1388
    :goto_2
    return-object v3

    .line 1361
    :cond_0
    :try_start_4
    new-instance v6, Lanywheresoftware/b4a/objects/Base64$1;

    invoke-direct {v6, v1, p2}, Lanywheresoftware/b4a/objects/Base64$1;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v6    # "ois":Ljava/io/ObjectInputStream;
    move-object v5, v6

    .end local v6    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 1377
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 1378
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1383
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 1384
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1385
    :goto_5
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1386
    :goto_6
    throw v7

    .line 1380
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 1381
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :goto_7
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1384
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v8

    goto :goto_5

    .line 1385
    :catch_3
    move-exception v8

    goto :goto_6

    .line 1384
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_4
    move-exception v7

    goto :goto_1

    .line 1385
    :catch_5
    move-exception v7

    goto :goto_2

    .line 1383
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .line 1380
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_6
    move-exception v7

    move-object v2, v7

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_7

    .line 1377
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_7
    move-exception v7

    move-object v2, v7

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_3
.end method

.method public static encode(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p0, "raw"    # Ljava/nio/ByteBuffer;
    .param p1, "encoded"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 561
    new-array v1, v5, [B

    .line 562
    .local v1, "raw3":[B
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 564
    .local v0, "enc4":[B
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_0

    .line 570
    return-void

    .line 565
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 566
    .local v2, "rem":I
    invoke-virtual {p0, v1, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 567
    invoke-static {v0, v1, v2, v4}, Lanywheresoftware/b4a/objects/Base64;->encode3to4([B[BII)[B

    .line 568
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public static encode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .locals 8
    .param p0, "raw"    # Ljava/nio/ByteBuffer;
    .param p1, "encoded"    # Ljava/nio/CharBuffer;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 585
    new-array v2, v6, [B

    .line 586
    .local v2, "raw3":[B
    new-array v0, v7, [B

    .line 588
    .local v0, "enc4":[B
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_1

    .line 596
    return-void

    .line 589
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 590
    .local v3, "rem":I
    invoke-virtual {p0, v2, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 591
    invoke-static {v0, v2, v3, v5}, Lanywheresoftware/b4a/objects/Base64;->encode3to4([B[BII)[B

    .line 592
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 593
    aget-byte v4, v0, v1

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 592
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static encode3to4([BII[BII)[B
    .locals 6
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "numSigBytes"    # I
    .param p3, "destination"    # [B
    .param p4, "destOffset"    # I
    .param p5, "options"    # I

    .prologue
    const/16 v5, 0x3d

    const/4 v4, 0x0

    .line 502
    invoke-static {p5}, Lanywheresoftware/b4a/objects/Base64;->getAlphabet(I)[B

    move-result-object v0

    .line 515
    .local v0, "ALPHABET":[B
    if-lez p2, :cond_0

    aget-byte v2, p0, p1

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x8

    .line 516
    :goto_0
    const/4 v3, 0x1

    if-le p2, v3, :cond_1

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    .line 515
    :goto_1
    or-int/2addr v2, v3

    .line 517
    const/4 v3, 0x2

    if-le p2, v3, :cond_2

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x18

    .line 515
    :goto_2
    or-int v1, v2, v3

    .line 519
    .local v1, "inBuff":I
    packed-switch p2, :pswitch_data_0

    .line 543
    :goto_3
    return-object p3

    .end local v1    # "inBuff":I
    :cond_0
    move v2, v4

    .line 515
    goto :goto_0

    :cond_1
    move v3, v4

    .line 516
    goto :goto_1

    :cond_2
    move v3, v4

    .line 517
    goto :goto_2

    .line 522
    .restart local v1    # "inBuff":I
    :pswitch_0
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 523
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 524
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 525
    add-int/lit8 v2, p4, 0x3

    and-int/lit8 v3, v1, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    goto :goto_3

    .line 529
    :pswitch_1
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 530
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 531
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 532
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_3

    .line 536
    :pswitch_2
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 537
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 538
    add-int/lit8 v2, p4, 0x2

    aput-byte v5, p3, v2

    .line 539
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_3

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static encode3to4([B[BII)[B
    .locals 6
    .param p0, "b4"    # [B
    .param p1, "threeBytes"    # [B
    .param p2, "numSigBytes"    # I
    .param p3, "options"    # I

    .prologue
    const/4 v1, 0x0

    .line 470
    move-object v0, p1

    move v2, p2

    move-object v3, p0

    move v4, v1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lanywheresoftware/b4a/objects/Base64;->encode3to4([BII[BII)[B

    .line 471
    return-object p0
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .locals 5
    .param p0, "source"    # [B

    .prologue
    .line 721
    const/4 v0, 0x0

    .line 723
    .local v0, "encoded":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lanywheresoftware/b4a/objects/Base64;->encodeBytes([BIII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 727
    :cond_0
    sget-boolean v2, Lanywheresoftware/b4a/objects/Base64;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 724
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 725
    .local v1, "ex":Ljava/io/IOException;
    sget-boolean v2, Lanywheresoftware/b4a/objects/Base64;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 728
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_1
    return-object v0
.end method

.method public static encodeBytes([BI)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # [B
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 763
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lanywheresoftware/b4a/objects/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BII)Ljava/lang/String;
    .locals 4
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 789
    const/4 v0, 0x0

    .line 791
    .local v0, "encoded":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v2}, Lanywheresoftware/b4a/objects/Base64;->encodeBytes([BIII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 795
    :cond_0
    sget-boolean v2, Lanywheresoftware/b4a/objects/Base64;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 792
    :catch_0
    move-exception v1

    .line 793
    .local v1, "ex":Ljava/io/IOException;
    sget-boolean v2, Lanywheresoftware/b4a/objects/Base64;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 796
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_1
    return-object v0
.end method

.method public static encodeBytes([BIII)Ljava/lang/String;
    .locals 4
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 834
    invoke-static {p0, p1, p2, p3}, Lanywheresoftware/b4a/objects/Base64;->encodeBytesToBytes([BIII)[B

    move-result-object v0

    .line 838
    .local v0, "encoded":[B
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "US-ASCII"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    :goto_0
    return-object v2

    .line 840
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 841
    .local v1, "uue":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static encodeBytesToBytes([B)[B
    .locals 5
    .param p0, "source"    # [B

    .prologue
    .line 861
    const/4 v0, 0x0

    check-cast v0, [B

    .line 863
    .local v0, "encoded":[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lanywheresoftware/b4a/objects/Base64;->encodeBytesToBytes([BIII)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 867
    :cond_0
    return-object v0

    .line 864
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 865
    .local v1, "ex":Ljava/io/IOException;
    sget-boolean v2, Lanywheresoftware/b4a/objects/Base64;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOExceptions only come from GZipping, which is turned off: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static encodeBytesToBytes([BIII)[B
    .locals 10
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 891
    if-nez p0, :cond_0

    .line 892
    new-instance p0, Ljava/lang/NullPointerException;

    .end local p0    # "source":[B
    const-string p1, "Cannot serialize a null array."

    .end local p1    # "off":I
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 895
    .restart local p0    # "source":[B
    .restart local p1    # "off":I
    :cond_0
    if-gez p1, :cond_1

    .line 896
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0    # "source":[B
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2    # "len":I
    const-string p3, "Cannot have negative offset: "

    .end local p3    # "options":I
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1    # "off":I
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 899
    .restart local p0    # "source":[B
    .restart local p1    # "off":I
    .restart local p2    # "len":I
    .restart local p3    # "options":I
    :cond_1
    if-gez p2, :cond_2

    .line 900
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0    # "source":[B
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "off":I
    const-string p3, "Cannot have length offset: "

    .end local p3    # "options":I
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 903
    .restart local p0    # "source":[B
    .restart local p1    # "off":I
    .restart local p3    # "options":I
    :cond_2
    add-int v0, p1, p2

    array-length v1, p0

    if-le v0, v1, :cond_3

    .line 904
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 905
    .end local p3    # "options":I
    const-string v0, "Cannot have offset of %d and length of %d with array of length %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .end local p1    # "off":I
    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .end local p2    # "len":I
    aput-object p2, v1, p1

    const/4 p1, 0x2

    array-length p0, p0

    .end local p0    # "source":[B
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 904
    invoke-direct {p3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 911
    .restart local p0    # "source":[B
    .restart local p1    # "off":I
    .restart local p2    # "len":I
    .restart local p3    # "options":I
    :cond_3
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_4

    .line 912
    const/4 v1, 0x0

    .line 913
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 914
    .local v3, "gzos":Ljava/util/zip/GZIPOutputStream;
    const/4 v0, 0x0

    .line 918
    .local v0, "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 919
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v1, Lanywheresoftware/b4a/objects/Base64$OutputStream;

    or-int/lit8 p3, p3, 0x1

    invoke-direct {v1, v2, p3}, Lanywheresoftware/b4a/objects/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 920
    .end local v0    # "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .end local p3    # "options":I
    .local v1, "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    :try_start_2
    new-instance p3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p3, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 922
    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p3, "gzos":Ljava/util/zip/GZIPOutputStream;
    :try_start_3
    invoke-virtual {p3, p0, p1, p2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 923
    invoke-virtual {p3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 931
    :try_start_4
    invoke-virtual {p3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 932
    .end local p0    # "source":[B
    :goto_0
    :try_start_5
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/Base64$OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 933
    :goto_1
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 936
    :goto_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 991
    .end local v1    # "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "off":I
    .end local p2    # "len":I
    .end local p3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :goto_3
    return-object p0

    .line 925
    .restart local v0    # "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local p0    # "source":[B
    .restart local p1    # "off":I
    .restart local p2    # "len":I
    .local p3, "options":I
    :catch_0
    move-exception p0

    move-object v4, p0

    move-object p2, v3

    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p2, "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object p1, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    move-object p0, v0

    .line 928
    .end local v0    # "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .end local p3    # "options":I
    .local v4, "e":Ljava/io/IOException;
    .local p0, "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    :goto_4
    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 930
    :catchall_0
    move-exception p3

    .line 931
    .end local v4    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_8
    invoke-virtual {p2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 932
    .end local p2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :goto_6
    :try_start_9
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/Base64$OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 933
    .end local p0    # "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    :goto_7
    :try_start_a
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 934
    :goto_8
    throw p3

    .line 941
    .local p0, "source":[B
    .local p1, "off":I
    .local p2, "len":I
    .restart local p3    # "options":I
    :cond_4
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    move v6, v0

    .line 950
    .local v6, "breakLines":Z
    :goto_9
    div-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x4

    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_8

    const/4 v1, 0x4

    :goto_a
    add-int/2addr v0, v1

    .line 951
    .local v0, "encLen":I
    if-eqz v6, :cond_5

    .line 952
    div-int/lit8 v1, v0, 0x4c

    add-int/2addr v0, v1

    .line 954
    :cond_5
    new-array v3, v0, [B

    .line 957
    .local v3, "outBuff":[B
    const/4 v0, 0x0

    .line 958
    .local v0, "d":I
    const/4 v4, 0x0

    .line 959
    .local v4, "e":I
    const/4 v1, 0x2

    sub-int v8, p2, v1

    .line 960
    .local v8, "len2":I
    const/4 v1, 0x0

    .local v1, "lineLength":I
    move v9, v1

    .end local v1    # "lineLength":I
    .local v9, "lineLength":I
    move v7, v0

    .line 961
    .end local v0    # "d":I
    .local v7, "d":I
    :goto_b
    if-lt v7, v8, :cond_9

    .line 973
    if-ge v7, p2, :cond_6

    .line 974
    add-int v1, v7, p1

    sub-int v2, p2, v7

    move-object v0, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lanywheresoftware/b4a/objects/Base64;->encode3to4([BII[BII)[B

    .line 975
    add-int/lit8 v4, v4, 0x4

    .line 980
    :cond_6
    array-length p0, v3

    .end local p0    # "source":[B
    const/4 p1, 0x1

    sub-int/2addr p0, p1

    if-gt v4, p0, :cond_a

    .line 985
    .end local p1    # "off":I
    new-array p0, v4, [B

    .line 986
    .local p0, "finalOut":[B
    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {v3, p1, p0, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 941
    .end local v3    # "outBuff":[B
    .end local v4    # "e":I
    .end local v6    # "breakLines":Z
    .end local v7    # "d":I
    .end local v8    # "len2":I
    .end local v9    # "lineLength":I
    .local p0, "source":[B
    .restart local p1    # "off":I
    :cond_7
    const/4 v0, 0x0

    move v6, v0

    goto :goto_9

    .line 950
    .restart local v6    # "breakLines":Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_a

    .line 962
    .restart local v3    # "outBuff":[B
    .restart local v4    # "e":I
    .restart local v7    # "d":I
    .restart local v8    # "len2":I
    .restart local v9    # "lineLength":I
    :cond_9
    add-int v1, v7, p1

    const/4 v2, 0x3

    move-object v0, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lanywheresoftware/b4a/objects/Base64;->encode3to4([BII[BII)[B

    .line 964
    add-int/lit8 v0, v9, 0x4

    .line 965
    .end local v9    # "lineLength":I
    .local v0, "lineLength":I
    if-eqz v6, :cond_b

    const/16 v1, 0x4c

    if-lt v0, v1, :cond_b

    .line 967
    add-int/lit8 v0, v4, 0x4

    const/16 v1, 0xa

    aput-byte v1, v3, v0

    .line 968
    .end local v0    # "lineLength":I
    add-int/lit8 v4, v4, 0x1

    .line 969
    const/4 v0, 0x0

    .restart local v0    # "lineLength":I
    move v1, v0

    .line 961
    .end local v0    # "lineLength":I
    .restart local v1    # "lineLength":I
    :goto_c
    add-int/lit8 v0, v7, 0x3

    .end local v7    # "d":I
    .local v0, "d":I
    add-int/lit8 v4, v4, 0x4

    move v9, v1

    .end local v1    # "lineLength":I
    .restart local v9    # "lineLength":I
    move v7, v0

    .end local v0    # "d":I
    .restart local v7    # "d":I
    goto :goto_b

    .end local p0    # "source":[B
    .end local p1    # "off":I
    :cond_a
    move-object p0, v3

    .line 991
    goto :goto_3

    .line 931
    .end local v3    # "outBuff":[B
    .end local v4    # "e":I
    .end local v6    # "breakLines":Z
    .end local v7    # "d":I
    .end local v8    # "len2":I
    .end local v9    # "lineLength":I
    .end local p3    # "options":I
    .local p0, "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    .local p2, "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_1
    move-exception p2

    goto :goto_6

    .line 932
    .end local p2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_2
    move-exception p0

    goto :goto_7

    .line 933
    .end local p0    # "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    :catch_3
    move-exception p0

    goto :goto_8

    .line 931
    .local v1, "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p0, "source":[B
    .local p1, "off":I
    .local p2, "len":I
    .local p3, "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_4
    move-exception p0

    goto/16 :goto_0

    .line 932
    .end local p0    # "source":[B
    :catch_5
    move-exception p0

    goto/16 :goto_1

    .line 933
    :catch_6
    move-exception p0

    goto/16 :goto_2

    .line 930
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v0, "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    .local v3, "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local p0    # "source":[B
    .local p3, "options":I
    :catchall_1
    move-exception p0

    move-object p3, p0

    move-object p2, v3

    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p2, "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object p1, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    move-object p0, v0

    .end local v0    # "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .local p0, "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    goto/16 :goto_5

    .end local p3    # "options":I
    .restart local v0    # "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p0, "source":[B
    .local p1, "off":I
    .local p2, "len":I
    :catchall_2
    move-exception p0

    move-object p3, p0

    move-object p2, v3

    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p2, "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object p1, v2

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    move-object p0, v0

    .end local v0    # "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .local p0, "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    goto/16 :goto_5

    .local v1, "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p0, "source":[B
    .local p1, "off":I
    .local p2, "len":I
    :catchall_3
    move-exception p0

    move-object p3, p0

    move-object p2, v3

    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p2, "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object p1, v2

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    move-object p0, v1

    .end local v1    # "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .local p0, "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    goto/16 :goto_5

    .restart local v1    # "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p0, "source":[B
    .local p1, "off":I
    .local p2, "len":I
    .local p3, "gzos":Ljava/util/zip/GZIPOutputStream;
    :catchall_4
    move-exception p0

    move-object p2, p3

    .end local p3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p2, "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object p1, v2

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    move-object p3, p0

    move-object p0, v1

    .end local v1    # "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .local p0, "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    goto/16 :goto_5

    .line 925
    .restart local v0    # "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p0, "source":[B
    .local p1, "off":I
    .local p2, "len":I
    :catch_7
    move-exception p0

    move-object v4, p0

    move-object p2, v3

    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p2, "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object p1, v2

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    move-object p0, v0

    .end local v0    # "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .local p0, "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    goto/16 :goto_4

    .restart local v1    # "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p0, "source":[B
    .local p1, "off":I
    .local p2, "len":I
    :catch_8
    move-exception p0

    move-object v4, p0

    move-object p2, v3

    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p2, "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object p1, v2

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    move-object p0, v1

    .end local v1    # "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .local p0, "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    goto/16 :goto_4

    .restart local v1    # "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p0, "source":[B
    .local p1, "off":I
    .local p2, "len":I
    .restart local p3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_9
    move-exception p0

    move-object v4, p0

    move-object p2, p3

    .end local p3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p2, "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object p1, v2

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    move-object p0, v1

    .end local v1    # "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .local p0, "b64os":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    goto/16 :goto_4

    .local v0, "lineLength":I
    .local v3, "outBuff":[B
    .restart local v4    # "e":I
    .restart local v6    # "breakLines":Z
    .restart local v7    # "d":I
    .restart local v8    # "len2":I
    .local p0, "source":[B
    .local p1, "off":I
    .local p2, "len":I
    .local p3, "options":I
    :cond_b
    move v1, v0

    .end local v0    # "lineLength":I
    .local v1, "lineLength":I
    goto :goto_c
.end method

.method public static encodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "infile"    # Ljava/lang/String;
    .param p1, "outfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1587
    invoke-static {p0}, Lanywheresoftware/b4a/objects/Base64;->encodeFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1588
    .local v1, "encoded":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1590
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    .line 1591
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1590
    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1592
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_1
    const-string v4, "US-ASCII"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1598
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1601
    :goto_0
    return-void

    .line 1594
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1595
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1597
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 1598
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1600
    :goto_3
    throw v4

    .line 1599
    :catch_1
    move-exception v5

    goto :goto_3

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_2
    move-exception v4

    goto :goto_0

    .line 1597
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 1594
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_3
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static encodeFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1542
    const/4 v4, 0x0

    .line 1543
    .local v4, "encodedData":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1547
    .local v0, "bis":Lanywheresoftware/b4a/objects/Base64$InputStream;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1548
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v10, 0x3ff6666666666666L    # 1.4

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    double-to-int v8, v8

    const/16 v9, 0x28

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    new-array v2, v8, [B

    .line 1549
    .local v2, "buffer":[B
    const/4 v6, 0x0

    .line 1550
    .local v6, "length":I
    const/4 v7, 0x0

    .line 1553
    .local v7, "numBytes":I
    new-instance v1, Lanywheresoftware/b4a/objects/Base64$InputStream;

    .line 1554
    new-instance v8, Ljava/io/BufferedInputStream;

    .line 1555
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1554
    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1555
    const/4 v9, 0x1

    .line 1553
    invoke-direct {v1, v8, v9}, Lanywheresoftware/b4a/objects/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1558
    .end local v0    # "bis":Lanywheresoftware/b4a/objects/Base64$InputStream;
    .local v1, "bis":Lanywheresoftware/b4a/objects/Base64$InputStream;
    :goto_0
    const/16 v8, 0x1000

    :try_start_1
    invoke-virtual {v1, v2, v6, v8}, Lanywheresoftware/b4a/objects/Base64$InputStream;->read([BII)I

    move-result v7

    if-gez v7, :cond_0

    .line 1563
    new-instance v4, Ljava/lang/String;

    .end local v4    # "encodedData":Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "US-ASCII"

    invoke-direct {v4, v2, v8, v6, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1570
    .restart local v4    # "encodedData":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/Base64$InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1573
    :goto_1
    return-object v4

    .line 1559
    :cond_0
    add-int/2addr v6, v7

    goto :goto_0

    .line 1566
    .end local v1    # "bis":Lanywheresoftware/b4a/objects/Base64$InputStream;
    .end local v2    # "buffer":[B
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "length":I
    .end local v7    # "numBytes":I
    .restart local v0    # "bis":Lanywheresoftware/b4a/objects/Base64$InputStream;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 1567
    .end local v4    # "encodedData":Ljava/lang/String;
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1569
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 1570
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/Base64$InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1571
    :goto_4
    throw v8

    .line 1570
    :catch_1
    move-exception v9

    goto :goto_4

    .end local v0    # "bis":Lanywheresoftware/b4a/objects/Base64$InputStream;
    .restart local v1    # "bis":Lanywheresoftware/b4a/objects/Base64$InputStream;
    .restart local v2    # "buffer":[B
    .restart local v4    # "encodedData":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "length":I
    .restart local v7    # "numBytes":I
    :catch_2
    move-exception v8

    goto :goto_1

    .line 1569
    .end local v4    # "encodedData":Ljava/lang/String;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "bis":Lanywheresoftware/b4a/objects/Base64$InputStream;
    .restart local v0    # "bis":Lanywheresoftware/b4a/objects/Base64$InputStream;
    goto :goto_3

    .line 1566
    .end local v0    # "bis":Lanywheresoftware/b4a/objects/Base64$InputStream;
    .restart local v1    # "bis":Lanywheresoftware/b4a/objects/Base64$InputStream;
    :catch_3
    move-exception v8

    move-object v3, v8

    move-object v0, v1

    .end local v1    # "bis":Lanywheresoftware/b4a/objects/Base64$InputStream;
    .restart local v0    # "bis":Lanywheresoftware/b4a/objects/Base64$InputStream;
    goto :goto_2
.end method

.method public static encodeObject(Ljava/io/Serializable;)Ljava/lang/String;
    .locals 1
    .param p0, "serializableObject"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 621
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lanywheresoftware/b4a/objects/Base64;->encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;
    .locals 13
    .param p0, "serializableObject"    # Ljava/io/Serializable;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 658
    if-nez p0, :cond_0

    .line 659
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v11, "Cannot serialize a null object."

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 663
    :cond_0
    const/4 v2, 0x0

    .line 664
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .line 665
    .local v0, "b64os":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 666
    .local v5, "gzos":Ljava/util/zip/GZIPOutputStream;
    const/4 v7, 0x0

    .line 671
    .local v7, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v1, Lanywheresoftware/b4a/objects/Base64$OutputStream;

    or-int/lit8 v10, p1, 0x1

    invoke-direct {v1, v3, v10}, Lanywheresoftware/b4a/objects/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 673
    .end local v0    # "b64os":Ljava/io/OutputStream;
    .local v1, "b64os":Ljava/io/OutputStream;
    and-int/lit8 v10, p1, 0x2

    if-eqz v10, :cond_1

    .line 675
    :try_start_2
    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v6, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 676
    .end local v5    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local v6, "gzos":Ljava/util/zip/GZIPOutputStream;
    :try_start_3
    new-instance v8, Ljava/io/ObjectOutputStream;

    invoke-direct {v8, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .end local v7    # "oos":Ljava/io/ObjectOutputStream;
    .local v8, "oos":Ljava/io/ObjectOutputStream;
    move-object v7, v8

    .end local v8    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v7    # "oos":Ljava/io/ObjectOutputStream;
    move-object v5, v6

    .line 681
    .end local v6    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :goto_0
    :try_start_4
    invoke-virtual {v7, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 689
    :try_start_5
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 690
    :goto_1
    :try_start_6
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 691
    :goto_2
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 692
    :goto_3
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    .line 697
    :goto_4
    :try_start_9
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    const-string v12, "US-ASCII"

    invoke-direct {v10, v11, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_1

    .line 701
    :goto_5
    return-object v10

    .line 679
    :cond_1
    :try_start_a
    new-instance v8, Ljava/io/ObjectOutputStream;

    invoke-direct {v8, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .end local v7    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v8    # "oos":Ljava/io/ObjectOutputStream;
    move-object v7, v8

    .end local v8    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v7    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_0

    .line 683
    .end local v1    # "b64os":Ljava/io/OutputStream;
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v10

    move-object v4, v10

    .line 686
    .local v4, "e":Ljava/io/IOException;
    :goto_6
    :try_start_b
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 688
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 689
    :goto_7
    :try_start_c
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 690
    :goto_8
    :try_start_d
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 691
    :goto_9
    :try_start_e
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    .line 692
    :goto_a
    :try_start_f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    .line 693
    :goto_b
    throw v10

    .line 699
    .end local v0    # "b64os":Ljava/io/OutputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v10

    move-object v9, v10

    .line 701
    .local v9, "uue":Ljava/io/UnsupportedEncodingException;
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    goto :goto_5

    .line 689
    .end local v1    # "b64os":Ljava/io/OutputStream;
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "uue":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v11

    goto :goto_8

    .line 690
    :catch_3
    move-exception v11

    goto :goto_9

    .line 691
    :catch_4
    move-exception v11

    goto :goto_a

    .line 692
    :catch_5
    move-exception v11

    goto :goto_b

    .line 689
    .end local v0    # "b64os":Ljava/io/OutputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_6
    move-exception v10

    goto :goto_1

    .line 690
    :catch_7
    move-exception v10

    goto :goto_2

    .line 691
    :catch_8
    move-exception v10

    goto :goto_3

    .line 692
    :catch_9
    move-exception v10

    goto :goto_4

    .line 688
    .end local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .end local v0    # "b64os":Ljava/io/OutputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .end local v0    # "b64os":Ljava/io/OutputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catchall_3
    move-exception v10

    move-object v5, v6

    .end local v6    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .line 683
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_a
    move-exception v10

    move-object v4, v10

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .end local v0    # "b64os":Ljava/io/OutputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_b
    move-exception v10

    move-object v4, v10

    move-object v0, v1

    .end local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .end local v0    # "b64os":Ljava/io/OutputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_c
    move-exception v10

    move-object v4, v10

    move-object v5, v6

    .end local v6    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_6
.end method

.method public static encodeToFile([BLjava/lang/String;)V
    .locals 5
    .param p0, "dataToEncode"    # [B
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1410
    if-nez p0, :cond_0

    .line 1411
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Data to encode was null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1414
    :cond_0
    const/4 v0, 0x0

    .line 1416
    .local v0, "bos":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    :try_start_0
    new-instance v1, Lanywheresoftware/b4a/objects/Base64$OutputStream;

    .line 1417
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 1416
    invoke-direct {v1, v3, v4}, Lanywheresoftware/b4a/objects/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1418
    .end local v0    # "bos":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .local v1, "bos":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    :try_start_1
    invoke-virtual {v1, p0}, Lanywheresoftware/b4a/objects/Base64$OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1424
    :try_start_2
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/Base64$OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1427
    :goto_0
    return-void

    .line 1420
    .end local v1    # "bos":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .restart local v0    # "bos":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1421
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1423
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 1424
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/Base64$OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1425
    :goto_3
    throw v3

    .line 1424
    :catch_1
    move-exception v4

    goto :goto_3

    .end local v0    # "bos":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .restart local v1    # "bos":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    :catch_2
    move-exception v3

    goto :goto_0

    .line 1423
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "bos":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .restart local v0    # "bos":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    goto :goto_2

    .line 1420
    .end local v0    # "bos":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .restart local v1    # "bos":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    :catch_3
    move-exception v3

    move-object v2, v3

    move-object v0, v1

    .end local v1    # "bos":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    .restart local v0    # "bos":Lanywheresoftware/b4a/objects/Base64$OutputStream;
    goto :goto_1
.end method

.method private static final getAlphabet(I)[B
    .locals 2
    .param p0, "options"    # I

    .prologue
    .line 416
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 417
    sget-object v0, Lanywheresoftware/b4a/objects/Base64;->_URL_SAFE_ALPHABET:[B

    .line 421
    :goto_0
    return-object v0

    .line 418
    :cond_0
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 419
    sget-object v0, Lanywheresoftware/b4a/objects/Base64;->_ORDERED_ALPHABET:[B

    goto :goto_0

    .line 421
    :cond_1
    sget-object v0, Lanywheresoftware/b4a/objects/Base64;->_STANDARD_ALPHABET:[B

    goto :goto_0
.end method

.method private static final getDecodabet(I)[B
    .locals 2
    .param p0, "options"    # I

    .prologue
    .line 434
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 435
    sget-object v0, Lanywheresoftware/b4a/objects/Base64;->_URL_SAFE_DECODABET:[B

    .line 439
    :goto_0
    return-object v0

    .line 436
    :cond_0
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 437
    sget-object v0, Lanywheresoftware/b4a/objects/Base64;->_ORDERED_DECODABET:[B

    goto :goto_0

    .line 439
    :cond_1
    sget-object v0, Lanywheresoftware/b4a/objects/Base64;->_STANDARD_DECODABET:[B

    goto :goto_0
.end method

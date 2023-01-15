.class public Lorg/hermit/astro/Moon;
.super Lorg/hermit/astro/Body;
.source "Moon.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "onwatch"

.field private static final latitudeTerms:[[I

.field private static final longDistTerms:[[I


# instance fields
.field private observation:Lorg/hermit/astro/Observation;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 271
    const/16 v0, 0x3c

    new-array v0, v0, [[I

    .line 272
    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v6, v1, v5

    const v2, 0x5ff586

    aput v2, v1, v7

    const v2, -0x13efd8b

    aput v2, v1, v8

    aput-object v1, v0, v9

    .line 273
    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v5, v1, v9

    const/4 v2, -0x1

    aput v2, v1, v5

    const v2, 0x1370ab

    aput v2, v1, v7

    const v2, -0x3871a7

    aput v2, v1, v8

    aput-object v1, v0, v6

    .line 274
    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v5, v1, v9

    const v2, 0xa0b8a

    aput v2, v1, v7

    const v2, -0x2d1ac0

    aput v2, v1, v8

    aput-object v1, v0, v5

    const/4 v1, 0x3

    .line 275
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v5

    const v3, 0x34272

    aput v3, v2, v7

    const v3, -0x8b245

    aput v3, v2, v8

    aput-object v2, v0, v1

    .line 276
    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v6, v1, v6

    const v2, -0x2d31c

    aput v2, v1, v7

    const v2, 0xbef8

    aput v2, v1, v8

    aput-object v1, v0, v7

    .line 277
    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x3

    aput v5, v1, v2

    const v2, -0x1be9c

    aput v2, v1, v7

    const/16 v2, -0xc4d

    aput v2, v1, v8

    aput-object v1, v0, v8

    const/4 v1, 0x6

    .line 278
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v9

    const/4 v3, -0x2

    aput v3, v2, v5

    const v3, 0xe5a9

    aput v3, v2, v7

    const v3, 0x3c18e

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 279
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v9

    const/4 v3, -0x1

    aput v3, v2, v6

    const/4 v3, -0x1

    aput v3, v2, v5

    const v3, 0xdeea

    aput v3, v2, v7

    const v3, -0x2524a

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 280
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v9

    aput v6, v2, v5

    const v3, 0xd04a

    aput v3, v2, v7

    const v3, -0x29aed

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 281
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v9

    const/4 v3, -0x1

    aput v3, v2, v6

    const v3, 0xb2be

    aput v3, v2, v7

    const v3, -0x31f2a

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 282
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v6

    const/4 v3, -0x1

    aput v3, v2, v5

    const v3, -0x9fdb

    aput v3, v2, v7

    const v3, -0x1fa54

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 283
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v9

    const v3, -0x87a0

    aput v3, v2, v7

    const v3, 0x1a8c7

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 284
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v6

    aput v6, v2, v5

    const/16 v3, -0x76af

    aput v3, v2, v7

    const v3, 0x19933

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 285
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v9

    const/4 v3, 0x3

    const/4 v4, -0x2

    aput v4, v2, v3

    const/16 v3, 0x3bdf

    aput v3, v2, v7

    const/16 v3, 0x2851

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 286
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v5

    const/4 v3, 0x3

    aput v5, v2, v3

    const/16 v3, -0x30f0

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 287
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v5

    const/4 v3, 0x3

    const/4 v4, -0x2

    aput v4, v2, v3

    const/16 v3, 0x2ae4

    aput v3, v2, v7

    const v3, 0x1372d

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 288
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v9

    const/4 v3, -0x1

    aput v3, v2, v5

    const/16 v3, 0x29b3

    aput v3, v2, v7

    const v3, -0x87de

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 289
    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x3

    aput v3, v2, v5

    const/16 v3, 0x2732

    aput v3, v2, v7

    const/16 v3, -0x5aaa

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 290
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v9

    const/4 v3, -0x2

    aput v3, v2, v5

    const/16 v3, 0x2164

    aput v3, v2, v7

    const/16 v3, -0x5484

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 291
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v9

    aput v6, v2, v6

    const/4 v3, -0x1

    aput v3, v2, v5

    const/16 v3, -0x1ed0

    aput v3, v2, v7

    const/16 v3, 0x5e90

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 292
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v9

    aput v6, v2, v6

    const/16 v3, -0x1a6e

    aput v3, v2, v7

    const/16 v3, 0x7868

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 293
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v9

    const/4 v3, -0x1

    aput v3, v2, v5

    const/16 v3, -0x142b

    aput v3, v2, v7

    const/16 v3, -0x20bb

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 294
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v9

    aput v6, v2, v6

    const/16 v3, 0x137b

    aput v3, v2, v7

    const/16 v3, -0x4123

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 295
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v9

    const/4 v3, -0x1

    aput v3, v2, v6

    aput v6, v2, v5

    const/16 v3, 0xfc4

    aput v3, v2, v7

    const/16 v3, -0x321f

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 296
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v9

    aput v5, v2, v5

    const/16 v3, 0xf9a

    aput v3, v2, v7

    const/16 v3, -0x28cd

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 297
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v9

    const/16 v3, 0xf15

    aput v3, v2, v7

    const/16 v3, -0x2d82

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 298
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v9

    const/4 v3, -0x3

    aput v3, v2, v5

    const/16 v3, 0xe51

    aput v3, v2, v7

    const/16 v3, 0x3843

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 299
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v6

    const/4 v3, -0x2

    aput v3, v2, v5

    const/16 v3, -0xa81

    aput v3, v2, v7

    const/16 v3, -0x1b5b

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 300
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v9

    const/4 v3, -0x1

    aput v3, v2, v5

    const/4 v3, 0x3

    aput v5, v2, v3

    const/16 v3, -0xa2a

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 301
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v9

    const/4 v3, -0x1

    aput v3, v2, v6

    const/4 v3, -0x2

    aput v3, v2, v5

    const/16 v3, 0x956

    aput v3, v2, v7

    const/16 v3, 0x2748

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 302
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v9

    aput v6, v2, v5

    const/16 v3, -0x92c

    aput v3, v2, v7

    const/16 v3, 0x18b2

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 303
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v9

    const/4 v3, -0x2

    aput v3, v2, v6

    const/16 v3, 0x8bc

    aput v3, v2, v7

    const/16 v3, -0x269c

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 304
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v6

    aput v5, v2, v5

    const/16 v3, -0x848

    aput v3, v2, v7

    const/16 v3, 0x1677

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 305
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v6

    const/16 v3, -0x815

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 306
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v9

    const/4 v3, -0x2

    aput v3, v2, v6

    const/4 v3, -0x1

    aput v3, v2, v5

    const/16 v3, 0x800

    aput v3, v2, v7

    const/16 v3, -0x1356

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 307
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v9

    aput v6, v2, v5

    const/4 v3, 0x3

    const/4 v4, -0x2

    aput v4, v2, v3

    const/16 v3, -0x6ed

    aput v3, v2, v7

    const/16 v3, 0x1022

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 308
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v9

    const/4 v3, 0x3

    aput v5, v2, v3

    const/16 v3, -0x63b

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 309
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v9

    const/4 v3, -0x1

    aput v3, v2, v6

    const/4 v3, -0x1

    aput v3, v2, v5

    const/16 v3, 0x4bf

    aput v3, v2, v7

    const/16 v3, -0xf76

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 310
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v5

    const/4 v3, 0x3

    aput v5, v2, v3

    const/16 v3, -0x456

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 311
    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x3

    aput v3, v2, v9

    const/4 v3, -0x1

    aput v3, v2, v5

    const/16 v3, -0x37c

    aput v3, v2, v7

    const/16 v3, 0xcba

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 312
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v9

    aput v6, v2, v6

    aput v6, v2, v5

    const/16 v3, -0x32a

    aput v3, v2, v7

    const/16 v3, 0xa38

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 313
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v9

    const/4 v3, -0x1

    aput v3, v2, v6

    const/4 v3, -0x2

    aput v3, v2, v5

    const/16 v3, 0x2f7

    aput v3, v2, v7

    const/16 v3, -0x769

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 314
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v6

    const/4 v3, -0x1

    aput v3, v2, v5

    const/16 v3, -0x2c9

    aput v3, v2, v7

    const/16 v3, -0x845

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 315
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v9

    aput v5, v2, v6

    const/4 v3, -0x1

    aput v3, v2, v5

    const/16 v3, -0x2bc

    aput v3, v2, v7

    const/16 v3, 0x932

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 316
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v9

    aput v6, v2, v6

    const/4 v3, -0x2

    aput v3, v2, v5

    const/16 v3, 0x2b3

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 317
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v9

    const/4 v3, -0x1

    aput v3, v2, v6

    const/4 v3, 0x3

    const/4 v4, -0x2

    aput v4, v2, v3

    const/16 v3, 0x254

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 318
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v9

    aput v6, v2, v5

    const/16 v3, 0x225

    aput v3, v2, v7

    const/16 v3, -0x58f

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 319
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v5

    const/16 v3, 0x219

    aput v3, v2, v7

    const/16 v3, -0x45d

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 320
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v9

    const/4 v3, -0x1

    aput v3, v2, v6

    const/16 v3, 0x208

    aput v3, v2, v7

    const/16 v3, -0x623

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 321
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v9

    const/4 v3, -0x2

    aput v3, v2, v5

    const/16 v3, -0x1e7

    aput v3, v2, v7

    const/16 v3, -0x6cb

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 322
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v9

    aput v6, v2, v6

    const/4 v3, 0x3

    const/4 v4, -0x2

    aput v4, v2, v3

    const/16 v3, -0x18f

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 323
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v5

    const/4 v3, 0x3

    const/4 v4, -0x2

    aput v4, v2, v3

    const/16 v3, -0x17d

    aput v3, v2, v7

    const/16 v3, -0x1145

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 324
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v9

    aput v6, v2, v6

    aput v6, v2, v5

    const/16 v3, 0x15f

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 325
    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x3

    aput v3, v2, v9

    const/4 v3, -0x2

    aput v3, v2, v5

    const/16 v3, -0x154

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 326
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v9

    const/4 v3, -0x3

    aput v3, v2, v5

    const/16 v3, 0x14a

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 327
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v9

    const/4 v3, -0x1

    aput v3, v2, v6

    aput v5, v2, v5

    const/16 v3, 0x147

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x38

    .line 328
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v6

    aput v6, v2, v5

    const/16 v3, -0x143

    aput v3, v2, v7

    const/16 v3, 0x48d

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x39

    .line 329
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v9

    aput v6, v2, v6

    const/4 v3, -0x1

    aput v3, v2, v5

    const/16 v3, 0x12b

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    .line 330
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v9

    const/4 v3, 0x3

    aput v3, v2, v5

    const/16 v3, 0x126

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    .line 331
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v9

    const/4 v3, -0x1

    aput v3, v2, v5

    const/4 v3, 0x3

    const/4 v4, -0x2

    aput v4, v2, v3

    const/16 v3, 0x2230

    aput v3, v2, v8

    aput-object v2, v0, v1

    .line 271
    sput-object v0, Lorg/hermit/astro/Moon;->longDistTerms:[[I

    .line 336
    const/16 v0, 0x3c

    new-array v0, v0, [[I

    .line 337
    new-array v1, v8, [I

    const/4 v2, 0x3

    aput v6, v1, v2

    const v2, 0x4e3fba

    aput v2, v1, v7

    aput-object v1, v0, v9

    .line 338
    new-array v1, v8, [I

    aput v6, v1, v5

    const/4 v2, 0x3

    aput v6, v1, v2

    const v2, 0x4481a

    aput v2, v1, v7

    aput-object v1, v0, v6

    .line 339
    new-array v1, v8, [I

    aput v6, v1, v5

    const/4 v2, 0x3

    const/4 v3, -0x1

    aput v3, v1, v2

    const v2, 0x43cbd

    aput v2, v1, v7

    aput-object v1, v0, v5

    const/4 v1, 0x3

    .line 340
    new-array v2, v8, [I

    aput v5, v2, v9

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v2, v3

    const v3, 0x2a4b5

    aput v3, v2, v7

    aput-object v2, v0, v1

    .line 341
    new-array v1, v8, [I

    aput v5, v1, v9

    const/4 v2, -0x1

    aput v2, v1, v5

    const/4 v2, 0x3

    aput v6, v1, v2

    const v2, 0xd875

    aput v2, v1, v7

    aput-object v1, v0, v7

    .line 342
    new-array v1, v8, [I

    aput v5, v1, v9

    const/4 v2, -0x1

    aput v2, v1, v5

    const/4 v2, 0x3

    const/4 v3, -0x1

    aput v3, v1, v2

    const v2, 0xb4bf

    aput v2, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x6

    .line 343
    new-array v2, v8, [I

    aput v5, v2, v9

    const/4 v3, 0x3

    aput v6, v2, v3

    const/16 v3, 0x7f3d

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 344
    new-array v2, v8, [I

    aput v5, v2, v5

    const/4 v3, 0x3

    aput v6, v2, v3

    const/16 v3, 0x432e

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 345
    new-array v2, v8, [I

    aput v5, v2, v9

    aput v6, v2, v5

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v2, v3

    const/16 v3, 0x2432

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 346
    new-array v2, v8, [I

    aput v5, v2, v5

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v2, v3

    const/16 v3, 0x2276

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 347
    new-array v2, v8, [I

    aput v5, v2, v9

    const/4 v3, -0x1

    aput v3, v2, v6

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v2, v3

    const/16 v3, 0x2018

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 348
    new-array v2, v8, [I

    aput v5, v2, v9

    const/4 v3, -0x2

    aput v3, v2, v5

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v2, v3

    const/16 v3, 0x10e4

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 349
    new-array v2, v8, [I

    aput v5, v2, v9

    aput v6, v2, v5

    const/4 v3, 0x3

    aput v6, v2, v3

    const/16 v3, 0x1068

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 350
    new-array v2, v8, [I

    aput v5, v2, v9

    aput v6, v2, v6

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v2, v3

    const/16 v3, -0xd1f

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 351
    new-array v2, v8, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 352
    new-array v2, v8, [I

    aput v5, v2, v9

    const/4 v3, -0x1

    aput v3, v2, v6

    const/4 v3, 0x3

    aput v6, v2, v3

    const/16 v3, 0x8a3

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 353
    new-array v2, v8, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 354
    new-array v2, v8, [I

    aput v6, v2, v6

    const/4 v3, -0x1

    aput v3, v2, v5

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v2, v3

    const/16 v3, -0x74e

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 355
    new-array v2, v8, [I

    aput v7, v2, v9

    const/4 v3, -0x1

    aput v3, v2, v5

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v2, v3

    const/16 v3, 0x724

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 356
    new-array v2, v8, [I

    aput v6, v2, v6

    const/4 v3, 0x3

    aput v6, v2, v3

    const/16 v3, -0x702

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 357
    new-array v2, v8, [I

    const/4 v3, 0x3

    const/4 v4, 0x3

    aput v4, v2, v3

    const/16 v3, -0x6d5

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 358
    new-array v2, v8, [I

    aput v6, v2, v6

    const/4 v3, -0x1

    aput v3, v2, v5

    const/4 v3, 0x3

    aput v6, v2, v3

    const/16 v3, -0x61d

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 359
    new-array v2, v8, [I

    aput v6, v2, v9

    const/4 v3, 0x3

    aput v6, v2, v3

    const/16 v3, -0x5d3

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 360
    new-array v2, v8, [I

    aput v6, v2, v6

    aput v6, v2, v5

    const/4 v3, 0x3

    aput v6, v2, v3

    const/16 v3, -0x5c3

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 361
    new-array v2, v8, [I

    aput v6, v2, v6

    aput v6, v2, v5

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v2, v3

    const/16 v3, -0x582

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 362
    new-array v2, v8, [I

    aput v6, v2, v6

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v2, v3

    const/16 v3, -0x540

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 363
    new-array v2, v8, [I

    aput v6, v2, v9

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v2, v3

    const/16 v3, -0x537

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 364
    new-array v2, v8, [I

    const/4 v3, 0x3

    aput v3, v2, v5

    const/4 v3, 0x3

    aput v6, v2, v3

    const/16 v3, 0x453

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 365
    new-array v2, v8, [I

    aput v7, v2, v9

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v2, v3

    const/16 v3, 0x3fd

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 366
    new-array v2, v8, [I

    aput v7, v2, v9

    const/4 v3, -0x1

    aput v3, v2, v5

    const/4 v3, 0x3

    aput v6, v2, v3

    const/16 v3, 0x341

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 367
    new-array v2, v8, [I

    aput v6, v2, v5

    const/4 v3, 0x3

    const/4 v4, -0x3

    aput v4, v2, v3

    const/16 v3, 0x309

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 368
    new-array v2, v8, [I

    aput v7, v2, v9

    const/4 v3, -0x2

    aput v3, v2, v5

    const/4 v3, 0x3

    aput v6, v2, v3

    const/16 v3, 0x29f

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 369
    new-array v2, v8, [I

    aput v5, v2, v9

    const/4 v3, 0x3

    const/4 v4, -0x3

    aput v4, v2, v3

    const/16 v3, 0x25f

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 370
    new-array v2, v8, [I

    aput v5, v2, v9

    aput v5, v2, v5

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v2, v3

    const/16 v3, 0x254

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 371
    new-array v2, v8, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 372
    new-array v2, v8, [I

    aput v5, v2, v9

    const/4 v3, -0x2

    aput v3, v2, v5

    const/4 v3, 0x3

    aput v6, v2, v3

    const/16 v3, -0x1c3

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 373
    new-array v2, v8, [I

    const/4 v3, 0x3

    aput v3, v2, v5

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v2, v3

    const/16 v3, 0x1b7

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 374
    new-array v2, v8, [I

    aput v5, v2, v9

    aput v5, v2, v5

    const/4 v3, 0x3

    aput v6, v2, v3

    const/16 v3, 0x1a6

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 375
    new-array v2, v8, [I

    aput v5, v2, v9

    const/4 v3, -0x3

    aput v3, v2, v5

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v2, v3

    const/16 v3, 0x1a5

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 376
    new-array v2, v8, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 377
    new-array v2, v8, [I

    aput v5, v2, v9

    aput v6, v2, v6

    const/4 v3, 0x3

    aput v6, v2, v3

    const/16 v3, -0x15f

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 378
    new-array v2, v8, [I

    aput v7, v2, v9

    const/4 v3, 0x3

    aput v6, v2, v3

    const/16 v3, 0x14b

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 379
    new-array v2, v8, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 380
    new-array v2, v8, [I

    aput v5, v2, v9

    const/4 v3, -0x2

    aput v3, v2, v6

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v2, v3

    const/16 v3, 0x12e

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 381
    new-array v2, v8, [I

    aput v6, v2, v5

    const/4 v3, 0x3

    const/4 v4, 0x3

    aput v4, v2, v3

    const/16 v3, -0x11b

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 382
    new-array v2, v8, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 383
    new-array v2, v8, [I

    aput v6, v2, v9

    aput v6, v2, v6

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v2, v3

    const/16 v3, 0xdf

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 384
    new-array v2, v8, [I

    aput v6, v2, v9

    aput v6, v2, v6

    const/4 v3, 0x3

    aput v6, v2, v3

    const/16 v3, 0xdf

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 385
    new-array v2, v8, [I

    aput v6, v2, v6

    const/4 v3, -0x2

    aput v3, v2, v5

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v2, v3

    const/16 v3, -0xdc

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 386
    new-array v2, v8, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 387
    new-array v2, v8, [I

    aput v6, v2, v9

    aput v6, v2, v5

    const/4 v3, 0x3

    aput v6, v2, v3

    const/16 v3, -0xb9

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 388
    new-array v2, v8, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 389
    new-array v2, v8, [I

    aput v6, v2, v6

    aput v5, v2, v5

    const/4 v3, 0x3

    aput v6, v2, v3

    const/16 v3, -0xb1

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 390
    new-array v2, v8, [I

    aput v7, v2, v9

    const/4 v3, -0x2

    aput v3, v2, v5

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v2, v3

    const/16 v3, 0xb0

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 391
    new-array v2, v8, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 392
    new-array v2, v8, [I

    aput v6, v2, v9

    aput v6, v2, v5

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v2, v3

    const/16 v3, -0xa4

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x38

    .line 393
    new-array v2, v8, [I

    aput v7, v2, v9

    aput v6, v2, v5

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v2, v3

    const/16 v3, 0x84

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x39

    .line 394
    new-array v2, v8, [I

    aput v6, v2, v9

    const/4 v3, -0x1

    aput v3, v2, v5

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v2, v3

    const/16 v3, -0x77

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    .line 395
    new-array v2, v8, [I

    aput v7, v2, v9

    const/4 v3, -0x1

    aput v3, v2, v6

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v2, v3

    const/16 v3, 0x73

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    .line 396
    new-array v2, v8, [I

    aput v5, v2, v9

    const/4 v3, -0x2

    aput v3, v2, v6

    const/4 v3, 0x3

    aput v6, v2, v3

    const/16 v3, 0x6b

    aput v3, v2, v7

    aput-object v2, v0, v1

    .line 336
    sput-object v0, Lorg/hermit/astro/Moon;->latitudeTerms:[[I

    .line 54
    return-void

    .line 351
    nop

    :array_0
    .array-data 4
        0x2
        -0x1
        -0x1
        0x1
        0x99f
    .end array-data

    .line 353
    :array_1
    .array-data 4
        0x2
        -0x1
        -0x1
        -0x1
        0x811
    .end array-data

    .line 371
    :array_2
    .array-data 4
        0x2
        -0x1
        0x1
        -0x1
        0x1eb
    .end array-data

    .line 376
    :array_3
    .array-data 4
        0x2
        0x1
        -0x1
        0x1
        -0x16e
    .end array-data

    .line 379
    :array_4
    .array-data 4
        0x2
        -0x1
        0x1
        0x1
        0x13b
    .end array-data

    .line 382
    :array_5
    .array-data 4
        0x2
        0x1
        0x1
        -0x1
        -0xe5
    .end array-data

    .line 386
    :array_6
    .array-data 4
        0x2
        0x1
        -0x1
        -0x1
        -0xdc
    .end array-data

    .line 388
    :array_7
    .array-data 4
        0x2
        -0x1
        -0x2
        -0x1
        0xb5
    .end array-data

    .line 391
    :array_8
    .array-data 4
        0x4
        -0x1
        -0x1
        -0x1
        0xa6
    .end array-data
.end method

.method constructor <init>(Lorg/hermit/astro/Observation;)V
    .locals 1
    .param p1, "o"    # Lorg/hermit/astro/Observation;

    .prologue
    .line 70
    sget-object v0, Lorg/hermit/astro/Body$Name;->MOON:Lorg/hermit/astro/Body$Name;

    invoke-direct {p0, p1, v0}, Lorg/hermit/astro/Body;-><init>(Lorg/hermit/astro/Observation;Lorg/hermit/astro/Body$Name;)V

    .line 72
    iput-object p1, p0, Lorg/hermit/astro/Moon;->observation:Lorg/hermit/astro/Observation;

    .line 73
    return-void
.end method


# virtual methods
.method calcApparentSize()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/astro/AstroError;
        }
    .end annotation

    .prologue
    .line 205
    sget-object v15, Lorg/hermit/astro/Body$Field;->EARTH_DISTANCE:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Moon;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v11

    .line 206
    .local v11, "\u0394":D
    sget-object v15, Lorg/hermit/astro/Body$Field;->LOCAL_ALTITUDE:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Moon;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v3

    .line 207
    .local v3, "h":D
    const-wide v15, 0x41a1d55d5c000000L    # 1.4959787E8

    mul-double v13, v11, v15

    .line 210
    .local v13, "\u0394km":D
    const-wide v15, 0x41b55ddeb8000000L    # 3.584734E8

    div-double v5, v15, v13

    .line 214
    .local v5, "s":D
    const-wide v15, 0x40b8ea23d70a3d71L    # 6378.14

    div-double v9, v15, v13

    .line 215
    .local v9, "sin\u03c0":D
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v17, v17, v9

    add-double v15, v15, v17

    mul-double v7, v5, v15

    .line 218
    .local v7, "s1":D
    const-wide v15, 0x40ac200000000000L    # 3600.0

    div-double v15, v7, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    .line 220
    sget-object v15, Lorg/hermit/astro/Body$Field;->APPARENT_DIAMETER:Lorg/hermit/astro/Body$Field;

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v16, v16, v7

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Moon;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 221
    return-void
.end method

.method calcEcPosition()V
    .locals 53

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Moon;->observation:Lorg/hermit/astro/Observation;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lorg/hermit/astro/Observation;->getTd()D

    move-result-wide v46

    const-wide v48, 0x4142b42c80000000L    # 2451545.0

    sub-double v46, v46, v48

    const-wide v48, 0x40e1d5a000000000L    # 36525.0

    div-double v23, v46, v48

    .line 106
    .local v23, "T":D
    mul-double v25, v23, v23

    .line 107
    .local v25, "T2":D
    mul-double v27, v25, v23

    .line 108
    .local v27, "T3":D
    mul-double v29, v27, v23

    .line 111
    .local v29, "T4":D
    const-wide v46, 0x406b4a2056ed4c9fL    # 218.3164477

    const-wide v48, 0x411d5fcf866242c0L    # 481267.88123421

    mul-double v48, v48, v23

    add-double v46, v46, v48

    .line 112
    const-wide v48, 0x3f59dd20d7e6dc43L    # 0.0015786

    mul-double v48, v48, v25

    .line 111
    sub-double v46, v46, v48

    .line 112
    const-wide v48, 0x412071b200000000L    # 538841.0

    div-double v48, v27, v48

    .line 111
    add-double v46, v46, v48

    .line 112
    const-wide v48, 0x418f164080000000L    # 6.5194E7

    div-double v48, v29, v48

    .line 111
    sub-double v17, v46, v48

    .line 113
    .local v17, "L1":D
    invoke-static/range {v17 .. v18}, Lorg/hermit/astro/Moon;->mod360(D)D

    move-result-wide v17

    .line 116
    const-wide v46, 0x40729d9a63080d15L    # 297.8501921

    const-wide v48, 0x411b2d4c7213bb9fL    # 445267.1114034

    mul-double v48, v48, v23

    add-double v46, v46, v48

    .line 117
    const-wide v48, 0x3f5ed542bd13f225L    # 0.0018819

    mul-double v48, v48, v25

    .line 116
    sub-double v46, v46, v48

    .line 117
    const-wide v48, 0x4120a89800000000L    # 545868.0

    div-double v48, v27, v48

    .line 116
    add-double v46, v46, v48

    .line 117
    const-wide v48, 0x419af4f0a0000000L    # 1.13065E8

    div-double v48, v29, v48

    .line 116
    sub-double v9, v46, v48

    .line 118
    .local v9, "D":D
    invoke-static {v9, v10}, Lorg/hermit/astro/Moon;->mod360(D)D

    move-result-wide v9

    .line 121
    const-wide v46, 0x407658773b356034L    # 357.5291092

    const-wide v48, 0x40e193e19bfba959L    # 35999.0502909

    mul-double v48, v48, v23

    add-double v46, v46, v48

    .line 122
    const-wide v48, 0x3f2421f5f40d8376L    # 1.536E-4

    mul-double v48, v48, v25

    .line 121
    sub-double v46, v46, v48

    .line 122
    const-wide v48, 0x41775b0100000000L    # 2.449E7

    div-double v48, v27, v48

    .line 121
    add-double v19, v46, v48

    .line 123
    .local v19, "M":D
    invoke-static/range {v19 .. v20}, Lorg/hermit/astro/Moon;->mod360(D)D

    move-result-wide v19

    .line 126
    const-wide v46, 0x4060ded424afe2b1L    # 134.9633964

    const-wide v48, 0x411d203b78535c9eL    # 477198.8675055

    mul-double v48, v48, v23

    add-double v46, v46, v48

    .line 127
    const-wide v48, 0x3f81e702d8f8543aL    # 0.0087414

    mul-double v48, v48, v25

    .line 126
    add-double v46, v46, v48

    .line 127
    const-wide v48, 0x40f1043000000000L    # 69699.0

    div-double v48, v27, v48

    .line 126
    add-double v46, v46, v48

    .line 127
    const-wide v48, 0x416c0f9800000000L    # 1.4712E7

    div-double v48, v29, v48

    .line 126
    sub-double v21, v46, v48

    .line 128
    .local v21, "M1":D
    invoke-static/range {v21 .. v22}, Lorg/hermit/astro/Moon;->mod360(D)D

    move-result-wide v21

    .line 131
    const-wide v46, 0x4057516a012599edL    # 93.272095

    const-wide v48, 0x411d7e0811f1a0c2L    # 483202.0175233

    mul-double v48, v48, v23

    add-double v46, v46, v48

    .line 132
    const-wide v48, 0x3f6deec8a017621cL    # 0.0036539

    mul-double v48, v48, v25

    .line 131
    sub-double v46, v46, v48

    .line 132
    const-wide v48, 0x414ae6b800000000L    # 3526000.0

    div-double v48, v27, v48

    .line 131
    sub-double v46, v46, v48

    .line 132
    const-wide v48, 0x41c9ba8858000000L    # 8.6331E8

    div-double v48, v29, v48

    .line 131
    add-double v15, v46, v48

    .line 133
    .local v15, "F":D
    invoke-static/range {v15 .. v16}, Lorg/hermit/astro/Moon;->mod360(D)D

    move-result-wide v15

    .line 136
    const-wide v46, 0x405df00000000000L    # 119.75

    const-wide v48, 0x40607b2b020c49baL    # 131.849

    mul-double v48, v48, v23

    add-double v3, v46, v48

    .line 137
    .local v3, "A1":D
    const-wide v46, 0x404a8b851eb851ecL    # 53.09

    const-wide v48, 0x411d408128f5c28fL    # 479264.29

    mul-double v48, v48, v23

    add-double v5, v46, v48

    .line 138
    .local v5, "A2":D
    const-wide v46, 0x4073973333333333L    # 313.45

    const-wide v48, 0x411d5fc9ef9db22dL    # 481266.484

    mul-double v48, v48, v23

    add-double v7, v46, v48

    .line 139
    .local v7, "A3":D
    const-wide/high16 v46, 0x3ff0000000000000L    # 1.0

    const-wide v48, 0x3f649c6f36ef8056L    # 0.002516

    mul-double v48, v48, v23

    sub-double v46, v46, v48

    const-wide v48, 0x3edf09b082ea2aacL    # 7.4E-6

    mul-double v48, v48, v25

    sub-double v11, v46, v48

    .line 140
    .local v11, "E":D
    mul-double v13, v11, v11

    .line 143
    .local v13, "E2":D
    const-wide/16 v38, 0x0

    .line 144
    .local v38, "\u03a3l":D
    const-wide/16 v40, 0x0

    .line 145
    .local v40, "\u03a3r":D
    sget-object v46, Lorg/hermit/astro/Moon;->longDistTerms:[[I

    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v47, v0

    const/16 v48, 0x0

    :goto_0
    move/from16 v0, v48

    move/from16 v1, v47

    if-lt v0, v1, :cond_0

    .line 161
    const-wide/16 v36, 0x0

    .line 162
    .local v36, "\u03a3b":D
    sget-object v46, Lorg/hermit/astro/Moon;->latitudeTerms:[[I

    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v47, v0

    const/16 v48, 0x0

    :goto_1
    move/from16 v0, v48

    move/from16 v1, v47

    if-lt v0, v1, :cond_5

    .line 175
    const-wide v46, 0x40aeec0000000000L    # 3958.0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v48

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->sin(D)D

    move-result-wide v48

    mul-double v46, v46, v48

    .line 176
    const-wide v48, 0x409ea80000000000L    # 1962.0

    sub-double v50, v17, v15

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v50

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->sin(D)D

    move-result-wide v50

    mul-double v48, v48, v50

    .line 175
    add-double v46, v46, v48

    .line 177
    const-wide v48, 0x4073e00000000000L    # 318.0

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v50

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->sin(D)D

    move-result-wide v50

    mul-double v48, v48, v50

    add-double v46, v46, v48

    add-double v38, v38, v46

    .line 178
    const-wide v46, -0x3f5e8a0000000000L    # -2235.0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v48

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->sin(D)D

    move-result-wide v48

    mul-double v46, v46, v48

    .line 179
    const-wide v48, 0x4077e00000000000L    # 382.0

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v50

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->sin(D)D

    move-result-wide v50

    mul-double v48, v48, v50

    .line 178
    add-double v46, v46, v48

    .line 180
    const-wide v48, 0x4065e00000000000L    # 175.0

    sub-double v50, v3, v15

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v50

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->sin(D)D

    move-result-wide v50

    mul-double v48, v48, v50

    .line 178
    add-double v46, v46, v48

    .line 181
    const-wide v48, 0x4065e00000000000L    # 175.0

    add-double v50, v3, v15

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v50

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->sin(D)D

    move-result-wide v50

    mul-double v48, v48, v50

    .line 178
    add-double v46, v46, v48

    .line 182
    const-wide v48, 0x405fc00000000000L    # 127.0

    sub-double v50, v17, v21

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v50

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->sin(D)D

    move-result-wide v50

    mul-double v48, v48, v50

    .line 178
    add-double v46, v46, v48

    .line 183
    const-wide v48, 0x405cc00000000000L    # 115.0

    add-double v50, v17, v21

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v50

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->sin(D)D

    move-result-wide v50

    mul-double v48, v48, v50

    sub-double v46, v46, v48

    add-double v36, v36, v46

    .line 186
    const-wide v46, 0x41177fa23d70a3d7L    # 385000.56

    const-wide v48, 0x408f400000000000L    # 1000.0

    div-double v48, v40, v48

    add-double v46, v46, v48

    const-wide v48, 0x41a1d55d5c000000L    # 1.4959787E8

    div-double v34, v46, v48

    .line 187
    .local v34, "\u0394":D
    const-wide v46, 0x412e848000000000L    # 1000000.0

    div-double v46, v38, v46

    add-double v46, v46, v17

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v46

    invoke-static/range {v46 .. v47}, Lorg/hermit/astro/Moon;->modTwoPi(D)D

    move-result-wide v44

    .line 188
    .local v44, "\u03bb":D
    const-wide v46, 0x412e848000000000L    # 1000000.0

    div-double v46, v36, v46

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v42

    .line 190
    .local v42, "\u03b2":D
    sget-object v46, Lorg/hermit/astro/Body$Field;->EARTH_DISTANCE:Lorg/hermit/astro/Body$Field;

    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Moon;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 191
    sget-object v46, Lorg/hermit/astro/Body$Field;->EC_LONGITUDE:Lorg/hermit/astro/Body$Field;

    invoke-static/range {v44 .. v45}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Moon;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 192
    sget-object v46, Lorg/hermit/astro/Body$Field;->EC_LATITUDE:Lorg/hermit/astro/Body$Field;

    invoke-static/range {v42 .. v43}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Moon;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 193
    return-void

    .line 145
    .end local v34    # "\u0394":D
    .end local v36    # "\u03a3b":D
    .end local v42    # "\u03b2":D
    .end local v44    # "\u03bb":D
    :cond_0
    aget-object v33, v46, v48

    .line 146
    .local v33, "term":[I
    const/16 v49, 0x0

    aget v49, v33, v49

    move/from16 v0, v49

    int-to-double v0, v0

    move-wide/from16 v49, v0

    mul-double v49, v49, v9

    const/16 v51, 0x1

    aget v51, v33, v51

    move/from16 v0, v51

    int-to-double v0, v0

    move-wide/from16 v51, v0

    mul-double v51, v51, v19

    add-double v49, v49, v51

    .line 147
    const/16 v51, 0x2

    aget v51, v33, v51

    move/from16 v0, v51

    int-to-double v0, v0

    move-wide/from16 v51, v0

    mul-double v51, v51, v21

    .line 146
    add-double v49, v49, v51

    .line 147
    const/16 v51, 0x3

    aget v51, v33, v51

    move/from16 v0, v51

    int-to-double v0, v0

    move-wide/from16 v51, v0

    mul-double v51, v51, v15

    .line 146
    add-double v31, v49, v51

    .line 148
    .local v31, "a":D
    const/16 v49, 0x1

    aget v49, v33, v49

    const/16 v50, 0x2

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_1

    const/16 v49, 0x1

    aget v49, v33, v49

    const/16 v50, -0x2

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_2

    .line 149
    :cond_1
    const/16 v49, 0x4

    aget v49, v33, v49

    move/from16 v0, v49

    int-to-double v0, v0

    move-wide/from16 v49, v0

    mul-double v49, v49, v13

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v51

    invoke-static/range {v51 .. v52}, Ljava/lang/Math;->sin(D)D

    move-result-wide v51

    mul-double v49, v49, v51

    add-double v38, v38, v49

    .line 150
    const/16 v49, 0x5

    aget v49, v33, v49

    move/from16 v0, v49

    int-to-double v0, v0

    move-wide/from16 v49, v0

    mul-double v49, v49, v13

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v51

    invoke-static/range {v51 .. v52}, Ljava/lang/Math;->cos(D)D

    move-result-wide v51

    mul-double v49, v49, v51

    add-double v40, v40, v49

    .line 145
    :goto_2
    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_0

    .line 151
    :cond_2
    const/16 v49, 0x1

    aget v49, v33, v49

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_3

    const/16 v49, 0x1

    aget v49, v33, v49

    const/16 v50, -0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_4

    .line 152
    :cond_3
    const/16 v49, 0x4

    aget v49, v33, v49

    move/from16 v0, v49

    int-to-double v0, v0

    move-wide/from16 v49, v0

    mul-double v49, v49, v11

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v51

    invoke-static/range {v51 .. v52}, Ljava/lang/Math;->sin(D)D

    move-result-wide v51

    mul-double v49, v49, v51

    add-double v38, v38, v49

    .line 153
    const/16 v49, 0x5

    aget v49, v33, v49

    move/from16 v0, v49

    int-to-double v0, v0

    move-wide/from16 v49, v0

    mul-double v49, v49, v11

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v51

    invoke-static/range {v51 .. v52}, Ljava/lang/Math;->cos(D)D

    move-result-wide v51

    mul-double v49, v49, v51

    add-double v40, v40, v49

    goto :goto_2

    .line 155
    :cond_4
    const/16 v49, 0x4

    aget v49, v33, v49

    move/from16 v0, v49

    int-to-double v0, v0

    move-wide/from16 v49, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v51

    invoke-static/range {v51 .. v52}, Ljava/lang/Math;->sin(D)D

    move-result-wide v51

    mul-double v49, v49, v51

    add-double v38, v38, v49

    .line 156
    const/16 v49, 0x5

    aget v49, v33, v49

    move/from16 v0, v49

    int-to-double v0, v0

    move-wide/from16 v49, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v51

    invoke-static/range {v51 .. v52}, Ljava/lang/Math;->cos(D)D

    move-result-wide v51

    mul-double v49, v49, v51

    add-double v40, v40, v49

    goto :goto_2

    .line 162
    .end local v31    # "a":D
    .end local v33    # "term":[I
    .restart local v36    # "\u03a3b":D
    :cond_5
    aget-object v33, v46, v48

    .line 163
    .restart local v33    # "term":[I
    const/16 v49, 0x0

    aget v49, v33, v49

    move/from16 v0, v49

    int-to-double v0, v0

    move-wide/from16 v49, v0

    mul-double v49, v49, v9

    const/16 v51, 0x1

    aget v51, v33, v51

    move/from16 v0, v51

    int-to-double v0, v0

    move-wide/from16 v51, v0

    mul-double v51, v51, v19

    add-double v49, v49, v51

    .line 164
    const/16 v51, 0x2

    aget v51, v33, v51

    move/from16 v0, v51

    int-to-double v0, v0

    move-wide/from16 v51, v0

    mul-double v51, v51, v21

    .line 163
    add-double v49, v49, v51

    .line 164
    const/16 v51, 0x3

    aget v51, v33, v51

    move/from16 v0, v51

    int-to-double v0, v0

    move-wide/from16 v51, v0

    mul-double v51, v51, v15

    .line 163
    add-double v31, v49, v51

    .line 165
    .restart local v31    # "a":D
    const/16 v49, 0x1

    aget v49, v33, v49

    const/16 v50, 0x2

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_6

    const/16 v49, 0x1

    aget v49, v33, v49

    const/16 v50, -0x2

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_7

    .line 166
    :cond_6
    const/16 v49, 0x4

    aget v49, v33, v49

    move/from16 v0, v49

    int-to-double v0, v0

    move-wide/from16 v49, v0

    mul-double v49, v49, v13

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v51

    invoke-static/range {v51 .. v52}, Ljava/lang/Math;->sin(D)D

    move-result-wide v51

    mul-double v49, v49, v51

    add-double v36, v36, v49

    .line 162
    :goto_3
    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_1

    .line 167
    :cond_7
    const/16 v49, 0x1

    aget v49, v33, v49

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_8

    const/16 v49, 0x1

    aget v49, v33, v49

    const/16 v50, -0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_9

    .line 168
    :cond_8
    const/16 v49, 0x4

    aget v49, v33, v49

    move/from16 v0, v49

    int-to-double v0, v0

    move-wide/from16 v49, v0

    mul-double v49, v49, v11

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v51

    invoke-static/range {v51 .. v52}, Ljava/lang/Math;->sin(D)D

    move-result-wide v51

    mul-double v49, v49, v51

    add-double v36, v36, v49

    goto :goto_3

    .line 170
    :cond_9
    const/16 v49, 0x4

    aget v49, v33, v49

    move/from16 v0, v49

    int-to-double v0, v0

    move-wide/from16 v49, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v51

    invoke-static/range {v51 .. v52}, Ljava/lang/Math;->sin(D)D

    move-result-wide v51

    mul-double v49, v49, v51

    add-double v36, v36, v49

    goto :goto_3
.end method

.method calcHePosition()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/astro/AstroError;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lorg/hermit/astro/AstroError;

    const-string v1, "Cannot calculate heliocentric position of the Moon"

    invoke-direct {v0, v1}, Lorg/hermit/astro/AstroError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method calcPhase()V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/astro/AstroError;
        }
    .end annotation

    .prologue
    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Moon;->observation:Lorg/hermit/astro/Observation;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/hermit/astro/Observation;->getSun()Lorg/hermit/astro/Sun;

    move-result-object v11

    .line 238
    .local v11, "sun":Lorg/hermit/astro/Sun;
    sget-object v24, Lorg/hermit/astro/Body$Field;->EC_LONGITUDE:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Moon;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v18

    .line 239
    .local v18, "\u03bb":D
    sget-object v24, Lorg/hermit/astro/Body$Field;->EC_LATITUDE:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Moon;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v16

    .line 240
    .local v16, "\u03b2":D
    sget-object v24, Lorg/hermit/astro/Body$Field;->EARTH_DISTANCE:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Moon;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v14

    .line 241
    .local v14, "\u0394":D
    sget-object v24, Lorg/hermit/astro/Body$Field;->EC_LONGITUDE:Lorg/hermit/astro/Body$Field;

    move-object v0, v11

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Sun;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v20

    .line 242
    .local v20, "\u03bbo":D
    sget-object v24, Lorg/hermit/astro/Body$Field;->EARTH_DISTANCE:Lorg/hermit/astro/Body$Field;

    move-object v0, v11

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Sun;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v3

    .line 245
    .local v3, "R":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    sub-double v26, v18, v20

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v5, v24, v26

    .line 246
    .local v5, "cos\u03c8":D
    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Lorg/hermit/astro/Moon;->modPi(D)D

    move-result-wide v22

    .line 249
    .local v22, "\u03c8":D
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v24, v24, v3

    mul-double v26, v3, v5

    sub-double v26, v14, v26

    div-double v12, v24, v26

    .line 250
    .local v12, "tani":D
    invoke-static {v12, v13}, Ljava/lang/Math;->atan(D)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Lorg/hermit/astro/Moon;->modPi(D)D

    move-result-wide v7

    .line 253
    .local v7, "i":D
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    add-double v24, v24, v26

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    div-double v9, v24, v26

    .line 255
    .local v9, "k":D
    sget-object v24, Lorg/hermit/astro/Body$Field;->PHASE_ANGLE:Lorg/hermit/astro/Body$Field;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Moon;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 256
    sget-object v24, Lorg/hermit/astro/Body$Field;->PHASE:Lorg/hermit/astro/Body$Field;

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Moon;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 257
    return-void
.end method

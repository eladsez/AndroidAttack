.class public Lorg/hermit/android/widgets/TimeZoneActivity;
.super Landroid/app/ListActivity;
.source "TimeZoneActivity.java"


# static fields
.field private static final HARD_ZONES:[[Ljava/lang/String;

.field private static zoneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static zoneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TimeZone;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 221
    const/16 v0, 0x52

    new-array v0, v0, [[Ljava/lang/String;

    .line 222
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Pacific/Majuro"

    aput-object v2, v1, v4

    const-string v2, "Marshall Islands"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 223
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Pacific/Midway"

    aput-object v2, v1, v4

    const-string v2, "Midway Island"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 224
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Pacific/Honolulu"

    aput-object v2, v1, v4

    const-string v2, "Hawaii"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    .line 225
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "America/Anchorage"

    aput-object v3, v2, v4

    const-string v3, "Alaska"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 226
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "America/Los_Angeles"

    aput-object v3, v2, v4

    const-string v3, "Pacific Time"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 227
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "America/Tijuana"

    aput-object v3, v2, v4

    const-string v3, "Tijuana"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 228
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "America/Phoenix"

    aput-object v3, v2, v4

    const-string v3, "Arizona"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 229
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "America/Chihuahua"

    aput-object v3, v2, v4

    const-string v3, "Chihuahua"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 230
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "America/Denver"

    aput-object v3, v2, v4

    const-string v3, "Mountain Time"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 231
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "America/Costa_Rica"

    aput-object v3, v2, v4

    const-string v3, "Central America"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 232
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "America/Chicago"

    aput-object v3, v2, v4

    const-string v3, "Central Time"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 233
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "America/Mexico_City"

    aput-object v3, v2, v4

    const-string v3, "Mexico City"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 234
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "America/Regina"

    aput-object v3, v2, v4

    const-string v3, "Saskatchewan"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 235
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "America/Bogota"

    aput-object v3, v2, v4

    const-string v3, "Bogota"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 236
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "America/New_York"

    aput-object v3, v2, v4

    const-string v3, "Eastern Time"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 237
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "America/Caracas"

    aput-object v3, v2, v4

    const-string v3, "Venezuela"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 238
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "America/Barbados"

    aput-object v3, v2, v4

    const-string v3, "Atlantic Time"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 239
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "America/Manaus"

    aput-object v3, v2, v4

    const-string v3, "Manaus"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 240
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "America/Santiago"

    aput-object v3, v2, v4

    const-string v3, "Santiago"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 241
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "America/St_Johns"

    aput-object v3, v2, v4

    const-string v3, "Newfoundland"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 242
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "America/Araguaina"

    aput-object v3, v2, v4

    const-string v3, "Brasilia"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 243
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "America/Argentina/Buenos_Aires"

    aput-object v3, v2, v4

    const-string v3, "Buenos Aires"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 244
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "America/Godthab"

    aput-object v3, v2, v4

    const-string v3, "Greenland"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 245
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "America/Montevideo"

    aput-object v3, v2, v4

    const-string v3, "Montevideo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 246
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Atlantic/South_Georgia"

    aput-object v3, v2, v4

    const-string v3, "Mid-Atlantic"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 247
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Atlantic/Azores"

    aput-object v3, v2, v4

    const-string v3, "Azores"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 248
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Atlantic/Cape_Verde"

    aput-object v3, v2, v4

    const-string v3, "Cape Verde Islands"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 249
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Africa/Casablanca"

    aput-object v3, v2, v4

    const-string v3, "Casablanca"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 250
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Europe/London"

    aput-object v3, v2, v4

    const-string v3, "London, Dublin"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 251
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Europe/Amsterdam"

    aput-object v3, v2, v4

    const-string v3, "Amsterdam, Berlin"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 252
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Europe/Belgrade"

    aput-object v3, v2, v4

    const-string v3, "Belgrade"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 253
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Europe/Brussels"

    aput-object v3, v2, v4

    const-string v3, "Brussels"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 254
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Europe/Sarajevo"

    aput-object v3, v2, v4

    const-string v3, "Sarajevo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 255
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Africa/Windhoek"

    aput-object v3, v2, v4

    const-string v3, "Windhoek"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 256
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Africa/Brazzaville"

    aput-object v3, v2, v4

    const-string v3, "W. Africa Time"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 257
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Amman"

    aput-object v3, v2, v4

    const-string v3, "Amman, Jordan"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 258
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Europe/Athens"

    aput-object v3, v2, v4

    const-string v3, "Athens, Istanbul"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 259
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Beirut"

    aput-object v3, v2, v4

    const-string v3, "Beirut, Lebanon"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 260
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Africa/Cairo"

    aput-object v3, v2, v4

    const-string v3, "Cairo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 261
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Europe/Helsinki"

    aput-object v3, v2, v4

    const-string v3, "Helsinki"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 262
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Jerusalem"

    aput-object v3, v2, v4

    const-string v3, "Jerusalem"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 263
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Europe/Minsk"

    aput-object v3, v2, v4

    const-string v3, "Minsk"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 264
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Africa/Harare"

    aput-object v3, v2, v4

    const-string v3, "Harare"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 265
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Baghdad"

    aput-object v3, v2, v4

    const-string v3, "Baghdad"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 266
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Europe/Moscow"

    aput-object v3, v2, v4

    const-string v3, "Moscow"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 267
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Kuwait"

    aput-object v3, v2, v4

    const-string v3, "Kuwait"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 268
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Africa/Nairobi"

    aput-object v3, v2, v4

    const-string v3, "Nairobi"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 269
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Tehran"

    aput-object v3, v2, v4

    const-string v3, "Tehran"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 270
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Baku"

    aput-object v3, v2, v4

    const-string v3, "Baku"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 271
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Tbilisi"

    aput-object v3, v2, v4

    const-string v3, "Tbilisi"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 272
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Yerevan"

    aput-object v3, v2, v4

    const-string v3, "Yerevan"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 273
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Dubai"

    aput-object v3, v2, v4

    const-string v3, "Dubai"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 274
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Kabul"

    aput-object v3, v2, v4

    const-string v3, "Kabul"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 275
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Karachi"

    aput-object v3, v2, v4

    const-string v3, "Islamabad, Karachi"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 276
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Oral"

    aput-object v3, v2, v4

    const-string v3, "Ural\'sk"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 277
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Yekaterinburg"

    aput-object v3, v2, v4

    const-string v3, "Yekaterinburg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    .line 278
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Calcutta"

    aput-object v3, v2, v4

    const-string v3, "Kolkata"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    .line 279
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Colombo"

    aput-object v3, v2, v4

    const-string v3, "Sri Lanka"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    .line 280
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Katmandu"

    aput-object v3, v2, v4

    const-string v3, "Kathmandu"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    .line 281
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Almaty"

    aput-object v3, v2, v4

    const-string v3, "Astana"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    .line 282
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Rangoon"

    aput-object v3, v2, v4

    const-string v3, "Yangon"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    .line 283
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Krasnoyarsk"

    aput-object v3, v2, v4

    const-string v3, "Krasnoyarsk"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    .line 284
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Bangkok"

    aput-object v3, v2, v4

    const-string v3, "Bangkok"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    .line 285
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Hong_Kong"

    aput-object v3, v2, v4

    const-string v3, "Beijing, Hong Kong"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x40

    .line 286
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Irkutsk"

    aput-object v3, v2, v4

    const-string v3, "Irkutsk"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x41

    .line 287
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Kuala_Lumpur"

    aput-object v3, v2, v4

    const-string v3, "Kuala Lumpur"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x42

    .line 288
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Australia/Perth"

    aput-object v3, v2, v4

    const-string v3, "Perth"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x43

    .line 289
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Taipei"

    aput-object v3, v2, v4

    const-string v3, "Taipei"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x44

    .line 290
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Seoul"

    aput-object v3, v2, v4

    const-string v3, "Seoul"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x45

    .line 291
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Tokyo"

    aput-object v3, v2, v4

    const-string v3, "Tokyo, Osaka"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x46

    .line 292
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Yakutsk"

    aput-object v3, v2, v4

    const-string v3, "Yakutsk"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x47

    .line 293
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Australia/Adelaide"

    aput-object v3, v2, v4

    const-string v3, "Adelaide"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x48

    .line 294
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Australia/Darwin"

    aput-object v3, v2, v4

    const-string v3, "Darwin"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x49

    .line 295
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Australia/Brisbane"

    aput-object v3, v2, v4

    const-string v3, "Brisbane"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    .line 296
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Australia/Hobart"

    aput-object v3, v2, v4

    const-string v3, "Hobart"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    .line 297
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Australia/Sydney"

    aput-object v3, v2, v4

    const-string v3, "Sydney, Canberra"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    .line 298
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Vladivostok"

    aput-object v3, v2, v4

    const-string v3, "Vladivostok"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    .line 299
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Pacific/Guam"

    aput-object v3, v2, v4

    const-string v3, "Guam"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    .line 300
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Asia/Magadan"

    aput-object v3, v2, v4

    const-string v3, "Magadan"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    .line 301
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Pacific/Auckland"

    aput-object v3, v2, v4

    const-string v3, "Auckland"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x50

    .line 302
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Pacific/Fiji"

    aput-object v3, v2, v4

    const-string v3, "Fiji"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x51

    .line 303
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Pacific/Tongatapu"

    aput-object v3, v2, v4

    const-string v3, "Tonga"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    .line 221
    sput-object v0, Lorg/hermit/android/widgets/TimeZoneActivity;->HARD_ZONES:[[Ljava/lang/String;

    .line 308
    sput-object v7, Lorg/hermit/android/widgets/TimeZoneActivity;->zoneMap:Ljava/util/HashMap;

    .line 313
    sput-object v7, Lorg/hermit/android/widgets/TimeZoneActivity;->zoneList:Ljava/util/ArrayList;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private static listZones(Landroid/content/Intent;)V
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/hermit/android/widgets/TimeZoneActivity;->zoneMap:Ljava/util/HashMap;

    .line 110
    sget-object v4, Lorg/hermit/android/widgets/TimeZoneActivity;->HARD_ZONES:[[Ljava/lang/String;

    array-length v5, v4

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-lt v6, v5, :cond_1

    .line 147
    sget-object v0, Lorg/hermit/android/widgets/TimeZoneActivity;->zoneMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 148
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    .line 149
    .local v1, "keys":[Ljava/lang/Integer;
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 150
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/hermit/android/widgets/TimeZoneActivity;->zoneList:Ljava/util/ArrayList;

    .line 156
    if-eqz p0, :cond_0

    .line 157
    const-string v0, "addZoneId"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "id":Ljava/lang/String;
    const-string v2, "addZoneOff"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 159
    .local p0, "off":Ljava/lang/String;
    if-nez p0, :cond_6

    .line 160
    const-string p0, ""

    move-object v2, p0

    .line 161
    .end local p0    # "off":Ljava/lang/String;
    .local v2, "off":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_0

    .line 162
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "id"

    invoke-virtual {p0, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v3, "name"

    invoke-virtual {p0, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v0, "offset"

    .end local v0    # "id":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lorg/hermit/android/widgets/TimeZoneActivity;->zoneList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v2    # "off":Ljava/lang/String;
    .end local p0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    array-length v2, v1

    const/4 p0, 0x0

    move v3, p0

    :goto_2
    if-lt v3, v2, :cond_4

    .line 183
    return-void

    .line 110
    .end local v1    # "keys":[Ljava/lang/Integer;
    .local p0, "intent":Landroid/content/Intent;
    :cond_1
    aget-object v1, v4, v6

    .line 112
    .local v1, "zoneNames":[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v0, v1, v0

    .line 113
    .restart local v0    # "id":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 114
    .local v1, "name":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 115
    .local v3, "zone":Ljava/util/TimeZone;
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    .line 118
    .local v2, "offset":I
    const-string v0, "GMT"

    .end local v0    # "id":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "offset":I
    :goto_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 125
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "offset":I
    :cond_2
    sget-object v0, Lorg/hermit/android/widgets/TimeZoneActivity;->zoneMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .end local v1    # "name":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v1, Lorg/hermit/android/widgets/TimeZoneActivity;->zoneMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .end local v2    # "offset":I
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 130
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .restart local v2    # "offset":I
    :cond_3
    sget-object v0, Lorg/hermit/android/widgets/TimeZoneActivity;->zoneMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 142
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 171
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .end local v2    # "offset":I
    .end local v3    # "zone":Ljava/util/TimeZone;
    .end local p0    # "intent":Landroid/content/Intent;
    .local v1, "keys":[Ljava/lang/Integer;
    :cond_4
    aget-object p0, v1, v3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 172
    .local p0, "offset":I
    sget-object v0, Lorg/hermit/android/widgets/TimeZoneActivity;->zoneMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .end local p0    # "offset":I
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 173
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local p0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_5

    .line 171
    add-int/lit8 p0, v3, 0x1

    move v3, p0

    goto :goto_2

    .line 173
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    .line 174
    .local v0, "zone":Ljava/util/TimeZone;
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "id"

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v5, "name"

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v5, "offset"

    invoke-static {v0}, Lorg/hermit/utils/TimeUtils;->formatOffset(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "zone":Ljava/util/TimeZone;
    invoke-virtual {p0, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lorg/hermit/android/widgets/TimeZoneActivity;->zoneList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .local v0, "id":Ljava/lang/String;
    .local p0, "off":Ljava/lang/String;
    :cond_6
    move-object v2, p0

    .end local p0    # "off":Ljava/lang/String;
    .local v2, "off":Ljava/lang/String;
    goto/16 :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x2

    .line 60
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lorg/hermit/android/widgets/TimeZoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 66
    .local v6, "intent":Landroid/content/Intent;
    sget-object v1, Lorg/hermit/android/widgets/TimeZoneActivity;->zoneList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 67
    invoke-static {v6}, Lorg/hermit/android/widgets/TimeZoneActivity;->listZones(Landroid/content/Intent;)V

    .line 71
    :cond_0
    new-array v4, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v4, v1

    const/4 v1, 0x1

    const-string v2, "offset"

    aput-object v2, v4, v1

    .line 72
    .local v4, "from":[Ljava/lang/String;
    new-array v5, v3, [I

    fill-array-data v5, :array_0

    .line 74
    .local v5, "to":[I
    new-instance v0, Landroid/widget/SimpleAdapter;

    sget-object v2, Lorg/hermit/android/widgets/TimeZoneActivity;->zoneList:Ljava/util/ArrayList;

    .line 75
    const v3, 0x109000d

    move-object v1, p0

    .line 74
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 79
    .local v0, "adapter":Landroid/widget/SimpleAdapter;
    invoke-virtual {p0, v0}, Lorg/hermit/android/widgets/TimeZoneActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    return-void

    .line 72
    nop

    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 203
    sget-object v2, Lorg/hermit/android/widgets/TimeZoneActivity;->zoneList:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 206
    .local v1, "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 207
    .local v0, "data":Landroid/content/Intent;
    const-string v3, "zoneId"

    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lorg/hermit/android/widgets/TimeZoneActivity;->setResult(ILandroid/content/Intent;)V

    .line 211
    invoke-virtual {p0}, Lorg/hermit/android/widgets/TimeZoneActivity;->finish()V

    .line 212
    return-void
.end method

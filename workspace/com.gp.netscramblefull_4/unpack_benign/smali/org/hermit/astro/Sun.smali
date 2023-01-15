.class public Lorg/hermit/astro/Sun;
.super Lorg/hermit/astro/Body;
.source "Sun.java"


# instance fields
.field private observation:Lorg/hermit/astro/Observation;


# direct methods
.method constructor <init>(Lorg/hermit/astro/Observation;)V
    .locals 1
    .param p1, "o"    # Lorg/hermit/astro/Observation;

    .prologue
    .line 70
    sget-object v0, Lorg/hermit/astro/Body$Name;->SUN:Lorg/hermit/astro/Body$Name;

    invoke-direct {p0, p1, v0}, Lorg/hermit/astro/Body;-><init>(Lorg/hermit/astro/Observation;Lorg/hermit/astro/Body$Name;)V

    .line 72
    iput-object p1, p0, Lorg/hermit/astro/Sun;->observation:Lorg/hermit/astro/Observation;

    .line 73
    return-void
.end method


# virtual methods
.method calcEcPosition()V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/astro/AstroError;
        }
    .end annotation

    .prologue
    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Sun;->observation:Lorg/hermit/astro/Observation;

    move-object/from16 v20, v0

    sget-object v21, Lorg/hermit/astro/Body$Name;->EARTH:Lorg/hermit/astro/Body$Name;

    invoke-virtual/range {v20 .. v21}, Lorg/hermit/astro/Observation;->getPlanet(Lorg/hermit/astro/Body$Name;)Lorg/hermit/astro/Planet;

    move-result-object v13

    .line 110
    .local v13, "earth":Lorg/hermit/astro/Planet;
    sget-object v20, Lorg/hermit/astro/Body$Field;->HE_LONGITUDE:Lorg/hermit/astro/Body$Field;

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Planet;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v5

    .line 111
    .local v5, "Lo":D
    sget-object v20, Lorg/hermit/astro/Body$Field;->HE_LATITUDE:Lorg/hermit/astro/Body$Field;

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Planet;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v3

    .line 112
    .local v3, "Bo":D
    sget-object v20, Lorg/hermit/astro/Body$Field;->HE_RADIUS:Lorg/hermit/astro/Body$Field;

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Planet;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v7

    .line 115
    .local v7, "Ro":D
    const-wide v20, 0x400921fb54442d18L    # Math.PI

    cmpg-double v20, v5, v20

    if-gez v20, :cond_0

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    add-double v20, v20, v5

    move-wide/from16 v16, v20

    .line 116
    .local v16, "\u03bb":D
    :goto_0
    neg-double v14, v3

    .line 119
    .local v14, "\u03b2":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Sun;->observation:Lorg/hermit/astro/Observation;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/hermit/astro/Observation;->getTd()D

    move-result-wide v20

    const-wide v22, 0x4142b42c80000000L    # 2451545.0

    sub-double v20, v20, v22

    const-wide v22, 0x40e1d5a000000000L    # 36525.0

    div-double v9, v20, v22

    .line 120
    .local v9, "T":D
    mul-double v11, v9, v9

    .line 121
    .local v11, "T2":D
    const-wide v20, 0x3ff65a1cac083127L    # 1.397

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    mul-double v20, v20, v9

    sub-double v20, v16, v20

    const-wide v22, 0x3f3450efdc9c4da9L    # 3.1E-4

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v22

    mul-double v22, v22, v11

    sub-double v18, v20, v22

    .line 122
    .local v18, "\u03bb1":D
    const-wide v20, -0x4048e0221426fe72L    # -0.09033

    invoke-static/range {v20 .. v21}, Lorg/hermit/astro/Sun;->secsToRads(D)D

    move-result-wide v20

    add-double v16, v16, v20

    .line 123
    const-wide v20, 0x3fa40cc78e9f6a94L    # 0.03916

    invoke-static/range {v20 .. v21}, Lorg/hermit/astro/Sun;->secsToRads(D)D

    move-result-wide v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    sub-double v22, v22, v24

    mul-double v20, v20, v22

    add-double v14, v14, v20

    .line 130
    const-wide v20, 0x40347d63886594afL    # 20.4898

    invoke-static/range {v20 .. v21}, Lorg/hermit/astro/Sun;->secsToRads(D)D

    move-result-wide v20

    div-double v20, v20, v7

    sub-double v16, v16, v20

    .line 132
    sget-object v20, Lorg/hermit/astro/Body$Field;->EARTH_DISTANCE:Lorg/hermit/astro/Body$Field;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Sun;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 133
    sget-object v20, Lorg/hermit/astro/Body$Field;->EC_LONGITUDE:Lorg/hermit/astro/Body$Field;

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Sun;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 134
    sget-object v20, Lorg/hermit/astro/Body$Field;->EC_LATITUDE:Lorg/hermit/astro/Body$Field;

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Sun;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 135
    return-void

    .line 115
    .end local v9    # "T":D
    .end local v11    # "T2":D
    .end local v14    # "\u03b2":D
    .end local v16    # "\u03bb":D
    .end local v18    # "\u03bb1":D
    :cond_0
    const-wide v20, 0x400921fb54442d18L    # Math.PI

    sub-double v20, v5, v20

    move-wide/from16 v16, v20

    goto/16 :goto_0
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

    const-string v1, "Cannot calculate heliocentric position of the Sun"

    invoke-direct {v0, v1}, Lorg/hermit/astro/AstroError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method calcPhase()V
    .locals 3

    .prologue
    .line 146
    sget-object v0, Lorg/hermit/astro/Body$Field;->PHASE_ANGLE:Lorg/hermit/astro/Body$Field;

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/hermit/astro/Sun;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 147
    sget-object v0, Lorg/hermit/astro/Body$Field;->PHASE:Lorg/hermit/astro/Body$Field;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/hermit/astro/Sun;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 148
    return-void
.end method

.class public Lorg/hermit/astro/Planet;
.super Lorg/hermit/astro/Body;
.source "Planet.java"


# instance fields
.field private observation:Lorg/hermit/astro/Observation;

.field private final whichPlanet:Lorg/hermit/astro/Body$Name;


# direct methods
.method constructor <init>(Lorg/hermit/astro/Observation;Lorg/hermit/astro/Body$Name;)V
    .locals 0
    .param p1, "o"    # Lorg/hermit/astro/Observation;
    .param p2, "which"    # Lorg/hermit/astro/Body$Name;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lorg/hermit/astro/Body;-><init>(Lorg/hermit/astro/Observation;Lorg/hermit/astro/Body$Name;)V

    .line 76
    iput-object p1, p0, Lorg/hermit/astro/Planet;->observation:Lorg/hermit/astro/Observation;

    .line 77
    iput-object p2, p0, Lorg/hermit/astro/Planet;->whichPlanet:Lorg/hermit/astro/Body$Name;

    .line 78
    return-void
.end method


# virtual methods
.method calcEcPosition()V
    .locals 45
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/astro/AstroError;
        }
    .end annotation

    .prologue
    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Planet;->whichPlanet:Lorg/hermit/astro/Body$Name;

    move-object v4, v0

    sget-object v5, Lorg/hermit/astro/Body$Name;->EARTH:Lorg/hermit/astro/Body$Name;

    if-ne v4, v5, :cond_0

    .line 146
    new-instance v4, Lorg/hermit/astro/AstroError;

    const-string v5, "Can\'t calculate the ecliptic position of the Earth"

    invoke-direct {v4, v5}, Lorg/hermit/astro/AstroError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 149
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Planet;->observation:Lorg/hermit/astro/Observation;

    move-object v4, v0

    sget-object v5, Lorg/hermit/astro/Body$Name;->EARTH:Lorg/hermit/astro/Body$Name;

    invoke-virtual {v4, v5}, Lorg/hermit/astro/Observation;->getPlanet(Lorg/hermit/astro/Body$Name;)Lorg/hermit/astro/Planet;

    move-result-object v31

    .line 153
    .local v31, "earth":Lorg/hermit/astro/Planet;
    sget-object v4, Lorg/hermit/astro/Body$Field;->HE_LONGITUDE:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Planet;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v23

    .line 154
    .local v23, "L":D
    sget-object v4, Lorg/hermit/astro/Body$Field;->HE_LATITUDE:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Planet;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v19

    .line 155
    .local v19, "B":D
    sget-object v4, Lorg/hermit/astro/Body$Field;->HE_RADIUS:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Planet;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v27

    .line 156
    .local v27, "R":D
    sget-object v4, Lorg/hermit/astro/Body$Field;->HE_LONGITUDE:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, v31

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Planet;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v25

    .line 157
    .local v25, "Lo":D
    sget-object v4, Lorg/hermit/astro/Body$Field;->HE_LATITUDE:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, v31

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Planet;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v21

    .line 158
    .local v21, "Bo":D
    sget-object v4, Lorg/hermit/astro/Body$Field;->HE_RADIUS:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, v31

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Planet;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v29

    .line 160
    .local v29, "Ro":D
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v27

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v6, v6, v29

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double v35, v4, v6

    .line 161
    .local v35, "x":D
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v27

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v6, v6, v29

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double v37, v4, v6

    .line 162
    .local v37, "y":D
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v27

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, v29

    sub-double v39, v4, v6

    .line 165
    .local v39, "z":D
    mul-double v4, v35, v35

    mul-double v6, v37, v37

    add-double/2addr v4, v6

    mul-double v6, v39, v39

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v41

    .line 166
    .local v41, "\u0394":D
    const-wide v4, 0x3f77a811e374877bL    # 0.0057755183

    mul-double v43, v4, v41

    .line 170
    .local v43, "\u03c4":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Planet;->observation:Lorg/hermit/astro/Observation;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/hermit/astro/Observation;->getTd()D

    move-result-wide v4

    sub-double v4, v4, v43

    invoke-static {v4, v5}, Lorg/hermit/astro/Instant;->fromTd(D)Lorg/hermit/astro/Instant;

    move-result-object v34

    .line 171
    .local v34, "then":Lorg/hermit/astro/Instant;
    new-instance v32, Lorg/hermit/astro/Observation;

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/hermit/astro/Observation;-><init>(Lorg/hermit/astro/Instant;)V

    .line 172
    .local v32, "o":Lorg/hermit/astro/Observation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Planet;->whichPlanet:Lorg/hermit/astro/Body$Name;

    move-object v4, v0

    move-object/from16 v0, v32

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Observation;->getPlanet(Lorg/hermit/astro/Body$Name;)Lorg/hermit/astro/Planet;

    move-result-object v33

    .line 173
    .local v33, "p":Lorg/hermit/astro/Planet;
    sget-object v4, Lorg/hermit/astro/Body$Field;->HE_LONGITUDE:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Planet;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v23

    .line 174
    sget-object v4, Lorg/hermit/astro/Body$Field;->HE_LATITUDE:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Planet;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v19

    .line 175
    sget-object v4, Lorg/hermit/astro/Body$Field;->HE_RADIUS:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Planet;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v27

    .line 178
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v27

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v6, v6, v29

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double v35, v4, v6

    .line 179
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v27

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v6, v6, v29

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double v37, v4, v6

    .line 180
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v27

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, v29

    sub-double v39, v4, v6

    .line 181
    mul-double v4, v35, v35

    mul-double v6, v37, v37

    add-double/2addr v4, v6

    mul-double v6, v39, v39

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v41

    .line 182
    const-wide v4, 0x3f77a811e374877bL    # 0.0057755183

    mul-double v43, v4, v41

    .line 188
    move-wide/from16 v0, v37

    move-wide/from16 v2, v35

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/hermit/astro/Planet;->modTwoPi(D)D

    move-result-wide v6

    .line 189
    .local v6, "\u03bb":D
    mul-double v4, v35, v35

    mul-double v8, v37, v37

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    move-wide/from16 v0, v39

    move-wide v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    .line 192
    .local v8, "\u03b2":D
    const/4 v4, 0x2

    new-array v12, v4, [D

    .line 193
    .local v12, "pos":[D
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    cmpg-double v4, v25, v4

    if-gez v4, :cond_1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    add-double v4, v4, v25

    move-wide v10, v4

    .line 194
    .local v10, "Lsun":D
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Planet;->observation:Lorg/hermit/astro/Observation;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/hermit/astro/Observation;->getTd()D

    move-result-wide v4

    invoke-static/range {v4 .. v12}, Lorg/hermit/astro/Planet;->aberrationEc(DDDD[D)V

    .line 195
    const/4 v4, 0x0

    aget-wide v4, v12, v4

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/hermit/astro/Planet;->modTwoPi(D)D

    move-result-wide v6

    .line 196
    const/4 v4, 0x1

    aget-wide v4, v12, v4

    add-double/2addr v8, v4

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Planet;->observation:Lorg/hermit/astro/Observation;

    move-object v13, v0

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Lorg/hermit/astro/Observation;->vsopToFk5(DD[D)V

    .line 201
    const/4 v4, 0x0

    aget-wide v6, v12, v4

    .line 202
    const/4 v4, 0x1

    aget-wide v8, v12, v4

    .line 204
    sget-object v4, Lorg/hermit/astro/Body$Field;->EARTH_DISTANCE:Lorg/hermit/astro/Body$Field;

    invoke-static/range {v41 .. v42}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Planet;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 205
    sget-object v4, Lorg/hermit/astro/Body$Field;->EC_LONGITUDE:Lorg/hermit/astro/Body$Field;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Planet;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 206
    sget-object v4, Lorg/hermit/astro/Body$Field;->EC_LATITUDE:Lorg/hermit/astro/Body$Field;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Planet;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 207
    return-void

    .line 193
    .end local v10    # "Lsun":D
    :cond_1
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    sub-double v4, v25, v4

    move-wide v10, v4

    goto :goto_0
.end method

.method calcHePosition()V
    .locals 14

    .prologue
    .line 111
    iget-object v10, p0, Lorg/hermit/astro/Planet;->observation:Lorg/hermit/astro/Observation;

    invoke-virtual {v10}, Lorg/hermit/astro/Observation;->getTd()D

    move-result-wide v10

    const-wide v12, 0x4142b42c80000000L    # 2451545.0

    sub-double/2addr v10, v12

    const-wide v12, 0x40e1d5a000000000L    # 36525.0

    div-double v6, v10, v12

    .line 112
    .local v6, "T":D
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    div-double v8, v6, v10

    .line 115
    .local v8, "Tm":D
    iget-object v10, p0, Lorg/hermit/astro/Planet;->whichPlanet:Lorg/hermit/astro/Body$Name;

    iget-object v10, v10, Lorg/hermit/astro/Body$Name;->terms:Lorg/hermit/astro/Vsop87;

    invoke-virtual {v10, v8, v9}, Lorg/hermit/astro/Vsop87;->calculateL(D)D

    move-result-wide v10

    const-wide v12, 0x401921fb54442d18L    # 6.283185307179586

    rem-double v2, v10, v12

    .line 116
    .local v2, "L":D
    const-wide/16 v10, 0x0

    cmpg-double v10, v2, v10

    if-gez v10, :cond_0

    .line 117
    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v2, v10

    .line 120
    :cond_0
    iget-object v10, p0, Lorg/hermit/astro/Planet;->whichPlanet:Lorg/hermit/astro/Body$Name;

    iget-object v10, v10, Lorg/hermit/astro/Body$Name;->terms:Lorg/hermit/astro/Vsop87;

    invoke-virtual {v10, v8, v9}, Lorg/hermit/astro/Vsop87;->calculateB(D)D

    move-result-wide v10

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    rem-double v0, v10, v12

    .line 121
    .local v0, "B":D
    const-wide v10, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v10, v0, v10

    if-gez v10, :cond_1

    .line 122
    const-wide v10, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v0, v10

    .line 125
    :cond_1
    iget-object v10, p0, Lorg/hermit/astro/Planet;->whichPlanet:Lorg/hermit/astro/Body$Name;

    iget-object v10, v10, Lorg/hermit/astro/Body$Name;->terms:Lorg/hermit/astro/Vsop87;

    invoke-virtual {v10, v8, v9}, Lorg/hermit/astro/Vsop87;->calculateR(D)D

    move-result-wide v4

    .line 127
    .local v4, "R":D
    sget-object v10, Lorg/hermit/astro/Body$Field;->HE_LONGITUDE:Lorg/hermit/astro/Body$Field;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lorg/hermit/astro/Planet;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 128
    sget-object v10, Lorg/hermit/astro/Body$Field;->HE_LATITUDE:Lorg/hermit/astro/Body$Field;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lorg/hermit/astro/Planet;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 129
    sget-object v10, Lorg/hermit/astro/Body$Field;->HE_RADIUS:Lorg/hermit/astro/Body$Field;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lorg/hermit/astro/Planet;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 130
    return-void
.end method

.method calcPhase()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/astro/AstroError;
        }
    .end annotation

    .prologue
    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Planet;->whichPlanet:Lorg/hermit/astro/Body$Name;

    move-object/from16 v16, v0

    sget-object v17, Lorg/hermit/astro/Body$Name;->EARTH:Lorg/hermit/astro/Body$Name;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 222
    new-instance v16, Lorg/hermit/astro/AstroError;

    const-string v17, "Can\'t calcluate the phase of the Earth"

    invoke-direct/range {v16 .. v17}, Lorg/hermit/astro/AstroError;-><init>(Ljava/lang/String;)V

    throw v16

    .line 225
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Planet;->observation:Lorg/hermit/astro/Observation;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/hermit/astro/Observation;->getSun()Lorg/hermit/astro/Sun;

    move-result-object v13

    .line 227
    .local v13, "sun":Lorg/hermit/astro/Sun;
    sget-object v16, Lorg/hermit/astro/Body$Field;->HE_RADIUS:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Planet;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v11

    .line 228
    .local v11, "r":D
    sget-object v16, Lorg/hermit/astro/Body$Field;->EARTH_DISTANCE:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Planet;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v14

    .line 229
    .local v14, "\u0394":D
    sget-object v16, Lorg/hermit/astro/Body$Field;->EARTH_DISTANCE:Lorg/hermit/astro/Body$Field;

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Sun;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v3

    .line 232
    .local v3, "R":D
    mul-double v16, v11, v11

    mul-double v18, v14, v14

    add-double v16, v16, v18

    mul-double v18, v3, v3

    sub-double v16, v16, v18

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v11

    mul-double v18, v18, v14

    div-double v5, v16, v18

    .line 233
    .local v5, "cosi":D
    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v7

    .line 240
    .local v7, "i":D
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v16, v16, v5

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v9, v16, v18

    .line 242
    .local v9, "k":D
    sget-object v16, Lorg/hermit/astro/Body$Field;->PHASE_ANGLE:Lorg/hermit/astro/Body$Field;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Planet;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 243
    sget-object v16, Lorg/hermit/astro/Body$Field;->PHASE:Lorg/hermit/astro/Body$Field;

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Planet;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 244
    return-void
.end method

.method public isInner()Z
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lorg/hermit/astro/Planet;->whichPlanet:Lorg/hermit/astro/Body$Name;

    sget-object v1, Lorg/hermit/astro/Body$Name;->MERCURY:Lorg/hermit/astro/Body$Name;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/hermit/astro/Planet;->whichPlanet:Lorg/hermit/astro/Body$Name;

    sget-object v1, Lorg/hermit/astro/Body$Name;->VENUS:Lorg/hermit/astro/Body$Name;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

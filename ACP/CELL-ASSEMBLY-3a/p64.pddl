(DEFINE (PROBLEM CELL-ASSEMBLY-MODEL3A-64)
 (:DOMAIN CELL-ASSEMBLY)
 (:OBJECTS J9 - MACHINE-JOB
           J8 - MACHINE-JOB
           J7 - JOB
           J6 - MACHINE-JOB
           J5 - JOB
           J4 - MACHINE-JOB
           J3 - MACHINE-JOB
           J2 - JOB
           J1 - MACHINE-JOB
           M6 - MACHINE
           M5 - MACHINE
           M4 - MACHINE
           M3 - MACHINE
           M2 - MACHINE
           M1 - MACHINE
           TB12 - TABLE
           TB23 - TABLE
           TB13 - TABLE
           TB-FOR-P3 - TABLE
           TB-FOR-P2 - TABLE
           TB-FOR-P1 - TABLE
           T3 - TRAY
           T2 - TRAY
           T1 - TRAY
           P3 - COMPONENT
           P2 - COMPONENT
           P1 - COMPONENT
           A3 - ARM
           A2 - ARM
           A1 - ARM
           BASE0-2424 - BASE
           BASE1-2423 - BASE
           BASE2-2422 - BASE
           BASE3-2421 - BASE
           BASE4-2420 - BASE
           BASE5-2419 - BASE
           BASE6-2418 - BASE
           BASE7-2417 - BASE
           BASE8-2416 - BASE
           BASE9-2415 - BASE
           BASE10-2414 - BASE
           BASE11-2413 - BASE
           BASE12-2412 - BASE
           BASE13-2411 - BASE
           BASE14-2410 - BASE
           BASE15-2409 - BASE
           BASE16-2408 - BASE
           BASE17-2407 - BASE
           BASE18-2406 - BASE
           BASE19-2405 - BASE
           BASE20-2404 - BASE
           BASE21-2403 - BASE
           BASE22-2402 - BASE
           BASE23-2401 - BASE
           BASE24-2400 - BASE
           BASE25-2399 - BASE
           BASE26-2398 - BASE
           BASE27-2397 - BASE
           BASE28-2396 - BASE
           BASE29-2395 - BASE
           BASE30-2394 - BASE
           BASE31-2393 - BASE
           BASE32-2392 - BASE
           BASE33-2391 - BASE
           BASE34-2390 - BASE
           BASE35-2389 - BASE
           BASE36-2388 - BASE
           BASE37-2387 - BASE
           BASE38-2386 - BASE
           BASE39-2385 - BASE
           BASE40-2384 - BASE
           BASE41-2383 - BASE
           BASE42-2382 - BASE
           BASE43-2381 - BASE
           BASE44-2380 - BASE
           BASE45-2379 - BASE
           BASE46-2378 - BASE
           BASE47-2377 - BASE
           BASE48-2376 - BASE
           BASE49-2375 - BASE
           BASE50-2374 - BASE
           BASE51-2373 - BASE
           BASE52-2372 - BASE
           BASE53-2371 - BASE
           BASE54-2370 - BASE
           BASE55-2369 - BASE
           BASE56-2368 - BASE
           BASE57-2367 - BASE
           BASE58-2366 - BASE
           BASE59-2365 - BASE
           BASE60-2364 - BASE
           BASE61-2363 - BASE
           BASE62-2362 - BASE
           BASE63-2361 - BASE)

 (:INIT
  (ARM-PRESENT TB23)
  (AT A3 TB23)
  (FREE A3)
  (ARM-PRESENT M4)
  (AT A2 M4)
  (FREE A2)
  (ARM-PRESENT T1)
  (AT A1 T1)
  (FREE A1)
  (= (JOB-COST NOTHING-DONE) 0)
  (JOB-AVAILABLE-AT J1 M1)
  (DEPENDS NOTHING-DONE J1)
  (= (JOB-COST J1) 3)
  (JOB-AVAILABLE-AT J2 TB-FOR-P1)
  (DEPENDS J1 J2)
  (= (JOB-COST J2) 3)
  (USES J2 P1)
  (AT P1 T1)
  (JOB-AVAILABLE-AT J3 M2)
  (DEPENDS J2 J3)
  (= (JOB-COST J3) 3)
  (JOB-AVAILABLE-AT J4 M3)
  (DEPENDS J3 J4)
  (= (JOB-COST J4) 2)
  (JOB-AVAILABLE-AT J5 TB-FOR-P2)
  (DEPENDS J4 J5)
  (= (JOB-COST J5) 3)
  (USES J5 P2)
  (AT P2 T2)
  (JOB-AVAILABLE-AT J6 M4)
  (DEPENDS J5 J6)
  (= (JOB-COST J6) 3)
  (JOB-AVAILABLE-AT J7 TB-FOR-P3)
  (DEPENDS J6 J7)
  (= (JOB-COST J7) 2)
  (USES J7 P3)
  (AT P3 T3)
  (JOB-AVAILABLE-AT J8 M5)
  (DEPENDS J7 J8)
  (= (JOB-COST J8) 3)
  (JOB-AVAILABLE-AT J9 M6)
  (DEPENDS J8 J9)
  (= (JOB-COST J9) 3)
  (CONNECTED TABLE-OUT CARRY-OUT)
  (CONNECTED CARRY-IN TABLE-IN)
  (= (MOVE-COST TABLE-IN TABLE-IN) 1000)
  (= (MOVE-COST TABLE-IN TB-FOR-P1) 2)
  (= (MOVE-COST TABLE-IN M5) 3)
  (= (MOVE-COST TABLE-IN T1) 3)
  (= (MOVE-COST TABLE-IN TB13) 3)
  (= (MOVE-COST TABLE-IN M6) 4)
  (= (MOVE-COST TABLE-IN TB-FOR-P3) 5)
  (= (MOVE-COST TABLE-IN T3) 6)
  (= (MOVE-COST TABLE-IN TABLE-OUT) 6)
  (= (MOVE-COST TABLE-IN M2) 5)
  (= (MOVE-COST TABLE-IN TB23) 4)
  (= (MOVE-COST TABLE-IN TB12) 3)
  (= (MOVE-COST TABLE-IN M4) 5)
  (= (MOVE-COST TABLE-IN TB-FOR-P2) 6)
  (= (MOVE-COST TABLE-IN T2) 5)
  (= (MOVE-COST TABLE-IN M1) 4)
  (= (MOVE-COST TABLE-IN M3) 2)
  (= (MOVE-COST TB-FOR-P1 TABLE-IN) 2)
  (= (MOVE-COST TB-FOR-P1 TB-FOR-P1) 1000)
  (= (MOVE-COST TB-FOR-P1 M5) 2)
  (= (MOVE-COST TB-FOR-P1 T1) 3)
  (= (MOVE-COST TB-FOR-P1 TB13) 4)
  (= (MOVE-COST TB-FOR-P1 M6) 5)
  (= (MOVE-COST TB-FOR-P1 TB-FOR-P3) 6)
  (= (MOVE-COST TB-FOR-P1 T3) 7)
  (= (MOVE-COST TB-FOR-P1 TABLE-OUT) 7)
  (= (MOVE-COST TB-FOR-P1 M2) 6)
  (= (MOVE-COST TB-FOR-P1 TB23) 5)
  (= (MOVE-COST TB-FOR-P1 TB12) 4)
  (= (MOVE-COST TB-FOR-P1 M4) 6)
  (= (MOVE-COST TB-FOR-P1 TB-FOR-P2) 7)
  (= (MOVE-COST TB-FOR-P1 T2) 6)
  (= (MOVE-COST TB-FOR-P1 M1) 5)
  (= (MOVE-COST TB-FOR-P1 M3) 3)
  (= (MOVE-COST M5 TABLE-IN) 3)
  (= (MOVE-COST M5 TB-FOR-P1) 2)
  (= (MOVE-COST M5 M5) 1000)
  (= (MOVE-COST M5 T1) 2)
  (= (MOVE-COST M5 TB13) 4)
  (= (MOVE-COST M5 M6) 5)
  (= (MOVE-COST M5 TB-FOR-P3) 6)
  (= (MOVE-COST M5 T3) 7)
  (= (MOVE-COST M5 TABLE-OUT) 7)
  (= (MOVE-COST M5 M2) 6)
  (= (MOVE-COST M5 TB23) 5)
  (= (MOVE-COST M5 TB12) 4)
  (= (MOVE-COST M5 M4) 6)
  (= (MOVE-COST M5 TB-FOR-P2) 7)
  (= (MOVE-COST M5 T2) 6)
  (= (MOVE-COST M5 M1) 5)
  (= (MOVE-COST M5 M3) 3)
  (= (MOVE-COST T1 TABLE-IN) 3)
  (= (MOVE-COST T1 TB-FOR-P1) 3)
  (= (MOVE-COST T1 M5) 2)
  (= (MOVE-COST T1 T1) 1000)
  (= (MOVE-COST T1 TB13) 3)
  (= (MOVE-COST T1 M6) 4)
  (= (MOVE-COST T1 TB-FOR-P3) 5)
  (= (MOVE-COST T1 T3) 6)
  (= (MOVE-COST T1 TABLE-OUT) 6)
  (= (MOVE-COST T1 M2) 5)
  (= (MOVE-COST T1 TB23) 4)
  (= (MOVE-COST T1 TB12) 3)
  (= (MOVE-COST T1 M4) 5)
  (= (MOVE-COST T1 TB-FOR-P2) 6)
  (= (MOVE-COST T1 T2) 5)
  (= (MOVE-COST T1 M1) 4)
  (= (MOVE-COST T1 M3) 2)
  (= (MOVE-COST TB13 TABLE-IN) 3)
  (= (MOVE-COST TB13 TB-FOR-P1) 4)
  (= (MOVE-COST TB13 M5) 4)
  (= (MOVE-COST TB13 T1) 3)
  (= (MOVE-COST TB13 TB13) 1000)
  (= (MOVE-COST TB13 M6) 2)
  (= (MOVE-COST TB13 TB-FOR-P3) 3)
  (= (MOVE-COST TB13 T3) 4)
  (= (MOVE-COST TB13 TABLE-OUT) 4)
  (= (MOVE-COST TB13 M2) 3)
  (= (MOVE-COST TB13 TB23) 2)
  (= (MOVE-COST TB13 TB12) 3)
  (= (MOVE-COST TB13 M4) 3)
  (= (MOVE-COST TB13 TB-FOR-P2) 4)
  (= (MOVE-COST TB13 T2) 5)
  (= (MOVE-COST TB13 M1) 4)
  (= (MOVE-COST TB13 M3) 2)
  (= (MOVE-COST M6 TABLE-IN) 4)
  (= (MOVE-COST M6 TB-FOR-P1) 5)
  (= (MOVE-COST M6 M5) 5)
  (= (MOVE-COST M6 T1) 4)
  (= (MOVE-COST M6 TB13) 2)
  (= (MOVE-COST M6 M6) 1000)
  (= (MOVE-COST M6 TB-FOR-P3) 2)
  (= (MOVE-COST M6 T3) 3)
  (= (MOVE-COST M6 TABLE-OUT) 4)
  (= (MOVE-COST M6 M2) 4)
  (= (MOVE-COST M6 TB23) 3)
  (= (MOVE-COST M6 TB12) 4)
  (= (MOVE-COST M6 M4) 4)
  (= (MOVE-COST M6 TB-FOR-P2) 5)
  (= (MOVE-COST M6 T2) 6)
  (= (MOVE-COST M6 M1) 5)
  (= (MOVE-COST M6 M3) 3)
  (= (MOVE-COST TB-FOR-P3 TABLE-IN) 5)
  (= (MOVE-COST TB-FOR-P3 TB-FOR-P1) 6)
  (= (MOVE-COST TB-FOR-P3 M5) 6)
  (= (MOVE-COST TB-FOR-P3 T1) 5)
  (= (MOVE-COST TB-FOR-P3 TB13) 3)
  (= (MOVE-COST TB-FOR-P3 M6) 2)
  (= (MOVE-COST TB-FOR-P3 TB-FOR-P3) 1000)
  (= (MOVE-COST TB-FOR-P3 T3) 2)
  (= (MOVE-COST TB-FOR-P3 TABLE-OUT) 3)
  (= (MOVE-COST TB-FOR-P3 M2) 4)
  (= (MOVE-COST TB-FOR-P3 TB23) 4)
  (= (MOVE-COST TB-FOR-P3 TB12) 5)
  (= (MOVE-COST TB-FOR-P3 M4) 5)
  (= (MOVE-COST TB-FOR-P3 TB-FOR-P2) 6)
  (= (MOVE-COST TB-FOR-P3 T2) 7)
  (= (MOVE-COST TB-FOR-P3 M1) 6)
  (= (MOVE-COST TB-FOR-P3 M3) 4)
  (= (MOVE-COST T3 TABLE-IN) 6)
  (= (MOVE-COST T3 TB-FOR-P1) 7)
  (= (MOVE-COST T3 M5) 7)
  (= (MOVE-COST T3 T1) 6)
  (= (MOVE-COST T3 TB13) 4)
  (= (MOVE-COST T3 M6) 3)
  (= (MOVE-COST T3 TB-FOR-P3) 2)
  (= (MOVE-COST T3 T3) 1000)
  (= (MOVE-COST T3 TABLE-OUT) 2)
  (= (MOVE-COST T3 M2) 3)
  (= (MOVE-COST T3 TB23) 4)
  (= (MOVE-COST T3 TB12) 5)
  (= (MOVE-COST T3 M4) 5)
  (= (MOVE-COST T3 TB-FOR-P2) 6)
  (= (MOVE-COST T3 T2) 7)
  (= (MOVE-COST T3 M1) 6)
  (= (MOVE-COST T3 M3) 5)
  (= (MOVE-COST TABLE-OUT TABLE-IN) 6)
  (= (MOVE-COST TABLE-OUT TB-FOR-P1) 7)
  (= (MOVE-COST TABLE-OUT M5) 7)
  (= (MOVE-COST TABLE-OUT T1) 6)
  (= (MOVE-COST TABLE-OUT TB13) 4)
  (= (MOVE-COST TABLE-OUT M6) 4)
  (= (MOVE-COST TABLE-OUT TB-FOR-P3) 3)
  (= (MOVE-COST TABLE-OUT T3) 2)
  (= (MOVE-COST TABLE-OUT TABLE-OUT) 1000)
  (= (MOVE-COST TABLE-OUT M2) 2)
  (= (MOVE-COST TABLE-OUT TB23) 3)
  (= (MOVE-COST TABLE-OUT TB12) 4)
  (= (MOVE-COST TABLE-OUT M4) 4)
  (= (MOVE-COST TABLE-OUT TB-FOR-P2) 5)
  (= (MOVE-COST TABLE-OUT T2) 6)
  (= (MOVE-COST TABLE-OUT M1) 5)
  (= (MOVE-COST TABLE-OUT M3) 5)
  (= (MOVE-COST M2 TABLE-IN) 5)
  (= (MOVE-COST M2 TB-FOR-P1) 6)
  (= (MOVE-COST M2 M5) 6)
  (= (MOVE-COST M2 T1) 5)
  (= (MOVE-COST M2 TB13) 3)
  (= (MOVE-COST M2 M6) 4)
  (= (MOVE-COST M2 TB-FOR-P3) 4)
  (= (MOVE-COST M2 T3) 3)
  (= (MOVE-COST M2 TABLE-OUT) 2)
  (= (MOVE-COST M2 M2) 1000)
  (= (MOVE-COST M2 TB23) 2)
  (= (MOVE-COST M2 TB12) 3)
  (= (MOVE-COST M2 M4) 3)
  (= (MOVE-COST M2 TB-FOR-P2) 4)
  (= (MOVE-COST M2 T2) 5)
  (= (MOVE-COST M2 M1) 4)
  (= (MOVE-COST M2 M3) 4)
  (= (MOVE-COST TB23 TABLE-IN) 4)
  (= (MOVE-COST TB23 TB-FOR-P1) 5)
  (= (MOVE-COST TB23 M5) 5)
  (= (MOVE-COST TB23 T1) 4)
  (= (MOVE-COST TB23 TB13) 2)
  (= (MOVE-COST TB23 M6) 3)
  (= (MOVE-COST TB23 TB-FOR-P3) 4)
  (= (MOVE-COST TB23 T3) 4)
  (= (MOVE-COST TB23 TABLE-OUT) 3)
  (= (MOVE-COST TB23 M2) 2)
  (= (MOVE-COST TB23 TB23) 1000)
  (= (MOVE-COST TB23 TB12) 2)
  (= (MOVE-COST TB23 M4) 2)
  (= (MOVE-COST TB23 TB-FOR-P2) 3)
  (= (MOVE-COST TB23 T2) 4)
  (= (MOVE-COST TB23 M1) 3)
  (= (MOVE-COST TB23 M3) 3)
  (= (MOVE-COST TB12 TABLE-IN) 3)
  (= (MOVE-COST TB12 TB-FOR-P1) 4)
  (= (MOVE-COST TB12 M5) 4)
  (= (MOVE-COST TB12 T1) 3)
  (= (MOVE-COST TB12 TB13) 3)
  (= (MOVE-COST TB12 M6) 4)
  (= (MOVE-COST TB12 TB-FOR-P3) 5)
  (= (MOVE-COST TB12 T3) 5)
  (= (MOVE-COST TB12 TABLE-OUT) 4)
  (= (MOVE-COST TB12 M2) 3)
  (= (MOVE-COST TB12 TB23) 2)
  (= (MOVE-COST TB12 TB12) 1000)
  (= (MOVE-COST TB12 M4) 3)
  (= (MOVE-COST TB12 TB-FOR-P2) 4)
  (= (MOVE-COST TB12 T2) 3)
  (= (MOVE-COST TB12 M1) 2)
  (= (MOVE-COST TB12 M3) 2)
  (= (MOVE-COST M4 TABLE-IN) 5)
  (= (MOVE-COST M4 TB-FOR-P1) 6)
  (= (MOVE-COST M4 M5) 6)
  (= (MOVE-COST M4 T1) 5)
  (= (MOVE-COST M4 TB13) 3)
  (= (MOVE-COST M4 M6) 4)
  (= (MOVE-COST M4 TB-FOR-P3) 5)
  (= (MOVE-COST M4 T3) 5)
  (= (MOVE-COST M4 TABLE-OUT) 4)
  (= (MOVE-COST M4 M2) 3)
  (= (MOVE-COST M4 TB23) 2)
  (= (MOVE-COST M4 TB12) 3)
  (= (MOVE-COST M4 M4) 1000)
  (= (MOVE-COST M4 TB-FOR-P2) 2)
  (= (MOVE-COST M4 T2) 3)
  (= (MOVE-COST M4 M1) 4)
  (= (MOVE-COST M4 M3) 4)
  (= (MOVE-COST TB-FOR-P2 TABLE-IN) 6)
  (= (MOVE-COST TB-FOR-P2 TB-FOR-P1) 7)
  (= (MOVE-COST TB-FOR-P2 M5) 7)
  (= (MOVE-COST TB-FOR-P2 T1) 6)
  (= (MOVE-COST TB-FOR-P2 TB13) 4)
  (= (MOVE-COST TB-FOR-P2 M6) 5)
  (= (MOVE-COST TB-FOR-P2 TB-FOR-P3) 6)
  (= (MOVE-COST TB-FOR-P2 T3) 6)
  (= (MOVE-COST TB-FOR-P2 TABLE-OUT) 5)
  (= (MOVE-COST TB-FOR-P2 M2) 4)
  (= (MOVE-COST TB-FOR-P2 TB23) 3)
  (= (MOVE-COST TB-FOR-P2 TB12) 4)
  (= (MOVE-COST TB-FOR-P2 M4) 2)
  (= (MOVE-COST TB-FOR-P2 TB-FOR-P2) 1000)
  (= (MOVE-COST TB-FOR-P2 T2) 2)
  (= (MOVE-COST TB-FOR-P2 M1) 3)
  (= (MOVE-COST TB-FOR-P2 M3) 5)
  (= (MOVE-COST T2 TABLE-IN) 5)
  (= (MOVE-COST T2 TB-FOR-P1) 6)
  (= (MOVE-COST T2 M5) 6)
  (= (MOVE-COST T2 T1) 5)
  (= (MOVE-COST T2 TB13) 5)
  (= (MOVE-COST T2 M6) 6)
  (= (MOVE-COST T2 TB-FOR-P3) 7)
  (= (MOVE-COST T2 T3) 7)
  (= (MOVE-COST T2 TABLE-OUT) 6)
  (= (MOVE-COST T2 M2) 5)
  (= (MOVE-COST T2 TB23) 4)
  (= (MOVE-COST T2 TB12) 3)
  (= (MOVE-COST T2 M4) 3)
  (= (MOVE-COST T2 TB-FOR-P2) 2)
  (= (MOVE-COST T2 T2) 1000)
  (= (MOVE-COST T2 M1) 2)
  (= (MOVE-COST T2 M3) 4)
  (= (MOVE-COST M1 TABLE-IN) 4)
  (= (MOVE-COST M1 TB-FOR-P1) 5)
  (= (MOVE-COST M1 M5) 5)
  (= (MOVE-COST M1 T1) 4)
  (= (MOVE-COST M1 TB13) 4)
  (= (MOVE-COST M1 M6) 5)
  (= (MOVE-COST M1 TB-FOR-P3) 6)
  (= (MOVE-COST M1 T3) 6)
  (= (MOVE-COST M1 TABLE-OUT) 5)
  (= (MOVE-COST M1 M2) 4)
  (= (MOVE-COST M1 TB23) 3)
  (= (MOVE-COST M1 TB12) 2)
  (= (MOVE-COST M1 M4) 4)
  (= (MOVE-COST M1 TB-FOR-P2) 3)
  (= (MOVE-COST M1 T2) 2)
  (= (MOVE-COST M1 M1) 1000)
  (= (MOVE-COST M1 M3) 3)
  (= (MOVE-COST M3 TABLE-IN) 2)
  (= (MOVE-COST M3 TB-FOR-P1) 3)
  (= (MOVE-COST M3 M5) 3)
  (= (MOVE-COST M3 T1) 2)
  (= (MOVE-COST M3 TB13) 2)
  (= (MOVE-COST M3 M6) 3)
  (= (MOVE-COST M3 TB-FOR-P3) 4)
  (= (MOVE-COST M3 T3) 5)
  (= (MOVE-COST M3 TABLE-OUT) 5)
  (= (MOVE-COST M3 M2) 4)
  (= (MOVE-COST M3 TB23) 3)
  (= (MOVE-COST M3 TB12) 2)
  (= (MOVE-COST M3 M4) 4)
  (= (MOVE-COST M3 TB-FOR-P2) 5)
  (= (MOVE-COST M3 T2) 4)
  (= (MOVE-COST M3 M1) 3)
  (= (MOVE-COST M3 M3) 1000)
  (REACHABLE A3 M6)
  (REACHABLE A3 M2)
  (REACHABLE A3 TB23)
  (REACHABLE A3 TB13)
  (REACHABLE A3 TB-FOR-P3)
  (REACHABLE A3 T3)
  (REACHABLE A3 TABLE-OUT)
  (REACHABLE A2 M4)
  (REACHABLE A2 M1)
  (REACHABLE A2 TB23)
  (REACHABLE A2 TB12)
  (REACHABLE A2 TB-FOR-P2)
  (REACHABLE A2 T2)
  (REACHABLE A1 M5)
  (REACHABLE A1 M3)
  (REACHABLE A1 TB13)
  (REACHABLE A1 TB12)
  (REACHABLE A1 TB-FOR-P1)
  (REACHABLE A1 T1)
  (REACHABLE A1 TABLE-IN)
  (= (LOADING-COST) 1)
  (= (TOTAL-COST) 0)
  (FINISHED NOTHING-DONE BASE0-2424)
  (FINISHED NOTHING-DONE BASE1-2423)
  (FINISHED NOTHING-DONE BASE2-2422)
  (FINISHED NOTHING-DONE BASE3-2421)
  (FINISHED NOTHING-DONE BASE4-2420)
  (FINISHED NOTHING-DONE BASE5-2419)
  (FINISHED NOTHING-DONE BASE6-2418)
  (FINISHED NOTHING-DONE BASE7-2417)
  (FINISHED NOTHING-DONE BASE8-2416)
  (FINISHED NOTHING-DONE BASE9-2415)
  (FINISHED NOTHING-DONE BASE10-2414)
  (FINISHED NOTHING-DONE BASE11-2413)
  (FINISHED NOTHING-DONE BASE12-2412)
  (FINISHED NOTHING-DONE BASE13-2411)
  (FINISHED NOTHING-DONE BASE14-2410)
  (FINISHED NOTHING-DONE BASE15-2409)
  (FINISHED NOTHING-DONE BASE16-2408)
  (FINISHED NOTHING-DONE BASE17-2407)
  (FINISHED NOTHING-DONE BASE18-2406)
  (FINISHED NOTHING-DONE BASE19-2405)
  (FINISHED NOTHING-DONE BASE20-2404)
  (FINISHED NOTHING-DONE BASE21-2403)
  (FINISHED NOTHING-DONE BASE22-2402)
  (FINISHED NOTHING-DONE BASE23-2401)
  (FINISHED NOTHING-DONE BASE24-2400)
  (FINISHED NOTHING-DONE BASE25-2399)
  (FINISHED NOTHING-DONE BASE26-2398)
  (FINISHED NOTHING-DONE BASE27-2397)
  (FINISHED NOTHING-DONE BASE28-2396)
  (FINISHED NOTHING-DONE BASE29-2395)
  (FINISHED NOTHING-DONE BASE30-2394)
  (FINISHED NOTHING-DONE BASE31-2393)
  (FINISHED NOTHING-DONE BASE32-2392)
  (FINISHED NOTHING-DONE BASE33-2391)
  (FINISHED NOTHING-DONE BASE34-2390)
  (FINISHED NOTHING-DONE BASE35-2389)
  (FINISHED NOTHING-DONE BASE36-2388)
  (FINISHED NOTHING-DONE BASE37-2387)
  (FINISHED NOTHING-DONE BASE38-2386)
  (FINISHED NOTHING-DONE BASE39-2385)
  (FINISHED NOTHING-DONE BASE40-2384)
  (FINISHED NOTHING-DONE BASE41-2383)
  (FINISHED NOTHING-DONE BASE42-2382)
  (FINISHED NOTHING-DONE BASE43-2381)
  (FINISHED NOTHING-DONE BASE44-2380)
  (FINISHED NOTHING-DONE BASE45-2379)
  (FINISHED NOTHING-DONE BASE46-2378)
  (FINISHED NOTHING-DONE BASE47-2377)
  (FINISHED NOTHING-DONE BASE48-2376)
  (FINISHED NOTHING-DONE BASE49-2375)
  (FINISHED NOTHING-DONE BASE50-2374)
  (FINISHED NOTHING-DONE BASE51-2373)
  (FINISHED NOTHING-DONE BASE52-2372)
  (FINISHED NOTHING-DONE BASE53-2371)
  (FINISHED NOTHING-DONE BASE54-2370)
  (FINISHED NOTHING-DONE BASE55-2369)
  (FINISHED NOTHING-DONE BASE56-2368)
  (FINISHED NOTHING-DONE BASE57-2367)
  (FINISHED NOTHING-DONE BASE58-2366)
  (FINISHED NOTHING-DONE BASE59-2365)
  (FINISHED NOTHING-DONE BASE60-2364)
  (FINISHED NOTHING-DONE BASE61-2363)
  (FINISHED NOTHING-DONE BASE62-2362)
  (FINISHED NOTHING-DONE BASE63-2361)
  (AT BASE0-2424 CARRY-IN)
  (AT BASE1-2423 CARRY-IN)
  (AT BASE2-2422 CARRY-IN)
  (AT BASE3-2421 CARRY-IN)
  (AT BASE4-2420 CARRY-IN)
  (AT BASE5-2419 CARRY-IN)
  (AT BASE6-2418 CARRY-IN)
  (AT BASE7-2417 CARRY-IN)
  (AT BASE8-2416 CARRY-IN)
  (AT BASE9-2415 CARRY-IN)
  (AT BASE10-2414 CARRY-IN)
  (AT BASE11-2413 CARRY-IN)
  (AT BASE12-2412 CARRY-IN)
  (AT BASE13-2411 CARRY-IN)
  (AT BASE14-2410 CARRY-IN)
  (AT BASE15-2409 CARRY-IN)
  (AT BASE16-2408 CARRY-IN)
  (AT BASE17-2407 CARRY-IN)
  (AT BASE18-2406 CARRY-IN)
  (AT BASE19-2405 CARRY-IN)
  (AT BASE20-2404 CARRY-IN)
  (AT BASE21-2403 CARRY-IN)
  (AT BASE22-2402 CARRY-IN)
  (AT BASE23-2401 CARRY-IN)
  (AT BASE24-2400 CARRY-IN)
  (AT BASE25-2399 CARRY-IN)
  (AT BASE26-2398 CARRY-IN)
  (AT BASE27-2397 CARRY-IN)
  (AT BASE28-2396 CARRY-IN)
  (AT BASE29-2395 CARRY-IN)
  (AT BASE30-2394 CARRY-IN)
  (AT BASE31-2393 CARRY-IN)
  (AT BASE32-2392 CARRY-IN)
  (AT BASE33-2391 CARRY-IN)
  (AT BASE34-2390 CARRY-IN)
  (AT BASE35-2389 CARRY-IN)
  (AT BASE36-2388 CARRY-IN)
  (AT BASE37-2387 CARRY-IN)
  (AT BASE38-2386 CARRY-IN)
  (AT BASE39-2385 CARRY-IN)
  (AT BASE40-2384 CARRY-IN)
  (AT BASE41-2383 CARRY-IN)
  (AT BASE42-2382 CARRY-IN)
  (AT BASE43-2381 CARRY-IN)
  (AT BASE44-2380 CARRY-IN)
  (AT BASE45-2379 CARRY-IN)
  (AT BASE46-2378 CARRY-IN)
  (AT BASE47-2377 CARRY-IN)
  (AT BASE48-2376 CARRY-IN)
  (AT BASE49-2375 CARRY-IN)
  (AT BASE50-2374 CARRY-IN)
  (AT BASE51-2373 CARRY-IN)
  (AT BASE52-2372 CARRY-IN)
  (AT BASE53-2371 CARRY-IN)
  (AT BASE54-2370 CARRY-IN)
  (AT BASE55-2369 CARRY-IN)
  (AT BASE56-2368 CARRY-IN)
  (AT BASE57-2367 CARRY-IN)
  (AT BASE58-2366 CARRY-IN)
  (AT BASE59-2365 CARRY-IN)
  (AT BASE60-2364 CARRY-IN)
  (AT BASE61-2363 CARRY-IN)
  (AT BASE62-2362 CARRY-IN)
  (AT BASE63-2361 CARRY-IN))
 (:GOAL
  (AND (FINISHED J9 BASE0-2424)
       (FINISHED J9 BASE1-2423)
       (FINISHED J9 BASE2-2422)
       (FINISHED J9 BASE3-2421)
       (FINISHED J9 BASE4-2420)
       (FINISHED J9 BASE5-2419)
       (FINISHED J9 BASE6-2418)
       (FINISHED J9 BASE7-2417)
       (FINISHED J9 BASE8-2416)
       (FINISHED J9 BASE9-2415)
       (FINISHED J9 BASE10-2414)
       (FINISHED J9 BASE11-2413)
       (FINISHED J9 BASE12-2412)
       (FINISHED J9 BASE13-2411)
       (FINISHED J9 BASE14-2410)
       (FINISHED J9 BASE15-2409)
       (FINISHED J9 BASE16-2408)
       (FINISHED J9 BASE17-2407)
       (FINISHED J9 BASE18-2406)
       (FINISHED J9 BASE19-2405)
       (FINISHED J9 BASE20-2404)
       (FINISHED J9 BASE21-2403)
       (FINISHED J9 BASE22-2402)
       (FINISHED J9 BASE23-2401)
       (FINISHED J9 BASE24-2400)
       (FINISHED J9 BASE25-2399)
       (FINISHED J9 BASE26-2398)
       (FINISHED J9 BASE27-2397)
       (FINISHED J9 BASE28-2396)
       (FINISHED J9 BASE29-2395)
       (FINISHED J9 BASE30-2394)
       (FINISHED J9 BASE31-2393)
       (FINISHED J9 BASE32-2392)
       (FINISHED J9 BASE33-2391)
       (FINISHED J9 BASE34-2390)
       (FINISHED J9 BASE35-2389)
       (FINISHED J9 BASE36-2388)
       (FINISHED J9 BASE37-2387)
       (FINISHED J9 BASE38-2386)
       (FINISHED J9 BASE39-2385)
       (FINISHED J9 BASE40-2384)
       (FINISHED J9 BASE41-2383)
       (FINISHED J9 BASE42-2382)
       (FINISHED J9 BASE43-2381)
       (FINISHED J9 BASE44-2380)
       (FINISHED J9 BASE45-2379)
       (FINISHED J9 BASE46-2378)
       (FINISHED J9 BASE47-2377)
       (FINISHED J9 BASE48-2376)
       (FINISHED J9 BASE49-2375)
       (FINISHED J9 BASE50-2374)
       (FINISHED J9 BASE51-2373)
       (FINISHED J9 BASE52-2372)
       (FINISHED J9 BASE53-2371)
       (FINISHED J9 BASE54-2370)
       (FINISHED J9 BASE55-2369)
       (FINISHED J9 BASE56-2368)
       (FINISHED J9 BASE57-2367)
       (FINISHED J9 BASE58-2366)
       (FINISHED J9 BASE59-2365)
       (FINISHED J9 BASE60-2364)
       (FINISHED J9 BASE61-2363)
       (FINISHED J9 BASE62-2362)
       (FINISHED J9 BASE63-2361)
       (AT BASE0-2424 CARRY-OUT)
       (AT BASE1-2423 CARRY-OUT)
       (AT BASE2-2422 CARRY-OUT)
       (AT BASE3-2421 CARRY-OUT)
       (AT BASE4-2420 CARRY-OUT)
       (AT BASE5-2419 CARRY-OUT)
       (AT BASE6-2418 CARRY-OUT)
       (AT BASE7-2417 CARRY-OUT)
       (AT BASE8-2416 CARRY-OUT)
       (AT BASE9-2415 CARRY-OUT)
       (AT BASE10-2414 CARRY-OUT)
       (AT BASE11-2413 CARRY-OUT)
       (AT BASE12-2412 CARRY-OUT)
       (AT BASE13-2411 CARRY-OUT)
       (AT BASE14-2410 CARRY-OUT)
       (AT BASE15-2409 CARRY-OUT)
       (AT BASE16-2408 CARRY-OUT)
       (AT BASE17-2407 CARRY-OUT)
       (AT BASE18-2406 CARRY-OUT)
       (AT BASE19-2405 CARRY-OUT)
       (AT BASE20-2404 CARRY-OUT)
       (AT BASE21-2403 CARRY-OUT)
       (AT BASE22-2402 CARRY-OUT)
       (AT BASE23-2401 CARRY-OUT)
       (AT BASE24-2400 CARRY-OUT)
       (AT BASE25-2399 CARRY-OUT)
       (AT BASE26-2398 CARRY-OUT)
       (AT BASE27-2397 CARRY-OUT)
       (AT BASE28-2396 CARRY-OUT)
       (AT BASE29-2395 CARRY-OUT)
       (AT BASE30-2394 CARRY-OUT)
       (AT BASE31-2393 CARRY-OUT)
       (AT BASE32-2392 CARRY-OUT)
       (AT BASE33-2391 CARRY-OUT)
       (AT BASE34-2390 CARRY-OUT)
       (AT BASE35-2389 CARRY-OUT)
       (AT BASE36-2388 CARRY-OUT)
       (AT BASE37-2387 CARRY-OUT)
       (AT BASE38-2386 CARRY-OUT)
       (AT BASE39-2385 CARRY-OUT)
       (AT BASE40-2384 CARRY-OUT)
       (AT BASE41-2383 CARRY-OUT)
       (AT BASE42-2382 CARRY-OUT)
       (AT BASE43-2381 CARRY-OUT)
       (AT BASE44-2380 CARRY-OUT)
       (AT BASE45-2379 CARRY-OUT)
       (AT BASE46-2378 CARRY-OUT)
       (AT BASE47-2377 CARRY-OUT)
       (AT BASE48-2376 CARRY-OUT)
       (AT BASE49-2375 CARRY-OUT)
       (AT BASE50-2374 CARRY-OUT)
       (AT BASE51-2373 CARRY-OUT)
       (AT BASE52-2372 CARRY-OUT)
       (AT BASE53-2371 CARRY-OUT)
       (AT BASE54-2370 CARRY-OUT)
       (AT BASE55-2369 CARRY-OUT)
       (AT BASE56-2368 CARRY-OUT)
       (AT BASE57-2367 CARRY-OUT)
       (AT BASE58-2366 CARRY-OUT)
       (AT BASE59-2365 CARRY-OUT)
       (AT BASE60-2364 CARRY-OUT)
       (AT BASE61-2363 CARRY-OUT)
       (AT BASE62-2362 CARRY-OUT)
       (AT BASE63-2361 CARRY-OUT)))
 (:METRIC MINIMIZE (TOTAL-COST)))
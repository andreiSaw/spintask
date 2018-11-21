#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM goalNeverReached */
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [((((m1==m2)&&(m2==m3))&&(m3==m1)))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][1] = 1;
		if (!((((((int)now.m1)==((int)now.m2))&&(((int)now.m2)==((int)now.m3)))&&(((int)now.m3)==((int)now.m1)))))
			continue;
		/* merge: assert(!((((m1==m2)&&(m2==m3))&&(m3==m1))))(0, 2, 6) */
		reached[1][2] = 1;
		spin_assert( !((((((int)now.m1)==((int)now.m2))&&(((int)now.m2)==((int)now.m3)))&&(((int)now.m3)==((int)now.m1)))), " !((((m1==m2)&&(m2==m3))&&(m3==m1)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[1][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC man */
	case 5: // STATE 1 - task12.pml:32 - [((c>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)now.c)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 3 - task12.pml:11 - [m1 = (1-m1)] (0:25:3 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.m1);
		now.m1 = (1-((int)now.m1));
#ifdef VAR_RANGES
		logval("m1", ((int)now.m1));
#endif
		;
		/* merge: m2 = (1-m2)(25, 4, 25) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.m2);
		now.m2 = (1-((int)now.m2));
#ifdef VAR_RANGES
		logval("m2", ((int)now.m2));
#endif
		;
		/* merge: c = (c-1)(25, 5, 25) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.c);
		now.c = (((int)now.c)-1);
#ifdef VAR_RANGES
		logval("c", ((int)now.c));
#endif
		;
		/* merge: printf('12')(25, 6, 25) */
		reached[0][6] = 1;
		Printf("12");
		/* merge: .(goto)(0, 26, 25) */
		reached[0][26] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 7: // STATE 9 - task12.pml:32 - [((c>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((int)now.c)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 11 - task12.pml:25 - [m2 = (1-m2)] (0:25:3 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.m2);
		now.m2 = (1-((int)now.m2));
#ifdef VAR_RANGES
		logval("m2", ((int)now.m2));
#endif
		;
		/* merge: m3 = (1-m3)(25, 12, 25) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.m3);
		now.m3 = (1-((int)now.m3));
#ifdef VAR_RANGES
		logval("m3", ((int)now.m3));
#endif
		;
		/* merge: c = (c-1)(25, 13, 25) */
		reached[0][13] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.c);
		now.c = (((int)now.c)-1);
#ifdef VAR_RANGES
		logval("c", ((int)now.c));
#endif
		;
		/* merge: printf('23')(25, 14, 25) */
		reached[0][14] = 1;
		Printf("23");
		/* merge: .(goto)(0, 26, 25) */
		reached[0][26] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 9: // STATE 17 - task12.pml:32 - [((c>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		if (!((((int)now.c)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 19 - task12.pml:18 - [m1 = (1-m1)] (0:25:3 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.m1);
		now.m1 = (1-((int)now.m1));
#ifdef VAR_RANGES
		logval("m1", ((int)now.m1));
#endif
		;
		/* merge: m3 = (1-m3)(25, 20, 25) */
		reached[0][20] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.m3);
		now.m3 = (1-((int)now.m3));
#ifdef VAR_RANGES
		logval("m3", ((int)now.m3));
#endif
		;
		/* merge: c = (c-1)(25, 21, 25) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.c);
		now.c = (((int)now.c)-1);
#ifdef VAR_RANGES
		logval("c", ((int)now.c));
#endif
		;
		/* merge: printf('13')(25, 22, 25) */
		reached[0][22] = 1;
		Printf("13");
		/* merge: .(goto)(0, 26, 25) */
		reached[0][26] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 11: // STATE 28 - task12.pml:41 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}


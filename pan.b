	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM goalNeverReached */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC man */
;
		;
		
	case 6: // STATE 5
		;
		now.c = trpt->bup.ovals[2];
		now.m2 = trpt->bup.ovals[1];
		now.m1 = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 8: // STATE 13
		;
		now.c = trpt->bup.ovals[2];
		now.m3 = trpt->bup.ovals[1];
		now.m2 = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 10: // STATE 21
		;
		now.c = trpt->bup.ovals[2];
		now.m3 = trpt->bup.ovals[1];
		now.m1 = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 11: // STATE 28
		;
		p_restor(II);
		;
		;
		goto R999;
	}


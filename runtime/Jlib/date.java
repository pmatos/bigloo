package bigloo;

import java.util.*;

public class date extends obj {
   public Calendar calendar;
   public int timezone;
   public long nsec;

   public date( final long ns,
		final int s,
		final int min,
		final int h,
		final int d,
		final int mon,
		final int y,
		final long tz,
		final boolean istz,
		final int dst ) {
      nsec = ns;
      if( !istz ) {
	 calendar = new GregorianCalendar( y, mon, d, h, min, s );
	 final TimeZone tmz = calendar.getTimeZone();
	 timezone = tmz.getOffset(calendar.getTimeInMillis()) / 1000;
      } else {
	 final TimeZone tmz = new SimpleTimeZone( 0, "UTC" );
	 calendar = new GregorianCalendar( tmz );
	 calendar.set( y, mon, d, h, min, s );
	 calendar.add( Calendar.MILLISECOND, (int)tz * 1000 );
	 timezone = 0;
      }
   }

   public date( final long seconds ) {
      calendar = new GregorianCalendar();
      final Date d = new Date();
      final long milliseconds = seconds * 1000;	 
      d.setTime( milliseconds );
      calendar.setTime( d );
      final TimeZone tmz = calendar.getTimeZone();   
      timezone = tmz.getOffset( milliseconds ) / 1000;
   }
   
   public date( final long nseconds, boolean _b ) {
      calendar = new GregorianCalendar();
      final Date d = new Date();
      final long milliseconds = nseconds / 1000000;
      d.setTime( milliseconds );
      calendar.setTime( d );
      final TimeZone tmz = calendar.getTimeZone();
      timezone = tmz.getOffset( milliseconds ) / 1000;
      nsec = (nseconds % 1000000);
   }
}

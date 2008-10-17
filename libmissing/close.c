/* close replacement.
   Copyright (C) 2008 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU Lesser General Public License as published by
   the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

#include <config.h>

/* Specification.  */
#include <unistd.h>

#if GNULIB_SYS_SOCKET
# include <sys/socket.h>
#endif


/* Override close() to call into other gnulib modules.  */

int
rpl_close (int fd)
#undef close
{
#if HAVE__GL_CLOSE_FD_MAYBE_SOCKET
  int retval = _gl_close_fd_maybe_socket (fd);
#else
  int retval = close (fd);
#endif

#ifdef FCHDIR_REPLACEMENT
  if (retval >= 0)
    _gl_unregister_fd (fd);
#endif

  return retval;
}

#region Copyright & license notice
/*
 * Copyright: Copyright (c) 2007 Amazon Technologies, Inc.
 * License:   Apache License, Version 2.0
 */
#endregion

using System;
using Amazon.WebServices.MechanicalTurk.Domain;

namespace Amazon.WebServices.MechanicalTurk.Exceptions
{
	/// <summary>
	/// Description of ObjectDoesNotExistException.
	/// </summary>
	public class ObjectDoesNotExistException : ServiceException
	{
        /// <summary>
        /// Initializes a new instance of the <see cref="ObjectDoesNotExistException"/> class.
        /// </summary>
        /// <param name="serviceError">The service error.</param>
        /// <param name="serviceResponse">The service response.</param>
		public ObjectDoesNotExistException(ErrorsError serviceError, object serviceResponse) : base(serviceError, serviceResponse)
		{
		}
	}
}

/**
 * Copyright 2011 John Moore, Scott Gilroy
 *
 * This file is part of CollaboRhythm.
 *
 * CollaboRhythm is free software: you can redistribute it and/or modify it under the terms of the GNU General Public
 * License as published by the Free Software Foundation, either version 2 of the License, or (at your option) any later
 * version.
 *
 * CollaboRhythm is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
 * details.
 *
 * You should have received a copy of the GNU General Public License along with CollaboRhythm.  If not, see
 * <http://www.gnu.org/licenses/>.
 */
package collaboRhythm.shared.model.healthRecord.document
{

	import collaboRhythm.shared.model.healthRecord.DocumentCollectionBase;
	import collaboRhythm.shared.model.healthRecord.IDocument;

	import j2as3.collection.HashMap;

	import mx.collections.ArrayCollection;

	[Bindable]
	public class HealthActionSchedulesModel extends DocumentCollectionBase
	{
        private var _healthActionSchedules:HashMap = new HashMap();

		public function HealthActionSchedulesModel()
		{
			super(HealthActionSchedule.DOCUMENT_TYPE);
		}

        public function get healthActionSchedules():HashMap
        {
            return _healthActionSchedules;
        }

        public function set healthActionSchedules(value:HashMap):void
        {
            _healthActionSchedules = value;
        }

        public function get healthActionScheduleCollection():ArrayCollection
        {
            return documents;
        }

		override public function addDocument(document:IDocument):void
		{
			super.addDocument(document);
			healthActionSchedules.put(document.meta.id, document);
		}

		override public function handleUpdatedId(oldId:String, document:IDocument):void
		{
			var oldDocument:IDocument = healthActionSchedules.getItem(oldId);
			super.removeDocument(oldDocument ? oldDocument : document);
			healthActionSchedules.remove(oldId);

			addDocument(document);
		}

		override public function removeDocument(document:IDocument):void
		{
			super.removeDocument(document);
			healthActionSchedules.remove(document.meta.id);
		}
	}
}
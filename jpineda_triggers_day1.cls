/*Triggers
 *
 * Apex code that executes before or after one of the folllowing operations:
 *      Insert
 *      Update
 *      Delete
 *    **Upsert** -  update and/or insert
 *      Undelete
 *      Merge - update and delete
 *
 *
 *      Top Level standard objects, some child objects, and all custom objects
 *
 *
 *
 *
 *      Before - (before saved to the database) used for updating recor values or validitating record values.
 *      After - (after saved to the database) records that fire after trigger are read-only. 
 *
 *      Bulk Triggers - 
 *      Writing them to handle bulk is best practice
 *      It shouldnt break with just one.
 *  
 *
 *
 */
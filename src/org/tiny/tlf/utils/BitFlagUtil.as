package org.tiny.tlf.utils
{
  /**
   * @private
   * BitFlagUtil helps manipulate bit flags for the purpose
   * of storing booleans effeciently in one integer.
   */
  public class BitFlagUtil
  {
    public function BitFlagUtil()
    {
      super();
    }
    
    /**
     *  Returns true if all of the flags specified by <code>flagMask</code> are set.
     */
    public static function isSet(flags:uint, flagMask:uint):Boolean
    {
      return flagMask == (flags & flagMask);
    }
    
    /**
     *  Sets the flags specified by <code>flagMask</code> according to <code>value</code>.
     *  Returns the new bitflag.
     *  <code>flagMask</code> can be a combination of multiple flags.
     */
    public static function update(flags:uint, flagMask:uint, update:Boolean = true):uint
    {
      if(update)
      {
        if((flags & flagMask) == flagMask)
          return flags; // Nothing to change
        // Don't use ^ since flagMask could be a combination of multiple flags
        flags |= flagMask;
      }
      else
      {
        if((flags & flagMask) == 0)
          return flags; // Nothing to change
        // Don't use ^ since flagMask could be a combination of multiple flags
        flags &= ~flagMask;
      }
      return flags;
    }
  
  }
}
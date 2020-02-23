//#line 2 "/opt/ros/melodic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"
// *********************************************************
//
// File autogenerated for the util_nodes_tf2_ros_tool package
// by the dynamic_reconfigure package.
// Please do not edit.
//
// ********************************************************/

#ifndef __util_nodes_tf2_ros_tool__STATICTRANSFORMALIASCONFIG_H__
#define __util_nodes_tf2_ros_tool__STATICTRANSFORMALIASCONFIG_H__

#if __cplusplus >= 201103L
#define DYNAMIC_RECONFIGURE_FINAL final
#else
#define DYNAMIC_RECONFIGURE_FINAL
#endif

#include <dynamic_reconfigure/config_tools.h>
#include <limits>
#include <ros/node_handle.h>
#include <dynamic_reconfigure/ConfigDescription.h>
#include <dynamic_reconfigure/ParamDescription.h>
#include <dynamic_reconfigure/Group.h>
#include <dynamic_reconfigure/config_init_mutex.h>
#include <boost/any.hpp>

namespace util_nodes_tf2_ros_tool
{
  class StaticTransformAliasConfigStatics;

  class StaticTransformAliasConfig
  {
  public:
    class AbstractParamDescription : public dynamic_reconfigure::ParamDescription
    {
    public:
      AbstractParamDescription(std::string n, std::string t, uint32_t l,
          std::string d, std::string e)
      {
        name = n;
        type = t;
        level = l;
        description = d;
        edit_method = e;
      }

      virtual void clamp(StaticTransformAliasConfig &config, const StaticTransformAliasConfig &max, const StaticTransformAliasConfig &min) const = 0;
      virtual void calcLevel(uint32_t &level, const StaticTransformAliasConfig &config1, const StaticTransformAliasConfig &config2) const = 0;
      virtual void fromServer(const ros::NodeHandle &nh, StaticTransformAliasConfig &config) const = 0;
      virtual void toServer(const ros::NodeHandle &nh, const StaticTransformAliasConfig &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, StaticTransformAliasConfig &config) const = 0;
      virtual void toMessage(dynamic_reconfigure::Config &msg, const StaticTransformAliasConfig &config) const = 0;
      virtual void getValue(const StaticTransformAliasConfig &config, boost::any &val) const = 0;
    };

    typedef boost::shared_ptr<AbstractParamDescription> AbstractParamDescriptionPtr;
    typedef boost::shared_ptr<const AbstractParamDescription> AbstractParamDescriptionConstPtr;

    // Final keyword added to class because it has virtual methods and inherits
    // from a class with a non-virtual destructor.
    template <class T>
    class ParamDescription DYNAMIC_RECONFIGURE_FINAL : public AbstractParamDescription
    {
    public:
      ParamDescription(std::string a_name, std::string a_type, uint32_t a_level,
          std::string a_description, std::string a_edit_method, T StaticTransformAliasConfig::* a_f) :
        AbstractParamDescription(a_name, a_type, a_level, a_description, a_edit_method),
        field(a_f)
      {}

      T (StaticTransformAliasConfig::* field);

      virtual void clamp(StaticTransformAliasConfig &config, const StaticTransformAliasConfig &max, const StaticTransformAliasConfig &min) const
      {
        if (config.*field > max.*field)
          config.*field = max.*field;

        if (config.*field < min.*field)
          config.*field = min.*field;
      }

      virtual void calcLevel(uint32_t &comb_level, const StaticTransformAliasConfig &config1, const StaticTransformAliasConfig &config2) const
      {
        if (config1.*field != config2.*field)
          comb_level |= level;
      }

      virtual void fromServer(const ros::NodeHandle &nh, StaticTransformAliasConfig &config) const
      {
        nh.getParam(name, config.*field);
      }

      virtual void toServer(const ros::NodeHandle &nh, const StaticTransformAliasConfig &config) const
      {
        nh.setParam(name, config.*field);
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, StaticTransformAliasConfig &config) const
      {
        return dynamic_reconfigure::ConfigTools::getParameter(msg, name, config.*field);
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const StaticTransformAliasConfig &config) const
      {
        dynamic_reconfigure::ConfigTools::appendParameter(msg, name, config.*field);
      }

      virtual void getValue(const StaticTransformAliasConfig &config, boost::any &val) const
      {
        val = config.*field;
      }
    };

    class AbstractGroupDescription : public dynamic_reconfigure::Group
    {
      public:
      AbstractGroupDescription(std::string n, std::string t, int p, int i, bool s)
      {
        name = n;
        type = t;
        parent = p;
        state = s;
        id = i;
      }

      std::vector<AbstractParamDescriptionConstPtr> abstract_parameters;
      bool state;

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &config) const =0;
      virtual void updateParams(boost::any &cfg, StaticTransformAliasConfig &top) const= 0;
      virtual void setInitialState(boost::any &cfg) const = 0;


      void convertParams()
      {
        for(std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = abstract_parameters.begin(); i != abstract_parameters.end(); ++i)
        {
          parameters.push_back(dynamic_reconfigure::ParamDescription(**i));
        }
      }
    };

    typedef boost::shared_ptr<AbstractGroupDescription> AbstractGroupDescriptionPtr;
    typedef boost::shared_ptr<const AbstractGroupDescription> AbstractGroupDescriptionConstPtr;

    // Final keyword added to class because it has virtual methods and inherits
    // from a class with a non-virtual destructor.
    template<class T, class PT>
    class GroupDescription DYNAMIC_RECONFIGURE_FINAL : public AbstractGroupDescription
    {
    public:
      GroupDescription(std::string a_name, std::string a_type, int a_parent, int a_id, bool a_s, T PT::* a_f) : AbstractGroupDescription(a_name, a_type, a_parent, a_id, a_s), field(a_f)
      {
      }

      GroupDescription(const GroupDescription<T, PT>& g): AbstractGroupDescription(g.name, g.type, g.parent, g.id, g.state), field(g.field), groups(g.groups)
      {
        parameters = g.parameters;
        abstract_parameters = g.abstract_parameters;
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        if(!dynamic_reconfigure::ConfigTools::getGroupState(msg, name, (*config).*field))
          return false;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          if(!(*i)->fromMessage(msg, n))
            return false;
        }

        return true;
      }

      virtual void setInitialState(boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        T* group = &((*config).*field);
        group->state = state;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = boost::any(&((*config).*field));
          (*i)->setInitialState(n);
        }

      }

      virtual void updateParams(boost::any &cfg, StaticTransformAliasConfig &top) const
      {
        PT* config = boost::any_cast<PT*>(cfg);

        T* f = &((*config).*field);
        f->setParams(top, abstract_parameters);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          (*i)->updateParams(n, top);
        }
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &cfg) const
      {
        const PT config = boost::any_cast<PT>(cfg);
        dynamic_reconfigure::ConfigTools::appendGroup<T>(msg, name, id, parent, config.*field);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          (*i)->toMessage(msg, config.*field);
        }
      }

      T (PT::* field);
      std::vector<StaticTransformAliasConfig::AbstractGroupDescriptionConstPtr> groups;
    };

class DEFAULT
{
  public:
    DEFAULT()
    {
      state = true;
      name = "Default";
    }

    void setParams(StaticTransformAliasConfig &config, const std::vector<AbstractParamDescriptionConstPtr> params)
    {
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator _i = params.begin(); _i != params.end(); ++_i)
      {
        boost::any val;
        (*_i)->getValue(config, val);

        if("verbosity"==(*_i)->name){verbosity = boost::any_cast<std::string>(val);}
        if("from_source_frame_id"==(*_i)->name){from_source_frame_id = boost::any_cast<std::string>(val);}
        if("to_source_frame_id"==(*_i)->name){to_source_frame_id = boost::any_cast<std::string>(val);}
        if("from_target_frame_id"==(*_i)->name){from_target_frame_id = boost::any_cast<std::string>(val);}
        if("to_target_frame_id"==(*_i)->name){to_target_frame_id = boost::any_cast<std::string>(val);}
        if("timeout"==(*_i)->name){timeout = boost::any_cast<double>(val);}
      }
    }

    std::string verbosity;
std::string from_source_frame_id;
std::string to_source_frame_id;
std::string from_target_frame_id;
std::string to_target_frame_id;
double timeout;

    bool state;
    std::string name;

    
}groups;



//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      std::string verbosity;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      std::string from_source_frame_id;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      std::string to_source_frame_id;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      std::string from_target_frame_id;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      std::string to_target_frame_id;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double timeout;
//#line 228 "/opt/ros/melodic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

    bool __fromMessage__(dynamic_reconfigure::Config &msg)
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();

      int count = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        if ((*i)->fromMessage(msg, *this))
          count++;

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i ++)
      {
        if ((*i)->id == 0)
        {
          boost::any n = boost::any(this);
          (*i)->updateParams(n, *this);
          (*i)->fromMessage(msg, n);
        }
      }

      if (count != dynamic_reconfigure::ConfigTools::size(msg))
      {
        ROS_ERROR("StaticTransformAliasConfig::__fromMessage__ called with an unexpected parameter.");
        ROS_ERROR("Booleans:");
        for (unsigned int i = 0; i < msg.bools.size(); i++)
          ROS_ERROR("  %s", msg.bools[i].name.c_str());
        ROS_ERROR("Integers:");
        for (unsigned int i = 0; i < msg.ints.size(); i++)
          ROS_ERROR("  %s", msg.ints[i].name.c_str());
        ROS_ERROR("Doubles:");
        for (unsigned int i = 0; i < msg.doubles.size(); i++)
          ROS_ERROR("  %s", msg.doubles[i].name.c_str());
        ROS_ERROR("Strings:");
        for (unsigned int i = 0; i < msg.strs.size(); i++)
          ROS_ERROR("  %s", msg.strs[i].name.c_str());
        // @todo Check that there are no duplicates. Make this error more
        // explicit.
        return false;
      }
      return true;
    }

    // This version of __toMessage__ is used during initialization of
    // statics when __getParamDescriptions__ can't be called yet.
    void __toMessage__(dynamic_reconfigure::Config &msg, const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__, const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__) const
    {
      dynamic_reconfigure::ConfigTools::clear(msg);
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toMessage(msg, *this);

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        if((*i)->id == 0)
        {
          (*i)->toMessage(msg, *this);
        }
      }
    }

    void __toMessage__(dynamic_reconfigure::Config &msg) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      __toMessage__(msg, __param_descriptions__, __group_descriptions__);
    }

    void __toServer__(const ros::NodeHandle &nh) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toServer(nh, *this);
    }

    void __fromServer__(const ros::NodeHandle &nh)
    {
      static bool setup=false;

      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->fromServer(nh, *this);

      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i++){
        if (!setup && (*i)->id == 0) {
          setup = true;
          boost::any n = boost::any(this);
          (*i)->setInitialState(n);
        }
      }
    }

    void __clamp__()
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const StaticTransformAliasConfig &__max__ = __getMax__();
      const StaticTransformAliasConfig &__min__ = __getMin__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->clamp(*this, __max__, __min__);
    }

    uint32_t __level__(const StaticTransformAliasConfig &config) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      uint32_t level = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->calcLevel(level, config, *this);
      return level;
    }

    static const dynamic_reconfigure::ConfigDescription &__getDescriptionMessage__();
    static const StaticTransformAliasConfig &__getDefault__();
    static const StaticTransformAliasConfig &__getMax__();
    static const StaticTransformAliasConfig &__getMin__();
    static const std::vector<AbstractParamDescriptionConstPtr> &__getParamDescriptions__();
    static const std::vector<AbstractGroupDescriptionConstPtr> &__getGroupDescriptions__();

  private:
    static const StaticTransformAliasConfigStatics *__get_statics__();
  };

  template <> // Max and min are ignored for strings.
  inline void StaticTransformAliasConfig::ParamDescription<std::string>::clamp(StaticTransformAliasConfig &config, const StaticTransformAliasConfig &max, const StaticTransformAliasConfig &min) const
  {
    (void) config;
    (void) min;
    (void) max;
    return;
  }

  class StaticTransformAliasConfigStatics
  {
    friend class StaticTransformAliasConfig;

    StaticTransformAliasConfigStatics()
    {
StaticTransformAliasConfig::GroupDescription<StaticTransformAliasConfig::DEFAULT, StaticTransformAliasConfig> Default("Default", "", 0, 0, true, &StaticTransformAliasConfig::groups);
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.verbosity = "";
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.verbosity = "";
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.verbosity = "info";
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(StaticTransformAliasConfig::AbstractParamDescriptionConstPtr(new StaticTransformAliasConfig::ParamDescription<std::string>("verbosity", "str", 0, "Sets the verbosity for this node", "{'enum_description': 'Sets the verbosity for this node', 'enum': [{'srcline': 15, 'description': '', 'srcfile': '/home/dlx/catkin_limo_workspace/devel/share/util_nodes_tf2_ros_tool/cfg/StaticTransformAlias.cfg', 'cconsttype': 'const char * const', 'value': 'debug', 'ctype': 'std::string', 'type': 'str', 'name': 'debug'}, {'srcline': 16, 'description': '', 'srcfile': '/home/dlx/catkin_limo_workspace/devel/share/util_nodes_tf2_ros_tool/cfg/StaticTransformAlias.cfg', 'cconsttype': 'const char * const', 'value': 'info', 'ctype': 'std::string', 'type': 'str', 'name': 'info'}, {'srcline': 17, 'description': '', 'srcfile': '/home/dlx/catkin_limo_workspace/devel/share/util_nodes_tf2_ros_tool/cfg/StaticTransformAlias.cfg', 'cconsttype': 'const char * const', 'value': 'warning', 'ctype': 'std::string', 'type': 'str', 'name': 'warning'}, {'srcline': 18, 'description': '', 'srcfile': '/home/dlx/catkin_limo_workspace/devel/share/util_nodes_tf2_ros_tool/cfg/StaticTransformAlias.cfg', 'cconsttype': 'const char * const', 'value': 'error', 'ctype': 'std::string', 'type': 'str', 'name': 'error'}, {'srcline': 19, 'description': '', 'srcfile': '/home/dlx/catkin_limo_workspace/devel/share/util_nodes_tf2_ros_tool/cfg/StaticTransformAlias.cfg', 'cconsttype': 'const char * const', 'value': 'fatal', 'ctype': 'std::string', 'type': 'str', 'name': 'fatal'}]}", &StaticTransformAliasConfig::verbosity)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(StaticTransformAliasConfig::AbstractParamDescriptionConstPtr(new StaticTransformAliasConfig::ParamDescription<std::string>("verbosity", "str", 0, "Sets the verbosity for this node", "{'enum_description': 'Sets the verbosity for this node', 'enum': [{'srcline': 15, 'description': '', 'srcfile': '/home/dlx/catkin_limo_workspace/devel/share/util_nodes_tf2_ros_tool/cfg/StaticTransformAlias.cfg', 'cconsttype': 'const char * const', 'value': 'debug', 'ctype': 'std::string', 'type': 'str', 'name': 'debug'}, {'srcline': 16, 'description': '', 'srcfile': '/home/dlx/catkin_limo_workspace/devel/share/util_nodes_tf2_ros_tool/cfg/StaticTransformAlias.cfg', 'cconsttype': 'const char * const', 'value': 'info', 'ctype': 'std::string', 'type': 'str', 'name': 'info'}, {'srcline': 17, 'description': '', 'srcfile': '/home/dlx/catkin_limo_workspace/devel/share/util_nodes_tf2_ros_tool/cfg/StaticTransformAlias.cfg', 'cconsttype': 'const char * const', 'value': 'warning', 'ctype': 'std::string', 'type': 'str', 'name': 'warning'}, {'srcline': 18, 'description': '', 'srcfile': '/home/dlx/catkin_limo_workspace/devel/share/util_nodes_tf2_ros_tool/cfg/StaticTransformAlias.cfg', 'cconsttype': 'const char * const', 'value': 'error', 'ctype': 'std::string', 'type': 'str', 'name': 'error'}, {'srcline': 19, 'description': '', 'srcfile': '/home/dlx/catkin_limo_workspace/devel/share/util_nodes_tf2_ros_tool/cfg/StaticTransformAlias.cfg', 'cconsttype': 'const char * const', 'value': 'fatal', 'ctype': 'std::string', 'type': 'str', 'name': 'fatal'}]}", &StaticTransformAliasConfig::verbosity)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.from_source_frame_id = "";
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.from_source_frame_id = "";
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.from_source_frame_id = "from/source";
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(StaticTransformAliasConfig::AbstractParamDescriptionConstPtr(new StaticTransformAliasConfig::ParamDescription<std::string>("from_source_frame_id", "str", 0, "tf2 frame id of the source frame from which to read", "", &StaticTransformAliasConfig::from_source_frame_id)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(StaticTransformAliasConfig::AbstractParamDescriptionConstPtr(new StaticTransformAliasConfig::ParamDescription<std::string>("from_source_frame_id", "str", 0, "tf2 frame id of the source frame from which to read", "", &StaticTransformAliasConfig::from_source_frame_id)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.to_source_frame_id = "";
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.to_source_frame_id = "";
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.to_source_frame_id = "to/source";
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(StaticTransformAliasConfig::AbstractParamDescriptionConstPtr(new StaticTransformAliasConfig::ParamDescription<std::string>("to_source_frame_id", "str", 0, "tf2 frame id of the source frame to which we map", "", &StaticTransformAliasConfig::to_source_frame_id)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(StaticTransformAliasConfig::AbstractParamDescriptionConstPtr(new StaticTransformAliasConfig::ParamDescription<std::string>("to_source_frame_id", "str", 0, "tf2 frame id of the source frame to which we map", "", &StaticTransformAliasConfig::to_source_frame_id)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.from_target_frame_id = "";
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.from_target_frame_id = "";
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.from_target_frame_id = "from/target";
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(StaticTransformAliasConfig::AbstractParamDescriptionConstPtr(new StaticTransformAliasConfig::ParamDescription<std::string>("from_target_frame_id", "str", 0, "tf2 frame id of the target frame from which to read", "", &StaticTransformAliasConfig::from_target_frame_id)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(StaticTransformAliasConfig::AbstractParamDescriptionConstPtr(new StaticTransformAliasConfig::ParamDescription<std::string>("from_target_frame_id", "str", 0, "tf2 frame id of the target frame from which to read", "", &StaticTransformAliasConfig::from_target_frame_id)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.to_target_frame_id = "";
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.to_target_frame_id = "";
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.to_target_frame_id = "to/target";
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(StaticTransformAliasConfig::AbstractParamDescriptionConstPtr(new StaticTransformAliasConfig::ParamDescription<std::string>("to_target_frame_id", "str", 0, "tf2 frame id of the target frame to which we map", "", &StaticTransformAliasConfig::to_target_frame_id)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(StaticTransformAliasConfig::AbstractParamDescriptionConstPtr(new StaticTransformAliasConfig::ParamDescription<std::string>("to_target_frame_id", "str", 0, "tf2 frame id of the target frame to which we map", "", &StaticTransformAliasConfig::to_target_frame_id)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.timeout = 0.5;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.timeout = 60.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.timeout = 10.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(StaticTransformAliasConfig::AbstractParamDescriptionConstPtr(new StaticTransformAliasConfig::ParamDescription<double>("timeout", "double", 0, "time in secondsd before failing", "", &StaticTransformAliasConfig::timeout)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(StaticTransformAliasConfig::AbstractParamDescriptionConstPtr(new StaticTransformAliasConfig::ParamDescription<double>("timeout", "double", 0, "time in secondsd before failing", "", &StaticTransformAliasConfig::timeout)));
//#line 246 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.convertParams();
//#line 246 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __group_descriptions__.push_back(StaticTransformAliasConfig::AbstractGroupDescriptionConstPtr(new StaticTransformAliasConfig::GroupDescription<StaticTransformAliasConfig::DEFAULT, StaticTransformAliasConfig>(Default)));
//#line 366 "/opt/ros/melodic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

      for (std::vector<StaticTransformAliasConfig::AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        __description_message__.groups.push_back(**i);
      }
      __max__.__toMessage__(__description_message__.max, __param_descriptions__, __group_descriptions__);
      __min__.__toMessage__(__description_message__.min, __param_descriptions__, __group_descriptions__);
      __default__.__toMessage__(__description_message__.dflt, __param_descriptions__, __group_descriptions__);
    }
    std::vector<StaticTransformAliasConfig::AbstractParamDescriptionConstPtr> __param_descriptions__;
    std::vector<StaticTransformAliasConfig::AbstractGroupDescriptionConstPtr> __group_descriptions__;
    StaticTransformAliasConfig __max__;
    StaticTransformAliasConfig __min__;
    StaticTransformAliasConfig __default__;
    dynamic_reconfigure::ConfigDescription __description_message__;

    static const StaticTransformAliasConfigStatics *get_instance()
    {
      // Split this off in a separate function because I know that
      // instance will get initialized the first time get_instance is
      // called, and I am guaranteeing that get_instance gets called at
      // most once.
      static StaticTransformAliasConfigStatics instance;
      return &instance;
    }
  };

  inline const dynamic_reconfigure::ConfigDescription &StaticTransformAliasConfig::__getDescriptionMessage__()
  {
    return __get_statics__()->__description_message__;
  }

  inline const StaticTransformAliasConfig &StaticTransformAliasConfig::__getDefault__()
  {
    return __get_statics__()->__default__;
  }

  inline const StaticTransformAliasConfig &StaticTransformAliasConfig::__getMax__()
  {
    return __get_statics__()->__max__;
  }

  inline const StaticTransformAliasConfig &StaticTransformAliasConfig::__getMin__()
  {
    return __get_statics__()->__min__;
  }

  inline const std::vector<StaticTransformAliasConfig::AbstractParamDescriptionConstPtr> &StaticTransformAliasConfig::__getParamDescriptions__()
  {
    return __get_statics__()->__param_descriptions__;
  }

  inline const std::vector<StaticTransformAliasConfig::AbstractGroupDescriptionConstPtr> &StaticTransformAliasConfig::__getGroupDescriptions__()
  {
    return __get_statics__()->__group_descriptions__;
  }

  inline const StaticTransformAliasConfigStatics *StaticTransformAliasConfig::__get_statics__()
  {
    const static StaticTransformAliasConfigStatics *statics;

    if (statics) // Common case
      return statics;

    boost::mutex::scoped_lock lock(dynamic_reconfigure::__init_mutex__);

    if (statics) // In case we lost a race.
      return statics;

    statics = StaticTransformAliasConfigStatics::get_instance();

    return statics;
  }

//#line 15 "/home/dlx/catkin_limo_workspace/devel/share/util_nodes_tf2_ros_tool/cfg/StaticTransformAlias.cfg"
      const char * const StaticTransformAlias_debug = "debug";
//#line 16 "/home/dlx/catkin_limo_workspace/devel/share/util_nodes_tf2_ros_tool/cfg/StaticTransformAlias.cfg"
      const char * const StaticTransformAlias_info = "info";
//#line 17 "/home/dlx/catkin_limo_workspace/devel/share/util_nodes_tf2_ros_tool/cfg/StaticTransformAlias.cfg"
      const char * const StaticTransformAlias_warning = "warning";
//#line 18 "/home/dlx/catkin_limo_workspace/devel/share/util_nodes_tf2_ros_tool/cfg/StaticTransformAlias.cfg"
      const char * const StaticTransformAlias_error = "error";
//#line 19 "/home/dlx/catkin_limo_workspace/devel/share/util_nodes_tf2_ros_tool/cfg/StaticTransformAlias.cfg"
      const char * const StaticTransformAlias_fatal = "fatal";
}

#undef DYNAMIC_RECONFIGURE_FINAL

#endif // __STATICTRANSFORMALIASRECONFIGURATOR_H__
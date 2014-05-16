#
# Cookbook Name:: ruby_install
# Resource:: ruby
#
# Original Author (ruby-build cookbook):: Fletcher Nichol <fnichol@nichol.ca>
# Author (minor modifications):: Ross Timson <ross@rosstimson.com>
#
# Copyright 2013, Fletcher Nichol, Ross Timson
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

actions :install, :reinstall

attribute :definition,  :kind_of => String, :name_attribute => true
attribute :prefix_path, :kind_of => String
attribute :source_dir,  :kind_of => String
attribute :patch,       :kind_of => [String, Array]
attribute :mirror,      :kind_of => String
attribute :url,         :kind_of => String
attribute :md5,         :kind_of => String
attribute :user,        :kind_of => String
attribute :group,       :kind_of => String
attribute :environment, :kind_of => Hash

def initialize(*args)
  super
  @action = :install
end

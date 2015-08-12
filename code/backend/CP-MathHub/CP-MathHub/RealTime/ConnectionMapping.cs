using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CP_MathHub.RealTime
{
    public class ConnectionMapping<T,K>
    {
        private readonly Dictionary<T, HashSet<string>> _connections =
            new Dictionary<T, HashSet<string>>();

        public int Count
        {
            get
            {
                return _connections.Count;
            }
        }

        public void Add(T key, string connectionId, string userId = "", string avatar = "")
        {
            lock (_connections)
            {
                HashSet<string> connections;
                if (!_connections.TryGetValue(key, out connections))
                {
                    connections = new HashSet<string>();
                    _connections.Add(key, connections);
                }

                lock (connections)
                {
                    connections.Add(connectionId);
                    //connections.Add(userId);
                    //connections.Add(avatar);
                }
            }
        }

        public IEnumerable<string> GetConnections(T key)
        {
            HashSet<string> connections;
            if (_connections.TryGetValue(key, out connections))
            {
                return connections;
            }

            return Enumerable.Empty<string>();
        }

        //public HashSet<string> GetConnectionId(T key)
        //{
        //    HashSet<string> connections;
        //    _connections.TryGetValue(key, out connections);

        //    return connections;
        //}

        public void Remove(T key, string connectionId)
        {
            lock (_connections)
            {
                HashSet<string> connections;
                if (!_connections.TryGetValue(key, out connections))
                {
                    return;
                }

                lock (connections)
                {
                    connections.Remove(connectionId);

                    if (connections.Count == 0)
                    {
                        _connections.Remove(key);
                    }
                }
            }
        }

        public string GetAllUserIds()
        {
            return JsonConvert.SerializeObject(_connections.Select(c => c.Key), Formatting.Indented);
        }

        //public string GetOnlineConversationIds(List<int> conversationId)
        //{
        //    List<T> onlineUserIds = _connections.Select(c => c.Key).ToList();
        //    return JsonConvert.SerializeObject(onlineIds, Formatting.Indented);
        //}

        public bool TrackOnlineUser(T key)
        {
            return _connections.ContainsKey(key);
        }

        #region Conversations
        private readonly Dictionary<K, HashSet<T>> _conversations = new Dictionary<K, HashSet<T>>();
        public int CountConversations
        {
            get
            {
                return _conversations.Count;
            }
        }
        public void AddConversation(K key)
        {
            lock (_conversations)
            {
                HashSet<T> users;
                if (!_conversations.TryGetValue(key, out users))
                {
                    users = new HashSet<T>();
                    _conversations.Add(key, users);
                }
            }
        }
        public void RemoveConversation(K key)
        {
            lock (_conversations)
            {
                _conversations.Remove(key);
            }
        }
        public List<K> GetAllConversationIds()
        {
            return _conversations.Keys.ToList<K>();
        }
        public List<K> GetOnlineConversationIds()
        {
            return _conversations.Where(c=>c.Value.Count > 1).Select(c => c.Key).ToList<K>();
        }
        public List<K> GetOnlineFriendConversationIds(T userId)
        {
            return _conversations.Where(c => c.Value.Count > 1 && c.Value.Count(u => u.Equals(userId)) > 0).Select(c => c.Key).ToList<K>();
        }
        public void AddUserToConversation(K key, T userId)
        {
            lock (_conversations)
            {
                HashSet<T> users;
                if (!_conversations.TryGetValue(key, out users))
                {
                    users = new HashSet<T>();
                    _conversations.Add(key, users);
                }
                lock (users)
                {
                    if (!users.Contains(userId))
                    {
                        users.Add(userId);                                                
                    }
                }
            }
        }
        public void RemoveUserFromConversation(K key, T userId)
        {
            lock (_conversations)
            {
                HashSet<T> users;
                if (!_conversations.TryGetValue(key, out users))
                {
                    return;
                }

                lock (users)
                {
                    users.Remove(userId);
                }
            }
        }
        #endregion
    }
}
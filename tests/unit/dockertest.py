import unittest
import subprocess

class ProviderSuite(unittest.TestCase):
  def setUp(self):
    cmd = "docker rm -f test"
    status = 0
    try:
      status = subprocess.check_call(cmd.split())
    except subprocess.CalledProcessError, e:
      pass
    self.assertTrue(status == 0, "unable to remove test")
  
  @unittest.skip("API test good to have but unnecessary if using only command")
  def test_try_api(self):
    try:
      import docker
    except SyntaxError, e:
      self.assertTrue("docker" in output, "docker not found in %s ", output) 
      
  def test_plugins(self):
    cmd = "docker run --net host -v /var/run/docker.sock:/var/run/docker.sock --name test kenney/vagrant-docker-provider vagrant plugin list"
    output = "error"
    try:
        output = subprocess.check_output(cmd.split())
    except subprocess.CalledProcessError, e:
        pass
      
    self.assertTrue("docker" in output, "docker not found in %s " % (output)) 


if __name__ == '__main__':
  unittest.main(verbosity=2)
